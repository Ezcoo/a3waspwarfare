private ["_town","_sideID","_side","_count_enemies","_peace_mode","_objects","_lives","_min_active","_inactive_timer"];

_town = _this;

_town setVariable ["cti_town_occupation_active_vehicles", []];
_town setVariable ["cti_town_occupation_activeTime", -1000];
_town setVariable ["cti_town_occupation_active", false];


while {!CTI_GameOver} do {
	
	_sideID = _town getVariable "cti_town_sideID";
	_side = (_sideID) call CTI_CO_FNC_GetSideFromID;

	//--- East / West
	if (!CTI_GameOver && !(_sideID isEqualTo CTI_RESISTANCE_ID)) then {

		//--- Enemy near
		_count_enemies = 0;

		//--- Check if the town is in a peace mode
		_peace_mode = false;
		if (missionNamespace getVariable "CTI_TOWNS_PEACE" > 0) then {
			if (time < (_town getVariable "cti_town_peace")) then {_peace_mode = true};
		};

		if !(_peace_mode) then {
			_objects =[];
			if (isNil {_town getVariable "cti_naval"}) then {
				_objects = switch (CTI_TOWNS_OCCUPATION_DETECTION_MODE) do {
					case 1: {allPlayers select {_x distance _town <= CTI_TOWNS_OCCUPATION_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_OCCUPATION_DETECTION_RANGE_AIR)}};
					case 2: {(_town nearEntities ["AllVehicles", CTI_TOWNS_OCCUPATION_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_OCCUPATION_DETECTION_RANGE_AIR && (leader _x) in playableUnits}};
					default {(_town nearEntities ["AllVehicles", CTI_TOWNS_OCCUPATION_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_OCCUPATION_DETECTION_RANGE_AIR}};
				};
			} else {
				_objects = switch (CTI_TOWNS_OCCUPATION_DETECTION_MODE) do {
					case 1: {allPlayers select {_x distance _town <= CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE_AIR)}};
					case 2: {(_town nearEntities ["AllVehicles", CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE_AIR && (leader _x) in playableUnits}};
					default {(_town nearEntities ["AllVehicles", CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE_AIR}};
				};
			};

			_count_enemies = 0;
			if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
				{
					if ((_x countSide _objects) > 0 && _count_enemies < 1) then {
						if ([_town, _x] call CTI_SE_FNC_CanCaptureTerritorialTown) then {_count_enemies = [_objects, _side] call CTI_CO_FNC_GetAreaEnemiesCount};
					};
				} forEach ([west, east, resistance] - [_side]);
			} else {
				_count_enemies = [_objects, _side] call CTI_CO_FNC_GetAreaEnemiesCount;
			};

			if ((_count_enemies) > 0) then {
				if (_town getVariable "cti_town_occupation_active" isEqualTo False) then {
					_town setVariable ["cti_town_occupation_activeTime", time];
					_town setVariable ["cti_town_occupation_active", true];
					_town setVariable ["cti_town_occupation_active_sideID", _sideID];
					if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Server\FSM\town_occupation.fsm", format["Town [%1] is now active", _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
					};
					[_town, _side] call CTI_SE_FNC_OnTownActivation;
				};
			};

			//--- Occupation is Active
			if (_town getVariable "cti_town_occupation_active") then {
				if !(_sideID isEqualTo (_town getVariable "cti_town_occupation_active_sideID")) then { //--- ....yet the current side holding the town is not the one which is active
					//--- Do we still have some fighting units?
					_lives = 0;
					{_lives = _lives + count(_x call CTI_CO_FNC_GetLiveUnits)} forEach (_town getVariable "cti_town_occupation_groups");
					
					_min_active = 0;
					if (isNil {_town getVariable "cti_naval"}) then {
						_min_active = CTI_TOWNS_OCCUPATION_MIN_ACTIVE;
					} else {
						_min_active = CTI_TOWNS_NAVAL_OCCUPATION_MIN_ACTIVE;
					};

					if (_lives >= _min_active) then { //--- There's still some units fighting! it's not that inactive!
						_town setVariable ["cti_town_occupation_activeTime", time];
					};
				};

				//--- Occupation is Gone
				if ((_count_enemies) <= 0) then {

					_inactive_timer = 0;
					if (isNil {_town getVariable "cti_naval"}) then {
						_inactive_timer = CTI_TOWNS_OCCUPATION_INACTIVE_MAX;
					} else {
						_inactive_timer = CTI_TOWNS_NAVAL_OCCUPATION_INACTIVE_MAX;
					}; 
					
					if (time - (_town getVariable "cti_town_occupation_activeTime") > _inactive_timer) then {
						if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Server\FSM\town_occupation.fsm", format["Town [%1] [%2] forces will be deactivated", _town getVariable "cti_town_name", (_town getVariable "cti_town_occupation_active_sideID") call CTI_CO_FNC_GetSideFromID]] call CTI_CO_FNC_Log;
						};

						[_town, (_town getVariable "cti_town_occupation_active_sideID") call CTI_CO_FNC_GetSideFromID] call CTI_SE_FNC_OnTownDeactivation;
					};
				};
			};
		};
	};
	sleep 15; 
};