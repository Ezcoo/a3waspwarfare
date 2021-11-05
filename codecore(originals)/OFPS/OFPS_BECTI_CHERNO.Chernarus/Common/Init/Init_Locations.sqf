private ["_town"];

CTI_Towns = [];
CTI_Depots = [];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", "Retrieving all the towns, searching for mission objects..."] call CTI_CO_FNC_Log;
};

//--- Pull all the towns flag
{
	waitUntil {!isNil {_x getVariable "cti_town_sv"}};
	CTI_Towns pushBack _x;
} forEach allMissionObjects "FlagPole_F";

//--- Pull all the towns depot and update the town
{
	{
		if !(isNil {_x getVariable "cti_depot"}) then {
			CTI_Depots pushBack _x;
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Retrieved Town Depot [%1] (%2) for town [%3]", _x, typeOf _x, _x getVariable "cti_depot"]] call CTI_CO_FNC_Log;
			};
			
			(_x getVariable "cti_depot") setVariable ["cti_town_depot", _x];

			_x allowDamage false;
		};
	} forEach allMissionObjects _x;
} forEach CTI_TOWNS_DEPOT_CLASSNAME;

//--- Pull naval towns depot and update the town
{
	{
		if !(isNil {_x getVariable "cti_depot"}) then {
			CTI_Depots pushBack _x;
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Retrieved Naval Town Depot [%1] (%2) for town [%3]", _x, typeOf _x, _x getVariable "cti_depot"]] call CTI_CO_FNC_Log;
			};
			
			(_x getVariable "cti_depot") setVariable ["cti_naval_depot", _x];

			_x allowDamage false;
		};
	} forEach allMissionObjects _x;
} forEach CTI_TOWNS_NAVAL_DEPOT_CLASSNAME;

//--- Pull static defense markers
{
	_town_statics = [];
	_town_name = _x;
	//Loop through statics
	{
		if !(isNil {_x getVariable "cti_static_defense"}) then {
			_townvar = _x getVariable "cti_static_defense";
			_town = _townvar select 0;
			_staticstype = "";
			if (count _townvar > 1) then {
				_staticstype = _townvar select 1;
			} else {
				_staticstype = "Default";
			};

			if (_town_name isEqualTo _town) then {
				_defense_position = getPosATL _x;
				_defense_direction = direction _x;
				_town_statics pushback [_defense_position, _defense_direction, _staticstype];

				if (CTI_Log_Level >= CTI_Log_Information) then {
					["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Retrieved Town Static Marker [%1] (%2) at position [%3] direction [%4] type [%5] for town [%6]", _x, typeOf _x, _defense_position, _defense_direction, _staticstype, _town]] call CTI_CO_FNC_Log;
				};
			};
			//remove object after collection
			//deleteVehicle _x;
		};
	} forEach allMissionObjects (CTI_TOWNS_STATICS_CLASSNAME select 0);

	_town_name setVariable ["cti_static_defenses", _town_statics, true];
	if((count _town_statics) > 0) then {_town_name setVariable ["cti_town_hasstatics", true, true];};
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Set Static Defense Markers for [%1] containing the following [%2]", _town_name, _town_statics]] call CTI_CO_FNC_Log;
	};

} forEach CTI_Towns;


//--- Blitz mode, only proc with a value above 0 AND if server
if (isServer && ((missionNamespace getVariable "CTI_TOWNS_STARTING_MODE") > 0)) then {
	waitUntil {!isNil 'CTI_WEST_START' && !isNil 'CTI_EAST_START'};
	private ["_distributed", "_town"];
	_distribute = CTI_Towns;
	CTI_WEST_STARTING_TOWNS = [];
	CTI_EAST_STARTING_TOWNS = [];
	
	// Start teams with their closest town
	_town = CTI_WEST_START call CTI_CO_FNC_GetClosestTown;
	CTI_WEST_STARTING_TOWNS pushback _town;
	_distribute = _distribute - [_town];
	_town = CTI_EAST_START call CTI_CO_FNC_GetClosestTown;
	CTI_EAST_STARTING_TOWNS pushback _town;
	_distribute = _distribute - [_town];
	
	if (count CTI_TOWNS mod 2 == 1) then {
		_distribute = _distribute - [selectRandom _distribute];
	}; // Make sure an even number of towns is distributed
	
	switch (CTI_TOWNS_STARTING_MODE) do {
		case 1: { // Nearby
			while {count CTI_Towns * ((missionNamespace getVariable "CTI_TOWN_AMOUNT") / 100 * 2) > ( count CTI_Towns - count _distribute) && count _distribute > 0} do {
				// Start teams with their closest town
				//systemChat format ["Distributed %1 blufor towns, and %2 opfor towns. %3 towns available. %4 < %5?", count CTI_WEST_STARTING_TOWNS, count CTI_EAST_STARTING_TOWNS, count _distribute, count CTI_Towns * ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") / 100) * 2, ( count CTI_Towns - count _distribute) ];
				_town = [CTI_WEST_START, _distribute] call CTI_CO_FNC_GetClosestEntity;
				CTI_WEST_STARTING_TOWNS pushback _town;
				_distribute = _distribute - [_town];
			
				if (count _distribute > 0) then {
					_town = [CTI_EAST_START, _distribute] call CTI_CO_FNC_GetClosestEntity;
					CTI_EAST_STARTING_TOWNS pushback _town;
					_distribute = _distribute - [_town];
				};
			};
		};
		case 2: { // Random
			while {count CTI_Towns * ((missionNamespace getVariable "CTI_TOWN_AMOUNT") / 100 * 2) > ( count CTI_Towns - count _distribute) && count _distribute > 0} do {
				// Start teams with their closest town
				//systemChat format ["Distributed %1 blufor towns, and %2 opfor towns. %3 towns available. %4 < %5?", count CTI_WEST_STARTING_TOWNS, count CTI_EAST_STARTING_TOWNS, count _distribute, count CTI_Towns * ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") / 100) * 2, ( count CTI_Towns - count _distribute) ];
				_town = selectRandom _distribute;
				CTI_WEST_STARTING_TOWNS pushback _town;
				_distribute = _distribute - [_town];
			
				if (count _distribute > 0) then {
					_town = selectRandom _distribute;
					CTI_EAST_STARTING_TOWNS pushback _town;
					_distribute = _distribute - [_town];
				};
			};
		};
	};
	
    CTI_Init_TownsDistribution = true;
    publicVariable 'CTI_Init_TownsDistribution';
};


if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Retrieved %1 towns, the towns are now ready", count CTI_Towns]] call CTI_CO_FNC_Log;
};

CTI_InitTowns = true;