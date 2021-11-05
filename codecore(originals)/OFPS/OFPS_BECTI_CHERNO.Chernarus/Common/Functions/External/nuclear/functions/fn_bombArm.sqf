private ["_object"];
_object = _this select 0;
_caller = _this select 1;
_id = _this select 2;//action ID
//remove action
_object removeAction _id;
//arm bomb
[[[_object, side _caller], "Common\Functions\External\nuclear\functions\fn_bombTimer.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;