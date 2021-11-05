CTI_P_SideJoined = side player;
CTI_P_SideID = CTI_P_SideJoined call CTI_CO_FNC_GetSideID;
CTI_P_SideLogic = CTI_P_SideJoined call CTI_CO_FNC_GetSideLogic;
CTI_P_SideColor = CTI_P_SideJoined call CTI_CO_FNC_GetSideColoration;

//--- Loading Screen Status
12452 cutText ["Receiving mission", "BLACK FADED", 50000];

player setPos ([getMarkerPos format["CTI_%1Respawn", CTI_P_SideJoined], 3, 15] call CTI_CO_FNC_GetRandomPosition); //--- Preplace

CTI_CL_FNC_AddMissionActions = compileFinal preprocessFile "Client\Functions\Client_AddMissionActions.sqf";
CTI_CL_FNC_AddRemoteActionsToUnit = compileFinal preprocessFile "Client\Functions\Client_AddRemoteActionsToUnit.sqf";
CTI_CL_FNC_ASL_ParadropCargo = compileFinal preprocessFile "Client\Functions\Client_ASL_ParadropCargo.sqf";
CTI_CL_FNC_ASL_ParadropCargo_IndexAction = compileFinal preprocessFile "Client\Functions\Client_ASL_ParadropCargo_IndexAction.sqf";
CTI_CL_FNC_CanRemoteUnit = compileFinal preprocessFile "Client\Functions\Client_CanRemoteUnit.sqf";
CTI_CL_FNC_ChangePlayerFunds = compileFinal preprocessFile "Client\Functions\Client_ChangePlayerFunds.sqf";
CTI_CL_FNC_NotificationCreate = compile preprocessFile "Client\Functions\Client_NotificationCreate.sqf";
CTI_CL_FNC_NotificationHandle = compile preprocessFile "Client\Functions\Client_NotificationHandler.sqf";
CTI_CL_FNC_NotificationRemove = compile preprocessFile "Client\Functions\Client_NotificationRemove.sqf";
CTI_CL_FNC_DisplayMessage = compileFinal preprocessFile "Client\Functions\Client_DisplayMessage.sqf";
CTI_CL_FNC_GetAIDigit = compileFinal preprocessFile "Client\Functions\Client_GetAIDigit.sqf";
CTI_CL_FNC_GetAIOrderLabel = compileFinal preprocessFile "Client\Functions\Client_GetAIOrderLabel.sqf";
CTI_CL_FNC_GetIncomes = compileFinal preprocessFile "Client\Functions\Client_GetIncomes.sqf";
CTI_CL_FNC_GetOrderLabel = compileFinal preprocessFile "Client\Functions\Client_GetOrderLabel.sqf";
CTI_CL_FNC_GetPlayerFunds = compileFinal preprocessFile "Client\Functions\Client_GetPlayerFunds.sqf";
CTI_CL_FNC_GetPlayerIncome = compileFinal preprocessFile "Client\Functions\Client_GetPlayerIncome.sqf";
CTI_CL_FNC_GetMissionTime = compileFinal preprocessFile "Client\Functions\Client_GetMissionTime.sqf";
CTI_CL_FNC_HasAIOrderChanged = compileFinal preprocessFile "Client\Functions\Client_HasAIOrderChanged.sqf";
CTI_CL_FNC_IsPlayerCommander = compileFinal preprocessFile "Client\Functions\Client_IsPlayerCommander.sqf";
CTI_CL_FNC_InitializeStructure = compileFinal preprocessFile "Client\Functions\Client_InitializeStructure.sqf";
CTI_CL_FNC_MarkParadropLocation = compileFinal preprocessFile "Client\Functions\Client_MarkParadropLocation.sqf";
CTI_CL_FNC_OnArtilleryFired = compileFinal preprocessFile "Client\Functions\Client_OnArtilleryFired.sqf";
CTI_CL_FNC_OnCampCaptured = compileFinal preprocessFile "Client\Functions\Client_OnCampCaptured.sqf";
CTI_CL_FNC_OnExplosivePlaced = compileFinal preprocessFile "Client\Functions\Client_OnExplosivePlaced.sqf";
CTI_CL_FNC_OnHQDestroyed = compileFinal preprocessFile "Client\Functions\Client_OnHQDestroyed.sqf";
CTI_CL_FNC_OnFriendlyStructureDestroyed = compileFinal preprocessFile "Client\Functions\Client_OnFriendlyStructureDestroyed.sqf";
CTI_CL_FNC_OnJailed = compileFinal preprocessFile "Client\Functions\Client_OnJailed.sqf";
CTI_CL_FNC_OnMissionEnding = compileFinal preprocessFile "Client\Functions\Client_OnMissionEnding.sqf";
CTI_CL_FNC_OnPlayerFired = compileFinal preprocessFile "Client\Functions\Client_OnPlayerFired.sqf";
CTI_CL_FNC_OnPlayerKilled = compileFinal preprocessFile "Client\Functions\Client_OnPlayerKilled.sqf";
CTI_CL_FNC_OnPlayerDamaged = compileFinal preprocessFile "Client\Functions\Client_OnPlayerDamaged.sqf";
CTI_CL_FNC_OnWeaponAssembled = compileFinal preprocessFile "Client\Functions\Client_OnWeaponAssembled.sqf";
CTI_CL_FNC_OnPurchaseDelegationReceived = compileFinal preprocessFile "Client\Functions\Client_OnPurchaseDelegationReceived.sqf";
CTI_CL_FNC_OnPurchaseOrderReceived = compileFinal preprocessFile "Client\Functions\Client_OnPurchaseOrderReceived.sqf";
CTI_CL_FNC_OnStructureConstructed = compileFinal preprocessFile "Client\Functions\Client_OnStructureConstructed.sqf";
CTI_CL_FNC_OnTownCaptured = compileFinal preprocessFile "Client\Functions\Client_OnTownCaptured.sqf";
CTI_CL_FNC_PurchaseUnit = compileFinal preprocessFile "Client\Functions\Client_PurchaseUnit.sqf";
CTI_CL_FNC_RemoteControl = compileFinal preprocessFile "Client\Functions\Client_RemoteControl.sqf";
CTI_CL_FNC_RemoveRuins          = compileFinal preprocessFile "Client\Functions\Client_RemoveRuins.sqf";
CTI_CL_FNC_LoadBuildMenu        = compileFinal preprocessFile "Client\Functions\Client_LoadBuildMenu.sqf";
CTI_CL_FNC_EarPlugsSpawn        = compileFinal preprocessFile "Client\Functions\Externals\cmEarplugs\earplugs_spawn.sqf";
CTI_CL_FNC_EarPlugsDeath        = compileFinal preprocessFile "Client\Functions\Externals\cmEarplugs\earplugs_death.sqf";
CTI_CL_FNC_Spawn                = compileFinal preprocessFile "Client\Functions\Client_Spawn.sqf";
CTI_CL_FNC_Death                = compileFinal preprocessFile "Client\Functions\Client_Death.sqf";
CTI_CL_FNC_UpdateRadarMarkerAir = compileFinal preprocessFile "Client\Functions\Client_UpdateRadarMarkerAir.sqf";
CTI_CL_FNC_UpdateRadarMarkerArt = compileFinal preprocessFile "Client\Functions\Client_UpdateRadarMarkerArt.sqf";
CTI_CL_FNC_UpdateRadarSatellite = compileFinal preprocessFile "Client\Functions\Client_UpdateRadarSatellite.sqf";
CTI_CL_FNC_UpdateBaseVariables  = compileFinal preprocessFile "Client\Functions\Client_UpdateBaseVariables.sqf";
CTI_CL_FNC_DisplayMarker        = compileFinal preprocessFile "Client\Functions\Client_DisplayMarker.sqf";

call compile preprocessFileLineNumbers "Client\Functions\FSM\Functions_FSM_UpdateClientAI.sqf";
call compile preprocessFileLineNumbers "Client\Functions\FSM\Functions_FSM_UpdateOrders.sqf";

CTI_P_SideColor = switch (CTI_P_SideJoined) do { case west: {CTI_WEST_COLOR}; case east: {CTI_EAST_COLOR}; case resistance: {CTI_RESISTANCE_COLOR}; default {"ColorBlack"}};
CTI_P_MarkerPrefix = switch (CTI_P_SideJoined) do { case west: {"b_"}; case east: {"o_"}; case resistance: {"n_"}; default {""}};
CTI_P_ChatID = [CTI_P_SideJoined,"HQ"];
CTI_P_MarkerIterator = 0;
CTI_P_PurchaseRequests = [];
CTI_P_TeamsRequests = [];
CTI_P_TeamsRequests_FOB = 0;
CTI_P_TeamsRequests_FOB_Dismantle = 0;
CTI_P_TeamsRequests_Last = -5000;
CTI_P_Respawning = false;
CTI_P_HALOJumping = false;
CTI_P_CurrentTasks = [];
CTI_P_CanJoin = false;
CTI_P_Controlled = player; // Whatever unit the player is controlling. Changes when the player controls one of their AI
CTI_P_Jailed = false;
CTI_P_LastTeamkill = time;
CTI_P_LastFireMission = -1200;
CTI_P_LastRootMenu = "";
CTI_P_LastRepairTime = -600;
CTI_P_WallsAutoAlign = true;
CTI_P_DefensesAutoManning = true;
CTI_P_ServerFPS = -1;
CTI_P_HeadlessClientFPS = -1;

//--- Actions (skills)
CTI_P_ActionLockPick = false;
CTI_P_ActionLockPickChance = 0;
CTI_P_ActionLockPickDelay = 30;
CTI_P_ActionLockPickNextUse = -1;
CTI_P_ActionRepair = false;
CTI_P_ActionRepairDelay = 30;
CTI_P_ActionRepairNextUse = -1;

//-- Actions (vehicles)
CTI_P_ActionLowGear = false;
CTI_P_ActionPush = false;

CTI_P_Coloration_Money = "#BAFF81";
CTI_P_fob_currently_deploying = false;

//--- Artillery Computer is only enabled on demand
if !((missionNamespace getVariable "CTI_ARTILLERY_SETUP") isEqualTo -1) then {enableEngineArtillery false};

if (isMultiplayer) then {
	//--- Can I join?
	missionNamespace setVariable ["CTI_PVF_CLT_JoinRequestAnswer", {_this execVM "Client\Functions\Client_JoinRequestAnswer.sqf"}]; //--- Early PVF, do not spoil the game with the others.

	player setDammage 0;

	//--- Wait for the server to be initialized before requesting a Join ticket
	waitUntil {sleep .5; !(isNil 'CTI_InitServer')};

	//--- Request a join ticket
	[player, CTI_P_SideJoined] remoteExec ["CTI_PVF_SRV_RequestJoin", CTI_PV_SERVER];

	waitUntil {
		sleep 1;
		if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FILE: Client\Init\Init_Client.sqf", "Awaiting for the Join ticket answer from the server..."] call CTI_CO_FNC_Log};
		CTI_P_CanJoin
	};

	if (CTI_P_Jailed) then {
		hintSilent "The ride never ends!";
		0 spawn CTI_CL_FNC_OnJailed;
	};
};
CTI_P_HQ_Announcer = CTI_P_SideJoined call bis_fnc_moduleHQ;
CTI_P_CTI_Announcer = missionNamespace getVariable format["CTI_%1_HQ_Announcer", CTI_P_SideJoined];
//CTI_P_CTI_Announcer kbAddTopic [CTI_HQTopicSide,"Common\Config\Common\Radios\CUPRadio.bikb","",{call compile preprocessFileLineNumbers "Common\Config\Common\Radios\kbRadio.sqf"}];
//--- Initialize the client PV
call compile preprocessFile "Client\Init\Init_PublicVariables.sqf";

//--- Call the UI Functions
call compile preprocessFile "Client\Functions\UI\Functions_UI_AIMicromanagementMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_ArtilleryMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_CoinMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_TabletMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_GearMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_KeyHandlers.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_MapCommanding.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_PurchaseMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_RequestMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_RespawnMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_SatelliteCamera.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_ServiceMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_LoadoutMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_DefenseMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_UnitsCamera.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_UpgradeMenu.sqf";
call compile preprocessFile "Client\Functions\UI\Functions_UI_DisplayRewards.sqf";

call compile preprocessFile "Client\Functions\Externals\RemoteControl\RemoteControlFunctions.sqf";
//---  MODES

//--Load Vanilla
if (CTI_VANILLA_ADDON isEqualTo 1 || CTI_VANILLA_ADDON >= 3 ) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_Vanilla_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_Vanilla_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_Vanilla.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_Vanilla.sqf", CTI_MODE_DIR]};	
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_Vanilla.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_Vanilla.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_Vanilla.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_Vanilla.sqf", CTI_MODE_DIR]};
};
//--Load KARTS Gear
if (CTI_KARTS_ADDON isEqualTo 1 || CTI_KARTS_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_KARTS_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_KARTS_East.sqf", CTI_MODE_DIR]};
};
//--Load Heli Gear
if (CTI_HELI_ADDON isEqualTo 1 || CTI_HELI_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_HELI_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_HELI_East.sqf", CTI_MODE_DIR]};
};
//--- Load Marksmen Gear
if (CTI_MARKSMEN_ADDON isEqualTo 1) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_MARKSMEN_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_MARKSMEN_East.sqf", CTI_MODE_DIR]};
};
//--- Load APEX Gear
if (CTI_APEX_ADDON isEqualTo 1 || CTI_APEX_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_APEX_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_APEX_East.sqf", CTI_MODE_DIR]};
};
//--- Load JETS Gear
if (CTI_JETS_ADDON isEqualTo 1 || CTI_JETS_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_JETS_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_JETS_East.sqf", CTI_MODE_DIR]};
};
//--- Load Laws Of War Gear
if (CTI_LAWSOFWAR_ADDON isEqualTo 1 || CTI_LAWSOFWAR_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_LAWSOFWAR_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_LAWSOFWAR_East.sqf", CTI_MODE_DIR]};
};
//--- Load TANKS Gear
if (CTI_TANKS_ADDON isEqualTo 1 || CTI_TANKS_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_TANKS_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_TANKS_East.sqf", CTI_MODE_DIR]};
};
//--- Load GLOBAL MOBILIZATION Gear
if (CTI_GLOBAL_MOBILIZATION_ADDON isEqualTo 1 || CTI_GLOBAL_MOBILIZATION_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_GM_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_GM_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_GM.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_GM.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_GM.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_GM.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_GM.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_GM.sqf", CTI_MODE_DIR]};
};
//--- Load CONTACT Gear
if (CTI_CONTACT_ADDON isEqualTo 1 || CTI_CONTACT_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_CONTACT_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_CONTACT_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_CONTACT.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_CONTACT.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_CONTACT.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_CONTACT.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_CONTACT.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_CONTACT.sqf", CTI_MODE_DIR]};
};
//--- Load CUP Gear
if (CTI_CUP_WEAPONS_ADDON > 0) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_CUP_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_CUP_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_CUP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_CUP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_CUP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_CUP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_CUP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_CUP.sqf", CTI_MODE_DIR]};
};
//--- Load RHS Gear
if (CTI_RHS_AFRF_ADDON isEqualTo 1 || CTI_RHS_AFRF_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_RHS_AFRF_East.sqf", CTI_MODE_DIR]};
};
if (CTI_RHS_USAF_ADDON isEqualTo 1 || CTI_RHS_USAF_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_RHS_USAF_West.sqf", CTI_MODE_DIR]};
};
//--- Load RHS Loadout Ammo
if (CTI_RHS_USAF_ADDON > 0 || CTI_RHS_AFRF_ADDON >= 3) then {
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_RHS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_RHS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_RHS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_RHS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_RHS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_RHS.sqf", CTI_MODE_DIR]};
};
//--- OFPS Gear
if (CTI_OFPS_UNITS_ADDON isEqualTo 1 || CTI_OFPS_UNITS_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_OFPS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_OFPS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_OFPS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_OFPS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_OFPS.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_OFPS.sqf", CTI_MODE_DIR]};
};
//--- OFPS RHS Gear
if (CTI_OFPS_RHS_ADDON isEqualTo 1 || CTI_OFPS_RHS_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_RHS_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_RHS_East.sqf", CTI_MODE_DIR]};
};
//--- OFPS CUP Gear
if (CTI_OFPS_CUP_ADDON isEqualTo 1 || CTI_OFPS_CUP_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_CUP_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_CUP_East.sqf", CTI_MODE_DIR]};
};
//--- SFP Gear
if (CTI_SFP_ADDON isEqualTo 1 || CTI_SFP_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_SFP_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_SFP_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_SFP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_SFP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_SFP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_SFP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_SFP.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_SFP.sqf", CTI_MODE_DIR]};
};
//--- OFPS SFP Gear
if (CTI_OFPS_SFP_ADDON isEqualTo 1 || CTI_OFPS_SFP_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_SFP_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_OFPS_SFP_East.sqf", CTI_MODE_DIR]};
};
//--- 2035 Russia Gear
if (CTI_RUSSIA_2035_ADDON isEqualTo 1 || CTI_RUSSIA_2035_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_RUSSIA_2035_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_RUSSIA_2035_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_RUSSIA_2035.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_RUSSIA_2035.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_RUSSIA_2035.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_RUSSIA_2035.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_RUSSIA_2035.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_RUSSIA_2035.sqf", CTI_MODE_DIR]};
};
//--- Load UNSUNG Gear
if (CTI_UNSUNG_ADDON isEqualTo 1 || CTI_UNSUNG_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_UNSUNG_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_UNSUNG_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_UNSUNG.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_UNSUNG.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_UNSUNG.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_UNSUNG.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_UNSUNG.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_UNSUNG.sqf", CTI_MODE_DIR]};
};
//--- Load IFA3 Gear
if (CTI_IFA3_ADDON isEqualTo 1 || CTI_IFA3_ADDON >= 3) then {
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_IFA3_West.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Gear\Gear_IFA3_East.sqf", CTI_MODE_DIR]};
	//loadouts ammo
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_IFA3.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Magazines_IFA3.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_IFA3.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Ammo_IFA3.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo west) then {(west) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_IFA3.sqf", CTI_MODE_DIR]};
	if (CTI_P_SideJoined isEqualTo east) then {(east) call compile preprocessFileLineNumbers Format["Common\Config\%1\Ammo\Weapons_IFA3.sqf", CTI_MODE_DIR]};
};

CTI_InitClient = true;


//--- Wait for a proper overall init (disabled slot?)
waitUntil {!isNil {(group player) getVariable "cti_funds"}};

player addEventHandler ["killed", {_this spawn CTI_CL_FNC_OnPlayerKilled}];
//player addEventHandler ["HandleDamage", {_this spawn CTI_CL_FNC_OnPlayerDamaged}];
player addEventHandler ["WeaponAssembled", {_this spawn CTI_CL_FNC_OnWeaponAssembled}];

if (isNil {profileNamespace getVariable "CTI_PERSISTENT_HINTS"}) then { profileNamespace setVariable ["CTI_PERSISTENT_HINTS", true]; saveProfileNamespace };

//--- Markers/UI init thread
0 spawn {
//	private _timeout = time;
	waitUntil {!isNil {CTI_P_SideLogic getVariable "cti_teams"}};
	waitUntil {!isNil {missionNamespace getVariable "CTI_SUSPENDED_TEAMS_DONE"}};
	
	execVM "Client\FSM\update_markers_team.sqf";
	execVM "Client\FSM\update_netunits_team.sqf";
};


//--- Town init thread
0 spawn {
	waitUntil {!isNil 'CTI_InitTowns'};

	execVM "Client\FSM\update_markers_towns.sqf";
	execVM "Client\FSM\ui_titles_helper.sqf";
	 if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
	 	CTI_P_TerritorialUpdate = false;
		execVM "Client\FSM\town_territorial_helper.sqf";
	};
};

//--- HQ / Base markers thread
0 spawn {
	waitUntil {!isNil {CTI_P_SideLogic getVariable "cti_structures"} && !isNil {CTI_P_SideLogic getVariable "cti_hq"}};

	//--- Initialize the structures (JIP or prefab) along with HQ.
	execVM "Client\Init\Init_JIP.sqf";

	//--- Execute the client update context
	execVM "Client\FSM\update_actions.sqf";

	//--- Place the player the "best" location (if not jailed!).
	if !(CTI_P_Jailed) then {
		_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
		_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;

		_spawn_at = _hq;
		if (count _structures > 0) then { _spawn_at = [_hq, _structures] call CTI_CO_FNC_GetClosestEntity };

		_spawn_at = [_spawn_at, 8, 30] call CTI_CO_FNC_GetRandomPosition;
		_spawn_cam = [_spawn_at, 8, 200] call CTI_CO_FNC_GetRandomPosition;
		player setPos _spawn_at;

	};
};
//--- Client Weather sync
0 execVM "Client\Functions\Client_Weather_Hook.sqf";

//--- Delayed thread
0 spawn {
	waitUntil {!isNil {CTI_P_SideLogic getVariable "cti_hq"} && !isNil {CTI_P_SideLogic getVariable "cti_salvagers"}};

	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;

	execVM "Client\FSM\update_orders.sqf";

	call CTI_CL_FNC_AddMissionActions;

	if (alive _hq) then {
		//--- Pure clients
		if (CTI_IsClient && !CTI_IsServer) then {
			_hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CL_FNC_OnHQDestroyed", CTI_P_SideID]];

			if (CTI_BASE_NOOBPROTECTION isEqualTo 1) then {
				_hq addEventHandler ["handleDamage", format["[_this select 2, _this select 3, %1] call CTI_CO_FNC_OnHQHandleDamage", CTI_P_SideID]]; //--- You want that on public
			};
		};
	};

//--- Loading Screen Status
12452 cutText ["", "BLACK IN", 5];

	waitUntil {time > 0};
			MissionIntro = [] spawn {
				playMusic "EventTrack02a_F_EPB";
				//Gather game settings
				_mapname = worldName;
				_startyear = date select 0;
				_startmonth = date select 1;
				switch (_startmonth) do {
					case 1: {_startmonth = "January";};
					case 2: {_startmonth = "Feburary";};
					case 3: {_startmonth = "March";};
					case 4: {_startmonth = "April";};
					case 5: {_startmonth = "May";};
					case 6: {_startmonth = "June";};
					case 7: {_startmonth = "July";};
					case 8: {_startmonth = "August";};
					case 9: {_startmonth = "September";};
					case 10: {_startmonth = "October";};
					case 11: {_startmonth = "November";};
					case 12: {_startmonth = "December";};
				};
				_starthour = date select 3;
				_startampm = "";
				if (_starthour < 12) then {_startampm = "AM"; } else {_startampm = "PM";};
				_startmin = date select 4;
				_placement_distance = CTI_BASE_STARTUP_PLACEMENT;
				_faction_west = "";
				switch (CTI_FACTION_WEST) do {
					case 0: {_faction_west = "NATO Vanilla (arid)";};
					case 1: {_faction_west = "NATO Pacific APEX (woodland)";};
					case 2: {_faction_west = "USMC CUP (Arid)";};
					case 3: {_faction_west = "USAF RHS (Arid)";};
				};
				_faction_east = "";
				switch (CTI_FACTION_EAST) do {
					case 0: {_faction_east = "CSAT Vanilla (arid)";};
					case 1: {_faction_east = "CSAT Pacific APEX (woodland)";};
					case 2: {_faction_east = "Russia CUP (Arid)";};
					case 2: {_faction_east = "Russia RHS (Arid)";};
				};
				_town_west = "";
				switch (CTI_TOWNS_OCCUPATION_WEST) do {
					case 0: {_town_west = "Vanilla NATO";};
					case 1: {_town_west = "Pacific Special Forces - APEX";};
					case 2: {_town_west = "US Army - CUP";};
					case 3: {_town_west = "US - RHS";};
					case 4: {_town_west = "Winter NATO";};
				};
				_town_east = "";
				switch (CTI_TOWNS_OCCUPATION_EAST) do {
					case 0: {_town_east = "Vanilla CSAT";};
					case 1: {_town_east = "Pacific Special Forces - APEX";};
					case 2: {_town_east = "Russians - CUP";};
					case 3: {_town_east = "Russians - RHS";};
					case 4: {_town_east = "Winter CSAT";};
				};
				_town_indie = "";
				switch (CTI_TOWNS_OCCUPATION_RESISTANCE) do {
					case 0: {_town_indie = "Vanilla - AAF";};
					case 1: {_town_indie = "Vanilla - FIA";};
					case 2: {_town_indie = "Syndikat Paramilitary - APEX";};
					case 3: {_town_indie = "ION PMC - CUP";};
					case 4: {_town_indie = "NAPA Chernarus - CUP";};
					case 5: {_town_indie = "Royal Army Corp Of Sahrani - CUP";};
					case 6: {_town_indie = "Takistani Military - CUP";};
					case 7: {_town_indie = "GREF - RHS";};
					case 8: {_town_indie = "AAF/Swedish Winter";};
				};
				_town_level_resistance = "";
				switch (CTI_TOWNS_OCCUPATION_LEVEL_RESISTANCE) do {
					case 5: {_town_level_resistance = "Amateur";};
					case 10: {_town_level_resistance = "Novice";};
					case 15: {_town_level_resistance = "Average";};
					case 20: {_town_level_resistance = "Skilled";};
					case 25: {_town_level_resistance = "Professional";};
					case 30: {_town_level_resistance = "Specialist";};
					case 35: {_town_level_resistance = "Expert";};
					case 40: {_town_level_resistance = "Chuck Norris";};
				};
				_town_level_occ = "";
				switch (CTI_TOWNS_OCCUPATION_LEVEL) do {
					case 5: {_town_level_occ = "Amateur";};
					case 10: {_town_level_occ = "Novice";};
					case 15: {_town_level_occ = "Average";};
					case 20: {_town_level_occ = "Skilled";};
					case 25: {_town_level_occ = "Professional";};
					case 30: {_town_level_occ = "Specialist";};
					case 35: {_town_level_occ = "Expert";};
					case 40: {_town_level_occ = "Chuck Norris";};
				};
				_territorymode = "";
				switch (CTI_TOWNS_TERRITORIAL) do {
					case 0: {_territorymode = "Territory Mode Off";};
					case 1: {_territorymode = "Territory Mode On";};
				};
				//Gather Side Specific settings
				_faction_friend_sidename = "";
				_faction_enemy_sidename = "";
				_faction_friend_army = "";
				_faction_enemy_army = "";
				switch (CTI_P_SideJoined) do {
					case West: {
						_faction_friend_sidename = _faction_west + " Soldier";
						_faction_enemy_sidename = _faction_east;
						_faction_friend_army = _town_west;
						_faction_enemy_army = _town_east;
					};
					case East: {
						_faction_friend_sidename = _faction_east + " Comrade";
						_faction_enemy_sidename = _faction_west;
						_faction_friend_army = _town_east;
						_faction_enemy_army = _town_west;
					};
				};
				//Assemble intro strings
				_introtext_1 = format ["%1 : %2 , %3 , %4:%5 %6", _mapname, _startyear, _startmonth, _starthour, _startmin, _startampm];
				_introtext_2 = format ["Welcome to %1", _faction_friend_sidename];
				_introtext_3 = format ["%1 , %2 army", _town_level_occ, _faction_friend_army];
				_introtext_4 = format ["A local %1 , %2 army occupies the area", _town_level_resistance, _town_indie];
				_introtext_5 = format ["Intel reports another %1 army started %2m away.", _faction_enemy_army, _placement_distance];
				_introtext_6 = format ["%1", _territorymode];

				if (CTI_DEV_MODE isEqualTo 0) then {
					//press spacebar to skip 0x39
					player setVariable ["cti_intro",0,true];
					//add skip keyhandler
					waituntil {!isnull (finddisplay 46)};
					_skipintro = (findDisplay 46) displayAddEventHandler ["KeyDown", {if ((_this select 1) isEqualTo 0x39) then {player setVariable ["cti_intro",1,true]};}];
					if (!isNil "_camera_run") exitWith {};
					_camera_run = true;
					_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
					_firstshot = [_hq, _hq, _hq, 40, 0.5, 0.4, false, 0, 0, 1] execVM "Client\Events\Events_UI_IntroCamera.sqf";
					sleep 4;
					//option to skip
					_skiptext = format ["Open Map for Server rules! Press Space to Skip or Win key to open Tablet"];
					titleText [_skiptext, "PLAIN DOWN", 15];
					if (player getVariable "cti_intro" isEqualTo 0) then {[
						[["OFPS CTI WARFARE","<t align = 'center' shadow = '1' size = '1.4' font='PuristaBold'>%1</t><br/>"],
						["CAPTURE THE ISLAND","<t align = 'center' shadow = '1' size = '1.2' font='PuristaBold'>%1</t><br/>"],
						[_introtext_1,"<br/><t align = 'center' shadow = '1' size = '1.1' font='PuristaBold'>%1</t><br/>"],
						[_introtext_6,"<t align = 'center' shadow = '1' size = '1' font='PuristaBold'>%1</t><br/>"]]
					] spawn BIS_fnc_typeText;};
					_loop = 0;while{(_loop < 13)} do { sleep 1;if (player getVariable "cti_intro" isEqualTo 1) exitwith {};_loop = _loop + 1; };
					if (player getVariable "cti_intro" isEqualTo 0) then {[
						[[_introtext_2,"<t align = 'center' shadow = '1' size = '1' font='PuristaBold'>%1</t><br/>"],
						[_introtext_3,"<t align = 'center' shadow = '1' size = '1' font='PuristaBold'>%1</t><br/>"]]
					] spawn BIS_fnc_typeText;};
					_loop = 0;while{(_loop < 10)} do { sleep 1;if (player getVariable "cti_intro" isEqualTo 1) exitwith {};_loop = _loop + 1; };
					if (player getVariable "cti_intro" isEqualTo 0) then {titleText [_introtext_4, "PLAIN", 1];_loop = 0;while{(_loop < 4)} do { sleep 1;if (player getVariable "cti_intro" isEqualTo 1) exitwith {};_loop = _loop + 1; };titleFadeOut 1;};
					if (player getVariable "cti_intro" isEqualTo 0) then {titleText [_introtext_5, "PLAIN", 1];_loop = 0;while{(_loop < 4)} do { sleep 1;if (player getVariable "cti_intro" isEqualTo 1) exitwith {};_loop = _loop + 1; };titleFadeOut 1;};
					waitUntil {scriptdone _firstshot || player getVariable "cti_intro" isEqualTo 1};
					//remove keyhandler
					(findDisplay 46) displayRemoveEventHandler ["KeyDown", _skipintro];
					player setVariable ["cti_intro",0,true];
				};
				cutText ["", "BLACK", 2];
				cutText ["", "BLACK IN", 2];
				"dynamicBlur" ppEffectEnable true;
				"dynamicBlur" ppEffectAdjust [100];
				"dynamicBlur" ppEffectCommit 0;
				"dynamicBlur" ppEffectAdjust [0.0];
				"dynamicBlur" ppEffectCommit 4;
			};
			waitUntil {scriptDone MissionIntro};

	waitUntil {!isNil {CTI_P_SideLogic getVariable "cti_votetime"}};

	if (CTI_P_SideLogic getVariable "cti_votetime" > 0) then {createDialog "CTI_RscVoteMenu"};
	waitUntil { !dialog };
	createDialog "CTI_RscTabletDialogWelcome";
};
/*
if (CTI_DATABASE_TRACKING) then {
chatLogHandle = [] spawn {
	waitUntil{getClientState == "BRIEFING READ"};
    private["_equal","_chatArr"];
    while{true}do{

        chatString = "";

        waitUntil{sleep 0.22;!isNull (finddisplay 24 displayctrl 101)};

        chatIntercept_EHID = (findDisplay 24) displayAddEventHandler["KeyDown",{
            if ((_this select 1) != 28) exitWith{false};

            _equal = false;

            _chatArr = toArray chatString;
            //_chatArr resize 1;
            if (true)then{
                if (false)then{
                    //systemChat format["Intercepted: %1",chatString];
                };
                //_equal = true;
                closeDialog 0;
                (findDisplay 24) closeDisplay 1;

                ["chatLog", [_chatArr,player]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
            };

            _equal
        }];

        waitUntil{
            if (isNull (finddisplay 24 displayctrl 101))exitWith{
                if (!isNil "chatIntercept_EHID")then{
                    (findDisplay 24) displayRemoveEventHandler ["KeyDown",chatIntercept_EHID];
                };
                chatIntercept_EHID = nil;
                true
            };
            chatString = (ctrlText (finddisplay 24 displayctrl 101));
            false
        };
    };
};
};
*/
//--- Gear templates (persitent)
if (isNil {profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATEV6_%1", CTI_P_SideJoined]}) then {call CTI_UI_Gear_InitializeProfileTemplates};
if !(isNil {profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATEV6_%1", CTI_P_SideJoined]}) then {execVM "Client\Init\Init_Persistent_Gear.sqf"};

//--- Graphics/video thread (persistent)
0 spawn {
	//--- View Distance
	_distance = profileNamespace getVariable "CTI_PERSISTENT_VIEW_DISTANCE";
	_distance_max = missionNamespace getVariable "CTI_GRAPHICS_VD_MAX";

	if (isNil "_distance") then { _distance = viewDistance };
	if !(typeName _distance isEqualTo "SCALAR") then { _distance = viewDistance };
	if (_distance < 1) then { _distance = 500 };
	if (_distance > _distance_max) then { _distance = _distance_max };
	setViewDistance _distance;

	//--- Object Distance (scales to View Distance)
	_distance = profileNamespace getVariable "CTI_PERSISTENT_OBJECT_DISTANCE";
	if (isNil "_distance") then { _distance = viewDistance };
	if (_distance < 1) then { _distance = 500 };
	if (_distance > viewDistance) then { _distance = viewDistance };
	setObjectViewDistance _distance;

	//--- Shadows Distance.
	_distance = profileNamespace getVariable "CTI_PERSISTENT_SHADOWS_DISTANCE";
	if !(isNil "_distance") then {
		if (typeName _distance isEqualTo "SCALAR") then {
			if (_distance < 50) then { _distance = 50 };
			if (_distance > 200) then { _distance = 200 };
			setShadowDistance _distance;
		};
	};

	//--- Terrain Grid
	_grid = profileNamespace getVariable "CTI_PERSISTENT_TG";
	_grid_max = missionNamespace getVariable "CTI_GRAPHICS_TG_MAX";

	if (isNil "_grid") then { _grid = 25 };
	if !(typeName _grid isEqualTo "SCALAR") then {
		_grid = 0;
	} else {
		if (_grid < 0) then { _grid = 0 };
	};
	if (_grid > _grid_max) then { _grid = _grid_max };
	setTerrainGrid _grid;
};
//--- Debug file with scripts and tools
if (CTI_DEV_MODE > 0) then {
	call compile preProcessFileLineNumbers "Client\Functions\Externals\debug.sqf";
};

if (profileNamespace getVariable "CTI_PERSISTENT_HINTS") then {
	0 spawn {
		sleep 10;
		_uptime = call CTI_CL_FNC_GetMissionTime;
		hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>Welcome to the battlefield <t color='#84e4ff'>%1</t>!<br /><br />If you've never played this scenario then you may want to check the <t color='#eaff96'>Online Help Menu</t> which is localted within the <t color='#eaff96'>Options Menu</t> (You may access it from your ingame action menu).<br /><br />Those help messages may be turned off from the <t color='#eaff96'>Video Settings Menu</t>.<br /><br />Mission Time: <t color='#d4ceff'>%2 Day(s) %3:%4:%5</t></t>", name player, _uptime select 0,_uptime select 1,_uptime select 2, _uptime select 3];
	};
};

// Prevent people from using remote AI to enter vehicles;
inGameUISetEventHandler ["Action", "
	if ((_this select 3 in ['GetInCargo', 'GetInCommander', 'GetInDriver', 'GetInGunner', 'GetInPilot', 'GetInTurret']) && (_this select 6 || _this select 9)) then {
		if (locked (_this select 0) > 1) then {
			hint 'This vehicle is locked!';
			true;
		} else {
			false;
		};
	} else {
		false;
	};
"];

if (CTI_BASE_NOOBPROTECTION isEqualTo 1) then {player addEventHandler ["fired", {_this spawn CTI_CL_FNC_OnPlayerFired}]}; //--- Trust me, you want that
if ((missionNamespace getVariable "CTI_UNITS_FATIGUE") isEqualTo 0) then {player enableFatigue false}; //--- Disable the unit's fatigue

//--- Thermal / NV restriction
if ( (missionNamespace getVariable 'CTI_SM_NONV')>0) then {
	0 execVM "Client\Functions\Client_NvThermR.sqf";
};

//--- 3P restrict
0 execVM "Client\Functions\Externals\Restrict_3dperson\Client_3pRestrict.sqf";

//--- Set Perks and Traits and Player Ai if rank based
0 execVM "Client\Functions\Client_SetUnitPerks.sqf";

//--- Low gear script
execVm "Client\Functions\Externals\Valhalla\Low_Gear_init.sqf";

//--- Zues Module
player call CTI_CO_FNC_UnitCreated;

//--- ZEUS Curator Editable
if !(isNil "ADMIN_ZEUS") then {
	//Zeus event handler
	ADMIN_ZEUS addEventHandler ["CuratorObjectPlaced", {
		if ((_this select 1) isKindOf "AllVehicles") then {
			(_this select 1) call CTI_CO_FNC_UnitCreated;
			if !((_this select 1) isKindOf "Man") then {
				{
					_x call CTI_CO_FNC_UnitCreated;
				} forEach crew (_this select 1);
			};
		};

	}];
};



//--- Vehicle HUD
0 execVM "Client\Functions\Externals\Veh_Hud\HUD_init.sqf";

//--- Disable Scoreboard
showScoretable 0;

//--- Hide score on HUD
disableSerialization;
_displayscorehud = uiNamespace getVariable [ "RscMissionStatus_display", displayNull ];
if ( !isNull _displayscorehud ) then {
	_statusscorehud = _displayscorehud displayCtrl 15283;
	_statusscorehud ctrlShow false;
};

//--- Radio
if (isNil "Radio_Say3D") then {
    Radio_Say3D = [objNull,"nosound",0];
};
"Radio_Say3D" addPublicVariableEventHandler {
      private["_array"];
      _array = _this select 1;
     (_array select 0) say3D [(_array select 1), (_array select 2)];
};

//--- Igiload script
_igiload = execVM "Client\Functions\Externals\IgiLoad\IgiLoadInit.sqf";

//--- Anti-Afk script
_antiafk = execVM "Client\Functions\Externals\afkkick.sqf";

//--- Drag and drop
attached = false;
0 = execVM "Client\Functions\Externals\BDD\Greifer.sqf";

//--- cmEARPLUGS
call compile preProcessFileLineNumbers "Client\Functions\Externals\cmEarplugs\config.sqf";

//--- UAV Range Strict
_uav_restriction = execVM "Client\Functions\Externals\Restrict_uavrage\Restrict_uavrange.sqf";

//--- Earplugs
0 spawn { call CTI_CL_FNC_EarPlugsSpawn; };

//--- Spawn init calls tablet
0 spawn { call CTI_CL_FNC_Spawn; };

//--- TODO: Organize all keybinds in one location

// Hint for people trying to holster the old way. Will become ineffective as soon as any advanced hint is activated
(findDisplay 46) displayAddEventHandler ["KeyDown",
"
	if ((_this select 1) isEqualTo 0x23) then {
		[""hint-holster""] call CTI_CL_FNC_DisplayMessage;
	};
"];

//--- Holster weapon Keybind (Key TAB)

addHolsterKeydown = {
	(findDisplay 46) displayAddEventHandler ["KeyDown",
	"
		if ((_this select 1) isEqualTo 0x0F) then {
			isHolsterKeyDown = true;
			_nul = [] execVM 'Client\Functions\Externals\KeyFunctions\WeaponHolster.sqf';
			(findDisplay 46) displayRemoveEventHandler ['KeyDown', holsterKeyEH];
			holsterKeyEH = call addHolsterKeyup;
		};
	"];
};

addHolsterKeyup = {
	(findDisplay 46) displayAddEventHandler ["KeyUp",
	"	
		if ((_this select 1) isEqualTo 0x0F) then {
			isHolsterKeyDown = false;
			(findDisplay 46) displayRemoveEventHandler ['KeyUp', holsterKeyEH];
			holsterKeyEH = call addHolsterKeydown;
		};
	"];
};

isHolsterKeyDown = false;
holsterKeyEH = call addHolsterKeydown;
addCMKeydown = {
	(findDisplay 46) displayAddEventHandler ["KeyDown", 
	"	
		if ((_this select 1) in (actionKeys ""launchCM"")) then {
			if (local effectiveCommander vehicle CTI_P_Controlled) then {
				if (CTI_P_Controlled ammo ""SmokeLauncher"" == 0 && CTI_P_Controlled ammo ""CMFlareLauncher"" == 0) then {
					[vehicle CTI_P_Controlled, ""SmokeLauncher""] call BIS_fnc_fire;
					[vehicle CTI_P_Controlled, ""CMFlareLauncher""] call BIS_fnc_fire;
				};
			};
		};
	"];
};
isCMKeyDown = false;
CMKeyEH = call addCMKeydown;
//--- Disable vanilla teamkill punishing
player addEventHandler ["HandleRating", {0}];

// ECM stuff
player addEventHandler ["GetOutMan", {
        private _vehicle = _this select 2;
        private _position = _this select 1;


}];


//--- Hints for vehicle usage (and ECM stuff)
player addEventHandler ["GetInMan", {
	private _vehicle = _this select 2;
	private _position = _this select 1;



	_special = _vehicle getVariable ["cti_spec", []];
	if !(typeName _special isEqualTo "ARRAY") then { _special = [_special] };
	if (CTI_SPECIAL_MEDICALVEHICLE in _special && _position == "driver") then 
	{ 
		//--- Medical vehicle.
		0 spawn 
		{	// Delay the message for compatibility with ear-plugs hint
			sleep 5;
			hint parsetext "<t size='1.3' color='#2394ef'>Information</t><br /><br />Players can only spawn on your vehicle, if there are no enemies in its block range. Check it on your map or GPS.";
		};
	};
}];

player setVariable ["cti_last_pos", position player, true];
player setVariable ["cti_last_town", objNull, true];

CTI_Init_Client = true;