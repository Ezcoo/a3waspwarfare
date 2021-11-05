params["_side", "_ammo"];
private ["_cpt", "_ammo"];

_side = _this select 0;
_ammo = _this select 1;

_cpt = 0;
for '_i' from 0 to (count _ammo)-1 do {
	_u = _ammo select _i;
	_enabled = _u select 0;
	_name = _u select 1;
	_type = _u select 2;
	_classname = _u select 3;
	_location = _u select 4;
	_upgradelevel = _u select 5;
	_price = _u select 6;
	_rearmtime = _u select 7;
	_filters = _u select 8;
	_var_name = _classname;

	if (isClass (configFile >> "CfgAmmo" >> _classname) || isClass (configFile >> "CfgMagazines" >> _classname)) then {
		_get = missionNamespace getVariable format["CTI_Ammo_%1_%2",_side,_classname];
		if (isNil "_get") then {

			_stored = [_enabled, _name,_type,_classname,_location,_upgradelevel,_price,_rearmtime,_filters];
			missionNamespace setVariable [format["CTI_Ammo_%1_%2",_side,_classname], _stored];

			_cpt = _cpt + 1;
			
			if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Common\Ammo\Set_Ammo.sqf", format ["[%1] Set ammo [%2] using classname [%3]", _side, _var_name, _classname]] call CTI_CO_FNC_Log };
		} else {
			if (CTI_Log_Level >= CTI_Log_Warning) then { ["WARNING", "FILE: Common\Config\Common\Ammo\Set_Ammo.sqf", format ["[%1] ammo [%2] was skipped since it is already defined", _side, _var_name]] call CTI_CO_FNC_Log };
		};
	} else {
		if (CTI_Log_Level >= CTI_Log_Error) then { ["ERROR", "FILE: Common\Config\Common\Ammo\Set_Ammo.sqf", format ["[%1] ammo [%2] is not using a valid CfgAmmo classname [%3]. If it belong to an Addons, make sure that it is loaded.", _side, _var_name, _classname]] call CTI_CO_FNC_Log };
	};
};

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Common\Config\Common\Ammo\Set_Ammo.sqf", format ["[%1] [%2/%3] Ammo were defined", _side, _cpt, count _ammo]] call CTI_CO_FNC_Log };