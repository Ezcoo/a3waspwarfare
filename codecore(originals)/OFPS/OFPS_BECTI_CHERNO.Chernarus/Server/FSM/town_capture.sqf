private ["_town","_capture_range","_sideID","_side","_objects","_supply_timed_lastUpdate","_town_local","_west","_east","_resistance","_activeEnemies","_supply","_resistanceDominion","_westDominion","_eastDominion","_force","_forceCount","_captured","_capturable","_camps_count","_camps_owned","_camps_hostile","_rate","_camps_force"];

_town = _this;

_town setVariable ["cti_town_capture", CTI_TOWNS_CAPTURE_VALUE_CEIL, true];
_capture_range = CTI_TOWNS_CAPTURE_RANGE;
_supply_timed_lastUpdate = 0;

while {!CTI_GameOver} do {

	//--- Check for Enemies
	_sideID = _town getVariable "cti_town_sideID";
	_side = (_sideID) call CTI_CO_FNC_GetSideFromID;

	//--- Retrieve the units next to the town based on the detection mode
	_objects = switch (CTI_TOWNS_CAPTURE_DETECTION_MODE) do {
	  case 1: {allPlayers select {_x distance _town <= _capture_range && (((ASLToAGL getPosASL _x) select 2) <= 30)}}; //--- Players only
	  case 2: {(playableUnits + switchableUnits) select {_x distance _town <= _capture_range && (((ASLToAGL getPosASL _x) select 2) <= 30)}}; //--- Playable units only
	  default {_town nearEntities ["AllVehicles", _capture_range] select {count crew _x > 0}}; //--- All infantry and manned vehicles
	};

	//--- Add the town's local AI if needed
	if (CTI_TOWNS_CAPTURE_DETECTION_MODE in [0, 1]) then {
	  _town_local = (_town getVariable ["cti_town_occupation_groups", []]) + (_town getVariable ["cti_town_resistance_groups", []]);
	  {if (group _x in _town_local) then {_objects pushBack _x}} forEach (_town nearEntities ["AllVehicles", _capture_range] select {count crew _x > 0});
	};

	_west = west countSide _objects;
	_east = east countSide _objects;
	_resistance = resistance countSide _objects;

	//--- Check if the town is in a peace mode
	if (missionNamespace getVariable "CTI_TOWNS_PEACE" > 0) then {
	  if (time < (_town getVariable "cti_town_peace")) then {
	    _west = 0;
	    _east = 0;
	    _resistance = 0;
	  };
	};

	_activeEnemies = switch (_side) do {
	  case west: {_east + _resistance};
	  case east: {_west + _resistance};
	  case resistance: {_east + _west};
	};


	//--- Empty
	if (!CTI_GameOver && _west isEqualTo 0 && _east isEqualTo 0 && _resistance isEqualTo 0) then {
		if (CTI_TOWNS_SUPPLY_MODE isEqualTo 1 && !(_sideID isEqualTo CTI_RESISTANCE_ID))  then {
			if ((_town getVariable "cti_town_sv") < (_town getVariable "cti_town_sv_max")) then {
			  //--- An enemy presence will always reset the timer
			  if (_activeEnemies > 0) then {_supply_timed_lastUpdate = time + CTI_TOWNS_SUPPLY_TIME_INTERVAL};

			  if (time > _supply_timed_lastUpdate) then {
			    _supply_timed_lastUpdate = time + CTI_TOWNS_SUPPLY_TIME_INTERVAL;
			    _supply = (_town getVariable "cti_town_sv") + (CTI_TOWNS_SUPPLY_TIME_INCREASE * (CTI_UPGRADE_CST_SUPPLY_COEF select ([_side, CTI_UPGRADE_SUPPLY_RATE] call CTI_CO_FNC_GetUpgrade)));
			    if (_supply > (_town getVariable "cti_town_sv_max")) then {_supply = _town getVariable "cti_town_sv_max"};
			    _town setVariable ["cti_town_sv", _supply, true];
			  };
			};
		};
	};


	//--- Not Eompty
	if (!CTI_GameOver && (_west > 0 || _east > 0 || _resistance > 0)) then {



		_resistanceDominion = [false, true] select (_resistance > _east && _resistance > _west);
		_westDominion = [false, true] select (_west > _east && _west > _resistance);
		_eastDominion = [false, true] select (_east > _west && _east > _resistance);

		_force = switch (true) do { case _resistanceDominion: { resistance }; case _westDominion: { west }; case _eastDominion: { east }; default { civilian } };
		_forceCount = switch (true) do { case _resistanceDominion: { _resistance }; case _westDominion: { _west }; case _eastDominion: { _east }; default { 0 } };

		_captured = false;
		if !(_force isEqualTo civilian) then {
		  _supply = _town getVariable "cti_town_sv";
		  
		  if (_side isEqualTo _force) then { //--- Protect
		    if (_supply < _town getVariable "cti_town_sv_default") then {
		      _supply = _supply + (_forceCount * CTI_TOWNS_CAPTURE_RATE);
		      if (_supply > (_town getVariable "cti_town_sv_default")) then { _supply = _town getVariable "cti_town_sv_default" };
		    };
		  } else { //--- Capture
		    //--- In case of territorial mode, check that the town can be captured!
		    _capturable = true;
		    if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
		      _capturable = [_town, _force] call CTI_SE_FNC_CanCaptureTerritorialTown;
		    };

		    //--- Handle the capture mode (if the town is considered capturable that is)
		    if (_capturable) then {
		      switch (missionNamespace getVariable "CTI_TOWNS_CAPTURE_MODE") do {
		        case 2: { //--- All camps must belong to the capturing side (OFPS Specific)
		          _camps_count = count(_town call CTI_CO_FNC_GetTownCamps);
		          _camps_owned = count([_town, _force] call CTI_CO_FNC_GetTownCampsOnSide);
		          _camps_hostile = _camps_count - _camps_owned;
		          if !(_camps_count isEqualTo _camps_owned) then {
		            {
		              ["town-capture-blocked", [_town, _camps_hostile, _side]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _x];
		            } forEach _objects;
		            _capturable = false;
		          };
		        };
		      };
		    };
		    
		    if (_capturable) then {
		      _rate = CTI_TOWNS_CAPTURE_RATE;
		      if ((missionNamespace getVariable "CTI_TOWNS_CAPTURE_MODE") > 0) then { //--- Camp boost (OFPS Specific)
		        //--- Retrieve the current held camps
		        _camps_count = count(_town call CTI_CO_FNC_GetTownCamps);
		        _camps_force = if (_camps_count < 1) then {1} else {count([_town, _force] call CTI_CO_FNC_GetTownCampsOnSide) / _camps_count};
		        _rate = CTI_TOWNS_CAPTURE_RATE * _camps_force * CTI_TOWNS_CAPTURE_RATE_CAMPS;
		      };
		      if (_rate < 1) then {_rate = 1};
		      _rate = round(_forceCount * _rate);
		      if (_rate > CTI_TOWNS_CAPTURE_FORCE_MAX) then {_rate = CTI_TOWNS_CAPTURE_FORCE_MAX};
		      _supply = _supply - _rate;
		      if (_supply <= 0) then { _captured = true; _supply = _town getVariable "cti_town_sv_default" };
		    };
		  };
		  
		  if !(_supply isEqualTo (_town getVariable "cti_town_sv")) then {_town setVariable ["cti_town_sv", _supply, true]};
		};
		if (_captured) then {[_town, _force] call CTI_SE_FNC_OnTownCaptured};
	};
	sleep 5;
};