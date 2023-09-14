Private["_commanderTeam","_logik","_name","_side","_team"];

_side = _this select 0;
_assigned_commander = _this select 1;

_logik = (_side) Call EZC_fnc_Functions_Common_GetSideLogic;

if ((_logik getVariable "cti_votetime") <= 0) then {
	_team = -1;

	//--- Set the commander
	_logik setVariable ["cti_commander", _assigned_commander, true];
	[_side, _assigned_commander] Spawn cti_SE_FNC_AssignForCommander;
	["new-commander-assigned", _assigned_commander] remoteExecCall ["EZC_fnc_PVFunctions_HandleSpecial", _side];

};