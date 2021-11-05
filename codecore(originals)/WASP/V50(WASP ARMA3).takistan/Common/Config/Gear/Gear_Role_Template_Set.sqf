private ["_faction", "_templates"];

_faction = _this select 0;
_templates = _this select 1;
_roleName = if(count _this > 2)then{_this select 2}else{nil};

_formated = [];

{
	_cost = 0;
	_picture = "";
	_label = "";
	_haspic = false;

	{
		_cost = _cost + (_x call WFBE_CO_FNC_GetGearItemCost);
	} forEach (_x call WFBE_CO_FNC_ConvertGearToFlat);

	{
		if (_x select 0 != "") then {
			if (_label != "") then { _label = _label + " | " };
			_label = _label + getText(configFile >> "CfgWeapons" >> (_x select 0) >> "displayName");
			if !(_haspic) then { _picture = getText(configFile >> "CfgWeapons" >> (_x select 0) >> "picture"); _haspic = true};
		};
	} forEach (_x select 0);

	_formated pushBack [_label, _picture, _cost, _x, 0];
} forEach _templates;

missionNamespace setVariable [format["wfbe_gear_list_templates_%1_%2", WFBE_Client_SideJoined, _roleName], _formated];