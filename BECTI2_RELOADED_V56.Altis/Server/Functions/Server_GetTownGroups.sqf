/*
	Return a list of groups to spawn in a town.
	 Parameters:
		- Town Entity.
		- Side.
*/

// Private ["_aa_get","_get","_groups","_infantry","_infantry_aux","_infantry_primary","_kind","_maxgroups","_ratio_inf","_ratio_inf_aux","_ratio_veh","_ratio_veh_aux","_side","_remove","_sv","_town","_types","_vehicles","_vehicles_aux","_vehicles_primary"];

_town = _this select 0;
_side = _this select 1;
_aa_get = if (count _this > 2) then {_this select 2} else {false};

_sv = _town getVariable "supplyValue";
_town_airactive = _town getVariable "cti_active_air";
_startingSupplyValue = _town getVariable "startingSupplyValue";

_units = [];
_percentage_inf = 50;
_groups_max = 0;
_randomize = 0;

_upgrades = (_side) Call EZC_fnc_Functions_Common_GetSideUpgrades;

_current_infantry_upgrade = _upgrades select cti_UP_BARRACKS;
_current_light_upgrade = _upgrades select cti_UP_LIGHT;
_current_heavy_upgrade = _upgrades select cti_UP_HEAVY;

// _units = [[group type, force (multiplier), raw kind (0 inf, 1 veh)]]
switch (true) do {
	case (_sv <= 10): {
		_units = [
					[Format ["Team_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 1, 0]
				];
		_percentage_inf = 100;
		_groups_max = 1;
	};
	case (_sv > 10 && _sv < 20): {
		_units = [
					[Format ["Team_%1", _current_infantry_upgrade], 2, 0],
					[Format ["Team_MG_%1", _current_infantry_upgrade], 2, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Motorized_%1", _current_light_upgrade], 1, 1]
				 ];
		_percentage_inf = 80;
		_groups_max = 2;
	};
	case (_sv >= 20 && _sv < 40): {
		_units = [
					[Format ["Squad_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_MG_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 1, 0],
					["Team_AA", 1, 0],
					[Format ["Team_Sniper_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Motorized_%1", _current_light_upgrade], 1, 1],
					[Format ["Mechanized_%1", _current_heavy_upgrade], 1, 1]
				];
		_percentage_inf = 80;
		_groups_max = 3;

	};
	case (_sv >= 40 && _sv < 60): {
		_units = [
					[Format ["Squad_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_MG_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 1, 0],
					[if(_current_infantry_upgrade == 3)then{"Squad_Advanced"}else{Format ["Squad_%1", _current_infantry_upgrade]}, 2, 0],
					[Format ["Motorized_%1", _current_light_upgrade], 1, 1],
					["AA_Light", 1, 1],
					[Format ["Mechanized_%1", _current_heavy_upgrade], 2, 1]
				];
		_percentage_inf = 75;
		_groups_max = 3;

	};
	case (_sv >= 60 && _sv < 80): {
		_units = [
					[Format ["Squad_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_MG_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_%1", _current_infantry_upgrade], 1, 0],
					["Team_AA", 2, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 2, 0],
					[Format ["Team_Sniper_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Motorized_%1", _current_light_upgrade], 2, 1],
					[Format ["Mechanized_%1", _current_heavy_upgrade], 2, 1]
				];
		_percentage_inf = 70;
		_groups_max = 4;

	};
	case (_sv >= 80 && _sv < 100): {
		_units = [
					[Format ["Squad_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_MG_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 2, 0],
					[if(_current_infantry_upgrade == 3)then{"Squad_Advanced"}else{Format ["Squad_%1", _current_infantry_upgrade]}, 3, 0],
					[Format ["Mechanized_%1", _current_heavy_upgrade], 2, 1],
					[Format ["Armored_%1", _current_heavy_upgrade], 1, 1]
				];
		_percentage_inf = 70;
		_groups_max = 4;

	};
	case (_sv >= 100 && _sv < 120): {
		_units = [
					[Format ["Squad_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_MG_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_%1", _current_infantry_upgrade], 1, 0],
					["Team_AA", 1, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 2, 0],
					[if(_current_infantry_upgrade == 3)then{"Squad_Advanced"}else{Format ["Squad_%1", _current_infantry_upgrade]}, 2, 0],
					[Format ["Team_Sniper_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Mechanized_%1", _current_heavy_upgrade], 2,1],
					[Format ["Armored_%1", _current_heavy_upgrade], 3, 1]
				];
		_percentage_inf = 70;
		_groups_max = 4;
	};
	case (_sv >= 120): {
		_units = [
					[Format ["Squad_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_MG_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Team_%1", _current_infantry_upgrade], 1, 0],
					["Team_AA", 1, 0],
					[Format ["Team_AT_%1", _current_infantry_upgrade], 3, 0],
					[if(_current_infantry_upgrade == 3)then{"Squad_Advanced"}else{Format ["Squad_%1", _current_infantry_upgrade]}, 2, 0],
					[Format ["Team_Sniper_%1", _current_infantry_upgrade], 1, 0],
					[Format ["Mechanized_%1", _current_heavy_upgrade], 1, 1],
					[Format ["Armored_%1", _current_heavy_upgrade], 3, 1]
				];
		_percentage_inf = 70;
		_groups_max = 4;
	};
};

if (_randomize != 0) then {_groups_max = _groups_max + round(random _randomize - random _randomize)};
_groups_max = round(_groups_max * (missionNamespace getVariable "cti_C_TOWNS_UNITS_COEF"));

if (_aa_get) then {if (_groups_max > 3) then {_groups_max = 3}};
if(_sv == _startingSupplyValue)then{ _groups_max = 1; };

_unit_infantry = [];
_unit_vehicles = [];

{
	if (!isNil {missionNamespace getVariable Format ["cti_%1_GROUPS_%2",_side,_x select 0]}) then {
		_add = true;
		if (_aa_get) then {
			if !((_x select 0) in ["AA_Light","AA_Heavy","Team_AA"]) then {_add = false}
		} else {
			if (_town_airactive && (_x select 0) in ["AA_Light","AA_Heavy","Team_AA"]) then {_add = false};
		};
		if (_add) then {
			_array = if ((_x select 2) == 0) then {_unit_infantry} else {_unit_vehicles};
			for '_j' from 1 to (_x select 1) do {_array pushBack (_x select 0)};
		};
	};
} forEach _units;

_total_infantry = count _unit_infantry;
_total_vehicles = count _unit_vehicles;

if ((_total_infantry + _total_vehicles) == 0) exitWith {[]};

if (_total_infantry == 0) then {_percentage_inf = 0};
if (_total_vehicles == 0) then {_percentage_inf = 100};

if (_total_infantry > 1) then {_unit_infantry = (_unit_infantry) Call EZC_fnc_Functions_Common_ArrayShuffle};
if (_total_vehicles > 1) then {_unit_vehicles = (_unit_vehicles) Call EZC_fnc_Functions_Common_ArrayShuffle};

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

_contents = [];
{
	_get = missionNamespace getVariable Format ["cti_%1_GROUPS_%2", _side, _x];

	if !(isNil '_get') then {_contents pushBack (_get select floor(random count _get))};
} forEach _final;

_contents