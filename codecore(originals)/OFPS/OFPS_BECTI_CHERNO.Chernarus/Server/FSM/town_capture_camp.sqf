params ["_town","_camp"];
private ["_sideID","_side","_town_local","_objects","_playersNearTown","_is_naval","_supv","_ownt","_west","_east","_resistance","_resistanceDominion","_westDominion","_eastDominion","_force","_forceCount","_captured","_supply","_capturable","_rate"];

while {!CTI_GameOver} do {

	_sideID = _camp getVariable "cti_camp_sideID";
	_side = (_sideID) call CTI_CO_FNC_GetSideFromID;
	_town_local = (_town getVariable ["cti_town_occupation_groups", []]) + (_town getVariable ["cti_town_resistance_groups", []]);

	//--- Retrieve the units next to the camp based on the detection mode
	_objects = switch (CTI_TOWNS_CAPTURE_DETECTION_MODE) do {
		case 1: {allPlayers select {_x distance _camp <= CTI_TOWNS_CAMPS_CAPTURE_RANGE}}; //--- Players only
		case 2: {(playableUnits + switchableUnits) select {_x distance _camp <= CTI_TOWNS_CAMPS_CAPTURE_RANGE}}; //--- Playable units only
		default {_camp nearEntities ["AllVehicles", CTI_TOWNS_CAMPS_CAPTURE_RANGE] select {count crew _x > 0}}; //--- All infantry and manned vehicles
	};

	//--- If players AI also can capture (but not activate!), they contribute only to camp capture if
	//       - (_supv) there's a player from the AIs side is nearby so that the town is activatable (prevent AI without player from capping an inactive town)
	//    or - (_ownt) the town already belongs to the AIs side
	if (CTI_TOWNS_CAPTURE_DETECTION_MODE isEqualTo 0) then {
		_playersNearTown = 0;
		_is_naval = _town getVariable ["cti_naval", false];
		if !(_is_naval) then {
			_playersNearTown = allPlayers select {_x distance _town <= CTI_TOWNS_OCCUPATION_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_OCCUPATION_DETECTION_RANGE_AIR)};
		} else {
			_playersNearTown = allPlayers select {_x distance _town <= CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE_AIR)};
		};
		{
			_supv = (side _x) countSide _playersNearTown > 0;
			_ownt = _town getVariable "cti_town_sideID" == ((side _x) call CTI_CO_FNC_GetSideID);
			if !(_supv || _ownt) then {_objects = _objects - [_x]; };
		} forEach _objects;
	};

	//--- Add the town's local AI if needed
	{if (((ASLToAGL getPosASL _x) select 2) <= 30 && group _x in _town_local && !(_x in _objects)) then {_objects pushBack _x}} forEach (_camp nearEntities ["AllVehicles", CTI_TOWNS_CAMPS_CAPTURE_RANGE] select {count crew _x > 0});

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


	if (_west > 0 || _east > 0 || _resistance > 0) then {

		_resistanceDominion = [false, true] select (_resistance > _east && _resistance > _west);
		_westDominion = [false, true] select (_west > _east && _west > _resistance);
		_eastDominion = [false, true] select (_east > _west && _east > _resistance);

		_force = switch (true) do { case _resistanceDominion: { resistance }; case _westDominion: { west }; case _eastDominion: { east }; default { civilian } };
		_forceCount = switch (true) do { case _resistanceDominion: { _resistance }; case _westDominion: { _west }; case _eastDominion: { _east }; default { 0 } };

		_captured = false;
		if !(_force isEqualTo civilian) then {
			_supply = _camp getVariable "cti_camp_sv";
			
			if (_side isEqualTo _force) then { //--- Protect
				_supply = _supply + (_forceCount * CTI_TOWNS_CAMPS_CAPTURE_RATE);
				if (_supply > (_town getVariable "cti_town_sv")) then { _supply = _town getVariable "cti_town_sv" };
			} else { //--- Capture
				//--- In case of territorial mode, check that the town can be captured!
				_capturable = true;
				if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
					_capturable = [_town, _force] call CTI_SE_FNC_CanCaptureTerritorialTown;
				};
				if (_capturable || _town getVariable "cti_town_sideID" == (_force call CTI_CO_FNC_GetSideID)) then {
					_rate = round(_forceCount * CTI_TOWNS_CAMPS_CAPTURE_RATE);
					if (_rate < 1) then {_rate = 1};
					_supply = _supply - round(_forceCount * _rate);
					if (_supply <= 0) then { _captured = true; _supply = _town getVariable "cti_town_sv_default" };
				};
			};
			
			if !(_supply isEqualTo (_camp getVariable "cti_camp_sv")) then {_camp setVariable ["cti_camp_sv", _supply, true]};
		};
		if (_captured) then {[_town, _camp, _force] call CTI_SE_FNC_OnCampCaptured};
	};
	sleep 3;
};