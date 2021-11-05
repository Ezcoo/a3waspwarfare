private ["_town","_sideID","_count_enemies","_peace_mode","_objects","_lives","_min_active","_inactive_timer"];

_town = _this;

_town setVariable ["cti_town_resistance_active_vehicles", []];
_town setVariable ["cti_town_resistance_activeTime", -1000];
_town setVariable ["cti_town_resistance_active", false];

while {!CTI_GameOver} do {

	_sideID = _town getVariable "cti_town_sideID";

	//--- If Resistance Owned
	if (_sideID isEqualTo CTI_RESISTANCE_ID) then {

		//--- Enemy near ?
		_count_enemies = 0;

		//--- Check if the town is in a peace mode
		_peace_mode = false;
		if (missionNamespace getVariable "CTI_TOWNS_PEACE" > 0) then {
			if (time < (_town getVariable "cti_town_peace")) then {_peace_mode = true};
		};

		if !(_peace_mode) then {
			_objects =[];
			if (isNil {_town getVariable "cti_naval"}) then {
				_objects = switch (CTI_TOWNS_RESISTANCE_DETECTION_MODE) do {
					case 1: {allPlayers select {_x distance _town <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_RESISTANCE_DETECTION_RANGE_AIR)}};
					case 2: {(_town nearEntities ["AllVehicles", CTI_TOWNS_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR && (leader _x) in playableUnits}};
					default {(_town nearEntities ["AllVehicles", CTI_TOWNS_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR}};
				};
			} else {
				_objects = switch (CTI_TOWNS_RESISTANCE_DETECTION_MODE) do {
					case 1: {allPlayers select {_x distance _town <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR)}};
					case 2: {(_town nearEntities ["AllVehicles", CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR && (leader _x) in playableUnits}};
					default {(_town nearEntities ["AllVehicles", CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR}};
				};
			};

			if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
				{
					if ((_x countSide _objects) > 0 && _count_enemies < 1) then {
						if ([_town, _x] call CTI_SE_FNC_CanCaptureTerritorialTown) then {_count_enemies = [_objects, resistance] call CTI_CO_FNC_GetAreaEnemiesCount};
					};
				} forEach [west, east];
			} else {
				_count_enemies = [_objects, resistance] call CTI_CO_FNC_GetAreaEnemiesCount;
			};

			if ((_count_enemies) > 0) then {
				if (_town getVariable "cti_town_resistance_active" isEqualTo False) then {
					_town setVariable ["cti_town_resistance_activeTime", time];
					_town setVariable ["cti_town_resistance_active", true];
					if (CTI_Log_Level >= CTI_Log_Information) then {
						["INFORMATION", "FILE: Server\FSM\town_resistance.fsm", format["Town [%1] Resistance forces will be activated", _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
					};
					[_town, resistance] call CTI_SE_FNC_OnTownActivation;
				};
			};

			//--- Resistance is Active
			if (_town getVariable "cti_town_resistance_active") then {

				//--- Resistance town
				if ((_count_enemies) <= 0) then {

					_inactive_timer = 0;
					if (isNil {_town getVariable "cti_naval"}) then {
						_inactive_timer = CTI_TOWNS_RESISTANCE_INACTIVE_MAX;
					} else {
						_inactive_timer = CTI_TOWNS_NAVAL_RESISTANCE_INACTIVE_MAX;
					};
					if (time - (_town getVariable "cti_town_resistance_activeTime") > _inactive_timer) then {
						if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Server\FSM\town_resistance.fsm", format["Town [%1] Resistance forces will be deactivated", _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
						};

						[_town, resistance] call CTI_SE_FNC_OnTownDeactivation;
					};
				};
			};
		};

	} else { //Town was capped by Other side lets extend time and put (lets put town in timer)

		if (_town getVariable "cti_town_resistance_active") then {
			_count_enemies = 0;
			_objects =[];

			if (isNil {_town getVariable "cti_naval"}) then {
				_objects = switch (CTI_TOWNS_RESISTANCE_DETECTION_MODE) do {
					case 1: {allPlayers select {_x distance _town <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_RESISTANCE_DETECTION_RANGE_AIR)}};
					case 2: {(_town nearEntities ["AllVehicles", CTI_TOWNS_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR && (leader _x) in playableUnits}};
					default {(_town nearEntities ["AllVehicles", CTI_TOWNS_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR}};
				};
			} else {
				_objects = switch (CTI_TOWNS_RESISTANCE_DETECTION_MODE) do {
					case 1: {allPlayers select {_x distance _town <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE && (((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR)}};
					case 2: {(_town nearEntities ["AllVehicles", CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR && (leader _x) in playableUnits}};
					default {(_town nearEntities ["AllVehicles", CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE]) select {((ASLToAGL getPosASL _x) select 2) <= CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR}};
				};
			};

			if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
				{
					if ((_x countSide _objects) > 0 && _count_enemies < 1) then {
						if ([_town, _x] call CTI_SE_FNC_CanCaptureTerritorialTown) then {_count_enemies = [_objects, resistance] call CTI_CO_FNC_GetAreaEnemiesCount};
					};
				} forEach [west, east];
			} else {
				_count_enemies = [_objects, resistance] call CTI_CO_FNC_GetAreaEnemiesCount;
			};

			//--- Do we still have some fighting units?
			_lives = 0;
			{_lives = _lives + count(_x call CTI_CO_FNC_GetLiveUnits)} forEach (_town getVariable "cti_town_resistance_groups");
			
			_min_active = 0;
			if (isNil {_town getVariable "cti_naval"}) then {
				_min_active = CTI_TOWNS_RESISTANCE_MIN_ACTIVE;
			} else {
				_min_active = CTI_TOWNS_NAVAL_RESISTANCE_MIN_ACTIVE;
			};

			if (_lives >= _min_active) then { //--- There's still some units fighting! it's not that inactive!
				_town setVariable ["cti_town_resistance_activeTime", time];
			};


			if ((_count_enemies) <= 0) then {
				_inactive_timer = 0;
				if (isNil {_town getVariable "cti_naval"}) then {
					_inactive_timer = CTI_TOWNS_RESISTANCE_INACTIVE_MAX;
				} else {
					_inactive_timer = CTI_TOWNS_NAVAL_RESISTANCE_INACTIVE_MAX;
				};
				if (time - (_town getVariable "cti_town_resistance_activeTime") > _inactive_timer) then {
					if (CTI_Log_Level >= CTI_Log_Information) then {
						["INFORMATION", "FILE: Server\FSM\town_resistance.fsm", format["Town [%1] Resistance forces will be deactivated", _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
					};

					[_town, resistance] call CTI_SE_FNC_OnTownDeactivation;
				};
			};
		};
	};
	sleep 15;
};