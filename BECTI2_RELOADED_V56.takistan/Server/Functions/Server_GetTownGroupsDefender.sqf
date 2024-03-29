/*
	Return a list of groups to spawn in a town (defender / resistance).
	 Parameters:
		- Town Entity.
		- Side.
*/

Private ["_aa_get","_get","_groups","_infantry","_infantry_aux","_infantry_primary","_kind","_maxgroups","_ratio_inf","_ratio_inf_aux","_ratio_veh","_ratio_veh_aux","_side","_remove","_sv","_town","_types","_vehicles","_vehicles_aux","_vehicles_primary"];

_town = _this select 0;
_side = _this select 1;
_aa_get = if (count _this > 2) then {_this select 2} else {false};

_sv = _town getVariable "supplyValue";

_units = [];
_contents = [];
_percentage_inf = 50;
_groups_max = 0;
_randomize = 0;

//--- Get the defender teams depending on the town type.
switch (_town getVariable "cti_town_type") do { // _units = [[group type, force (chance multiplier), group kind (0 inf, 1 veh)]]
	case "TinyTown1": {
    		_units = [["Squad", 1, 0], ["Team", 1, 0],["Squad_Advanced", 1, 0],["Team_MG", 1, 0]];
    		_percentage_inf = 100;
    		_groups_max = 3;
    	};
    	case "SmallTown1": {
    		_units = [["Squad", 1, 0],["Team", 1, 0],["Squad_Advanced", 1, 0], ["Team", 1, 0],["Team_AT", 1, 0],["AA_Light", 1, 1],["Motorized", 1, 1],["Mechanized", 1, 1]];
    		_percentage_inf = 80;
    		_groups_max = 4;
    	};
    	case "SmallTown2": {
    		_units = [["Squad_Advanced", 1, 0],["Team", 1, 0],["Team_MG", 1, 0],["Team_AT", 2, 0],["Motorized", 1, 1],["AA_Light", 1, 1],["Armored_Light", 1, 1]];
    		_percentage_inf = 80;
    		_groups_max = 4;
    	};
    	case "MediumTown1": {
    		_units = [["Team", 3, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["Team_AT", 1, 0],["Motorized", 1, 1],["Mechanized", 1, 1],["AA_Light", 1, 1],["Mechanized_Heavy", 2, 1],["Armored_Light", 1, 1]];
    		_percentage_inf = 80;
    		_groups_max = 4;
    	};
    	case "MediumTown2": {
    		_units = [["Team", 3, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["Team_AT", 1, 0],["Motorized", 1, 1],["Mechanized", 2, 1],["AA_Light", 1, 1],["Mechanized_Heavy", 1, 1],["Armored_Light", 1, 1]];
    		_percentage_inf = 80;
    		_groups_max = 4;
    	};
    	case "LargeTown1": {
    		_units = [["Squad", 1, 0],["Team", 2, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["AA_Light", 2, 1],["Team_AT", 1, 0],["Mechanized_Heavy", 2, 1],["Armored_Light", 2, 1],["Armored_Heavy", 1, 1]];
    		_percentage_inf = 75;
    		_groups_max = 5;
    	};
    	case "LargeTown2": {
    		_units = [["Squad_Advanced", 1, 0],["Team", 2, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["AA_Light", 2, 1],["Team_AT", 2, 0],["Mechanized_Heavy", 1, 1],["Armored_Light", 1, 1],["Armored_Heavy", 2, 1]];
    		_percentage_inf = 75;
    		_groups_max = 5;
    	};
    	case "HugeTown1": {
    		_units = [["Squad", 3, 0],["Team", 2, 0],["Squad_Advanced",2, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["AA_Heavy", 2, 0],["Team_AT", 2, 0],["Mechanized_Heavy", 1, 1],["Armored_Light", 2, 1],["Armored_Heavy", 2, 1]];
    		_percentage_inf = 75;
    		_groups_max = 6;
    	};
    	case "HugeTown2": {
    		_units = [["Squad", 2, 0],["Team", 3, 0],["Squad_Advanced",2, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["AA_Heavy", 2, 0],["Team_AT", 2, 0],["Mechanized_Heavy", 1, 1],["Armored_Light", 2, 1],["Armored_Heavy", 2, 1]];
    		_percentage_inf = 75;
    		_groups_max = 6;
    	};
    	default { //--- If nothing is set...
    		_units = [["Squad", 1, 0], ["Team", 1, 0],["Team_AT", 1, 0],["Motorized", 1, 1]];
    		_percentage_inf = 80;
    		_groups_max = 3;
    	};
	/*case "TinyTown1": {
		_units = [["Squad", 1, 0], ["Team", 1, 0],["Squad_Advanced", 1, 0],["Team_MG", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 1;
	};
	case "SmallTown1": {
		_units = [["Squad", 1, 0],["Team", 1, 0],["Squad_Advanced", 1, 0], ["Team", 1, 0],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 1;
	};
	case "SmallTown2": {
		_units = [["Squad_Advanced", 1, 0],["Team", 1, 0],["Team_MG", 1, 0],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 1;
	};
	case "MediumTown1": {
		_units = [["Team", 1, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 2;
	};
	case "MediumTown2": {
		_units = [["Team", 1, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 2;
	};
	case "LargeTown1": {
		_units = [["Squad", 1, 0],["Team", 1, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["AA_Light", 1, 1],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 3;
	};
	case "LargeTown2": {
		_units = [["Squad_Advanced", 1, 0],["Team", 1, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["AA_Light", 1, 1],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 3;
	};
	case "HugeTown1": {
		_units = [["Squad", 1, 0],["Team", 1, 0],["Squad_Advanced",1, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 4;
	};
	case "HugeTown2": {
		_units = [["Squad", 1, 0],["Team", 1, 0],["Squad_Advanced",1, 0],["Team_Sniper", 1, 0],["Team_MG", 1, 0],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 4;
	};
	default { //--- If nothing is set...
		_units = [["Squad", 1, 0], ["Team", 1, 0],["Team_AT", 1, 0]];
		_percentage_inf = 100;
		_groups_max = 1;
	};*/
};

if (_randomize != 0) then {_groups_max = _groups_max + round(random _randomize - random _randomize)};
_groups_max = round(_groups_max * (missionNamespace getVariable "cti_C_TOWNS_UNITS_DEFENDER_COEF"));

if (_aa_get) then {if (_groups_max > 3) then {_groups_max = 3}};

_unit_infantry = [];
_unit_vehicles = [];

{
	if (!isNil {missionNamespace getVariable Format ["cti_%1_GROUPS_%2",_side,_x select 0]}) then {
		_add = true;
		if (_add) then {
			_array = if ((_x select 2) == 0) then {_unit_infantry} else {_unit_vehicles};
			for '_j' from 1 to (_x select 1) do {_array pushBack (_x select 0)};
		};
	};
} forEach _units;

_total_infantry = count _unit_infantry;
_total_vehicles = count _unit_vehicles;

if ((_total_infantry + _total_vehicles) == 0) exitWith {_contents};

if (_total_infantry == 0) then {_percentage_inf = 0};
if (_total_vehicles == 0) then {_percentage_inf = 100};

if (_total_infantry > 1) then {_unit_infantry = (_unit_infantry) Call cti_CO_FNC_ArrayShuffle};
if (_total_vehicles > 1) then {_unit_vehicles = (_unit_vehicles) Call cti_CO_FNC_ArrayShuffle};

_total_infantry_p = round(_groups_max * (_percentage_inf / 100));
_total_vehicles_p = round(_groups_max - _total_infantry_p);

_final = [];
_inf_iterator = 0;
_veh_iterator = 0;
while {_groups_max > 0} do {
	if (_total_infantry_p > 0) then {
		_total_infantry_p = _total_infantry_p - 1;
		if (_inf_iterator > _total_infantry-1) then {_inf_iterator = 0};
		_final pushBack (_unit_infantry select _inf_iterator);
		_groups_max = _groups_max - 1;
		_inf_iterator = _inf_iterator + 1;
	};

	if (_total_vehicles_p > 0) then {
		_total_vehicles_p = _total_vehicles_p - 1;
		if (_veh_iterator > _total_vehicles-1) then {_veh_iterator = 0};
		_final pushBack (_unit_vehicles select _veh_iterator);
		_groups_max = _groups_max - 1;
		_veh_iterator = _veh_iterator + 1;
	};
};

{
	_get = missionNamespace getVariable Format ["cti_%1_GROUPS_%2", _side, _x];
	if !(isNil '_get') then {_contents pushBack (_get select floor(random count _get))};
} forEach _final;

_contents
