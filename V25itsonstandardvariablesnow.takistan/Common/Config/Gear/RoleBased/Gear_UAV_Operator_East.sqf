private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

// East UAV Operator special gear list
/*
_i pushBack  "O_UAV_01_backpack_F";
_u pushBack  4;
_p pushBack  1000;

_i pushBack  "O_UavTerminal";
_u pushBack  4;
_p pushBack  500;
*/
[_faction, _i, _u, _p, WSW_UAV_OPERATOR] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Role_Config_Set.sqf";

// todo: verify useful reasons to keep here code lines below
_t = [];

[_faction, _t, WSW_UAV_OPERATOR] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Role_Template_Set.sqf";