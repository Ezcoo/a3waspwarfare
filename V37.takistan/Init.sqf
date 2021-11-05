//--- Define which 'part' of the game to run.
#include "version.sqf"

WF_Debug = true;
#ifdef WF_DEBUG
	WF_Debug = true;
#endif

WF_Skip_Intro = true;
#ifdef WF_SKIP_INTRO
	WF_Skip_Intro = true;
#endif

WF_Camo = false;
#ifdef WF_CAMO
	WF_Camo = true;
#endif

//--- Global Init, first file called.
isHostedServer = if (isServer && !isDedicated) then {true} else {false};
isHeadLessClient = false;
//--- Headless Client?
isHeadLessClient = if (!hasInterface && !isDedicated)then{true}else{false};

if (isHostedServer || (!isHeadLessClient && !isDedicated)) then {
    12452 cutText [(localize 'STR_WF_Loading')+"...","BLACK IN",55555];
};

missionNamespace setVariable ["WFBE_MAXPLAYERS", WF_MAXPLAYERS];
missionNamespace setVariable ["WFBE_MISSIONNAME", WF_MISSIONNAME];
WFBE_CO_FNC_LogContent = Compile preprocessFileLineNumbers "Common\Functions\Common_LogContent.sqf"; //--- Define the log function earlier.
WFBE_LogLevel = 0; //--- Logging level (0: Trivial, 1: Information, 2: Warnnings, 3: Errors).

//--- Mission is starting.
for '_i' from 0 to 3 do {diag_log "################################"};
diag_log format ["## Island Name: [%1]", worldName];
diag_log format ["## Mission Name: [%1]", WF_MISSIONNAME];
diag_log format ["## Max players Defined: [%1]", WF_MAXPLAYERS];
for '_i' from 0 to 3 do {diag_log "################################"};

["INITIALIZATION", "initJIPCompatible.sqf: Starting JIP Initialization"] Call WFBE_CO_FNC_LogContent;
WFBE_Client_SideJoined = civilian;

if (isHeadLessClient) then {["INITIALIZATION", "initJIPCompatible.sqf: Detected an headless client."] Call WFBE_CO_FNC_LogContent};

//--- Server JIP Information
if ((isHostedServer || isDedicated) && !isHeadLessClient) then { //--- JIP Handler, handle connection & disconnection.
	WFBE_SE_FNC_OnPlayerConnected = Compile preprocessFileLineNumbers "Server\Functions\Server_OnPlayerConnected.sqf";
	WFBE_SE_FNC_OnPlayerDisconnected = Compile preprocessFileLineNumbers "Server\Functions\Server_OnPlayerDisconnected.sqf";

	onPlayerConnected {[_uid, _name, _id] Spawn WFBE_SE_FNC_OnPlayerConnected};
	onPlayerDisconnected {[_uid, _name, _id] Spawn WFBE_SE_FNC_OnPlayerDisconnected};
};

//--- Client initialization, either hosted or pure client. Part I
if (isHostedServer || (!isHeadLessClient && !isDedicated)) then {
	["INITIALIZATION", "initJIPCompatible.sqf: Client detected... waiting for non null result..."] Call WFBE_CO_FNC_LogContent;
	waitUntil {!isNull player};
	["INITIALIZATION", "initJIPCompatible.sqf: Client is not null..."] Call WFBE_CO_FNC_LogContent;
};

setObjectViewDistance 1750; //--- Server & Client default View Distance.
setViewDistance 4000;
[] spawn {enableEnvironment false;};

clientInitComplete = false;
commonInitComplete = false;
serverInitComplete = false;
serverInitFull = false;
WFBE_GameOver = false;
townInitServer = false;
townInit = false;
towns = [];

if (isMultiplayer) then {Call Compile preprocessFileLineNumbers "Common\Init\Init_Parameters.sqf"}; //--- In MP, we get the parameters.
WFBE_Parameters_Ready = true; //--- All parameters are set and ready.

Call Compile preprocessFileLineNumbers "Common\Init\Init_CommonConstants.sqf"; //--- Set the constants and the parameters, skip the params if they're already defined.

if (WF_Debug) then { //--- Debug.
	missionNamespace setVariable ["WFBE_C_GAMEPLAY_UPGRADES_CLEARANCE", 7];
	missionNamespace setVariable ["WFBE_C_TOWNS_OCCUPATION", 1];
	missionNamespace setVariable ["WFBE_C_TOWNS_DEFENDER", 2];
	//missionNamespace setVariable ["WFBE_C_TOWNS_STARTING_MODE", 2];
	missionNamespace setVariable ["WFBE_C_ECONOMY_SUPPLY_START_EAST", 999999];
	missionNamespace setVariable ["WFBE_C_ECONOMY_SUPPLY_START_WEST", 999999];
	missionNamespace setVariable ["WFBE_C_ECONOMY_FUNDS_START_EAST", 999999];
	missionNamespace setVariable ["WFBE_C_ECONOMY_FUNDS_START_WEST", 999999];
	missionNamespace setVariable ["WFBE_C_MODULE_WFBE_EASA", 1];
	missionNamespace setVariable ["WFBE_DEBUG_DISABLE_TOWN_INIT", 0];  // 0 -> disabled, 1 -> enabled
	WSW_AdvDebugger = player;
}else{
    WSW_AdvDebugger = objNull;
};

publicVariable "WSW_AdvDebugger";

["INITIALIZATION", "initJIPCompatible.sqf: Headless client is supported."] Call WFBE_CO_FNC_LogContent;

//--- Apply the time-environment (don't halt).
[] Spawn {
	waitUntil {time > 0}; //--- Await for the mission to start / JIP.
	setDate [(date select 0),(missionNamespace getVariable "WFBE_C_ENVIRONMENT_STARTING_MONTH"),(date select 2),(missionNamespace getVariable "WFBE_C_ENVIRONMENT_STARTING_HOUR"),(date select 4)]; //--- Apply the date and time.
	if (local player) then {skipTime (time / 3600)}; //--- If we're dealing with a client, he may have JIP half way through the game. Sync him via skipTime with the mission time.
	sleep 2;
};

ExecVM "Common\Init\Init_Common.sqf"; //--- Execute the common files.
ExecVM "Common\Init\Init_Towns.sqf"; //--- Execute the towns file.

//--- Server initialization.
if (isHostedServer || isDedicated) then { //--- Run the server's part.
	["INITIALIZATION", "initJIPCompatible.sqf: Executing the Server Initialization."] Call WFBE_CO_FNC_LogContent;
	ExecVM "Server\Init\Init_Server.sqf";
};

//--- Client initialization, either hosted or pure client. Part II
if (isHostedServer || (!isHeadLessClient && !isDedicated)) then {
	waitUntil {!isNil 'WFBE_PRESENTSIDES'}; //--- Await for teams to be set before processing the client init.
	{
		_logik = (_x) Call WFBE_CO_FNC_GetSideLogic;
		waitUntil {!isNil {_logik getVariable "wfbe_teams"}};
		missionNamespace setVariable [Format["WFBE_%1TEAMS",_x], _logik getVariable "wfbe_teams"];
	} forEach WFBE_PRESENTSIDES;

	["INITIALIZATION", "initJIPCompatible.sqf: Executing the Client Initialization."] Call WFBE_CO_FNC_LogContent;

	execVM "Client\Init\Init_Client.sqf";
	waitUntil {clientInitComplete};
	if!(WF_Skip_Intro)then{
	    [] spawn WFBE_CL_FNC_MissionIntro;
        waitUntil {WSW_EndIntro};
	}else{
	    12452 cutText [(localize 'STR_WF_Loading')+"...","BLACK IN",5];
	};
};

//--- Run the headless client initialization.
if (isHeadLessClient) then { execVM "Headless\Init\Init_HC.sqf"; };





//--- Weather
if (WFBE_C_ENVIRONMENT_WEATHER_SAND == -1) then {WFBE_C_ENVIRONMENT_WEATHER_SAND = selectRandom [0,1,2,3,4];};
	
if (WFBE_C_ENVIRONMENT_WEATHER_SAND > 0 || WFBE_C_ENVIRONMENT_WEATHER_SNOWSTORM > 0) then {		
	[] spawn {enableEnvironment false;};
	
	// handle JIP with this
	if (!isServer && isNull player) then {
		waitUntil {sleep 1;!(isNull player)};
		JIP_varSandData = [player];
		publicVariableServer "JIP_varSandData";
	};
	// wait for snow data to exist before starting snow
	if (hasInterface) then {
		[] spawn {
			// wait for variable to exist
			waitUntil { sleep 5;!(isNil "varEnableSand")};
			_MKY_arSandEFX = [[0.75,0.005,400],"",false,false,true,true,true,4];
			_MKY_arSnowEFX = [[0.23,0.047,15],0.8,true];
			//sand - [fog,overcast,use ppEfx,allow rain,force wind,vary fog,use wind audio,EFX strength]
			/*if (WFBE_C_ENVIRONMENT_WEATHER_SAND == 1) then { 
				_MKY_arSandEFX = [[0.10,0.020,100],"",false,false,true,true,true,1];
			};
			if (WFBE_C_ENVIRONMENT_WEATHER_SAND == 2) then { 
				_MKY_arSandEFX = [[0.30,0.015,200],"",false,false,true,true,true,2];
			};
			if (WFBE_C_ENVIRONMENT_WEATHER_SAND == 3) then { 
				_MKY_arSandEFX = [[0.50,0.010,300],"",false,false,true,true,true,3];
			};
			if (WFBE_C_ENVIRONMENT_WEATHER_SAND == 4) then { 
				_MKY_arSandEFX = [[0.75,0.005,400],"",false,false,true,true,true,4];
			};*/			
			
			if(WFBE_C_ENVIRONMENT_WEATHER_SNOWSTORM > 0) then { 
				_MKY_arSnowEFX execVM "Client\Init\Init_Client_Extra_Weather_ConditionsSnow.sqf";
			};
			
			if(WFBE_C_ENVIRONMENT_WEATHER_SAND > 0 && WFBE_C_ENVIRONMENT_WEATHER_SNOWSTORM <= 0) then {
				_MKY_arSandEFX execVM "Client\Init\Init_Client_Extra_Weather_ConditionsSand.sqf";
			};
		};
	};
	// when the rest of mission is ready, start the snow server script
	if (isServer) then {
		[] execVM "Server\Init\Init_Server_Extra_Weather_Conditions.sqf";
	};
};