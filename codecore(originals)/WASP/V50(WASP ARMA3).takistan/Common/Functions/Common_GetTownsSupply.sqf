Private ["_income","_side"];

_side = (_this) Call WFBE_CO_FNC_GetSideID;

_income = 0;
{
	if ((_x getVariable "sideID") == _side) then {_income = _income + (_x getVariable "supplyValue")};
} forEach towns;

_income