//--- Headless Client initialization...
["INITIALIZATION", "Init_HC.sqf: Running the headless client initialization."] Call EZC_fnc_Functions_Common_LogContent;






//--- Client Functions.
EZC_fnc_Functions_Client_DelegateTownAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateTownAI.sqf";
EZC_fnc_Functions_Client_DelegateAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAI.sqf";
cti_CL_FNC_DelegateBasePatrolAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateBasePatrolAI.sqf";
EZC_fnc_Functions_Client_DelegateAIStaticDefence = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAIStaticDefence.sqf";
EZC_fnc_PVFunctions_HandleSpecial = Compile preprocessFileLineNumbers "Client\PVFunctions\HandleSpecial.sqf";
cti_CL_FNC_GetSideID = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideID.sqf";


//EZC_fnc_Functions_Common_SetTownPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";


if ((missionNamespace getVariable "cti_C_PLAYERS_RENDER_WAYPOINTS") == 0) then {

//EZC_fnc_Functions_Common_WaypointPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrol.sqf";
//EZC_fnc_Functions_Common_WaypointPatrolTown = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrolTown.sqf";
//EZC_fnc_Functions_Common_WaypointSimple = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointSimple.sqf";
EZC_fnc_Functions_Common_SetTownPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";
};


cti_CL_FNC_RemoveTownAI = Compile preprocessFileLineNumbers "Headless\Functions\HC_RemoveTownAI.sqf";
cti_SE_FNC_AIPatrol  = Compile preprocessFile "Server\AI\Orders\AI_Patrol.sqf";
EZC_fnc_Functions_Common_UpdateStatistics = Compile preprocessFileLineNumbers "Common\Functions\Common_UpdateStatistics.sqf";
cti_HC_FNC_RemoveGroup = Compile preprocessFileLineNumbers "Headless\Functions\HC_RemoveGroup.sqf";
cti_SE_FNC_CanUpdateTeam = Compile preprocessFile "Server\Functions\Server_CanUpdateTeam.sqf";
cti_SE_FNC_UpdateTeam = Compile preprocessFile "Server\Functions\Server_UpdateTeam.sqf";
cti_SE_FNC_AIWPAdd = Compile preprocessFile "Server\AI\Orders\AI_WPAdd.sqf";
cti_SE_FNC_AIWPRemove = Compile preprocessFile "Server\AI\Orders\AI_WPRemove.sqf";
cti_SE_FNC_HandleEmptyVehicle = Compile preprocessFileLineNumbers "Server\Functions\Server_HandleEmptyVehicle.sqf";
[] Call Compile preprocessFile "Server\Config\Config_GUE.sqf";

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
["connected-hc", player] remoteExecCall ["EZC_fnc_PVFunctions_RequestSpecial",2];