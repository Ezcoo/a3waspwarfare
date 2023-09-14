Private ["_commanderTeam","_direction","_hq","_HQName","_logik","_MHQ","_position","_side","_sideID","_sideText"];

_side = (_this select 0) select 0;
_sideText = str _side;
_sideID = (_side) Call EZC_fnc_Functions_Common_GetSideID;

_hq = (_side) Call EZC_fnc_Functions_Common_GetSideHQ;
_position = getPos _hq;
_direction = getDir _hq;

_commanderTeam = (_side) Call EZC_fnc_Functions_Common_GetCommanderTeam;
_logik = (_side) Call EZC_fnc_Functions_Common_GetSideLogic;
if !(isNull _commanderTeam) then {
	if (isPlayer (leader _commanderTeam)) then {
		['hq-setstatus', false] remoteExecCall ["EZC_fnc_PVFunctions_HandleSpecial", leader _commanderTeam];
	};
};

_logik setVariable ['cti_hq_repairing',true, true];

_MHQ = [missionNamespace getVariable Format["cti_%1MHQNAME", _sideText], _position, _sideID, _direction, true, false] Call EZC_fnc_Functions_Common_CreateVehicle;
_MHQ setVariable ["cti_Taxi_Prohib", true];
_MHQ setVariable ["cti_trashed", false];
_MHQ setVariable ["cti_side", _side];
_MHQ setVariable ["cti_structure_type", "Headquarters"];
_MHQ addEventHandler ['killed', {_this Spawn cti_SE_FNC_OnHQKilled}];
_MHQ setVelocity [0,0,-1];
_MHQ setVariable ["cti_trashable", false];
_MHQ addEventHandler ["hit",{_this Spawn cti_SE_FNC_BuildingDamaged}];
_logik setVariable ['cti_hq', _MHQ, true];
//_MHQ addEventHandler ['handleDamage',{[_this select 0,_this select 2,_this select 3] Call cti_SE_FNC_BuildingHandleDamages}];

if (isMultiplayer) then {
	["set-hq-killed-eh", _mhq] remoteExecCall ["EZC_fnc_PVFunctions_HandleSpecial", _side];
}; //--- Since the Killed EH fires localy, we send the information to the existing clients, JIP clients need to have the event in init_client.sqf (if !deployed).


_logik setVariable ['cti_hq_deployed', false, true];
_logik setVariable ['cti_hq_repairing',false, true];
_logik setVariable ['cti_hq_repair_count', (_logik getVariable "cti_hq_repair_count") + 1, true];

 _commanderTeam = (_side) Call EZC_fnc_Functions_Common_GetCommanderTeam;
['auto-wall-constructing-changed', _MHQ] remoteExecCall ["EZC_fnc_PVFunctions_SetMHQLock", leader _commanderTeam];
	
[_side,"Mobilized", ["Base", _MHQ]] Spawn cti_SE_FNC_SideMessage;
deleteVehicle _hq;	
		

["INFORMATION", Format ["Server_MHQRepair.sqf: [%1] MHQ has been repaired.", _sideText]] Call EZC_fnc_Functions_Common_LogContent;