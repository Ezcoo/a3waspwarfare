Private['_amount','_team'];

_team = _this select 0;
_amount = _this select 1;

if (isNull _team) exitWith {};

_team setVariable ["CTI_funds", (_team getVariable "CTI_funds") + _amount, true];