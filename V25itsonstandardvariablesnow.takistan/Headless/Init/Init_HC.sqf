//--- Headless Client initialization...
["INITIALIZATION", "Init_HC.sqf: Running the headless client initialization."] Call CTI_CO_FNC_LogContent;

//--- Client Functions.
CTI_CL_FNC_DelegateTownAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateTownAI.sqf";
CTI_CL_FNC_DelegateAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAI.sqf";
CTI_CL_FNC_DelegateBasePatrolAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateBasePatrolAI.sqf";
CTI_CL_FNC_DelegateAIStaticDefence = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAIStaticDefence.sqf";
CTI_CL_FNC_HandleSpecial = Compile preprocessFileLineNumbers "Client\PVFunctions\HandleSpecial.sqf";
CTI_CL_FNC_GetSideID = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideID.sqf";
CTI_CO_FNC_SetPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";
CTI_CL_FNC_RemoveTownAI = Compile preprocessFileLineNumbers "Headless\Functions\HC_RemoveTownAI.sqf";
CTI_SE_FNC_AIPatrol  = Compile preprocessFile "Server\AI\Orders\AI_Patrol.sqf";
CTI_CO_FNC_UpdateStatistics = Compile preprocessFileLineNumbers "Common\Functions\Common_UpdateStatistics.sqf";
CTI_HC_FNC_RemoveGroup = Compile preprocessFileLineNumbers "Headless\Functions\HC_RemoveGroup.sqf";
CTI_SE_FNC_CanUpdateTeam = Compile preprocessFile "Server\Functions\Server_CanUpdateTeam.sqf";
CTI_SE_FNC_UpdateTeam = Compile preprocessFile "Server\Functions\Server_UpdateTeam.sqf";
CTI_SE_FNC_AIWPAdd = Compile preprocessFile "Server\AI\Orders\AI_WPAdd.sqf";
CTI_SE_FNC_AIWPRemove = Compile preprocessFile "Server\AI\Orders\AI_WPRemove.sqf";
CTI_SE_FNC_HandleEmptyVehicle = Compile preprocessFileLineNumbers "Server\Functions\Server_HandleEmptyVehicle.sqf";
[] Call Compile preprocessFile "Server\Config\Config_GUE.sqf";

sideID = CTI_Client_SideJoined Call CTI_CL_FNC_GetSideID;
CTI_Client_SideID = sideID;

Headless_Client_ID = owner player;
Headless_Client_UID = getPlayerUID player;
Headless_Client_Towns = [];

CTI_HC_BasePatrolTeams = [];
CTI_HC_DEFENCE_GROUP_EAST = nil;
CTI_HC_DEFENCE_GROUP_WEST = nil;

emptyQueu = [];
WF_Logic setVariable ["emptyVehicles",[],true];
[] ExecVM "Server\FSM\emptyvehiclescollector.sqf";


//--- We wait for the server full init (just in case!).
sleep 3;

//--- Notify the server that our headless client is here.
["connected-hc", player] remoteExecCall ["CTI_SE_PVF_RequestSpecial",2];