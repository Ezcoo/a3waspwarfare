Private["_count","_held","_sideID"];

_held = 0;
_sideID = _this Call EZC_fnc_Functions_Common_GetSideID;

{if ((_x getVariable 'sideID') == _sideID) then {_held = _held + 1}} forEach towns;

_held