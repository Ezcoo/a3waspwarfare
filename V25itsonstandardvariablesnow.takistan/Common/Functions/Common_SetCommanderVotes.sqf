Private["_logik","_side","_value"];

_side = _this select 0;
_value = _this select 1;

_logik = (_side) Call CTI_CO_FNC_GetSideLogic;

{
	if ((_x getVariable "CTI_vote") != _value) then {_x setVariable ["CTI_vote", _value, true]};
} forEach (_logik getVariable "CTI_teams");