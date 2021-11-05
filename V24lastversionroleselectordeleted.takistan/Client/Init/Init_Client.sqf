Private ['_HQRadio','_base','_buildings','_condition','_get','_idbl','_isDeployed','_oc','_weat'];

["INITIALIZATION", Format ["Init_Client.sqf: Client initialization begins at [%1]", time]] Call cti_CO_FNC_LogContent;

//--Do check for required addons--
_reqAddons = "";
{
	_isModeExists = true;
	
	_tmpMas = _x select 1;
	for "_i" from 0 to (count _tmpMas) - 1 do {			
		if !(isClass (configFile >> "CfgPatches" >> (_tmpMas select _i))) then {
			_isModeExists = false;
		};		
	};	
	
	if !(_isModeExists) then { _reqAddons = format["%1 %2", _reqAddons ,_x select 0] };
}
foreach cti_REQ_ADDONS;

if(count (toArray(_reqAddons)) > 0) then { 
	["WARNING", Format["Init_Client.sqf: Client [%1] have not required addons: [%2], and is now being sent back to the lobby.", name player, _reqAddons]] Call cti_CO_FNC_LogContent;
	titleText [(localize "STR_WF_ReqAddons") + ": \n"+_reqAddons, "BLACK FADED", 20];
	sleep 20;
	failMission "END1";
};

cti_Client_SideJoined = side player;
cti_Client_SideJoinedText = str cti_Client_SideJoined;
cti_Allow_HostileGearSaving = true;
WF_MAXPLAYERS_IN_TEAM = 30;
WSW_EndIntro = if(WF_Skip_Intro)then{true}else{false};


//--- Position the client on the temp spawn (Common is not yet init'd so we call is straigh away).
player setPos ([getMarkerPos Format["%1TempRespawnMarker",cti_Client_SideJoinedText],1,10] Call Compile preprocessFile "Common\Functions\Common_GetRandomPosition.sqf");

cti_CL_FNC_BoundariesIsOnMap = Compile preprocessFile "Client\Functions\Client_IsOnMap.sqf";
cti_CL_FNC_BoundariesHandleOnMap = Compile preprocessFile "Client\Functions\Client_HandleOnMap.sqf";
cti_CL_FNC_BuildUnit = Compile preprocessFile "Client\Functions\Client_BuildUnit.sqf";
cti_CL_FNC_ChangePlayerFunds = Compile preprocessFile "Client\Functions\Client_ChangePlayerFunds.sqf";
cti_CL_FNC_CommandChatMessage = Compile preprocessFile "Client\Functions\Client_CommandChatMessage.sqf";
cti_CL_FNC_FX = Compile preprocessFile "Client\Functions\Client_FX.sqf";
cti_CL_FNC_GetIncome = Compile preprocessFile "Client\Functions\Client_GetIncome.sqf";
cti_CL_FNC_GetPlayerFunds = Compile preprocessFile "Client\Functions\Client_GetPlayerFunds.sqf";
cti_CL_FNC_GetRespawnAvailable = Compile preprocessFile "Client\Functions\Client_GetRespawnAvailable.sqf";
cti_CL_FNC_GetStructureMarkerLabel = Compile preprocessFile "Client\Functions\Client_GetStructureMarkerLabel.sqf";
cti_CL_FNC_GetTime = Compile preprocessFile "Client\Functions\Client_GetTime.sqf";
cti_CL_FNC_GroupChatMessage = Compile preprocessFile "Client\Functions\Client_GroupChatMessage.sqf";
cti_CL_FNC_HandleHQAction = Compile preprocessFile "Client\Functions\Client_HandleHQAction.sqf";
cti_CL_FNC_MarkerAnim = Compile preprocessFile "Client\Functions\Client_MarkerAnim.sqf";
cti_CL_FNC_OnRespawnHandler = Compile preprocessFile "Client\Functions\Client_OnRespawnHandler.sqf";
cti_CL_FNC_PreRespawnHandler = Compile preprocessFile "Client\Functions\Client_PreRespawnHandler.sqf";
cti_CL_FNC_RequestFireMission = Compile preprocessFile "Client\Functions\Client_RequestFireMission.sqf";
cti_CL_FNC_SetControlFadeAnim = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnim.sqf";
cti_CL_FNC_SetControlFadeAnimStop = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnimStop.sqf";
cti_CL_FNC_SupportHeal = Compile preprocessFile "Client\Functions\Client_SupportHeal.sqf";
cti_CL_FNC_SupportRearm = Compile preprocessFile "Client\Functions\Client_SupportRearm.sqf";
cti_CL_FNC_SupportRefuel = Compile preprocessFile "Client\Functions\Client_SupportRefuel.sqf";
cti_CL_FNC_SupportRepair = Compile preprocessFile "Client\Functions\Client_SupportRepair.sqf";
cti_CL_FNC_TaskSystem = Compile preprocessFile "Client\Functions\Client_TaskSystem.sqf";
cti_CL_FNC_TitleTextMessage = Compile preprocessFile "Client\Functions\Client_TitleTextMessage.sqf";
cti_CL_FNC_SetMHQLock = Compile preprocessFileLineNumbers "Client\PVFunctions\SetMHQLock.sqf";

//// Dialog scripts
// Dialog: gear
cti_CL_FNC_GUI_WFGear	  = Compile preprocessFileLineNumbers "Client\GUI\GUI_WFGear.sqf";
cti_CL_FNC_UIChangeComboBuyUnits = Compile preprocessFile "Client\Functions\Client_UIChangeComboBuyUnits.sqf";
cti_CL_FNC_UIFillListBuyUnits = Compile preprocessFile "Client\Functions\Client_UIFillListBuyUnits.sqf";
cti_CL_FNC_UIFillListTeamOrders = Compile preprocessFile "Client\Functions\Client_UIFillListTeamOrders.sqf";
cti_CL_FNC_UIFindLBValue = Compile preprocessFile "Client\Functions\Client_UIFindLBValue.sqf";

// UAV
WFVE_fnc_uav_interface = compileFinal preprocessfilelinenumbers "Client\Module\UAV\uav_interface.sqf";
WFVE_fnc_uav_spotter = compileFinal preprocessfilelinenumbers "Client\Module\UAV\uav_spotter.sqf";
WFVE_fnc_uav = compileFinal preprocessfilelinenumbers "Client\Module\UAV\uav.sqf";

//// PVF
cti_CL_FNC_HandleSpecial = Compile preprocessFileLineNumbers "Client\PVFunctions\HandleSpecial.sqf";
cti_CL_FNC_SetTask = Compile preprocessFileLineNumbers "Client\PVFunctions\SetTask.sqf";
cti_CL_FNC_TownCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\TownCaptured.sqf";
cti_CL_FNC_LocalizeMessage = Compile preprocessFileLineNumbers "Client\PVFunctions\LocalizeMessage.sqf";
cti_CL_FNC_CampCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\CampCaptured.sqf";
cti_CL_FNC_AwardBountyPlayer = Compile preprocessFileLineNumbers "Client\PVFunctions\AwardBountyPlayer.sqf";
cti_CL_FNC_AwardBounty = Compile preprocessFileLineNumbers "Client\PVFunctions\AwardBounty.sqf";
cti_CL_FNC_RequestBaseArea = Compile preprocessFileLineNumbers "Client\PVFunctions\RequestBaseArea.sqf";
cti_CL_FNC_ChangeScore = Compile preprocessFileLineNumbers "Client\PVFunctions\ChangeScore.sqf";
cti_CL_FNC_Available = Compile preprocessFileLineNumbers "Client\PVFunctions\Available.sqf";
cti_CL_FNC_AllCampsCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\AllCampsCaptured.sqf";

//--- Call the UI Functions
call compile preprocessFile "Client\Functions\UI\Functions_UI_GearMenu.sqf";
//call compile preprocessFile "Client\Functions\UI\Functions_UI_KeyHandlers.sqf";

//--- Namespace related (GUI).
BIS_FNC_GUIset = {UInamespace setVariable [_this select 0, _this select 1]};
BIS_FNC_GUIget = {UInamespace getVariable (_this select 0)};

//--- New Fnc.
cti_CL_FNC_DelegateTownAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateTownAI.sqf";
cti_CL_FNC_DelegateAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAI.sqf";
cti_CL_FNC_DelegateAIStaticDefence = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAIStaticDefence.sqf";
cti_CL_FNC_GetAIID = Compile preprocessFileLineNumbers "Client\Functions\Client_GetAIID.sqf";
cti_CL_FNC_GetBackpackContent = Compile preprocessFileLineNumbers "Client\Functions\Client_GetBackpackContent.sqf";
cti_CL_FNC_GetClosestAirport = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestAirport.sqf";
cti_CL_FNC_GetClosestCamp = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestCamp.sqf";
cti_CL_FNC_GetClosestDepot = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestDepot.sqf";
cti_CL_FNC_GetGearCargoSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetGearCargoSize.sqf";
cti_CL_FNC_GetMagazinesSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetMagazinesSize.sqf";
cti_CL_FNC_GetParsedGear = Compile preprocessFileLineNumbers "Client\Functions\Client_GetParsedGear.sqf";
cti_CL_FNC_GetVehicleCargoSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetVehicleCargoSize.sqf";
cti_CL_FNC_GetVehicleContent = Compile preprocessFileLineNumbers "Client\Functions\Client_GetVehicleContent.sqf";
cti_CL_FNC_GetUnitBackpack = Compile preprocessFileLineNumbers "Client\Functions\Client_GetUnitBackpack.sqf";
cti_CL_FNC_OnKilled = Compile preprocessFileLineNumbers "Client\Functions\Client_OnKilled.sqf";
cti_CL_FNC_OperateCargoGear = Compile preprocessFileLineNumbers "Client\Functions\Client_OperateCargoGear.sqf";
cti_CL_FNC_ReplaceMagazinesGear = Compile preprocessFileLineNumbers "Client\Functions\Client_ReplaceMagazinesGear.sqf";
cti_CL_FNC_RemoveMagazineGear = Compile preprocessFileLineNumbers "Client\Functions\Client_RemoveMagazineGear.sqf";
cti_CL_FNC_UI_Respawn_Selector = Compile preprocessFileLineNumbers "Client\Functions\Client_UI_Respawn_Selector.sqf";
cti_CL_FNC_Client_GetNearestCamp = Compile preprocessFileLineNumbers "Client\Functions\Client_GetNearestCamp.sqf";
cti_CL_FNC_UpdateActions = Compile preprocessFileLineNumbers "Client\FSM\updateactions.sqf";
cti_CL_FNC_TRACK_ARTY = Compile preprocessFileLineNumbers "Client\Functions\Client_ARRadarMarkerUpdate.sqf";
cti_CL_FNC_HALO_JUMP = Compile preprocessFileLineNumbers "Client\Functions\Client_HaloJump.sqf";
cti_CL_FNC_SetVehicleLock = Compile preprocessFileLineNumbers "Client\PVFunctions\SetVehicleLock.sqf";
cti_CL_FNC_Update_Salvage = Compile preprocessFileLineNumbers "Client\FSM\updatesalvage.sqf";


cti_CL_FNC_Init_Coin = Compile preprocessFileLineNumbers "Client\Init\Init_Coin.sqf";

cti_CL_FNC_MissionIntro = Compile preprocessFileLineNumbers "Client\Client_MissionIntro.sqf";
//// GEAR INIT
//--- Gear: Config sub ID
cti_SUBTYPE_ITEM = 0;
cti_SUBTYPE_ACC_MUZZLE = 101;
cti_SUBTYPE_ACC_OPTIC = 201;
cti_SUBTYPE_ACC_SIDE = 301;
cti_SUBTYPE_ACC_BIPOD = 302;
cti_SUBTYPE_HEADGEAR = 605;
cti_SUBTYPE_UAVTERMINAL = 621;
cti_SUBTYPE_VEST = 701;
cti_SUBTYPE_UNIFORM = 801;
cti_SUBTYPE_BACKPACK = 901;

cti_GEAR_TAB_PRIMARY = 0;
cti_GEAR_TAB_SECONDARY = 1;
cti_GEAR_TAB_HANDGUN = 2;
cti_GEAR_TAB_ACCESSORIES = 3;
cti_GEAR_TAB_AMMO = 4;
cti_GEAR_TAB_MISC = 5;
cti_GEAR_TAB_EQUIPMENT = 6;
cti_GEAR_TAB_TEMPLATES = 7;

//--- Gear: Config ID
cti_TYPE_RIFLE = 1;
cti_TYPE_PISTOL = 2;
cti_TYPE_LAUNCHER = 4;
cti_TYPE_RIFLE2H = 5;
cti_TYPE_EQUIPMENT = 4096;
cti_TYPE_ITEM = 131072;

// adjusting fatigue
if ((missionNamespace getVariable "cti_C_GAMEPLAY_FATIGUE_ENABLED") == 1) then {
    player setCustomAimCoef 0.35;
    player setUnitRecoilCoefficient 0.75;
    player enablestamina false;
};

// right custom HUD module
if (!(visibleMap) && (isNil "BIS_CONTROL_CAM")) then {Local_GUIWorking=true; 1365 cutRsc ["RscOverlay","PLAIN",0]};//if GUI is not working, but it should - restart it

// RADIO CHANNEL SETTINGS
0 enableChannel [true, false]; // removing voice in global but global chat will be on
1 enableChannel [true, true];  // enabling side voice and chat
2 enableChannel [true, true];  // enabling command voice and chat
4 enableChannel [true, true];  // enabling vehicle voice and chat
5 enableChannel [true, true];  // enabling direct voice and chat
/*

if (cti_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CUP_West.sqf"};
if (cti_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CUP_East.sqf"};

if (cti_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_RHS_West.sqf"};
if (cti_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_RHS_East.sqf"};

*/
if (cti_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_West.sqf"};
if (cti_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_East.sqf"};
 

if (cti_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_Common.sqf"};
if (cti_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_Common.sqf"};


if (isNil {profileNamespace getVariable format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_Client_SideJoined]}) then {
	call cti_UI_Gear_InitializeProfileTemplates
};

if !(isNil {profileNamespace getVariable format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_Client_SideJoined]}) then {
	execVM "Client\Init\Init_Persistent_Gear.sqf";
};

Call Compile preprocessFileLineNumbers 'Client\Functions\Client_FNC_OnFired.sqf'; //--- FUNCTIONS: onFired EH.
Call Compile preprocessFileLineNumbers 'Client\Functions\Client_FNC_Special.sqf'; //--- FUNCTIONS: Specials.

//--- UI Namespace release from previous possible games (only on titles dialog!).
{uiNamespace setVariable [_x, displayNull]} forEach ["cti_title_capture"];

//--- Waiting for the common part to be executed.
waitUntil {commonInitComplete};

["INITIALIZATION", Format ["Init_Client.sqf: Common initialization is complete at [%1]", time]] Call cti_CO_FNC_LogContent;


cti_CL_FNC_UI_Gear_SaveTemplateProfile = Compile preprocessFileLineNumbers "Client\Functions\Client_UI_Gear_SaveTemplateProfile.sqf";
Call Compile preprocessFileLineNumbers "Client\Init\Init_ProfileVariables.sqf";


//--- Queue Protection.
missionNamespace setVariable ['cti_C_QUEUE_BARRACKS',0];
missionNamespace setVariable ['cti_C_QUEUE_BARRACKS_MAX',10];
missionNamespace setVariable ['cti_C_QUEUE_LIGHT',0];
missionNamespace setVariable ['cti_C_QUEUE_LIGHT_MAX',5];
missionNamespace setVariable ['cti_C_QUEUE_HEAVY',0];
missionNamespace setVariable ['cti_C_QUEUE_HEAVY_MAX',5];
missionNamespace setVariable ['cti_C_QUEUE_AIRCRAFT',0];
missionNamespace setVariable ['cti_C_QUEUE_AIRCRAFT_MAX',2];
missionNamespace setVariable ['cti_C_QUEUE_AIRPORT',0];
missionNamespace setVariable ['cti_C_QUEUE_AIRPORT_MAX',2];
missionNamespace setVariable ['cti_C_QUEUE_DEPOT',0];
missionNamespace setVariable ['cti_C_QUEUE_DEPOT_MAX',4];

//--- Global Client Variables.
sideID = cti_Client_SideJoined Call cti_CO_FNC_GetSideID;
paramBoundariesRunning = false;
execVM "WASP\global_marking_monitor.sqf";
cti_Client_Logic = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideLogic;
cti_Client_SideID = sideID;
cti_Client_Color = switch (cti_Client_SideJoined) do { case west: {missionNamespace getVariable "cti_C_WEST_COLOR"}; case east: {missionNamespace getVariable "cti_C_EAST_COLOR"}; case resistance: {missionNamespace getVariable "cti_C_GUER_COLOR"};};
cti_Client_Team = group player;
cti_Client_Teams = missionNamespace getVariable Format['cti_%1TEAMS',cti_Client_SideJoinedText];
cti_Client_Teams_Count = count cti_Client_Teams;
cti_Client_IsRespawning = false;

commanderTeam = objNull;
buildingMarker = 0;
CCMarker = 0;
//currentTG = ['cti_PERSISTENT_CONST_TERRAIN_GRID', '35'] Call cti_CO_FNC_GetProfileVariable;
//if (currentTG == 35) then {setTerrainGrid currentTG};
currentTG = 35;
lastBuilt = [];
unitQueu = 0;
fireMissionTime = -1000;
artyRange = 15;
artyPos = [0,0,0];
playerUAV = objNull;
comTask = objNull;
voted = false;
votePopUp = true;
manningDefense = true;
currentFX = 0;
lastParaCall = -1200;
lastSupplyCall = -1200;
canBuildWHQ = true;
cti_RespawnDefaultGear = false;
cti_ForceUpdate = true;

//--- Load Terrain grid if it wasn't loaded from the profile.
if (isNil 'currentTG') then {
	currentTG = if ((missionNamespace getVariable "cti_C_ENVIRONMENT_MAX_CLUTTER") < 25) then {missionNamespace getVariable "cti_C_ENVIRONMENT_MAX_CLUTTER"} else {25};
	setTerrainGrid currentTG;
};

hqInRange = false;
barracksInRange = false;
gearInRange = false;
lightInRange = false;
heavyInRange = false;
aircraftInRange = false;
serviceInRange = false;
commandInRange = false;
depotInRange = false;
antiAirRadarInRange = false;
antiArtyRadarInRange = false;
hangarInRange = false;

enableTeamSwitch false;

//--- Import the client side upgrade informations.
ExecVM "Common\Config\Core_Upgrades\Labels_Upgrades.sqf";

//--- Update the player.
if (isMultiplayer) then {
	["update-teamleader", cti_Client_Team, player] remoteExecCall ["cti_SE_PVF_RequestSpecial",2];
};

//--- Disable Artillery Computer.
Call Compile "enableEngineArtillery false;";

//--- Commander % stock init.
if (isNil { missionNamespace getVariable "cti_commander_percent"}) then { missionNamespace setVariable ["cti_commander_percent", if ((missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX") >= 50 && (missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX") <= 100) then {missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX"} else {100}]};

/* Exec SQF|FSM Misc stuff. */
if ((missionNamespace getVariable "cti_C_UNITS_TRACK_LEADERS") > 0) then {[] execVM "Client\FSM\updateteamsmarkers.sqf"};
[] spawn cti_CL_FNC_UpdateActions;

/* Don't pause the client initialization process. */
[] Spawn {
	waitUntil {townInit};
	/* Handle the capture GUI */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Town Capture FSM"] Call cti_CO_FNC_LogContent;
	[] execVM "Client\FSM\client_title_capture.sqf";
	/* Handle the map town markers */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Towns Marker FSM"] Call cti_CO_FNC_LogContent;
	[] execVM "Client\FSM\updatetownmarkers.sqf";
	waitUntil {!isNil {cti_Client_Logic getVariable "cti_structures"}};
	waitUntil {!isNil {cti_Client_Logic getVariable "cti_supply"}};

	/* Handle the client actions */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Available Actions FSM"] Call cti_CO_FNC_LogContent;
	[] execVM "Client\FSM\updateavailableactions.sqf";
};

[] Spawn {
	Private ["_commanderTeam"];
	waitUntil {!isNil {cti_Client_Logic getVariable "cti_commander"}};
	/* Commander Handling */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Commander Update FSM"] Call cti_CO_FNC_LogContent;
	[] ExecVM "Client\FSM\updateclient.sqf";
};

//--- Add the briefing (notes).
[] Call Compile preprocessFile "briefing.sqf";

//--- HQ Radio system.
waitUntil {!isNil {cti_Client_Logic getVariable "cti_radio_hq"}};
_HQRadio = cti_Client_Logic getVariable "cti_radio_hq";
["INITIALIZATION", Format["Init_Client.sqf: Initialized the Radio Announcer [%1]", _HQRadio]] Call cti_CO_FNC_LogContent;
waitUntil {!isNil {cti_Client_Logic getVariable "cti_radio_hq_id"}};
cti_V_HQTopicSide = cti_Client_Logic getVariable "cti_radio_hq_id";
["INITIALIZATION", Format["Init_Client.sqf: Initializing the Radio Announcer Identity [%1]", cti_V_HQTopicSide]] Call cti_CO_FNC_LogContent;
_HQRadio setIdentity cti_V_HQTopicSide;
_HQRadio setRank "COLONEL";
_HQRadio setGroupId ["HQ"];
_HQRadio kbAddTopic [cti_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
player kbAddTopic [cti_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
sideHQ = _HQRadio;

["INITIALIZATION", "Init_Client.sqf: Radio announcer is initialized."] Call cti_CO_FNC_LogContent;

/* Wait for a valid signal (Teamswapping) with failover */
if (isMultiplayer && time > 7) then {
	Private ["_get","_timelaps"];
	_get = true;

	sleep (random 0.1);

	[player, cti_Client_SideJoined] remoteExecCall ["cti_SE_PVF_RequestJoin",2];
	
	_timelaps = 0;
	while {true} do {
		sleep 0.1;
		_get = missionNamespace getVariable 'cti_P_CANJOIN';
		if !(isNil '_get') exitWith {["INITIALIZATION", Format["Init_Client.sqf: [%1] Client [%2], Can join? [%3]",cti_Client_SideJoined,name player,_get]] Call cti_CO_FNC_LogContent};

		_timelaps = _timelaps + 0.1;
		if (_timelaps > 15) then {
			_timelaps = 0;
			["WARNING", Format["Init_Client.sqf: [%1] Client [%2] join is pending... no ACK was received from the server, a new request will be submitted.",cti_Client_SideJoined,name player]] Call cti_CO_FNC_LogContent;
			[player, cti_Client_SideJoined] remoteExecCall ["cti_SE_PVF_RequestJoin",2];
		};
	};

	if !(_get) exitWith {
		["WARNING", Format["Init_Client.sqf: [%1] Client [%2] has teamswapped/STACKED and is now being sent back to the lobby.",cti_Client_SideJoined,name player]] Call cti_CO_FNC_LogContent;

		sleep 12;
		failMission "END1";
	};
};

/* Get the client starting location */
["INITIALIZATION", "Init_Client.sqf: Retrieving the client spawn location."] Call cti_CO_FNC_LogContent;
_base = objNull;
if (time < 30) then {
	waitUntil {!isNil {cti_Client_Logic getVariable "cti_startpos"}};
	_base = cti_Client_Logic getVariable "cti_startpos";
} else {
	waitUntil {!isNil {cti_Client_Logic getVariable "cti_hq"}};
	waitUntil {!isNil {cti_Client_Logic getVariable "cti_structures"}};
	_base = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideHQ;
	_buildings = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideStructures;

	if (count _buildings > 0) then {_base = _buildings select 0;};
};

["INITIALIZATION", Format["Init_Client.sqf: Client spawn location has been determined at [%1].", _base]] Call cti_CO_FNC_LogContent;

/* Position the client at the previously defined location */
player setPos ([_base,20,30] Call cti_CO_FNC_GetRandomPosition);

/* HQ Building Init. */
waitUntil {!isNil {cti_Client_Logic getVariable "cti_hq_deployed"}};

["INITIALIZATION", "Init_Client.sqf: Initializing COIN Module."] Call cti_CO_FNC_LogContent;
_isDeployed = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideHQDeployStatus;
if (_isDeployed) then {
	[missionNamespace getVariable "cti_C_BASE_COIN_AREA_HQ_DEPLOYED",true,MCoin] Call cti_CL_FNC_Init_Coin;
} else {
	[missionNamespace getVariable "cti_C_BASE_COIN_AREA_HQ_UNDEPLOYED",false,MCoin] Call cti_CL_FNC_Init_Coin;
};

//--- Add Killed EH to the HQ on each client if needed (JIP), skip LAN host.
if (!isServer && !_isDeployed) then {
	[] spawn {
		waitUntil {!isNil {cti_Client_Logic getVariable "cti_hq"}};
		(cti_Client_SideJoined Call cti_CO_FNC_GetSideHQ) addEventHandler ["killed", {
				["process-killed-hq", _this] remoteExecCall ["cti_SE_PVF_RequestSpecial",2];
		}];
	};
};

_greenList = [];
{_greenList pushBack (missionNamespace getVariable Format ["%1%2",cti_Client_SideJoinedText,_x]);} forEach ["BAR","LVF","HEAVY","AIR"];
missionNamespace setVariable ["COIN_UseHelper", _greenList];

/* Options menu. */
Options = player addAction ["<t color='#42b6ff'>" + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf", "", 999, false, true, "", "_target == player"];

//--- Make sure that player is always the leader.
if (leader(group player) != player) then {(group player) selectLeader player};

// initiate the passive skills.
/*
WSW_gbl_boughtRoles = [];


[] Call Compile preprocessFile "Client\Module\Role\Skill_Init.sqf";

(player) Call cti_SK_FNC_Apply;
*/
[] execVM "WASP\baserep\init.sqf";

/* Debug System - Client */
if (WF_Debug) then {
	onMapSingleClick "vehicle player setpos _pos;(vehicle player) setVelocity [0,0,-0.1];diag_log getpos player;"; //--- Teleport
	player addEventHandler ["HandleDamage", {if (player != (_this select 3)) then {(_this select 3) setDammage 1}; false}]; //--- God-Slayer mode.
};

//if ((missionNamespace getVariable "cti_C_MODULE_cti_EASA") > 0) then {Call Compile preprocessFileLineNumbers "Client\Module\EASA\EASA_Init.sqf"}; //--- EASA.

/* Key Binding */
[] Call Compile preprocessFile "Client\Init\Init_Keybind.sqf";

/* JIP Handler */
waitUntil {townInit};
["INITIALIZATION", "Init_Client.sqf: Towns are initialized."] Call cti_CO_FNC_LogContent;

/* JIP System, initialize the camps and towns properly. */
[] Spawn {
	sleep 2;
	["INITIALIZATION", "Init_Client.sqf: Updating JIP Markers."] Call cti_CO_FNC_LogContent;
	Call Compile preprocessFileLineNumbers "Client\Init\Init_Markers.sqf";
};

/* Repair Truck CoIn Handling. */
[missionNamespace getVariable "cti_C_BASE_COIN_AREA_REPAIR",false,RCoin,"REPAIR"] Call cti_CL_FNC_Init_Coin;

/* A new player come to reinforce the battlefield */
[cti_Client_SideJoinedText,'UnitsCreated',1] Call cti_CO_FNC_UpdateStatistics;

/* Client death handler. */
cti_PLAYERKEH = player addEventHandler ['Killed', {[_this select 0,_this select 1] Spawn cti_CL_FNC_OnKilled; [_this select 0,_this select 1, sideID] Spawn cti_CO_FNC_OnUnitKilled}];

//--- Valhalla init.
[] Spawn {
	[] Call Compile preprocessFile "Client\Module\Valhalla\Init_Valhalla.sqf";
};

//--Disable fatigue--
if ((missionNamespace getVariable "cti_C_GAMEPLAY_FATIGUE_ENABLED") == 0) then {player enableFatigue false;};

//--Add JUMPER handler--
[] execVM "Client\Module\Jumper\jumper.sqf";

//--Assign to ZEUS--
if ((getPlayerUID player in cti_RESERVEDUIDS)) then {
	HINT ("YOU CAN USE ZEUS MODULE!");
};

clientInitComplete = true;

_roleDefaultGear = [];
_roleDefaultGear = missionNamespace getVariable Format["cti_%1_DefaultGearSoldier", cti_Client_SideJoinedText];
[player, _roleDefaultGear] call cti_CO_FNC_EquipUnit;


cti_P_CurrentGear = (player) call cti_CO_FNC_GetUnitLoadout;

/* Vote System, define whether a vote is already running or not */
["INITIALIZATION", "Init_Client.sqf: Vote system is initialized."] Call cti_CO_FNC_LogContent;
if ((cti_Client_Logic getVariable "cti_votetime") > 0) then {createDialog "cti_VoteMenu"};

/* Towns Task System */
["TownAddComplete"] Spawn cti_CL_FNC_TaskSystem;

sleep 5;
/* HUD MODULE */
ExecVM "Client\Client_UpdateRHUD.sqf";

if(WF_Skip_Intro) then {
 
};

if(!WF_Skip_Intro)then{
    waitUntil {
        WSW_EndIntro
    };
	
};


["INITIALIZATION", Format ["Init_Client.sqf: Client initialization ended at [%1]", time]] Call cti_CO_FNC_LogContent;
