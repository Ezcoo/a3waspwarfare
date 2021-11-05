Private ["_commanderTeam","_direction","_hq","_HQName","_logik","_MHQ","_position","_side","_sideID","_sideText"];

_side = (_this select 0) select 0;
_sideText = str _side;
_sideID = (_side) Call WFBE_CO_FNC_GetSideID;

_hq = (_side) Call WFBE_CO_FNC_GetSideHQ;
_position = getPos _hq;
_direction = getDir _hq;

_commanderTeam = (_side) Call WFBE_CO_FNC_GetCommanderTeam;
_logik = (_side) Call WFBE_CO_FNC_GetSideLogic;
if !(isNull _commanderTeam) then {
	if (isPlayer (leader _commanderTeam)) then {
		['hq-setstatus', false] remoteExecCall ["WFBE_CL_FNC_HandleSpecial", leader _commanderTeam];
	};
};

_logik setVariable ['wfbe_hq_repairing',true, true];

_MHQ = [missionNamespace getVariable Format["WFBE_%1MHQNAME", _sideText], _position, _sideID, _direction, true, false] Call WFBE_CO_FNC_CreateVehicle;
_MHQ setVariable ["WFBE_Taxi_Prohib", true];
_MHQ setVariable ["wfbe_trashed", false];
_MHQ setVariable ["wfbe_side", _side];
_MHQ setVariable ["wfbe_structure_type", "Headquarters"];
_MHQ addEventHandler ['killed', {_this Spawn WFBE_SE_FNC_OnHQKilled}];
_MHQ setVelocity [0,0,-1];
_MHQ setVariable ["wfbe_trashable", false];
_MHQ addEventHandler ["hit",{_this Spawn WFBE_SE_FNC_BuildingDamaged}];
_logik setVariable ['wfbe_hq', _MHQ, true];
_MHQ addEventHandler ['handleDamage',{[_this select 0,_this select 2,_this select 3] Call WFBE_SE_FNC_BuildingHandleDamages}];

if (isMultiplayer) then {
	["set-hq-killed-eh", _mhq] remoteExecCall ["WFBE_CL_FNC_HandleSpecial", _side];
}; //--- Since the Killed EH fires localy, we send the information to the existing clients, JIP clients need to have the event in init_client.sqf (if !deployed).


_logik setVariable ['wfbe_hq_deployed', false, true];
_logik setVariable ['wfbe_hq_repairing',false, true];
_logik setVariable ['wfbe_hq_repair_count', (_logik getVariable "wfbe_hq_repair_count") + 1, true];

 _commanderTeam = (_side) Call WFBE_CO_FNC_GetCommanderTeam;
['auto-wall-constructing-changed', _MHQ] remoteExecCall ["WFBE_CL_FNC_SetMHQLock", leader _commanderTeam];
	
[_side,"Mobilized", ["Base", _MHQ]] Spawn WFBE_SE_FNC_SideMessage;
deleteVehicle _hq;	
		

["INFORMATION", Format ["Server_MHQRepair.sqf: [%1] MHQ has been repaired.", _sideText]] Call WFBE_CO_FNC_LogContent;