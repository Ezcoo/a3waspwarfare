Private ['_HQRadio','_base','_buildings','_condition','_get','_idbl','_isDeployed','_oc','_weat'];

["INITIALIZATION", Format ["Init_Client.sqf: Client initialization begins at [%1]", time]] Call CTI_CO_FNC_LogContent;

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
foreach CTI_REQ_ADDONS;

if(count (toArray(_reqAddons)) > 0) then { 
	["WARNING", Format["Init_Client.sqf: Client [%1] have not required addons: [%2], and is now being sent back to the lobby.", name player, _reqAddons]] Call CTI_CO_FNC_LogContent;
	titleText [(localize "STR_WF_ReqAddons") + ": \n"+_reqAddons, "BLACK FADED", 20];
	sleep 20;
	failMission "END1";
};

CTI_Client_SideJoined = side player;
CTI_Client_SideJoinedText = str CTI_Client_SideJoined;
CTI_Allow_HostileGearSaving = true;
WF_MAXPLAYERS_IN_TEAM = 30;
WSW_EndIntro = if(WF_Skip_Intro)then{true}else{false};
WSW_IsRoleSelectedDialogClosed = false;
WSW_isFirstRoleSelected = false;

//--- Position the client on the temp spawn (Common is not yet init'd so we call is straigh away).
player setPos ([getMarkerPos Format["%1TempRespawnMarker",CTI_Client_SideJoinedText],1,10] Call Compile preprocessFile "Common\Functions\Common_GetRandomPosition.sqf");

CTI_CL_FNC_BoundariesIsOnMap = Compile preprocessFile "Client\Functions\Client_IsOnMap.sqf";
CTI_CL_FNC_BoundariesHandleOnMap = Compile preprocessFile "Client\Functions\Client_HandleOnMap.sqf";
CTI_CL_FNC_BuildUnit = Compile preprocessFile "Client\Functions\Client_BuildUnit.sqf";
CTI_CL_FNC_ChangePlayerFunds = Compile preprocessFile "Client\Functions\Client_ChangePlayerFunds.sqf";
CTI_CL_FNC_CommandChatMessage = Compile preprocessFile "Client\Functions\Client_CommandChatMessage.sqf";
CTI_CL_FNC_FX = Compile preprocessFile "Client\Functions\Client_FX.sqf";
CTI_CL_FNC_GetIncome = Compile preprocessFile "Client\Functions\Client_GetIncome.sqf";
CTI_CL_FNC_GetPlayerFunds = Compile preprocessFile "Client\Functions\Client_GetPlayerFunds.sqf";
CTI_CL_FNC_GetRespawnAvailable = Compile preprocessFile "Client\Functions\Client_GetRespawnAvailable.sqf";
CTI_CL_FNC_GetStructureMarkerLabel = Compile preprocessFile "Client\Functions\Client_GetStructureMarkerLabel.sqf";
CTI_CL_FNC_GetTime = Compile preprocessFile "Client\Functions\Client_GetTime.sqf";
CTI_CL_FNC_GroupChatMessage = Compile preprocessFile "Client\Functions\Client_GroupChatMessage.sqf";
CTI_CL_FNC_HandleHQAction = Compile preprocessFile "Client\Functions\Client_HandleHQAction.sqf";
CTI_CL_FNC_MarkerAnim = Compile preprocessFile "Client\Functions\Client_MarkerAnim.sqf";
CTI_CL_FNC_OnRespawnHandler = Compile preprocessFile "Client\Functions\Client_OnRespawnHandler.sqf";
CTI_CL_FNC_PreRespawnHandler = Compile preprocessFile "Client\Functions\Client_PreRespawnHandler.sqf";
CTI_CL_FNC_RequestFireMission = Compile preprocessFile "Client\Functions\Client_RequestFireMission.sqf";
CTI_CL_FNC_SetControlFadeAnim = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnim.sqf";
CTI_CL_FNC_SetControlFadeAnimStop = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnimStop.sqf";
CTI_CL_FNC_SupportHeal = Compile preprocessFile "Client\Functions\Client_SupportHeal.sqf";
CTI_CL_FNC_SupportRearm = Compile preprocessFile "Client\Functions\Client_SupportRearm.sqf";
CTI_CL_FNC_SupportRefuel = Compile preprocessFile "Client\Functions\Client_SupportRefuel.sqf";
CTI_CL_FNC_SupportRepair = Compile preprocessFile "Client\Functions\Client_SupportRepair.sqf";
CTI_CL_FNC_TaskSystem = Compile preprocessFile "Client\Functions\Client_TaskSystem.sqf";
CTI_CL_FNC_TitleTextMessage = Compile preprocessFile "Client\Functions\Client_TitleTextMessage.sqf";
CTI_CL_FNC_SetMHQLock = Compile preprocessFileLineNumbers "Client\PVFunctions\SetMHQLock.sqf";

//// Dialog scripts
// Dialog: gear
CTI_CL_FNC_GUI_WFGear	  = Compile preprocessFileLineNumbers "Client\GUI\GUI_WFGear.sqf";
CTI_CL_FNC_UIChangeComboBuyUnits = Compile preprocessFile "Client\Functions\Client_UIChangeComboBuyUnits.sqf";
CTI_CL_FNC_UIFillListBuyUnits = Compile preprocessFile "Client\Functions\Client_UIFillListBuyUnits.sqf";
CTI_CL_FNC_UIFillListTeamOrders = Compile preprocessFile "Client\Functions\Client_UIFillListTeamOrders.sqf";
CTI_CL_FNC_UIFindLBValue = Compile preprocessFile "Client\Functions\Client_UIFindLBValue.sqf";

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
CTI_CL_FNC_HandleSpecial = Compile preprocessFileLineNumbers "Client\PVFunctions\HandleSpecial.sqf";
CTI_CL_FNC_SetTask = Compile preprocessFileLineNumbers "Client\PVFunctions\SetTask.sqf";
CTI_CL_FNC_TownCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\TownCaptured.sqf";
CTI_CL_FNC_LocalizeMessage = Compile preprocessFileLineNumbers "Client\PVFunctions\LocalizeMessage.sqf";
CTI_CL_FNC_CampCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\CampCaptured.sqf";
CTI_CL_FNC_AwardBountyPlayer = Compile preprocessFileLineNumbers "Client\PVFunctions\AwardBountyPlayer.sqf";
CTI_CL_FNC_AwardBounty = Compile preprocessFileLineNumbers "Client\PVFunctions\AwardBounty.sqf";
CTI_CL_FNC_RequestBaseArea = Compile preprocessFileLineNumbers "Client\PVFunctions\RequestBaseArea.sqf";
CTI_CL_FNC_ChangeScore = Compile preprocessFileLineNumbers "Client\PVFunctions\ChangeScore.sqf";
CTI_CL_FNC_Available = Compile preprocessFileLineNumbers "Client\PVFunctions\Available.sqf";
CTI_CL_FNC_AllCampsCaptured = Compile preprocessFileLineNumbers "Client\PVFunctions\AllCampsCaptured.sqf";

//--- Call the UI Functions
call compile preprocessFile "Client\Functions\UI\Functions_UI_GearMenu.sqf";
//call compile preprocessFile "Client\Functions\UI\Functions_UI_KeyHandlers.sqf";

//--- Namespace related (GUI).
BIS_FNC_GUIset = {UInamespace setVariable [_this select 0, _this select 1]};
BIS_FNC_GUIget = {UInamespace getVariable (_this select 0)};

//--- New Fnc.
CTI_CL_FNC_DelegateTownAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateTownAI.sqf";
CTI_CL_FNC_DelegateAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAI.sqf";
CTI_CL_FNC_DelegateAIStaticDefence = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAIStaticDefence.sqf";
CTI_CL_FNC_GetAIID = Compile preprocessFileLineNumbers "Client\Functions\Client_GetAIID.sqf";
CTI_CL_FNC_GetBackpackContent = Compile preprocessFileLineNumbers "Client\Functions\Client_GetBackpackContent.sqf";
CTI_CL_FNC_GetClosestAirport = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestAirport.sqf";
CTI_CL_FNC_GetClosestCamp = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestCamp.sqf";
CTI_CL_FNC_GetClosestDepot = Compile preprocessFileLineNumbers "Client\Functions\Client_GetClosestDepot.sqf";
CTI_CL_FNC_GetGearCargoSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetGearCargoSize.sqf";
CTI_CL_FNC_GetMagazinesSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetMagazinesSize.sqf";
CTI_CL_FNC_GetParsedGear = Compile preprocessFileLineNumbers "Client\Functions\Client_GetParsedGear.sqf";
CTI_CL_FNC_GetVehicleCargoSize = Compile preprocessFileLineNumbers "Client\Functions\Client_GetVehicleCargoSize.sqf";
CTI_CL_FNC_GetVehicleContent = Compile preprocessFileLineNumbers "Client\Functions\Client_GetVehicleContent.sqf";
CTI_CL_FNC_GetUnitBackpack = Compile preprocessFileLineNumbers "Client\Functions\Client_GetUnitBackpack.sqf";
CTI_CL_FNC_OnKilled = Compile preprocessFileLineNumbers "Client\Functions\Client_OnKilled.sqf";
CTI_CL_FNC_OperateCargoGear = Compile preprocessFileLineNumbers "Client\Functions\Client_OperateCargoGear.sqf";
CTI_CL_FNC_ReplaceMagazinesGear = Compile preprocessFileLineNumbers "Client\Functions\Client_ReplaceMagazinesGear.sqf";
CTI_CL_FNC_RemoveMagazineGear = Compile preprocessFileLineNumbers "Client\Functions\Client_RemoveMagazineGear.sqf";
CTI_CL_FNC_UI_Respawn_Selector = Compile preprocessFileLineNumbers "Client\Functions\Client_UI_Respawn_Selector.sqf";
CTI_CL_FNC_Client_GetNearestCamp = Compile preprocessFileLineNumbers "Client\Functions\Client_GetNearestCamp.sqf";
CTI_CL_FNC_UpdateActions = Compile preprocessFileLineNumbers "Client\FSM\updateactions.sqf";
CTI_CL_FNC_TRACK_ARTY = Compile preprocessFileLineNumbers "Client\Functions\Client_ARRadarMarkerUpdate.sqf";
CTI_CL_FNC_HALO_JUMP = Compile preprocessFileLineNumbers "Client\Functions\Client_HaloJump.sqf";
CTI_CL_FNC_SetVehicleLock = Compile preprocessFileLineNumbers "Client\PVFunctions\SetVehicleLock.sqf";
CTI_CL_FNC_Update_Salvage = Compile preprocessFileLineNumbers "Client\FSM\updatesalvage.sqf";


CTI_CL_FNC_Init_Coin = Compile preprocessFileLineNumbers "Client\Init\Init_Coin.sqf";

CTI_CL_FNC_MissionIntro = Compile preprocessFileLineNumbers "Client\Client_MissionIntro.sqf";
//// GEAR INIT
//--- Gear: Config sub ID
CTI_SUBTYPE_ITEM = 0;
CTI_SUBTYPE_ACC_MUZZLE = 101;
CTI_SUBTYPE_ACC_OPTIC = 201;
CTI_SUBTYPE_ACC_SIDE = 301;
CTI_SUBTYPE_ACC_BIPOD = 302;
CTI_SUBTYPE_HEADGEAR = 605;
CTI_SUBTYPE_UAVTERMINAL = 621;
CTI_SUBTYPE_VEST = 701;
CTI_SUBTYPE_UNIFORM = 801;
CTI_SUBTYPE_BACKPACK = 901;

CTI_GEAR_TAB_PRIMARY = 0;
CTI_GEAR_TAB_SECONDARY = 1;
CTI_GEAR_TAB_HANDGUN = 2;
CTI_GEAR_TAB_ACCESSORIES = 3;
CTI_GEAR_TAB_AMMO = 4;
CTI_GEAR_TAB_MISC = 5;
CTI_GEAR_TAB_EQUIPMENT = 6;
CTI_GEAR_TAB_TEMPLATES = 7;

//--- Gear: Config ID
CTI_TYPE_RIFLE = 1;
CTI_TYPE_PISTOL = 2;
CTI_TYPE_LAUNCHER = 4;
CTI_TYPE_RIFLE2H = 5;
CTI_TYPE_EQUIPMENT = 4096;
CTI_TYPE_ITEM = 131072;

// adjusting fatigue
if ((missionNamespace getVariable "CTI_C_GAMEPLAY_FATIGUE_ENABLED") == 1) then {
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

if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CUP_West.sqf"};
if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CUP_East.sqf"};

if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_RHS_West.sqf"};
if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_RHS_East.sqf"};

*/
if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Optic_CHRONIC_West.sqf"};
if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_West.sqf"};
if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_East.sqf"};
 

if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_Common.sqf"};
if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_CHRONIC_Common.sqf"};


if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Sniper_East.sqf"};
if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Sniper_West.sqf"};

if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Engineer_East.sqf"};
if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Engineer_West.sqf"};

if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Soldier_East.sqf"};
if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_Soldier_West.sqf"};

if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_SpecOps_East.sqf"};
if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_SpecOps_West.sqf"};

if (CTI_Client_SideJoined == east) then {(east) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_UAV_Operator_East.sqf"};
if (CTI_Client_SideJoined == west) then {(west) call compile preprocessFileLineNumbers "Common\Config\Gear\RoleBased\Gear_UAV_Operator_West.sqf"};

if (isNil {profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATE_%1", CTI_Client_SideJoined]}) then {
	call CTI_UI_Gear_InitializeProfileTemplates
};

if !(isNil {profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATE_%1", CTI_Client_SideJoined]}) then {
	execVM "Client\Init\Init_Persistent_Gear.sqf";
};

Call Compile preprocessFileLineNumbers 'Client\Functions\Client_FNC_OnFired.sqf'; //--- FUNCTIONS: onFired EH.
Call Compile preprocessFileLineNumbers 'Client\Functions\Client_FNC_Special.sqf'; //--- FUNCTIONS: Specials.

//--- UI Namespace release from previous possible games (only on titles dialog!).
{uiNamespace setVariable [_x, displayNull]} forEach ["CTI_title_capture"];

//--- Waiting for the common part to be executed.
waitUntil {commonInitComplete};

["INITIALIZATION", Format ["Init_Client.sqf: Common initialization is complete at [%1]", time]] Call CTI_CO_FNC_LogContent;


CTI_CL_FNC_UI_Gear_SaveTemplateProfile = Compile preprocessFileLineNumbers "Client\Functions\Client_UI_Gear_SaveTemplateProfile.sqf";
Call Compile preprocessFileLineNumbers "Client\Init\Init_ProfileVariables.sqf";


//--- Queue Protection.
missionNamespace setVariable ['CTI_C_QUEUE_BARRACKS',0];
missionNamespace setVariable ['CTI_C_QUEUE_BARRACKS_MAX',10];
missionNamespace setVariable ['CTI_C_QUEUE_LIGHT',0];
missionNamespace setVariable ['CTI_C_QUEUE_LIGHT_MAX',5];
missionNamespace setVariable ['CTI_C_QUEUE_HEAVY',0];
missionNamespace setVariable ['CTI_C_QUEUE_HEAVY_MAX',5];
missionNamespace setVariable ['CTI_C_QUEUE_AIRCRAFT',0];
missionNamespace setVariable ['CTI_C_QUEUE_AIRCRAFT_MAX',2];
missionNamespace setVariable ['CTI_C_QUEUE_AIRPORT',0];
missionNamespace setVariable ['CTI_C_QUEUE_AIRPORT_MAX',2];
missionNamespace setVariable ['CTI_C_QUEUE_DEPOT',0];
missionNamespace setVariable ['CTI_C_QUEUE_DEPOT_MAX',4];

//--- Global Client Variables.
sideID = CTI_Client_SideJoined Call CTI_CO_FNC_GetSideID;
paramBoundariesRunning = false;
execVM "WASP\global_marking_monitor.sqf";
CTI_Client_Logic = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideLogic;
CTI_Client_SideID = sideID;
CTI_Client_Color = switch (CTI_Client_SideJoined) do { case west: {missionNamespace getVariable "CTI_C_WEST_COLOR"}; case east: {missionNamespace getVariable "CTI_C_EAST_COLOR"}; case resistance: {missionNamespace getVariable "CTI_C_GUER_COLOR"};};
CTI_Client_Team = group player;
CTI_Client_Teams = missionNamespace getVariable Format['CTI_%1TEAMS',CTI_Client_SideJoinedText];
CTI_Client_Teams_Count = count CTI_Client_Teams;
CTI_Client_IsRespawning = false;

commanderTeam = objNull;
buildingMarker = 0;
CCMarker = 0;
//currentTG = ['CTI_PERSISTENT_CONST_TERRAIN_GRID', '35'] Call CTI_CO_FNC_GetProfileVariable;
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
CTI_RespawnDefaultGear = false;
CTI_ForceUpdate = true;

//--- Load Terrain grid if it wasn't loaded from the profile.
if (isNil 'currentTG') then {
	currentTG = if ((missionNamespace getVariable "CTI_C_ENVIRONMENT_MAX_CLUTTER") < 25) then {missionNamespace getVariable "CTI_C_ENVIRONMENT_MAX_CLUTTER"} else {25};
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
	["update-teamleader", CTI_Client_Team, player] remoteExecCall ["CTI_SE_PVF_RequestSpecial",2];
};

//--- Disable Artillery Computer.
Call Compile "enableEngineArtillery false;";

//--- Commander % stock init.
if (isNil { missionNamespace getVariable "CTI_commander_percent"}) then { missionNamespace setVariable ["CTI_commander_percent", if ((missionNamespace getVariable "CTI_C_ECONOMY_INCOME_PERCENT_MAX") >= 50 && (missionNamespace getVariable "CTI_C_ECONOMY_INCOME_PERCENT_MAX") <= 100) then {missionNamespace getVariable "CTI_C_ECONOMY_INCOME_PERCENT_MAX"} else {100}]};

/* Exec SQF|FSM Misc stuff. */
if ((missionNamespace getVariable "CTI_C_UNITS_TRACK_LEADERS") > 0) then {[] execVM "Client\FSM\updateteamsmarkers.sqf"};
[] spawn CTI_CL_FNC_UpdateActions;

/* Don't pause the client initialization process. */
[] Spawn {
	waitUntil {townInit};
	/* Handle the capture GUI */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Town Capture FSM"] Call CTI_CO_FNC_LogContent;
	[] execVM "Client\FSM\client_title_capture.sqf";
	/* Handle the map town markers */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Towns Marker FSM"] Call CTI_CO_FNC_LogContent;
	[] execVM "Client\FSM\updatetownmarkers.sqf";
	waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_structures"}};
	waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_supply"}};

	/* Handle the client actions */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Available Actions FSM"] Call CTI_CO_FNC_LogContent;
	[] execVM "Client\FSM\updateavailableactions.sqf";
};

[] Spawn {
	Private ["_commanderTeam"];
	waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_commander"}};
	/* Commander Handling */
	["INITIALIZATION", "Init_Client.sqf: Initializing the Commander Update FSM"] Call CTI_CO_FNC_LogContent;
	[] ExecVM "Client\FSM\updateclient.sqf";
};

//--- Add the briefing (notes).
[] Call Compile preprocessFile "briefing.sqf";

//--- HQ Radio system.
waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_radio_hq"}};
_HQRadio = CTI_Client_Logic getVariable "CTI_radio_hq";
["INITIALIZATION", Format["Init_Client.sqf: Initialized the Radio Announcer [%1]", _HQRadio]] Call CTI_CO_FNC_LogContent;
waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_radio_hq_id"}};
CTI_V_HQTopicSide = CTI_Client_Logic getVariable "CTI_radio_hq_id";
["INITIALIZATION", Format["Init_Client.sqf: Initializing the Radio Announcer Identity [%1]", CTI_V_HQTopicSide]] Call CTI_CO_FNC_LogContent;
_HQRadio setIdentity CTI_V_HQTopicSide;
_HQRadio setRank "COLONEL";
_HQRadio setGroupId ["HQ"];
_HQRadio kbAddTopic [CTI_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
player kbAddTopic [CTI_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
sideHQ = _HQRadio;

["INITIALIZATION", "Init_Client.sqf: Radio announcer is initialized."] Call CTI_CO_FNC_LogContent;

/* Wait for a valid signal (Teamswapping) with failover */
if (isMultiplayer && time > 7) then {
	Private ["_get","_timelaps"];
	_get = true;

	sleep (random 0.1);

	[player, CTI_Client_SideJoined] remoteExecCall ["CTI_SE_PVF_RequestJoin",2];
	
	_timelaps = 0;
	while {true} do {
		sleep 0.1;
		_get = missionNamespace getVariable 'CTI_P_CANJOIN';
		if !(isNil '_get') exitWith {["INITIALIZATION", Format["Init_Client.sqf: [%1] Client [%2], Can join? [%3]",CTI_Client_SideJoined,name player,_get]] Call CTI_CO_FNC_LogContent};

		_timelaps = _timelaps + 0.1;
		if (_timelaps > 15) then {
			_timelaps = 0;
			["WARNING", Format["Init_Client.sqf: [%1] Client [%2] join is pending... no ACK was received from the server, a new request will be submitted.",CTI_Client_SideJoined,name player]] Call CTI_CO_FNC_LogContent;
			[player, CTI_Client_SideJoined] remoteExecCall ["CTI_SE_PVF_RequestJoin",2];
		};
	};

	if !(_get) exitWith {
		["WARNING", Format["Init_Client.sqf: [%1] Client [%2] has teamswapped/STACKED and is now being sent back to the lobby.",CTI_Client_SideJoined,name player]] Call CTI_CO_FNC_LogContent;

		sleep 12;
		failMission "END1";
	};
};

/* Get the client starting location */
["INITIALIZATION", "Init_Client.sqf: Retrieving the client spawn location."] Call CTI_CO_FNC_LogContent;
_base = objNull;
if (time < 30) then {
	waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_startpos"}};
	_base = CTI_Client_Logic getVariable "CTI_startpos";
} else {
	waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_hq"}};
	waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_structures"}};
	_base = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQ;
	_buildings = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideStructures;

	if (count _buildings > 0) then {_base = _buildings select 0;};
};

["INITIALIZATION", Format["Init_Client.sqf: Client spawn location has been determined at [%1].", _base]] Call CTI_CO_FNC_LogContent;

/* Position the client at the previously defined location */
player setPos ([_base,20,30] Call CTI_CO_FNC_GetRandomPosition);

/* HQ Building Init. */
waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_hq_deployed"}};

["INITIALIZATION", "Init_Client.sqf: Initializing COIN Module."] Call CTI_CO_FNC_LogContent;
_isDeployed = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQDeployStatus;
if (_isDeployed) then {
	[missionNamespace getVariable "CTI_C_BASE_COIN_AREA_HQ_DEPLOYED",true,MCoin] Call CTI_CL_FNC_Init_Coin;
} else {
	[missionNamespace getVariable "CTI_C_BASE_COIN_AREA_HQ_UNDEPLOYED",false,MCoin] Call CTI_CL_FNC_Init_Coin;
};

//--- Add Killed EH to the HQ on each client if needed (JIP), skip LAN host.
if (!isServer && !_isDeployed) then {
	[] spawn {
		waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_hq"}};
		(CTI_Client_SideJoined Call CTI_CO_FNC_GetSideHQ) addEventHandler ["killed", {
				["process-killed-hq", _this] remoteExecCall ["CTI_SE_PVF_RequestSpecial",2];
		}];
	};
};

_greenList = [];
{_greenList pushBack (missionNamespace getVariable Format ["%1%2",CTI_Client_SideJoinedText,_x]);} forEach ["BAR","LVF","HEAVY","AIR"];
missionNamespace setVariable ["COIN_UseHelper", _greenList];

/* Options menu. */
Options = player addAction ["<t color='#42b6ff'>" + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf", "", 999, false, true, "", "_target == player"];

//--- Make sure that player is always the leader.
if (leader(group player) != player) then {(group player) selectLeader player};

// initiate the passive skills.
WSW_gbl_boughtRoles = [];

/* Skill Module. */
[] Call Compile preprocessFile "Client\Module\Role\Skill_Init.sqf";
(player) Call CTI_SK_FNC_Apply;

[] execVM "WASP\baserep\init.sqf";

/* Debug System - Client */
if (WF_Debug) then {
	onMapSingleClick "vehicle player setpos _pos;(vehicle player) setVelocity [0,0,-0.1];diag_log getpos player;"; //--- Teleport
	player addEventHandler ["HandleDamage", {if (player != (_this select 3)) then {(_this select 3) setDammage 1}; false}]; //--- God-Slayer mode.
};

//if ((missionNamespace getVariable "CTI_C_MODULE_CTI_EASA") > 0) then {Call Compile preprocessFileLineNumbers "Client\Module\EASA\EASA_Init.sqf"}; //--- EASA.

/* Key Binding */
[] Call Compile preprocessFile "Client\Init\Init_Keybind.sqf";

/* JIP Handler */
waitUntil {townInit};
["INITIALIZATION", "Init_Client.sqf: Towns are initialized."] Call CTI_CO_FNC_LogContent;

/* JIP System, initialize the camps and towns properly. */
[] Spawn {
	sleep 2;
	["INITIALIZATION", "Init_Client.sqf: Updating JIP Markers."] Call CTI_CO_FNC_LogContent;
	Call Compile preprocessFileLineNumbers "Client\Init\Init_Markers.sqf";
};

/* Repair Truck CoIn Handling. */
[missionNamespace getVariable "CTI_C_BASE_COIN_AREA_REPAIR",false,RCoin,"REPAIR"] Call CTI_CL_FNC_Init_Coin;

/* A new player come to reinforce the battlefield */
[CTI_Client_SideJoinedText,'UnitsCreated',1] Call CTI_CO_FNC_UpdateStatistics;

/* Client death handler. */
CTI_PLAYERKEH = player addEventHandler ['Killed', {[_this select 0,_this select 1] Spawn CTI_CL_FNC_OnKilled; [_this select 0,_this select 1, sideID] Spawn CTI_CO_FNC_OnUnitKilled}];

//--- Valhalla init.
[] Spawn {
	[] Call Compile preprocessFile "Client\Module\Valhalla\Init_Valhalla.sqf";
};

//--Disable fatigue--
if ((missionNamespace getVariable "CTI_C_GAMEPLAY_FATIGUE_ENABLED") == 0) then {player enableFatigue false;};

//--Add JUMPER handler--
[] execVM "Client\Module\Jumper\jumper.sqf";

//--Assign to ZEUS--
if ((getPlayerUID player in CTI_RESERVEDUIDS)) then {
	HINT ("YOU CAN USE ZEUS MODULE!");
};

clientInitComplete = true;

_roleDefaultGear = [];
_roleDefaultGear = missionNamespace getVariable Format["CTI_%1_DefaultGearSoldier", CTI_Client_SideJoinedText];
[player, _roleDefaultGear] call CTI_CO_FNC_EquipUnit;
CTI_P_CurrentGear = (player) call CTI_CO_FNC_GetUnitLoadout;

/* Vote System, define whether a vote is already running or not */
["INITIALIZATION", "Init_Client.sqf: Vote system is initialized."] Call CTI_CO_FNC_LogContent;
if ((CTI_Client_Logic getVariable "CTI_votetime") > 0) then {createDialog "CTI_VoteMenu"};

/* Towns Task System */
["TownAddComplete"] Spawn CTI_CL_FNC_TaskSystem;

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

["INITIALIZATION", Format ["Init_Client.sqf: Client initialization ended at [%1]", time]] Call CTI_CO_FNC_LogContent;