private ["_faction", "_templates"];

_faction = _this select 0;
_templates = _this select 1;

_formated = [];

{
	_cost = 0;
	_picture = "";
	_label = "";
	_haspic = false;

	
	{
		_cost = _cost + (_x call EZC_fnc_Functions_Common_GetGearItemCost);
	} forEach (_x call EZC_fnc_Functions_Common_ConvertGearToFlat);
	
	{
		if (_x select 0 != "") then {
			if (_label != "") then { _label = _label + " | " };
			_label = _label + getText(configFile >> "CfgWeapons" >> (_x select 0) >> "displayName");
			if !(_haspic) then { _picture = getText(configFile >> "CfgWeapons" >> (_x select 0) >> "picture"); _haspic = true};
		};
	} forEach (_x select 0);
	
	_formated pushBack [_label, _picture, _cost, _x, 0/* todo Gear Upgrade */];
} forEach _templates;

missionNamespace setVariable ["cti_gear_list_templates", _formated];

/*
	_upgrade = 0;
	_nils = [];
	
	{
		_var = missionNamespace getVariable _x;
		if !(isNil '_var') then {
			_cost = _cost + ((_var select 0) select 1);
			if (((_var select 0) select 0) > _upgrade) then {_upgrade = (_var select 0) select 0};
		} else {
			_nils pushBack _x;
		};
	} forEach (_x call EZC_fnc_Functions_Common_ConvertGearToFlat);
	
	//--- Make sure that the template is ok
	if (count _nils < 1) then {
		{
			if (_x select 0 != "") then {
				if (_label != "") then { _label = _label + " | " };
				_label = _label + getText(configFile >> "CfgWeapons" >> (_x select 0) >> "displayName");
				if !(_haspic) then { _picture = getText(configFile >> "CfgWeapons" >> (_x select 0) >> "picture"); _haspic = true};
			};
		} forEach (_x select 0);
		
		_formated pushBack [_label, _picture, _cost, _x, _upgrade];
		if (cti_Log_Level >= cti_Log_Error) then { ["DEBUG", "FILE: Common\Config\Gear\Gear_Template_Set.sqf", format ["Template [%1] has been set with name [%2], cost [%3] and upgrade level [%4].", _forEachIndex, _label, _cost, _upgrade]] call cti_CO_FNC_Log };
	} else {
		//todo diaglog error
		if (cti_Log_Level >= cti_Log_Error) then { ["ERROR", "FILE: Common\Config\Gear\Gear_Template_Set.sqf", format ["Template [%1] contains nil items [%2].", _forEachIndex, _nils]] call cti_CO_FNC_Log };
	};
} forEach _templates;

missionNamespace setVariable ["cti_gear_list_templates", _formated];
*/