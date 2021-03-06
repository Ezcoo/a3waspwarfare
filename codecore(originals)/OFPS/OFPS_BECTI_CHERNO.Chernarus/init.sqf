private ["_uid","_name","_id","_jip","_owner"];

//--- Initial View Distance and Object View Distance for both clients and server
setViewDistance 4000;
setObjectViewDistance 4000;

//--- Early definition, will be override later on in the init files.
CTI_P_SideJoined = civilian;
DIAG_DB_SCRIPTCHECKS = true;

//--- Log levels
CTI_Log_Debug = 3;
CTI_Log_Information = 2;
CTI_Log_Warning = 1;
CTI_Log_Error = 0;

//--- Log level to use
CTI_Log_Level = CTI_Log_Debug;

//--- We define the log function early so that we may use it
CTI_CO_FNC_Log = compile preprocessFileLineNumbers "Common\Functions\Common_Log.sqf";

//--- Global gameplay variables
CTI_GameOver = false;

//--- Determine which machine is running this init script
CTI_IsHostedServer = [false, true] select (isServer && !isDedicated);
CTI_IsServer = [false, true] select (isDedicated || CTI_IsHostedServer);
CTI_IsClient = [false, true] select (CTI_IsHostedServer || !isDedicated);
CTI_IsHeadless = [false, true] select !(hasInterface || isDedicated);

//--- Create a resistance center
createCenter resistance;
resistance setFriend [west, 0];
resistance setFriend [east, 0];

if (CTI_Log_Level >= CTI_Log_Information) then { //--- Information
	["INFORMATION", "FILE: init.sqf", format["Environment is Multiplayer? [%1]", isMultiplayer]] call CTI_CO_FNC_Log;
	["INFORMATION", "FILE: init.sqf", format["Current Actor is: Hosted Server [%1]? Dedicated [%2]? Client [%3]? Headless [%4]?", CTI_IsHostedServer, isDedicated, CTI_IsClient, CTI_IsHeadless]] call CTI_CO_FNC_Log
};

//--- Hide first to prevent spoils
if (CTI_IsClient && isMultiplayer) then {
	0 spawn {
		waitUntil {!(isNull player)};
		player enableSimulation true;
 		player allowDamage true;
		player setCaptive false;
		player setDammage 0;
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeAllContainers player;
		removeHeadgear player;
	};
};
//--- In MP, we get the parameters.
if (isMultiplayer) then {call Compile preprocessFileLineNumbers "Common\Init\Init_Parameters.sqf"};

//--- Server JIP/DC Handler
if (isMultiplayer && CTI_IsServer) then {
	CTI_SE_FNC_OnPlayerConnected = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnPlayerConnected.sqf";
	CTI_SE_FNC_OnPlayerDisconnected = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnPlayerDisconnected.sqf";

	// onPlayerConnected {[_uid, _name, _id] spawn CTI_SE_FNC_OnPlayerConnected};
	// onPlayerDisconnected {[_uid, _name, _id] call CTI_SE_FNC_OnPlayerDisconnected};
	addMissionEventHandler ["HandleDisconnect",{_this spawn CTI_SE_FNC_OnPlayerDisconnected}];
	["CTI_Join", "onPlayerConnected", {[_uid, _name, _id, _jip, _owner] spawn CTI_SE_FNC_OnPlayerConnected}] call BIS_fnc_addStackedEventHandler;
};

//--- JIP Part is over
CTI_Init_JIP = true;

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running common initialization"] call CTI_CO_FNC_Log };

//--- Common Part execution
call compile preprocessFileLineNumbers "Common\Init\Init_CommonConstants.sqf";
call compile preprocessFileLineNumbers "Common\Init\Init_Common.sqf";

//--- Towns init
execVM "Common\Init\Init_Locations.sqf";
if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
	call compile preprocessFileLineNumbers "Common\Init\Init_LocationsTerritorial.sqf";
};

//--- Common Part is over
CTI_Init_Common = true;

//--- Server execution
if (CTI_IsServer) then {
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running server initialization"] call CTI_CO_FNC_Log	};
	execVM "Server\Init\Init_Server.sqf";
};

//--- Pure client execution
if (CTI_IsClient && !CTI_IsHeadless) then {
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running client initialization"] call CTI_CO_FNC_Log	};

	waitUntil {!(isNull player)};

	execVM "Client\Init\Init_Client.sqf";
};

//--- Disable ambient life
waitUntil {time > 0};
enableEnvironment [false, true];

//--- Headless client execution
if (CTI_IsHeadless) then {
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running headless client initialization"] call CTI_CO_FNC_Log };

	execVM "Client\Init\Init_Client_Headless.sqf";
};


ASL_SUPPORTED_VEHICLES_OVERRIDE = ["CUP_B_MV22_USMC", "Helicopter", "VTOL_Base_F"];

//--- Set the group ID
execVM "Common\Init\Init_GroupsID.sqf";

//--- Briefing Entries
0 execVM "Briefing.sqf";