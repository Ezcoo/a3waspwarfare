Private ["_availableSpawn","_camps_side","_camps_total","_side"];

_side = _this;
_availableSpawn = [];

{
	if ((_x Call EZC_fnc_Functions_Common_GetTotalCamps) == ([_x, _side] Call EZC_fnc_Functions_Common_GetTotalCampsOnSide)) then {_availableSpawn pushBack _x};
} forEach (_side Call EZC_fnc_Functions_Common_GetSideTowns);

_availableSpawn