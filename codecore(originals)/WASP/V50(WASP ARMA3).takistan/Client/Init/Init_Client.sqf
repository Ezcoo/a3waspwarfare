Private ['_HQRadio','_base','_buildings','_condition','_get','_idbl','_isDeployed','_oc','_weat'];

["INITIALIZATION", Format ["Init_Client.sqf: Client initialization begins at [%1]", time]] Call WFBE_CO_FNC_LogContent;

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
foreach WFBE_REQ_ADDONS;

if(count (toArray(_reqAddons)) > 0) then { 
	["WARNING", Format["Init_Client.sqf: Client [%1] have not required addons: [%2], and is now being sent back to the lobby.", name player, _reqAddons]] Call WFBE_CO_FNC_LogContent;
	titleText [(localize "STR_WF_ReqAddons") + ": \n"+_reqAddons, "BLACK FADED", 20];
	sleep 20;
	failMission "END1";
};

WFBE_Client_SideJoined = side player;
WFBE_Client_SideJoinedText = str WFBE_Client_SideJoined;
WFBE_Allow_HostileGearSaving = true;
WF_MAXPLAYERS_IN_TEAM = 30;
WSW_EndIntro = if(WF_Skip_Intro)then{true}else{false};
WSW_IsRoleSelectedDialogClosed = false;
WSW_isFirstRoleSelected = false;

//--- Position the client on the temp spawn (Common is not yet init'd so we call is straigh away).
player setPos ([getMarkerPos Format["%1TempRespawnMarker",WFBE_Client_SideJoinedText],1,10] Call Compile preprocessFile "Common\Functions\Common_GetRandomPosition.sqf");

WFBE_CL_FNC_BoundariesIsOnMap = Compile preprocessFile "Client\Functions\Client_IsOnMap.sqf";
WFBE_CL_FNC_BoundariesHandleOnMap = Compile preprocessFile "Client\Functions\Client_HandleOnMap.sqf";
WFBE_CL_FNC_BuildUnit = Compile preprocessFile "Client\Functions\Client_BuildUnit.sqf";
WFBE_CL_FNC_ChangePlayerFunds = Compile preprocessFile "Client\Functions\Client_ChangePlayerFunds.sqf";
WFBE_CL_FNC_CommandChatMessage = Compile preprocessFile "Client\Functions\Client_CommandChatMessage.sqf";
WFBE_CL_FNC_FX = Compile preprocessFile "Client\Functions\Client_FX.sqf";
WFBE_CL_FNC_GetIncome = Compile preprocessFile "Client\Functions\Client_GetIncome.sqf";
WFBE_CL_FNC_GetPlayerFunds = Compile preprocessFile "Client\Functions\Client_GetPlayerFunds.sqf";
WFBE_CL_FNC_GetRespawnAvailable = Compile preprocessFile "Client\Functions\Client_GetRespawnAvailable.sqf";
WFBE_CL_FNC_GetStructureMarkerLabel = Compile preprocessFile "Client\Functions\Client_GetStructureMarkerLabel.sqf";
WFBE_CL_FNC_GetTime = Compile preprocessFile "Client\Functions\Client_GetTime.sqf";
WFBE_CL_FNC_GroupChatMessage = Compile preprocessFile "Client\Functions\Client_GroupChatMessage.sqf";
WFBE_CL_FNC_HandleHQAction = Compile preprocessFile "Client\Functions\Client_HandleHQAction.sqf";
WFBE_CL_FNC_MarkerAnim = Compile preprocessFile "Client\Functions\Client_MarkerAnim.sqf";
WFBE_CL_FNC_OnRespawnHandler = Compile preprocessFile "Client\Functions\Client_OnRespawnHandler.sqf";
WFBE_CL_FNC_PreRespawnHandler = Compile preprocessFile "Client\Functions\Client_PreRespawnHandler.sqf";
WFBE_CL_FNC_RequestFireMission = Compile preprocessFile "Client\Functions\Client_RequestFireMission.sqf";
WFBE_CL_FNC_SetControlFadeAnim = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnim.sqf";
WFBE_CL_FNC_SetControlFadeAnimStop = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnimStop.sqf";
WFBE_CL_FNC_SupportHeal = Compile preprocessFile "Client\Functions\Client_SupportHeal.sqf";
WFBE_CL_FNC_SupportRearm = Compile preprocessFile "Client\Functions\Client_SupportRearm.sqf";
WFBE_CL_FNC_SupportRefuel = Compile preprocessFile "Client\Functions\Client_SupportRefuel.sqf";
WFBE_CL_FNC_SupportRepair = Compile preprocessFile "Client\Functions\Client_SupportRepair.sqf";
WFBE_CL_FNC_TaskSystem = Compile preprocessFile "Client\Functions\Client_TaskSystem.sqf";
WFBE_CL_FNC_TitleTextMessage = Compile preprocessFile "Client\Functions\Client_TitleTextMessage.sqf";
WFBE_CL_FNC_SetMHQLock = Compile preprocessFileLineNumbers "Client\PVFunctions\SetMHQLock.sqf";

//// Dialog scripts
// Dialog: gear
WFBE_CL_FNC_GUI_WFGear	  = Compile preprocessFileLineNumbers "Client\GUI\GUI_WFGear.sqf";
WFBE_CL_FNC_UIChangeComboBuyUnits = Compile preprocessFile "Client\Functions\Client_UIChangeComboBuyUnits.sqf";
WFBE_CL_FNC_UIFillListBuyUnits = Compile preprocessFile "Client\Functions\Client_UIFillListBuyUnits.sqf";
WFBE_CL_FNC_UIFillListTeamOrders = Compile preprocessFile "Client\Functions\Client_UIFillListTeamOrders.sqf";
WFBE_CL_FNC_UIFindLBValue = Compile preprocessFile "Client\Functions\Client_UIFindLBValue.sqf";

// Dialog: Skills Menu
WSW_role_list = [];
WSW_fnc_buyRole = compileFinal preprocessfilelinenumbers "Client\Module\Role\role_menu\buyRole.sqf";
WSW_fnc_selectRole = compileFinal preprocessfilelinenumbers "Client\Module\Role\role_menu\selectRole.sqf";
WSW_fnc_updateRolesMenu = compileFinal preprocessfilelinenumbers "Client\Module\Role\role_menu\updateRolesMenu.sqf";
WSW_fnc_closeRoleSelectDialog = compileFinal preprocessfilelinenumbers "Client\Module\Role\role_menu\closeRoleSelectDialog.sqf";
WSW_fnc_updateRoleList = compileFinal preprocessfilelinenumbers "Client\Module\Role\role_menu\updateRoleList.sqf";

// Roles
WSW_fnc_buyRoleConfirm = compileFinal preprocessfilelinenumbers "Client\Module\Role\roles\buyRoleConfirm.sqf";
WSW_fnc_resetRolesConfirm = compileFinal preprocessfilelinenumbers "Client\Module\Role\roles\resetRolesConfirm.sqf";

// UAV
WFVE_fnc_uav_interface = compileFinal preprocessfilelinenumbers "Client\Module\UAV\uav_interface.sqf";
WFVE_fnc_uav_spotter = compileFinal preprocessfilelinenumbers "Client\Module\UAV\uav_spotter.sqf";
WFVE_fnc_uav = compileFinal preprocessfilelinenumbers "Client\Module\UAV\uav.sqf";

//// PVF
WFBE_CL_FNC_HandleSpecial = Compile preprocessFileLineNumbers "Client\PVFunctions\HandleSpecial.sqf";
WFBE_CL_FNC_SetTask = Compile preprocessFileLineNumbers "Client\PVFunctions\SetTask.sqf";
WFBE_CL_FNC_TownCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\TownCaptured.sqf";
WFBE_CL_FNC_LocalizeMessage = Compile preprocessFileLineNumbers "Client\PVFunctions\LocalizeMessage.sqf";
WFBE_CL_FNC_CampCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\CampCaptured.sqf";
WFBE_CL_FNC_AwardBountyPlayer = Compile preprocessFileLineNumbers "Client\PVFunctions\AwardBountyPlayer.sqf";
WFBE_CL_FNC_AwardBounty = Compile preprocessFileLineNumbers "Client\PVFunctions\AwardBounty.sqf";
WFBE_CL_FNC_RequestBaseArea = Compile preprocessFileLineNumbers "Client\PVFunctions\RequestBaseArea.sqf";
WFBE_CL_FNC_ChangeScore = Compile preprocessFileLineNumbers "Client\PVFunctions\ChangeScore.sqf";
WFBE_CL_FNC_Available = Compile preprocessFileLineNumbers "Client\PVFunctions\Available.sqf";
WFBE_CL_FNC_AllCampsCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\AllCampsCaptured.sqf";

//--- Call the UI Functions
call compile preprocessFile "Client\Functions\UI\Functions_UI_GearMenu.sqf";
//call compile preprocessFile "Client\Functions\UI\Functions_UI_KeyHandlers.sqf";

//--- Namespace related (GUI).
BIS_FNC_GUIset = {UInamespace setVariable [_this select 0, _this select 1]};
BIS_FNC_GUIget = {UInamespace getVariable (_this select 0)};

//--- New Fnc.
WFBE_CL_FNC_DelegateTownAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateTownAI.sqf";
WFBE_CL_FNC_DelegateAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAI.sqf";
WFBE_CL_FNC_DelegateAIStaticDefence = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAIStaticDefence.sqf";
WFBE_CL_FNC_GetAIID = Compile preprocessFileLineNumbers "Client\Functions\Client_GetAIID.sqf";
WFBE_CL_FNC_GetBackpackContent = Compile preprocessFileLineNumbers "Client\Functions\Client_GetBackpackContent.sqf";
WFBE_CL_FNC_GetClosestAirport = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestAirport.sqf";
WFBE_CL_FNC_GetClosestCamp = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestCamp.sqf";
WFBE_CL_FNC_GetClosestDepot = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestDepot.sqf";
WFBE_CL_FNC_GetGearCargoSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetGearCargoSize.sqf";
WFBE_CL_FNC_GetMagazinesSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetMagazinesSize.sqf";
WFBE_CL_FNC_GetParsedGear = Compile preprocessFileLineNumbers "Client\Functions\Client_GetParsedGear.sqf";
WFBE_CL_FNC_GetVehicleCargoSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetVehicleCargoSize.sqf";
WFBE_CL_FNC_GetVehicleContent = Compile preprocessFileLineNumbers "Client\Functions\Client_GetVehicleContent.sqf";
WFBE_CL_FNC_GetUnitBackpack = Compile preprocessFileLineNumbers "Client\Functions\Client_GetUnitBackpack.sqf";
WFBE_CL_FNC_OnKilled = Compile preprocessFileLineNumbers "Client\Functions\Client_OnKilled.sqf";
WFBE_CL_FNC_OperateCargoGear = Compile preprocessFileLineNumbers "Client\Functions\Client_OperateCargoGear.sqf";
WFBE_CL_FNC_ReplaceMagazinesGear = Compile preprocessFileLineNumbers "Client\Functions\Client_ReplaceMagazinesGear.sqf";
WFBE_CL_FNC_RemoveMagazineGear = Compile preprocessFileLineNumbers "Client\Functions\Client_RemoveMagazineGear.sqf";
WFBE_CL_FNC_UI_Respawn_Selector = Compile preprocessFileLineNumbers "Client\Functions\Client_UI_Respawn_Selector.sqf";
WFBE_CL_FNC_Client_GetNearestCamp = Compile preprocessFileLineNumbers "Client\Functions\Client_GetNearestCamp.sqf";
WFBE_CL_FNC_UpdateActions = Compile preprocessFileLineNumbers "Client\FSM\updateactions.sqf";
WFBE_CL_FNC_TRACK_ARTY = Compile preprocessFileLineNumbers "Client\Functions\Client_ARRadarMarkerUpdate.sqf";
WFBE_CL_FNC_HALO_JUMP = Compile preprocessFileLineNumbers "Client\Functions\Client_HaloJump.sqf";
WFBE_CL_FNC_SetVehicleLock = Compile preprocessFileLineNumbers "Client\PVFunctions\SetVehicleLock.sqf";
WFBE_CL_FNC_Update_Salvage = Compile preprocessFileLineNumbers "Client\FSM\updatesalvage.sqf";


WFBE_CL_FNC_Init_Coin = Compile preprocessFileLineNumbers "Client\Init\Init_Coin.sqf";

WFBE_CL_FNC_MissionIntro = Compile preprocessFileLineNumbers "Client\Client_MissionIntro.sqf";
//// GEAR INIT
//--- Gear: Config sub ID
WFBE_SUBTYPE_ITEM = 0;
WFBE_SUBTYPE_ACC_MUZZLE = 101;
WFBE_SUBTYPE_ACC_OPTIC = 201;
WFBE_SUBTYPE_ACC_SIDE = 301;
WFBE_SUBTYPE_ACC_BIPOD = 302;
WFBE_SUBTYPE_HEADGEAR = 605;
WFBE_SUBTYPE_UAVTERMINAL = 621;
WFBE_SUBTYPE_VEST = 701;
WFBE_SUBTYPE_UNIFORM = 801;
WFBE_SUBTYPE_BACKPACK = 901;

WFBE_GEAR_TAB_PRIMARY = 0;
WFBE_GEAR_TAB_SECONDARY = 1;
WFBE_GEAR_TAB_HANDGUN = 2;
WFBE_GEAR_TAB_ACCESSORIES = 3;
WFBE_GEAR_TAB_AMMO = 4;
WFBE_GEAR_TAB_MISC = 5;
WFBE_GEAR_TAB_EQUIPMENT = 6;
WFBE_GEAR_TAB_TEMPLATES = 7;

//--- Gear: Config ID
WFBE_TYPE_RIFLE = 1;
WFBE_TYPE_PISTOL = 2;
WFBE_TYPE_LAUNCHER = 4;
WFBE_TYPE_RIFLE2H = 5;
WFBE_TYPE_EQUIPMENT = 4096;
WFBE_TYPE_ITEM = 131072;

// adjusting fatigue
if ((missionNamespace getVariable "WFBE_C_GAMEPLAY_FATIGUE_ENABLED") == 1) then {
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

if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_RHS_West.sqf"};
if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_RHS_East.sqf"};

if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Vanilla_West.sqf"};
if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Vanilla_East.sqf"};

if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Vanilla_Common.sqf"};
if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Vanilla_Common.sqf"};

if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Sniper_East.sqf"};
if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Sniper_West.sqf"};

if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Engineer_East.sqf"};
if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Engineer_West.sqf"};

if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Soldier_East.sqf"};
if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Soldier_West.sqf"};

if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_SpecOps_East.sqf"};
if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_SpecOps_West.sqf"};

if (WFBE_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_UAV_Operator_East.sqf"};
if (WFBE_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_UAV_Operator_West.sqf"};

if (isNil {profileNamespace getVariable format["WFBE_PERSISTENT_GEAR_TEMPLATE_%1", WFBE_Client_SideJoined]}) then {
	call WFBE_UI_Gear_InitializeProfileTemplates
};

if !(isNil {profileNamespace getVariable format["WFBE_PERSISTENT_GEAR_TEMPLATE_%1", WFBE_Client_SideJoined]}) then {
	execVM "Client\Init\Init_Persistent_Gear.sqf";
};

Call Compile preprocessFileLineNumbers 'Client\Functions\Client_FNC_OnFired.sqf'; //--- FUNCTIONS: onFired EH.
Call Compile preprocessFileLineNumbers 'Client\Functions\Client_FNC_Special.sqf'; //--- FUNCTIONS: Specials.

//--- UI Namespace release from previous possible games (only on titles dialog!).
{uiNamespace setVariable [_x, displayNull]} forEach ["wfbe_title_capture"];

//--- Waiting for the common part to be executed.
waitUntil {commonInitComplete};

["INITIALIZATION", Format ["Init_Client.sqf: Common initialization is complete at [%1]", time]] Call WFBE_CO_FNC_LogContent;


WFBE_CL_FNC_UI_Gear_SaveTemplateProfile = Compile preprocessFileLineNumbers "Client\Functions\Client_UI_Gear_SaveTemplateProfile.sqf";
Call Compile preprocessFileLineNumbers "Client\Init\Init_ProfileVariables.sqf";


//--- Queue Protection.
missionNamespace setVariable ['WFBE_C_QUEUE_BARRACKS',0];
missionNamespace setVariable ['WFBE_C_QUEUE_BARRACKS_MAX',10];
missionNamespace setVariable ['WFBE_C_QUEUE_LIGHT',0];
missionNamespace setVariable ['WFBE_C_QUEUE_LIGHT_MAX',5];
missionNamespace setVariable ['WFBE_C_QUEUE_HEAVY',0];
missionNamespace setVariable ['WFBE_C_QUEUE_HEAVY_MAX',5];
missionNamespace setVariable ['WFBE_C_QUEUE_AIRCRAFT',0];
missionNamespace setVariable ['WFBE_C_QUEUE_AIRCRAFT_MAX',2];
missionNamespace setVariable ['WFBE_C_QUEUE_AIRPORT',0];
missionNamespace setVariable ['WFBE_C_QUEUE_AIRPORT_MAX',2];
missionNamespace setVariable ['WFBE_C_QUEUE_DEPOT',0];
missionNamespace setVariable ['WFBE_C_QUEUE_DEPOT_MAX',4];

//--- Global Client Variables.
sideID = WFBE_Client_SideJoined Call WFBE_CO_FNC_GetSideID;
paramBoundariesRunning = false;
execVM "WASP\global_marking_monitor.sqf";
WFBE_Client_Logic = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideLogic;
WFBE_Client_SideID = sideID;
WFBE_Client_Color = switch (WFBE_Client_SideJoined) do { case west: {missionNamespace getVariable "WFBE_C_WEST_COLOR"}; case east: {missionNamespace getVariable "WFBE_C_EAST_COLOR"}; case resistance: {missionNamespace getVariable "WFBE_C_GUER_COLOR"};};
WFBE_Client_Team = group player;
WFBE_Client_Teams = missionNamespace getVariable Format['WFBE_%1TEAMS',WFBE_Client_SideJoinedText];
WFBE_Client_Teams_Count = count WFBE_Client_Teams;
WFBE_Client_IsRespawning = false;

commanderTeam = objNull;
buildingMarker = 0;
CCMarker = 0;
//currentTG = ['WFBE_PERSISTENT_CONST_TERRAIN_GRID', '35'] Call WFBE_CO_FNC_GetProfileVariable;
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
WFBE_RespawnDefaultGear = false;
WFBE_ForceUpdate = true;

//--- Load Terrain grid if it wasn't loaded from the profile.
if (isNil 'currentTG') then {
	currentTG = if ((missionNamespace getVariable "WFBE_C_ENVIRONMENT_MAX_CLUTTER") < 25) then {missionNamespace getVariable "WFBE_C_ENVIRONMENT_MAX_CLUTTER"} else {25};
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
	["update-teamleader", WFBE_Client_Team, player] remoteExecCall ["WFBE_SE_PVF_RequestSpecial",2];
};

//--- Disable Artillery Computer.
Call Compile "enableEngineArtillery false;";

//--- Commander % stock init.
if (isNil { missionNamespace getVariable "wfbe_commander_percent"}) then { missionNamespace setVariable ["wfbe_commander_percent", if ((missionNamespace getVariable "WFBE_C_ECONOMY_INCOME_PERCENT_MAX") >= 50 && (missionNamespace getVariable "WFBE_C_ECONOMY_INCOME_PERCENT_MAX") <= 100) then {missionNamespace getVariable "WFBE_C_ECONOMY_INCOME_PERCENT_MAX"} else {100}]};

/* Exec SQF|FSM Misc stuff. */
if ((missionNamespace getVariable "WFBE_C_UNITS_TRACK_LEADERS") > 0) then {[] execVM "Client\FSM\updateteamsmarkers.sqf"};
[] spawn WFBE_CL_FNC_UpdateActions;

/* Don't pause the client initialization process. */
[] Spawn {
	waitUntil {townInit};
	/* Handle the capture GUI */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Town Capture FSM"] Call WFBE_CO_FNC_LogContent;
	[] execVM "Client\FSM\client_title_capture.sqf";
	/* Handle the map town markers */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Towns Marker FSM"] Call WFBE_CO_FNC_LogContent;
	[] execVM "Client\FSM\updatetownmarkers.sqf";
	waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_structures"}};
	waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_supply"}};

	/* Handle the client actions */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Available Actions FSM"] Call WFBE_CO_FNC_LogContent;
	[] execVM "Client\FSM\updateavailableactions.sqf";
};

[] Spawn {
	Private ["_commanderTeam"];
	waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_commander"}};
	/* Commander Handling */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Commander Update FSM"] Call WFBE_CO_FNC_LogContent;
	[] ExecVM "Client\FSM\updateclient.sqf";
};

//--- Add the briefing (notes).
[] Call Compile preprocessFile "briefing.sqf";

//--- HQ Radio system.
waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_radio_hq"}};
_HQRadio = WFBE_Client_Logic getVariable "wfbe_radio_hq";
["INITIALIZATION", Format["Init_Client.sqf: Initialized the Radio Announcer [%1]", _HQRadio]] Call WFBE_CO_FNC_LogContent;
waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_radio_hq_id"}};
WFBE_V_HQTopicSide = WFBE_Client_Logic getVariable "wfbe_radio_hq_id";
["INITIALIZATION", Format["Init_Client.sqf: Initializing the Radio Announcer Identity [%1]", WFBE_V_HQTopicSide]] Call WFBE_CO_FNC_LogContent;
_HQRadio setIdentity WFBE_V_HQTopicSide;
_HQRadio setRank "COLONEL";
_HQRadio setGroupId ["HQ"];
_HQRadio kbAddTopic [WFBE_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
player kbAddTopic [WFBE_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
sideHQ = _HQRadio;

["INITIALIZATION", "Init_Client.sqf: Radio announcer is initialized."] Call WFBE_CO_FNC_LogContent;

/* Wait for a valid signal (Teamswapping) with failover */
if (isMultiplayer && time > 7) then {
	Private ["_get","_timelaps"];
	_get = true;

	sleep (random 0.1);

	[player, WFBE_Client_SideJoined] remoteExecCall ["WFBE_SE_PVF_RequestJoin",2];
	
	_timelaps = 0;
	while {true} do {
		sleep 0.1;
		_get = missionNamespace getVariable 'WFBE_P_CANJOIN';
		if !(isNil '_get') exitWith {["INITIALIZATION", Format["Init_Client.sqf: [%1] Client [%2], Can join? [%3]",WFBE_Client_SideJoined,name player,_get]] Call WFBE_CO_FNC_LogContent};

		_timelaps = _timelaps + 0.1;
		if (_timelaps > 15) then {
			_timelaps = 0;
			["WARNING", Format["Init_Client.sqf: [%1] Client [%2] join is pending... no ACK was received from the server, a new request will be submitted.",WFBE_Client_SideJoined,name player]] Call WFBE_CO_FNC_LogContent;
			[player, WFBE_Client_SideJoined] remoteExecCall ["WFBE_SE_PVF_RequestJoin",2];
		};
	};

	if !(_get) exitWith {
		["WARNING", Format["Init_Client.sqf: [%1] Client [%2] has teamswapped/STACKED and is now being sent back to the lobby.",WFBE_Client_SideJoined,name player]] Call WFBE_CO_FNC_LogContent;

		sleep 12;
		failMission "END1";
	};
};

/* Get the client starting location */
["INITIALIZATION", "Init_Client.sqf: Retrieving the client spawn location."] Call WFBE_CO_FNC_LogContent;
_base = objNull;
if (time < 30) then {
	waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_startpos"}};
	_base = WFBE_Client_Logic getVariable "wfbe_startpos";
} else {
	waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_hq"}};
	waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_structures"}};
	_base = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideHQ;
	_buildings = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideStructures;

	if (count _buildings > 0) then {_base = _buildings select 0;};
};

["INITIALIZATION", Format["Init_Client.sqf: Client spawn location has been determined at [%1].", _base]] Call WFBE_CO_FNC_LogContent;

/* Position the client at the previously defined location */
player setPos ([_base,20,30] Call WFBE_CO_FNC_GetRandomPosition);

/* HQ Building Init. */
waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_hq_deployed"}};

["INITIALIZATION", "Init_Client.sqf: Initializing COIN Module."] Call WFBE_CO_FNC_LogContent;
_isDeployed = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideHQDeployStatus;
if (_isDeployed) then {
	[missionNamespace getVariable "WFBE_C_BASE_COIN_AREA_HQ_DEPLOYED",true,MCoin] Call WFBE_CL_FNC_Init_Coin;
} else {
	[missionNamespace getVariable "WFBE_C_BASE_COIN_AREA_HQ_UNDEPLOYED",false,MCoin] Call WFBE_CL_FNC_Init_Coin;
};

//--- Add Killed EH to the HQ on each client if needed (JIP), skip LAN host.
if (!isServer && !_isDeployed) then {
	[] spawn {
		waitUntil {!isNil {WFBE_Client_Logic getVariable "wfbe_hq"}};
		(WFBE_Client_SideJoined Call WFBE_CO_FNC_GetSideHQ) addEventHandler ["killed", {
				["process-killed-hq", _this] remoteExecCall ["WFBE_SE_PVF_RequestSpecial",2];
		}];
	};
};

_greenList = [];
{_greenList pushBack (missionNamespace getVariable Format ["%1%2",WFBE_Client_SideJoinedText,_x]);} forEach ["BAR","LVF","HEAVY","AIR"];
missionNamespace setVariable ["COIN_UseHelper", _greenList];

/* Options menu. */
Options = player addAction ["<t color='#42b6ff'>" + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf", "", 999, false, true, "", "_target == player"];

//--- Make sure that player is always the leader.
if (leader(group player) != player) then {(group player) selectLeader player};

// initiate the passive skills.
WSW_gbl_boughtRoles = [];

/* Skill Module. */
[] Call Compile preprocessFile "Client\Module\Role\Skill_Init.sqf";
(player) Call WFBE_SK_FNC_Apply;

[] execVM "WASP\baserep\init.sqf";

/* Debug System - Client */
if (WF_Debug) then {
	onMapSingleClick "vehicle player setpos _pos;(vehicle player) setVelocity [0,0,-0.1];diag_log getpos player;"; //--- Teleport
	player addEventHandler ["HandleDamage", {if (player != (_this select 3)) then {(_this select 3) setDammage 1}; false}]; //--- God-Slayer mode.
};

//if ((missionNamespace getVariable "WFBE_C_MODULE_WFBE_EASA") > 0) then {Call Compile preprocessFileLineNumbers "Client\Module\EASA\EASA_Init.sqf"}; //--- EASA.

/* Key Binding */
[] Call Compile preprocessFile "Client\Init\Init_Keybind.sqf";

/* JIP Handler */
waitUntil {townInit};
["INITIALIZATION", "Init_Client.sqf: Towns are initialized."] Call WFBE_CO_FNC_LogContent;

/* JIP System, initialize the camps and towns properly. */
[] Spawn {
	sleep 2;
	["INITIALIZATION", "Init_Client.sqf: Updating JIP Markers."] Call WFBE_CO_FNC_LogContent;
	Call Compile preprocessFileLineNumbers "Client\Init\Init_Markers.sqf";
};

/* Repair Truck CoIn Handling. */
[missionNamespace getVariable "WFBE_C_BASE_COIN_AREA_REPAIR",false,RCoin,"REPAIR"] Call WFBE_CL_FNC_Init_Coin;

/* A new player come to reinforce the battlefield */
[WFBE_Client_SideJoinedText,'UnitsCreated',1] Call WFBE_CO_FNC_UpdateStatistics;

/* Client death handler. */
WFBE_PLAYERKEH = player addEventHandler ['Killed', {[_this select 0,_this select 1] Spawn WFBE_CL_FNC_OnKilled; [_this select 0,_this select 1, sideID] Spawn WFBE_CO_FNC_OnUnitKilled}];

//--- Valhalla init.
[] Spawn {
	[] Call Compile preprocessFile "Client\Module\Valhalla\Init_Valhalla.sqf";
};

//--Disable fatigue--
if ((missionNamespace getVariable "WFBE_C_GAMEPLAY_FATIGUE_ENABLED") == 0) then {player enableFatigue false;};

//--Add JUMPER handler--
[] execVM "Client\Module\Jumper\jumper.sqf";

//--Assign to ZEUS--
if ((getPlayerUID player in WFBE_RESERVEDUIDS)) then {
	HINT ("YOU CAN USE ZEUS MODULE!");
};

clientInitComplete = true;

_roleDefaultGear = [];
_roleDefaultGear = missionNamespace getVariable Format["WFBE_%1_DefaultGearSoldier", WFBE_Client_SideJoinedText];
[player, _roleDefaultGear] call WFBE_CO_FNC_EquipUnit;
WFBE_P_CurrentGear = (player) call WFBE_CO_FNC_GetUnitLoadout;

/* Vote System, define whether a vote is already running or not */
["INITIALIZATION", "Init_Client.sqf: Vote system is initialized."] Call WFBE_CO_FNC_LogContent;
if ((WFBE_Client_Logic getVariable "wfbe_votetime") > 0) then {createDialog "WFBE_VoteMenu"};

/* Towns Task System */
["TownAddComplete"] Spawn WFBE_CL_FNC_TaskSystem;

sleep 5;
/* HUD MODULE */
ExecVM "Client\Client_UpdateRHUD.sqf";

if(WF_Skip_Intro) then {
    while {isNull (findDisplay 2800)}do{
        createDialog "WSW_roles_menu";
        sleep 0.01;
    };
    [] call WSW_fnc_updateRolesMenu;
    lbSetCurSel [2801, 0];
};

if(!WF_Skip_Intro)then{
    waitUntil {
        WSW_EndIntro && WSW_IsRoleSelectedDialogClosed
    };
};

["INITIALIZATION", Format ["Init_Client.sqf: Client initialization ended at [%1]", time]] Call WFBE_CO_FNC_LogContent;