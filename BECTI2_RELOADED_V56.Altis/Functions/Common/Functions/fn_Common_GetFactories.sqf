

Private ["_buildings","_kind","_list","_side","_type"];
_side = _this select 0;
_kind = _this select 1;
_buildings = _this select 2;

_list = [];

diag_log format ["Common_GetFactories.sqf was called with parameters: _side: %1, _kind: %2, _buildings: %3", _side, _kind, _buildings];
_type = (missionNamespace getVariable Format["cti_%1STRUCTURENAMES", _side]) select _kind;

//_type = (Format["cti_%1STRUCTURENAMES",str _side] Call GetNamespace) select _kind;

{if (typeOf _x == _type && alive _x) then {_list pushBack _x}} forEach _buildings;

_list

/*
Private ["_buildings","_kind","_list","_side","_type"];
_side = _this select 0;
_kind = _this select 1;
_buildings = _this select 2;

_list = [];
_type = (Format["WFBE_%1STRUCTURENAMES",str _side] Call GetNamespace) select _kind;
{if (typeOf _x == _type && alive _x) then {_list = _list + [_x]}} forEach _buildings;

_list


-------------------
Private ["_buildings","_kind","_list","_side","_type"];
_side = _this select 0;
_kind = _this select 1;
_buildings = _this select 2;

_list = [];
_type = (Format["WFBE_%1STRUCTURENAMES",str _side] Call GetNamespace) select _kind;
{if (typeOf _x == _type && alive _x) then {_list = _list + [_x]}} forEach _buildings;

_list


*/