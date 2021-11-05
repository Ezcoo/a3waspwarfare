Private["_team","_side","_teams", "_sideJoined", "_logic", "_needToAdd"];

_team 			= _this select 0;
_side 			= _this select 1;
_uid			= _this select 2;
_isteamAdding 	= _this select 3; 
_sideJoined 	= side player;
_logic 			= nil;

if(isNil "commonInitComplete")then{commonInitComplete = false};
waitUntil {commonInitComplete};

if(_sideJoined == _side)then{
	while {isNil "_logic"} do {
		_logic = _sideJoined Call CTI_CO_FNC_GetSideLogic; 
		if (isNil "_logic") then {sleep 1};
	};
	
	_logic synchronizeObjectsAdd [leader _team];
	_teams = _logic getVariable "CTI_teams";
	{
		if !(isNil '_x') then {
			if (_x isKindOf "Man") then {
				Private ["_group"];
				_group = group _x;
				
				if(_team == _group)then{
					_group setVariable ["CTI_side", _side];
					_group setVariable ["CTI_persistent", true];
					_group setVariable ["CTI_queue", []];
					_group setVariable ["CTI_vote", -1, true];
					[_group, ""] Call CTI_CO_FNC_SetTeamRespawn;
					[_group, -1] Call CTI_CO_FNC_SetTeamType;
					[_group, "towns"] Call CTI_CO_FNC_SetTeamMoveMode;
					[_group, [0,0,0]] Call CTI_CO_FNC_SetTeamMovePos;
					_group setVariable ["CTI_uid", _uid];
					_group setVariable ["CTI_teamleader", leader _group];	
				};
			};
		};
	} forEach (synchronizedObjects _logic);
	
	_logic setVariable ["CTI_teams", _teams, true];
	_logic setVariable ["CTI_teams_count", count _teams];
	
	missionNamespace setVariable [Format["CTI_%1TEAMS",_sideJoined], _logic getVariable "CTI_teams"];
	CTI_Client_Teams = missionNamespace getVariable Format['CTI_%1TEAMS',_sideJoined];
	CTI_Client_Teams_Count = count CTI_Client_Teams;
};








