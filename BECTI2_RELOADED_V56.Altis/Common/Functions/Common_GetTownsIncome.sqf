Private ["_income","_incomeCoef","_incomeSystem","_side"];
_side = (_this) Call EZC_fnc_Functions_Common_GetSideID;

_income = 0;
_incomeCoef = 0;

{
	if ((_x getVariable "sideID") == _side) then {
		_income = _income + (_x getVariable "supplyValue")
	};
} forEach towns;

_income