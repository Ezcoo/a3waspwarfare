Private ['_sideID','_towns'];

_sideID = (_this) Call WFBE_CO_FNC_GetSideID;
_towns = [];

{
	if ((_x getVariable 'sideID') == _sideID) then {_towns pushBack _x};
} forEach towns;

_towns