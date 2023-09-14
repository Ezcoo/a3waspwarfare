Private["_commanderTeam","_logik","_name","_side","_team"];

_side = _this select 0;
_name = _this select 1;

_logik = (_side) Call EZC_fnc_Functions_Common_GetSideLogic;

if ((_logik getVariable "cti_votetime") <= 0) then {
	_team = -1;
	_commanderTeam = (_side) Call EZC_fnc_Functions_Common_GetCommanderTeam;

	if (!isNull _commanderTeam) then {
		_team = (_logik getVariable "cti_teams") find _commanderTeam;
	};

	//--- Set the commander votes.
	[_side, _team] Call cti_CO_FNC_SetCommanderVotes;
	
	(_side) Spawn cti_SE_FNC_VoteForCommander;
	[_side,"VotingForNewCommander"] Spawn cti_SE_FNC_SideMessage;
	
	["commander-vote-start", _name] remoteExecCall ["EZC_fnc_PVFunctions_HandleSpecial", _side];
};