Private["_commanderTeam","_logik","_name","_side","_team"];

_side = _this select 0;
_assigned_commander = _this select 1;

_logik = (_side) Call CTI_CO_FNC_GetSideLogic;

if ((_logik getVariable "CTI_votetime") <= 0) then {
	_team = -1;

	//--- Set the commander
	_logik setVariable ["CTI_commander", _assigned_commander, true];
	[_side, _assigned_commander] Spawn CTI_SE_FNC_AssignForCommander;
	["new-commander-assigned", _assigned_commander] remoteExecCall ["CTI_CL_FNC_HandleSpecial", _side];

};