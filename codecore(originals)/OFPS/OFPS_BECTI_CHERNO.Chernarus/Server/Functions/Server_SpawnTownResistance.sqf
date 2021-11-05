/*/
  # HEADER #
	Script: 		Server\Functions\Server_SpawnTownResistance.sqf
	Alias:			CTI_SE_FNC_SpawnTownResistance
	Description:	This script will spawn the town resistance whenever a threat is 
					detected near a town.
					Note that this function can be replaced by another one. 
					Keep in mind to keep an identical return format.
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	23-09-2013
	
  # PARAMETERS #
    0	[Object]: The town
	
  # RETURNED VALUE #
	0   [Array]: The created groups
	1   [Array]: The created vehicles
	
  # SYNTAX #
	(TOWN) call CTI_SE_FNC_SpawnTownResistance
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_CreateUnit
	Common Function: CTI_CO_FNC_CreateVehicle
	Common Function: CTI_CO_FNC_GetRandomBestPlaces
	Common Function: CTI_CO_FNC_GetRandomPosition
	Common Function: CTI_CO_FNC_GetTownCamps
	Common Function: CTI_CO_FNC_GetTownSpawnBuilding
	Common Function: CTI_CO_FNC_ManVehicle
	Server Function: CTI_SE_FNC_HandleEmptyVehicle
	
  # EXAMPLE #
    (Town0) call CTI_SE_FNC_SpawnTownResistance
	  -> Will spawn Resistance defense forces for Town0
*/

params ["_town"];
private ["_groups", "_pool", "_pool_units", "_positions", "_teams", "_totalGroups", "_value", "_vehicles"];

_town = _this;

_value = _town getVariable "cti_town_sv_max";

//--- Calculate the Group size by scaling the SV and randomizing the input, min max scaling
_max_squad = CTI_TOWNS_OCCUPATION_LEVEL_RESISTANCE;
_max_squad_random = 4;
_max_sv = CTI_TOWNS_SPAWN_SV_MAX;

_randomGroups = (_value / _max_sv) * _max_squad_random;
_fixedGroups = (_value / _max_sv) * _max_squad;
_totalGroups = round(_fixedGroups + random _randomGroups - random _randomGroups);
// _totalGroups = round(((_value / _max_sv) * _max_squad) + random(_randomGroups) - random(_randomGroups));
if (_totalGroups < 1) then {_totalGroups = 1};

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format["Begining Resistance Teams composition for town [%1] with a max SV of [%2] using variables <Max Squad = [%3]>,<Max Squad Randomness = [%4]>,<Max SV = [%5]> Resulting in Fixed Group Size [%6] and a Random Group Size of [%7] for a Total Rounded Group Size of [%8]", _town getVariable "cti_town_name", _value, _max_squad, _max_squad_random, _max_sv, _fixedGroups, _randomGroups, _totalGroups]] call CTI_CO_FNC_Log;
};

_pool_units = [];
_tries = 400;

//--- Pool data: [<GROUP>, <PRESENCE>, {<SPAWN PROBABILITY>}], nesting is possible to narrow down some choices
if (isNil {_town getVariable "cti_naval"}) then {
	if (isNil {_town getVariable "cti_zombie"}) then {
		if (isNil {_town getVariable "cti_infantry"}) then {
			switch (true) do { 
				//--- Normal Town Values
				case (_value < 50) : { 
					_pool_units = TOWNS_GUER_POOL_1;
				};
				case (_value >= 50 && _value <= 60) : { 
					_pool_units = TOWNS_GUER_POOL_2;
				};
				case (_value > 60 && _value <= 80) : { 
					_pool_units = TOWNS_GUER_POOL_3;
				};
				case (_value > 80 && _value <= 100) : { 
					_pool_units = TOWNS_GUER_POOL_4;
				};
				case (_value > 100 && _value <= 120) : {  
					_pool_units = TOWNS_GUER_POOL_5;
				};
				case (_value > 120) : { 
					_pool_units = TOWNS_GUER_POOL_6;
				};
			};
		} else {
			//--- Infantry Only
			switch (true) do {
				case (_value < 50) : { 
					_pool_units = TOWNS_GUER_INF_POOL_1;
				};
				case (_value >= 50 && _value <= 60) : {
					_pool_units = TOWNS_GUER_INF_POOL_2;
				};
				case (_value > 60 && _value <= 80) : { 
					_pool_units = TOWNS_GUER_INF_POOL_3;
				};
				case (_value > 80 && _value <= 100) : { 
					_pool_units = TOWNS_GUER_INF_POOL_4;
				};
				case (_value > 100 && _value <= 120) : {  
					_pool_units = TOWNS_GUER_INF_POOL_5;
				};
				case (_value > 120) : {
					_pool_units = TOWNS_GUER_INF_POOL_6;
				};
			};	
		};
	} else {
	 	//--- Zombie Town 
		switch (true) do {
			case (_value < 50) : { 
				_pool_units = TOWNS_GUER_ZOM_POOL_1;
			};
			case (_value >= 50 && _value <= 60) : {
				_pool_units = TOWNS_GUER_ZOM_POOL_2;
			};
			case (_value > 60 && _value <= 80) : { 
				_pool_units = TOWNS_GUER_ZOM_POOL_3;
			};
			case (_value > 80 && _value <= 100) : { 
				_pool_units = TOWNS_GUER_ZOM_POOL_4;
			};
			case (_value > 100 && _value <= 120) : { 
				_pool_units = TOWNS_GUER_ZOM_POOL_5;
			};
			case (_value > 120) : {
				_pool_units = TOWNS_GUER_ZOM_POOL_6;
			};
		};
	};
} else { 
	//--- Naval Town Values
	switch (true) do {
		case (_value < 50) : { 
			_pool_units = TOWNS_GUER_NAVAL_POOL_1;
		};
		case (_value >= 50 && _value <= 60) : {
			_pool_units = TOWNS_GUER_NAVAL_POOL_2;
		};
		case (_value > 60 && _value <= 80) : {  
			_pool_units = TOWNS_GUER_NAVAL_POOL_3;
		};
		case (_value > 80 && _value <= 100) : { 
			_pool_units = TOWNS_GUER_NAVAL_POOL_4;
		};
		case (_value > 100 && _value <= 120) : {  
			_pool_units = TOWNS_GUER_NAVAL_POOL_5;
		};
		case (_value > 120) : {
			_pool_units = TOWNS_GUER_NAVAL_POOL_6;
		};
	};
	
	_tries = 0;
	
	//--- Naval forces are divided by two
	_totalGroups = round(_totalGroups / 2);
	if (_totalGroups < 1) then {_totalGroups = 1};
};

//--- Use urban units if applicable
if (_town getVariable ["cti_town_urban", false]) then {
	{
		if (typeName (_x select 0) == "ARRAY") then {
			_index = _forEachIndex;
			_arr = _x;
			{
				if (!isNil format ["%1_U", _x select 0]) then {
					_arr set [_forEachIndex, [format ["%1_U", _x select 0], _x select 1, _x select 2]];
				};
			} forEach _x; 
			_pool_units set [_forEachIndex, _arr];
		} else {
			if (!isNil format ["%1_U", _x select 0]) then {
				_pool_units set [_forEachIndex, [format ["%1_U", _x select 0], _x select 1, _x select 2]];
			};
		};
	} forEach +_pool_units;
};

if (CTI_Log_Level >= CTI_Log_Information) then { 
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["A Resistance Pool of [%1] squads template is about to be parsed for town [%2] based on the town SV [%3]", count _pool_units, _town getVariable "cti_town_name", _value]] call CTI_CO_FNC_Log;
};

//--- Flatten the pool
_pool = [];
{
	switch (typeName (_x select 0)) do {
		//--- Only one element is present, check for the force and probability and add it to our current pool
		case "STRING": {
			if (!isNil{missionNamespace getVariable (_x select 0)}) then {
				if (count (missionNamespace getVariable (_x select 0)) > 0) then {
					_force = if (count _x > 1) then {_x select 1} else {1};
					_probability = if (count _x > 2) then {_x select 2} else {100};
					
					for '_i' from 1 to _force do {_pool pushBack [_x select 0, _probability]};
				} else {
					if (CTI_Log_Level >= CTI_Log_Warning) then { 
						["WARNING", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Town unit pool [%1] has no units defined and will be skipped", _x select 0]] call CTI_CO_FNC_Log;
					};
				};
			} else {
				if (CTI_Log_Level >= CTI_Log_Error) then { 
					["ERROR", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Attempting to use an undefined Resistance Team Template [%1] for town [%2]", _x select 0, _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
				};
			};
		};
		//--- More than one element is present, flatten the content and append the array to the current pool
		case "ARRAY": {
			_pool_nest = [];
			{
				if (!isNil{missionNamespace getVariable (_x select 0)}) then {
					if (count (missionNamespace getVariable (_x select 0)) > 0) then {
						_force = if (count _x > 1) then {_x select 1} else {1};
						_probability = if (count _x > 2) then {_x select 2} else {100};
						
						for '_i' from 1 to _force do {_pool_nest pushBack [_x select 0, _probability]};
					} else {
						if (CTI_Log_Level >= CTI_Log_Warning) then { 
							["WARNING", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Town unit pool [%1] has no units defined and will be skipped", _x select 0]] call CTI_CO_FNC_Log;
						};
					};
				} else {
					if (CTI_Log_Level >= CTI_Log_Error) then { 
						["ERROR", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Attempting to use an undefined Resistance Team Template [%1] for town [%2]", _x select 0, _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
					};
				};
			} forEach _x;
			
			if (count _pool_nest > 0) then {_pool pushBack _pool_nest};
		};
	};
} forEach _pool_units;

if (CTI_Log_Level >= CTI_Log_Information) then { 
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Retrieved an effective Resistance Pool of [%1] squad(s) for town [%2]. Total groups is set to [%3]", _town getVariable "cti_town_name", count _pool, _totalGroups]] call CTI_CO_FNC_Log;
};

if (count _pool < 1) exitWith {
	if (CTI_Log_Level >= CTI_Log_Error) then { ["ERROR", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", Format["There are no Units Pools available for town [%1]. Units will not be spawned", _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log };
	
	[[],[],[]]
};

//--- Shuffle the pool
_pool = _pool call BIS_fnc_arrayShuffle;

//--- Compose the pool
_teams = [];
while {_totalGroups > 0} do {
	{
		_team = _x;
		
		//--- If nested, pick a random element
		if (typeName(_team select 0) isEqualTo "ARRAY") then {
			_team = selectRandom _team;
		};
		
		//--- Probability check
		_probability = _team select 1;
		
		_can_use = true;
		if !(_probability isEqualTo 100) then {
			if (random 100 > _probability) then { _can_use = false };
		};
		
		//--- Our team can be retrieved!
		if (_can_use) then {
			_teams pushBack (missionNamespace getVariable (_team select 0));
			_totalGroups = _totalGroups - 1;
		};
		
		if (_totalGroups < 1) exitWith {};
	} forEach _pool;
};

//--- Create the groups server-sided
_groups = [];
_positions = [];
_camps = (_town) call CTI_CO_FNC_GetTownCamps;

_positions_building = _town getVariable ["cti_town_spawn_building", []];
if (count _positions_building > 0) then {_positions_building = _positions_building call BIS_fnc_arrayShuffle};

{
	_position = [];
	_has_vehicles = false;
	{if !(_x isKindOf "Man") exitWith {_has_vehicles = true}} forEach _x;
	
	//--- A group may spawn close to a camp or somewhere in the town
	if (isNil {_town getVariable "cti_naval"}) then { //--- The town is on the ground
		if (count _camps > 0 && random 100 > 40) then { //--- A camp can be selected for spawning units
			_camp_index = floor(random count _camps);
			//_position = [getPos (_camps select _camp_index), 15, ([CTI_TOWNS_RESISTANCE_SPAWN_RANGE_CAMPS, CTI_TOWNS_RESISTANCE_SPAWN_RANGE_CAMPS * 3] select (_has_vehicles)), [10, 25] select (_has_vehicles), (["infantry", "vehicles"] select (_has_vehicles))] call CTI_CO_FNC_GetSafePosition;
			_position = [getPos (_camps select _camp_index), 15, ([CTI_TOWNS_RESISTANCE_SPAWN_RANGE_CAMPS, CTI_TOWNS_RESISTANCE_SPAWN_RANGE_CAMPS * 3] select (_has_vehicles)), [10, 25] select (_has_vehicles), (["infantry", "vehicles"] select (_has_vehicles)), ["Rock", 80], ["Rocks", 80]] call CTI_CO_FNC_GetSafePosition;
			_camps deleteAt _camp_index;
		} else { //--- Pick a random position
			_use_default = true;
			if (CTI_TOWNS_SPAWN_MODE isEqualTo 1 && !_has_vehicles) then { //--- Check if Infantry should spawn in buildings or not
				if (CTI_TOWNS_SPAWN_BUILDING_INFANTRY_CHANCE >= random 100 && count _positions_building > 0) then {
					_building = [_positions_building, resistance] call CTI_CO_FNC_GetTownSpawnBuilding;
					if !(_building select 1 isEqualTo -1) then {
						_position = _building select 0;
						_use_default = false;
						_positions_building deleteAt (_building select 1);
					};
				};
			};
			
			if (_use_default) then { //--- Default spawn area, pick a safe area around the town
				_position = [getPos _town, 25, CTI_TOWNS_RESISTANCE_SPAWN_RANGE, ([10, 25] select (_has_vehicles)), (["infantry", "vehicles"] select (_has_vehicles))] call CTI_CO_FNC_GetSafePosition;
			};
		};
	} else { //--- The town is naval
		_use_default = true;
		if (CTI_TOWNS_SPAWN_MODE isEqualTo 1 && !_has_vehicles) then { //--- Check if Infantry should spawn in buildings or not
			if (count _positions_building > 0) then { //--- Naval AI squads will always spawn in buildings
				_building = [_positions_building, resistance] call CTI_CO_FNC_GetTownSpawnBuilding;
				if !(_building select 1 isEqualTo -1) then {
					_position = _building select 0;
					_use_default = false;
					_positions_building deleteAt (_building select 1);
				};
			};
		};
		
		if (_use_default) then { //--- Default spawn area, pick a sea area
			_position = [[ASLToAGL getPosASL _town, ([1, CTI_TOWNS_NAVAL_RESISTANCE_MIN_SPAWN_RANGE] select (_has_vehicles)), CTI_TOWNS_NAVAL_RESISTANCE_SPAWN_RANGE, 0] call CTI_CO_FNC_GetRandomPosition, 200, "sea", 8, 3, 1, true] call CTI_CO_FNC_GetRandomBestPlaces;
		};
	};
	
	_positions pushBack _position;
	
	_group = createGroup resistance;
	_group setGroupIdGlobal [format["(%1) %2", _town, _group]];
	_groups pushBack _group;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format["Composing Resistance Team for town [%1] using group [%2] at position [%3] with units [%4]", _town getVariable "cti_town_name", _group, _position, _x]] call CTI_CO_FNC_Log;
	};
} forEach _teams;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format["Composed [%1] Resistance Teams for town [%2] having a max SV of [%3]", count _teams, _town getVariable "cti_town_name", _value]] call CTI_CO_FNC_Log;
};

[_teams, _groups, _positions]