//--- Headless Client initialization...
["INITIALIZATION", "Init_HC.sqf: Running the headless client initialization."] Call cti_CO_FNC_LogContent;






//--- Client Functions.
cti_CL_FNC_DelegateTownAI = compileFinal preprocessFileLineNumbers "Client\Functions\Client_DelegateTownAI.sqf";
cti_CL_FNC_DelegateAI = compileFinal preprocessFileLineNumbers "Client\Functions\Client_DelegateAI.sqf";
cti_CL_FNC_DelegateBasePatrolAI = compileFinal preprocessFileLineNumbers "Client\Functions\Client_DelegateBasePatrolAI.sqf";
cti_CL_FNC_DelegateAIStaticDefence = compileFinal preprocessFileLineNumbers "Client\Functions\Client_DelegateAIStaticDefence.sqf";
cti_CL_FNC_HandleSpecial = compileFinal preprocessFileLineNumbers "Client\PVFunctions\HandleSpecial.sqf";
cti_CL_FNC_GetSideID = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetSideID.sqf";


//cti_CO_FNC_SetPatrol = compileFinal preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";


if ((missionNamespace getVariable "cti_C_PLAYERS_RENDER_WAYPOINTS") == 0) then {

//cti_CO_FNC_WaypointPatrol = compileFinal preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrol.sqf";
//cti_CO_FNC_WaypointPatrolTown = compileFinal preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrolTown.sqf";
//cti_CO_FNC_WaypointSimple = compileFinal preprocessFileLineNumbers "Common\Functions\Common_WaypointSimple.sqf";
cti_CO_FNC_SetPatrol = compileFinal preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";
};


cti_CL_FNC_RemoveTownAI = compileFinal preprocessFileLineNumbers "Headless\Functions\HC_RemoveTownAI.sqf";
cti_SE_FNC_AIPatrol  = compileFinal preprocessFileLineNumbers "Server\AI\Orders\AI_Patrol.sqf";
cti_CO_FNC_UpdateStatistics = compileFinal preprocessFileLineNumbers "Common\Functions\Common_UpdateStatistics.sqf";
cti_HC_FNC_RemoveGroup = compileFinal preprocessFileLineNumbers "Headless\Functions\HC_RemoveGroup.sqf";
cti_SE_FNC_CanUpdateTeam = compileFinal preprocessFileLineNumbers "Server\Functions\Server_CanUpdateTeam.sqf";
cti_SE_FNC_UpdateTeam = compileFinal preprocessFileLineNumbers "Server\Functions\Server_UpdateTeam.sqf";
cti_SE_FNC_AIWPAdd = compileFinal preprocessFileLineNumbers "Server\AI\Orders\AI_WPAdd.sqf";
cti_SE_FNC_AIWPRemove = compileFinal preprocessFileLineNumbers "Server\AI\Orders\AI_WPRemove.sqf";
cti_SE_FNC_HandleEmptyVehicle = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleEmptyVehicle.sqf";
[] Call compileFinal preprocessFileLineNumbers "Server\Config\Config_GUE.sqf";

sideID = cti_Client_SideJoined Call cti_CL_FNC_GetSideID;
cti_Client_SideID = sideID;

Headless_Client_ID = owner player;
Headless_Client_UID = getPlayerUID player;
Headless_Client_Towns = [];

cti_HC_BasePatrolTeams = [];
cti_HC_DEFENCE_GROUP_EAST = nil;
cti_HC_DEFENCE_GROUP_WEST = nil;

emptyQueu = [];
WF_Logic setVariable ["emptyVehicles",[],true];
[] ExecVM "Server\FSM\emptyvehiclescollector.sqf";


//--- We wait for the server full init (just in case!).
sleep 3;

//--- Notify the server that our headless client is here.
["connected-hc", player] remoteExecCall ["cti_SE_PVF_RequestSpecial",2];