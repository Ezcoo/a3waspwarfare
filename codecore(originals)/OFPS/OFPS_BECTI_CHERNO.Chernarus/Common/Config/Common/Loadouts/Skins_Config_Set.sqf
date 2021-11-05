params["_faction", "_faction", "_skin"];
private ["_cpt", "_filterui", "_items"];

_side = _this select 0;
_faction = _this select 1;
_skin = _this select 2;
_cpt = 0;

_skins = missionNamespace getVariable format ["CTI_%1_SKINS", _side];
if(isNil "_skins") then{_skins = [];};

for '_i' from 0 to (count _skin)-1 do {
	_u = _skin select _i;
	_enabled = _u select 0;
	_name = _u select 1;
	_menuname = _u select 2;
	_texture = _u select 3;
	_price = _u select 4;
	_rank = _u select 5;
	_special = _u select 6;

	_get = missionNamespace getVariable format["CTI_Skin_%1_%2",_side,_name];
	if (isNil "_get") then {

		_stored = [_enabled, _name,_menuname,_texture,_price,_rank,_special];

		//set skin variable
		missionNamespace setVariable [format["CTI_Skin_%1_%2",_side,_name], _stored];

		_skins pushBack format["CTI_Skin_%1_%2",_side,_name];

		_cpt = _cpt + 1;
		
		if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Common\Loadouts\Set_Loadouts.sqf", format ["[%1] Set Skin [%2] using menuname [%3]", _side, _name, _menuname]] call CTI_CO_FNC_Log };
	} else {
		if (CTI_Log_Level >= CTI_Log_Warning) then { ["WARNING", "FILE: Common\Config\Common\Loadouts\Set_Loadouts.sqf", format ["[%1] Skin [%2] was skipped since it is already defined", _side, _name]] call CTI_CO_FNC_Log };
	};

};
//set skin list variable
missionNamespace setVariable [format ["CTI_%1_SKINS", _side], _skins];

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Common\Config\Common\Loadouts\Set_Loadouts.sqf", format ["[%1] [%2/%3] Loadouts were defined", _side, _cpt, (count _skin)]] call CTI_CO_FNC_Log };
