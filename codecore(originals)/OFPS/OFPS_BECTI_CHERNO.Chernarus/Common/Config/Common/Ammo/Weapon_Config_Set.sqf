params["_side", "_weapons"];
private ["_cpt", "_weapons"];

_side = _this select 0;
_weapons = _this select 1;

_cpt = 0;
for '_i' from 0 to (count _weapons)-1 do {
	_u = _weapons select _i;
	_enabled = _u select 0;
	_name = _u select 1;
	_classname = _u select 2;
	_maxmags = _u select 3;
	_var_name = _classname;

	if (isClass (configFile >> "cfgWeapons" >> _classname)) then {
		_get = missionNamespace getVariable format["CTI_Weapon_%1_%2",_side,_classname];
		if (isNil "_get") then {

			_stored = [_enabled, _name,_classname,_maxmags];
			missionNamespace setVariable [format["CTI_Weapon_%1_%2",_side,_classname], _stored];

			_cpt = _cpt + 1;
			
			if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Common\Ammo\Set_Weapon.sqf", format ["[%1] Set Weapon [%2] using classname [%3]", _side, _var_name, _classname]] call CTI_CO_FNC_Log };
		} else {
			if (CTI_Log_Level >= CTI_Log_Warning) then { ["WARNING", "FILE: Common\Config\Common\Ammo\Set_Weapon.sqf", format ["[%1] Weapon [%2] was skipped since it is already defined", _side, _var_name]] call CTI_CO_FNC_Log };
		};
	} else {
		if (CTI_Log_Level >= CTI_Log_Error) then { ["ERROR", "FILE: Common\Config\Common\Ammo\Set_Weapon.sqf", format ["[%1] Weapon [%2] is not using a valid cfgWeapons classname [%3]. If it belong to an Addons, make sure that it is loaded.", _side, _var_name, _classname]] call CTI_CO_FNC_Log };
	};
};

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Common\Config\Common\Ammo\Set_Weapon.sqf", format ["[%1] [%2/%3] Weapons were defined", _side, _cpt, count _weapons]] call CTI_CO_FNC_Log };