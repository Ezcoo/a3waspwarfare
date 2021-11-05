Private ["_commanderTeam","_direction","_hq","_HQName","_logik","_MHQ","_position","_side","_sideID","_sideText"];

_side = (_this select 0) select 0;
_sideText = str _side;
_sideID = (_side) Call CTI_CO_FNC_GetSideID;

_hq = (_side) Call CTI_CO_FNC_GetSideHQ;
_position = getPos _hq;
_direction = getDir _hq;

_commanderTeam = (_side) Call CTI_CO_FNC_GetCommanderTeam;
_logik = (_side) Call CTI_CO_FNC_GetSideLogic;
if !(isNull _commanderTeam) then {
	if (isPlayer (leader _commanderTeam)) then {
		['hq-setstatus', false] remoteExecCall ["CTI_CL_FNC_HandleSpecial", leader _commanderTeam];
	};
};

_logik setVariable ['CTI_hq_repairing',true, true];

_MHQ = [missionNamespace getVariable Format["CTI_%1MHQNAME", _sideText], _position, _sideID, _direction, true, false] Call CTI_CO_FNC_CreateVehicle;
_MHQ setVariable ["CTI_Taxi_Prohib", true];
_MHQ setVariable ["CTI_trashed", false];
_MHQ setVariable ["CTI_side", _side];
_MHQ setVariable ["CTI_structure_type", "Headquarters"];
_MHQ addEventHandler ['killed', {_this Spawn CTI_SE_FNC_OnHQKilled}];
_MHQ setVelocity [0,0,-1];
_MHQ setVariable ["CTI_trashable", false];
_MHQ addEventHandler ["hit",{_this Spawn CTI_SE_FNC_BuildingDamaged}];
_logik setVariable ['CTI_hq', _MHQ, true];
_MHQ addEventHandler ['handleDamage',{[_this select 0,_this select 2,_this select 3] Call CTI_SE_FNC_BuildingHandleDamages}];

if (isMultiplayer) then {
	["set-hq-killed-eh", _mhq] remoteExecCall ["CTI_CL_FNC_HandleSpecial", _side];
}; //--- Since the Killed EH fires localy, we send the information to the existing clients, JIP clients need to have the event in init_client.sqf (if !deployed).


_logik setVariable ['CTI_hq_deployed', false, true];
_logik setVariable ['CTI_hq_repairing',false, true];
_logik setVariable ['CTI_hq_repair_count', (_logik getVariable "CTI_hq_repair_count") + 1, true];

 _commanderTeam = (_side) Call CTI_CO_FNC_GetCommanderTeam;
['auto-wall-constructing-changed', _MHQ] remoteExecCall ["CTI_CL_FNC_SetMHQLock", leader _commanderTeam];
	
[_side,"Mobilized", ["Base", _MHQ]] Spawn CTI_SE_FNC_SideMessage;
deleteVehicle _hq;	
		

["INFORMATION", Format ["Server_MHQRepair.sqf: [%1] MHQ has been repaired.", _sideText]] Call CTI_CO_FNC_LogContent;