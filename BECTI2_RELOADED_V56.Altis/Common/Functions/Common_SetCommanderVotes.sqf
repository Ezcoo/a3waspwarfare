Private["_logik","_side","_value"];

_side = _this select 0;
_value = _this select 1;

_logik = (_side) Call EZC_fnc_Functions_Common_GetSideLogic;

{
	if ((_x getVariable "cti_vote") != _value) then {_x setVariable ["cti_vote", _value, true]};
} forEach (_logik getVariable "cti_teams");