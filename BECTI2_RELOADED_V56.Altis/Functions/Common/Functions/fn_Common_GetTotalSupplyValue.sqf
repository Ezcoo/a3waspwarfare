Private["_side","_sideID","_totalSupply"];

_side = _this;
_sideID = _side Call EZC_fnc_Functions_Common_GetSideID;
_totalSupply = 0;

{
	if ((_x getVariable "sideID") == _sideID) then	{
		_totalSupply = _totalSupply + (_x getVariable "supplyValue");
	};
} forEach towns;

_totalSupply