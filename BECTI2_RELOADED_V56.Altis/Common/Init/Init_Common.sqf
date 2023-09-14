["INITIALIZATION", Format ["Init_Common.sqf: Common initialization begins at [%1]", time]] Call EZC_fnc_Functions_Common_LogContent;

Private ['_count'];

// only used in common_getteamartillery.sqf
EZC_fnc_Functions_Common_ArrayPush = compileFinal preprocessFileLineNumbers "Common\Functions\Common_ArrayPush.sqf";


// mapmarkerfix

EZC_fnc_Functions_Client_GetStructureMarkerLabel = Compile preprocessFile "Client\Functions\Client_GetStructureMarkerLabel.sqf";



//--- ECM 

EZC_fnc_Module_Common_HandleIncomingMissileECM = Compile preprocessFileLineNumbers "Common\Module\ECM\Functions\Common_HandleIncomingMissileECM.sqf";
EZC_fnc_Module_Common_HandleIncomingMissile = Compile preprocessFileLineNumbers "Common\Module\ECM\Functions\Common_HandleIncomingMissile.sqf";
EZC_fnc_Module_Common_HandleDamageObject = Compile preprocessFileLineNumbers "Common\Module\ECM\Functions\Common_HandleDamageObject.sqf";




//---GLX + compatible Waypoints Enviroment

EZC_fnc_Streetwaypoints = Compile preprocessFileLineNumbers "GLX_System\Streetwaypoints.sqf";
EZC_fnc_improved_BIS_fn_taskDefend = Compile preprocessFileLineNumbers "GLX_System\improved_BIS_fn_taskDefend.sqf";

//SLX_Suppressive_Fire=compile preProcessFileLineNumbers (GLX_System\SLX_Suppressive_Fire.sqf");


// --- additional handlers
EZC_fnc_Functions_Common_HandleArty = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleArty.sqf";
EZC_fnc_Functions_Common_HandleAAMissiles = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleAAMissiles.sqf";
EZC_fnc_Functions_Common_HandleBombs = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleBombs.sqf";
EZC_fnc_Functions_Common_BalanceInit = Compile preprocessFileLineNumbers "Common\Functions\Common_BalanceInit.sqf";
EZC_fnc_Functions_Common_Requip_AI = Compile preprocessFileLineNumbers "Common\Functions\Common_Requip_AI.sqf";
EZC_fnc_Functions_Common_Requip_AIR_VEH = Compile preprocessFileLineNumbers "Common\Functions\Common_Requip_AIR_VEH.sqf";
EZC_fnc_Functions_Common_BuildingInRange = Compile preprocessFileLineNumbers "Common\Functions\Common_BuildingInRange.sqf";
EZC_fnc_Functions_Common_ChangeSideSupply = Compile preprocessFileLineNumbers "Common\Functions\Common_ChangeSideSupply.sqf";
EZC_fnc_Functions_Common_EquipLoadout = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipLoadout.sqf";
EZC_fnc_Functions_Common_GetAIDigit = Compile preprocessFileLineNumbers "Common\Functions\Common_GetAIDigit.sqf";
EZC_fnc_Functions_Common_GetClosestLocation = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestLocation.sqf";
EZC_fnc_Functions_Common_GetClosestLocationBySide = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestLocationBySide.sqf";
EZC_fnc_Functions_Common_GetConfigInfo = Compile preprocessFileLineNumbers "Common\Functions\Common_GetConfigInfo.sqf";
EZC_fnc_Functions_Common_GetFactories = Compile preprocessFileLineNumbers "Common\Functions\Common_GetFactories.sqf";
EZC_fnc_Functions_Common_GetFriendlyCamps = Compile preprocessFileLineNumbers "Common\Functions\Common_GetFriendlyCamps.sqf";
EZC_fnc_Functions_Common_GetHostilesInArea = Compile preprocessFileLineNumbers "Common\Functions\Common_GetHostilesInArea.sqf";
EZC_fnc_Functions_Common_GetPositionFrom = Compile preprocessFileLineNumbers "Common\Functions\Common_GetPositionFrom.sqf";
EZC_fnc_Functions_Common_GetRespawnCamps = Compile preprocessFileLineNumbers "Common\Functions\Common_GetRespawnCamps.sqf";
EZC_fnc_Functions_Common_GetRespawnThreeway = Compile preprocessFileLineNumbers "Common\Functions\Common_GetRespawnThreeway.sqf";
EZC_fnc_Functions_Common_GetSafePlace = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSafePlace.sqf";   // USE IT FOR RESPAWN OF VEHICLES IN CREATEVEHICLE.SQF
EZC_fnc_Functions_Common_GetTeamArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamArtillery.sqf";
EZC_fnc_Functions_Common_GetTeamMoveMode = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamMoveMode.sqf";
EZC_fnc_Functions_Common_GetTeamMovePos = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamMovePos.sqf";
EZC_fnc_Functions_Common_GetTeamRespawn = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamRespawn.sqf";
EZC_fnc_Functions_Common_GetTeamType = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamType.sqf";
EZC_fnc_Functions_Common_GetTeamVehicles = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamVehicles.sqf";
EZC_fnc_Functions_Common_GetTotalSupplyValue = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTotalSupplyValue.sqf";
EZC_fnc_Functions_Common_GetTownsHeld = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTownsHeld.sqf";
EZC_fnc_Functions_Common_GetTownsIncome = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTownsIncome.sqf";
EZC_fnc_Functions_Common_GetUnitVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_GetUnitVehicle.sqf";
EZC_fnc_Functions_Common_IsArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_IsArtillery.sqf";
EZC_fnc_Common_MarkerUpdate = Compile preprocessFileLineNumbers "Common\Common_MarkerUpdate.sqf";
EZC_fnc_Functions_Common_PlaceNear = Compile preprocessFileLineNumbers "Common\Functions\Common_PlaceNear.sqf";
EZC_fnc_Functions_Common_PlaceSafe = Compile preprocessFileLineNumbers "Common\Functions\Common_PlaceSafe.sqf";
EZC_fnc_Functions_Common_RearmVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_RearmVehicle.sqf";
EZC_fnc_Functions_Common_SetCommanderVotes = Compile preprocessFileLineNumbers "Common\Functions\Common_SetCommanderVotes.sqf";
EZC_fnc_Functions_Common_SetTeamRespawn = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamRespawn.sqf";
EZC_fnc_Functions_Common_SetTeamMoveMode = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamMoveMode.sqf";
EZC_fnc_Functions_Common_SetTeamMovePos = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamMovePos.sqf";
EZC_fnc_Functions_Common_SetTeamType = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamType.sqf";
EZC_fnc_Functions_Common_UpdateStatistics = Compile preprocessFileLineNumbers "Common\Functions\Common_UpdateStatistics.sqf";  // USE IT FOR GLOBAL STATISTIC COLLECTOR
EZC_fnc_Functions_Common_TrashObject = Compile preprocessFile "Common\Functions\Common_TrashObject.sqf";
EZC_fnc_Functions_Common_GetClosestStructure = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetClosestStructure.sqf";

// Module: Arty
EZC_fnc_Module_ARTY_HandleILLUM = Compile preprocessFile "Common\Module\Arty\ARTY_HandleILLUM.sqf";
EZC_fnc_Module_ARTY_HandleSADARM = Compile preprocessFile "Common\Module\Arty\ARTY_HandleSADARM.sqf";
EZC_fnc_Module_ARTY_mobileMissionPrep = Compile preprocessFile "Common\Module\Arty\ARTY_mobileMissionPrep.sqf";
EZC_fnc_Module_ARTY_mobileMissionFinish = Compile preprocessFile "Common\Module\Arty\ARTY_mobileMissionFinish.sqf";
EZC_fnc_Common_AARadarMarkerUpdate = Compile preprocessFile "Common\Common_AARadarMarkerUpdate.sqf";


EZC_fnc_Functions_Common_AreWaypointsComplete = Compile preprocessFileLineNumbers "Common\Functions\Common_AreWaypointsComplete.sqf";
EZC_fnc_Functions_Common_ArrayShift = Compile preprocessFileLineNumbers "Common\Functions\Common_ArrayShift.sqf";
EZC_fnc_Functions_Common_ArrayShuffle = Compile preprocessFileLineNumbers "Common\Functions\Common_ArrayShuffle.sqf";
EZC_fnc_Functions_Common_ChangeTeamFunds = Compile preprocessFileLineNumbers "Common\Functions\Common_ChangeTeamFunds.sqf";
//EZC_fnc_Module_Common_HandleIncomingMissile = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleIncomingMissile.sqf";
EZC_fnc_Functions_Common_ChangeUnitGroup = Compile preprocessFileLineNumbers "Common\Functions\Common_ChangeUnitGroup.sqf";
EZC_fnc_Functions_Common_ClearVehicleCargo = Compile preprocessFileLineNumbers "Common\Functions\Common_ClearVehicleCargoOA.sqf";
EZC_fnc_Functions_Common_CreateTeam = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateTeam.sqf";
EZC_fnc_Functions_Common_CreateTownUnits = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateTownUnits.sqf";
EZC_fnc_Functions_Common_CreateUnitForStaticDefence = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateUnitForStaticDefence.sqf";
EZC_fnc_Functions_Common_CreateUnitsForResBases = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateUnitsForResBases.sqf";
EZC_fnc_Functions_Common_CreateVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateVehicle.sqf";
EZC_fnc_Functions_Common_CreateUnit = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateUnit.sqf";
EZC_fnc_Functions_Common_EquipBackpack = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipBackpack.sqf";
EZC_fnc_Functions_Common_EquipUnit = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipUnit.sqf";
EZC_fnc_Functions_Common_EquipVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipVehicle.sqf";
EZC_fnc_Functions_Common_FindTurretsRecursive = Compile preprocessFileLineNumbers "Common\Functions\Common_FindTurretsRecursive.sqf";
EZC_fnc_Functions_Common_FireArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_FireArtillery.sqf";
EZC_fnc_Functions_Common_GetAreaEnemiesCount = Compile preprocessFileLineNumbers "Common\Functions\Common_GetAreaEnemiesCount.sqf";
EZC_fnc_Functions_Common_GetCommanderTeam = Compile preprocessFileLineNumbers "Common\Functions\Common_GetCommanderTeam.sqf";
EZC_fnc_Functions_Common_GetClosestEnemyLocation = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEnemyLocation.sqf";
EZC_fnc_Functions_Common_GetClosestEntity = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity.sqf";
EZC_fnc_Functions_Common_GetClosestEntity2 = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity2.sqf";
EZC_fnc_Functions_Common_GetClosestEntity3 = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity3.sqf";
EZC_fnc_Functions_Common_GetClosestEntity4 = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity4.sqf";
EZC_fnc_Functions_Common_GetConfigEntry = Compile preprocessFileLineNumbers "Common\Functions\Common_GetConfigEntry.sqf";
EZC_fnc_Functions_Common_GetDirTo = Compile preprocessFileLineNumbers "Common\Functions\Common_GetDirTo.sqf";
EZC_fnc_Functions_Common_GetEmptyPosition = Compile preprocessFileLineNumbers "Common\Functions\Common_GetEmptyPosition.sqf";
EZC_fnc_Functions_Common_GetLiveUnits = Compile preprocessFileLineNumbers "Common\Functions\Common_GetLiveUnits.sqf";
EZC_fnc_Functions_Common_GetRandomPosition = Compile preprocessFileLineNumbers "Common\Functions\Common_GetRandomPosition.sqf";
EZC_fnc_Functions_Common_GetSideFromID = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideFromID.sqf";
EZC_fnc_Functions_Common_GetSideHQDeployStatus = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideHQDeployStatus.sqf";
EZC_fnc_Functions_Common_GetSideHQ = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideHQ.sqf";
EZC_fnc_Functions_Common_GetSideID = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideID.sqf";
EZC_fnc_Functions_Common_GetSideGroups = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetSideGroups.sqf";
EZC_fnc_Functions_Common_GetSideLogic = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideLogic.sqf";
EZC_fnc_Functions_Common_GetSideSupply = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideSupply.sqf";
EZC_fnc_Functions_Common_GetSideStructures = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideStructures.sqf";
EZC_fnc_Functions_Common_GetSideTowns = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideTowns.sqf";
EZC_fnc_Functions_Common_GetSideUpgrades = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideUpgrades.sqf";
EZC_fnc_Functions_Common_GetTeamFunds = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamFunds.sqf";
EZC_fnc_Functions_Common_GetTotalCamps = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTotalCamps.sqf";
EZC_fnc_Functions_Common_GetTotalCampsOnSide = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTotalCampsOnSide.sqf";
EZC_fnc_Functions_Common_GetTownsSupply = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTownsSupply.sqf";
EZC_fnc_Functions_Common_GetUnitConfigGear = Compile preprocessFileLineNumbers "Common\Functions\Common_GetUnitConfigGear.sqf";
EZC_fnc_Functions_Common_GetUnitsPerSide = Compile preprocessFileLineNumbers "Common\Functions\Common_GetUnitsPerSide.sqf";
EZC_fnc_Functions_Common_GetVehicleTurretsGear = Compile preprocessFileLineNumbers "Common\Functions\Common_GetVehicleTurretsGear.sqf";
EZC_fnc_Functions_Common_HandleArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleArtillery.sqf";
EZC_fnc_Functions_Common_OnUnitHit = Compile preprocessFileLineNumbers "Common\Functions\Common_OnUnitHit.sqf";
EZC_fnc_Functions_Common_OnUnitKilled = Compile preprocessFileLineNumbers "Common\Functions\Common_OnUnitKilled.sqf";
EZC_fnc_Functions_Common_RevealArea = Compile preprocessFileLineNumbers "Common\Functions\Common_RevealArea.sqf";
EZC_fnc_Functions_Common_RemoveCountermeasures = Compile preprocessFileLineNumbers "Common\Functions\Common_RemoveCountermeasures.sqf";
EZC_fnc_Functions_Common_SetTurretsMagazines = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTurretsMagazines.sqf";
EZC_fnc_Functions_Common_SortByDistance = Compile preprocessFileLineNumbers "Common\Functions\Common_SortByDistance.sqf";

if ((missionNamespace getVariable "cti_C_PLAYERS_RENDER_WAYPOINTS") == 0) then {

EZC_fnc_Functions_Common_WaypointPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrol.sqf";
EZC_fnc_Functions_Common_WaypointPatrolTown = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrolTown.sqf";
EZC_fnc_Functions_Common_WaypointSimple = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointSimple.sqf";
EZC_fnc_Functions_Common_SetTownPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";
};

EZC_fnc_Functions_Common_WaypointsAdd = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointsAdd.sqf";
EZC_fnc_Functions_Common_WaypointsRemove = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointsRemove.sqf";
EZC_fnc_Functions_Common_GetSideStructuresByType = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetSideStructuresByType.sqf";
EZC_fnc_Functions_Common_ConvertGearToFlat = compileFinal preprocessFileLineNumbers "Common\Functions\Common_ConvertGearToFlat.sqf";
EZC_fnc_Functions_Common_GetGearItemUpgradeLevel = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetGearItemUpgradeLevel.sqf";
EZC_fnc_Functions_Common_GetGearItemCost = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetGearItemCost.sqf";
EZC_fnc_Functions_Common_ArrayDiffers = compileFinal preprocessFileLineNumbers "Common\Functions\Common_ArrayDiffers.sqf";
EZC_fnc_Functions_Common_ArrayToLower = compileFinal preprocessFileLineNumbers "Common\Functions\Common_ArrayToLower.sqf";
EZC_fnc_Functions_Common_EquipContainerBackpack = compileFinal preprocessFileLineNumbers "Common\Functions\Common_EquipContainerBackpack.sqf";
EZC_fnc_Functions_Common_EquipContainerUniform = compileFinal preprocessFileLineNumbers "Common\Functions\Common_EquipContainerUniform.sqf";
EZC_fnc_Functions_Common_EquipContainerVest = compileFinal preprocessFileLineNumbers "Common\Functions\Common_EquipContainerVest.sqf";
EZC_fnc_Functions_Common_GetUnitLoadout = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetUnitLoadout.sqf";
EZC_fnc_Functions_Common_EquipArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipArtillery.sqf";


//EZC_fnc_Functions_Common_SetTownPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";


EZC_fnc_Functions_Common_UpdateClientTeams = Compile preprocessFileLineNumbers "Common\Functions\Common_UpdateClientTeams.sqf";
EZC_fnc_Functions_Common_ChangeVehicleTexture = Compile preprocessFile "Common\Functions\Common_ChangeVehicleTexture.sqf";
EZC_fnc_Functions_Common_CreateComposition = Compile preprocessFile "Common\Functions\Common_CreateComposition.sqf";
EZC_fnc_Functions_Common_CleanResBaseArea = Compile preprocessFile "Common\Functions\Common_CleanResBaseArea.sqf";
["INITIALIZATION", "Init_Common.sqf: Functions are initialized."] Call EZC_fnc_Functions_Common_LogContent;

varQueu = random(10)+random(100)+random(1000); //clt, to remove with new sys later on.
unitMarker = 0;



//--- Load the profile variables if needed (Requires at least version 1.62 build 97105).
EZC_fnc_Functions_Common_GetProfileVariable = Compile preprocessFileLineNumbers "Common\Functions\Common_GetProfileVariable.sqf";
EZC_fnc_Functions_Common_SaveProfile = Compile preprocessFileLineNumbers "Common\Functions\Common_SaveProfile.sqf";
EZC_fnc_Functions_Common_SetProfileVariable = Compile preprocessFileLineNumbers "Common\Functions\Common_SetProfileVariable.sqf";


/* Respawn Markers */
createMarkerLocal ["respawn_east",getMarkerPos "EastTempRespawnMarker"];
"respawn_east" setMarkerColorLocal "ColorGreen";
"respawn_east" setMarkerShapeLocal "RECTANGLE";
"respawn_east" setMarkerBrushLocal "BORDER";
"respawn_east" setMarkerSizeLocal [15,15];
"respawn_east" setMarkerAlphaLocal 0;
createMarkerLocal ["respawn_west",getMarkerPos "WestTempRespawnMarker"];
"respawn_west" setMarkerColorLocal "ColorGreen";
"respawn_west" setMarkerShapeLocal "RECTANGLE";
"respawn_west" setMarkerBrushLocal "BORDER";
"respawn_west" setMarkerSizeLocal [15,15];
"respawn_west" setMarkerAlphaLocal 0;
createMarkerLocal ["respawn_guerrila",getMarkerPos "GuerTempRespawnMarker"];
"respawn_guerrila" setMarkerColorLocal "ColorGreen";
"respawn_guerrila" setMarkerShapeLocal "RECTANGLE";
"respawn_guerrila" setMarkerBrushLocal "BORDER";
"respawn_guerrila" setMarkerSizeLocal [15,15];
"respawn_guerrila" setMarkerAlphaLocal 0;

//--- Types.
cti_Logic_Airfield = "LocationEvacPoint_F";
cti_Logic_Camp = "LocationCamp_F";
cti_Logic_Depot = "LocationFOB_F";

//cti_Logic_Harbour="Land_LightHouse_F"//todo

isAutoWallConstructingEnabled = true;

/* Wait for BIS Module Init */
waitUntil {!(isNil 'BIS_fnc_init')};
waitUntil {BIS_fnc_init};

/* CORE SYSTEM - Start
	Different Core are added depending on the current ArmA Version running, add yours bellow.
*/
_team_west = "";
_team_east = "";
switch (true) do {
		/* Model Core */
		if !(WF_Camo) then {
			Call EZC_fnc_Config_CombinedOps;
		} else {
			Call EZC_fnc_Config_CombinedOps_W;
		};

		/* Class Core */
		Call EZC_fnc_Config_Core_CIV;
		Call EZC_fnc_Config_Core_GUE;
		Call EZC_fnc_Config_Core_RU;
		Call EZC_fnc_Config_Core_US;

		/* Call in the teams template - Combined Operations */
		_team_west = 'US';
		_team_east = 'RU';
};

["INITIALIZATION", "Init_Common.sqf: Core Files are loaded."] Call EZC_fnc_Functions_Common_LogContent;

//--- new system.
_grpWest = (missionNamespace getVariable 'cti_C_UNITS_FACTIONS_WEST') select (missionNamespace getVariable 'cti_C_UNITS_FACTION_WEST');
_grpEast = (missionNamespace getVariable 'cti_C_UNITS_FACTIONS_EAST') select (missionNamespace getVariable 'cti_C_UNITS_FACTION_EAST');
_grpRes = (missionNamespace getVariable 'cti_C_UNITS_FACTIONS_GUER') select (missionNamespace getVariable 'cti_C_UNITS_FACTION_GUER');

["INITIALIZATION", Format["Init_Common.sqf: Using groups - West [%1], East [%2], Resistance [%3].",_grpWest,_grpEast,_grpRes]] Call EZC_fnc_Functions_Common_LogContent;

/* CORE SYSTEM - End */

//--- Determine which logics are defined.
_presents = [];
{
	Private ["_sideIsPresent"];
	_sideIsPresent = if !(isNil (_x select 1)) then {true} else {false};
	missionNamespace setVariable [Format["cti_%1_PRESENT", str (_x select 0)], _sideIsPresent];
	if (_sideIsPresent) then {_presents pushBack (_x select 0);};
} forEach [[west,"cti_L_BLU"],[east,"cti_L_OPF"],[resistance,"cti_L_GUE"]];

cti_PRESENTSIDES = _presents;
cti_ISTHREEWAY = false;

cti_DEFENDER = resistance;
cti_DEFENDER_ID = (cti_DEFENDER) Call EZC_fnc_Functions_Common_GetSideID;

//--- Import the desired global side variables.

/*
Call Compile preprocessFileLineNumbers Format["Common\Config\Core_Root\Root_%1.sqf",_grpRes];
Call Compile preprocessFileLineNumbers Format["Common\Config\Core_Root\Root_%1.sqf", _team_west];
Call Compile preprocessFileLineNumbers Format["Common\Config\Core_Root\Root_%1.sqf", _team_east];
*/

//--- Import the desired defenses. (todo, Replace the old defense init by this one).

/*
Call Compile preprocessFileLineNumbers Format["Common\Config\Defenses\Defenses_%1.sqf",_grpWest];
Call Compile preprocessFileLineNumbers Format["Common\Config\Defenses\Defenses_%1.sqf",_grpEast];
Call Compile preprocessFileLineNumbers Format["Common\Config\Defenses\Defenses_%1.sqf",_grpRes];
*/

//--- Server Exec.
if (isServer) then {
	//--- Import the desired town groups.

	/*
	Call Compile preprocessFileLineNumbers Format["Common\Config\Groups\Groups_%1.sqf",_grpWest];
	Call Compile preprocessFileLineNumbers Format["Common\Config\Groups\Groups_%1.sqf",_grpEast];
	Call Compile preprocessFileLineNumbers Format["Common\Config\Groups\Groups_%1.sqf",_grpRes];
	*/
};

//--- Airports Init.
ExecVM "Common\Init\Init_Airports.sqf";

["INITIALIZATION", "Init_Common.sqf: Config Files are loaded."] Call EZC_fnc_Functions_Common_LogContent;

//--- Boundaries, use setPos to find the perfect spot on other islands and worldName to determine the island name (editor: diag_log worldName; player setPos [0,5120,0]; ).
Call Compile preprocessFileLineNumbers "Common\Init\Init_Boundaries.sqf";
["INITIALIZATION", "Init_Common.sqf: Boundaries are loaded."] Call EZC_fnc_Functions_Common_LogContent;

//--- ICBM.
if ((missionNamespace getVariable "cti_C_MODULE_cti_ICBM") > 0) then {
	EZC_fnc_Module_nuke = Compile preprocessFile "Client\Module\Nuke\nuke.sqf";
	EZC_fnc_Module_damage = Compile preprocessFile "Client\Module\Nuke\damage.sqf";
	EZC_fnc_Module_radiation = Compile preprocessFile "Client\Module\Nuke\radzone.sqf";
	EZC_fnc_Module_post_nuclear_effects = Compile preprocessFile "Client\Module\Nuke\post_nuclear_effects.sqf";
	EZC_fnc_Module_nukeincoming = Compile preprocessFile "Client\Module\Nuke\nukeincoming.sqf";
}; 

//--- CIPHER Module - Functions.
Call EZC_fnc_Module_CIPHER_Init;

//--- Longest vehicles purchase (+ extra processing).
_balancePrice = missionNamespace getVariable "cti_C_UNITS_PRICING";
{
	Private ["_longest","_structure"];
	_structure = _x;

	//--- Get the longest build time per structure.
	_longest = 0;
	{
		_type = missionNamespace getVariable Format ["cti_%1%2UNITS", _x, _structure];
		if !(isNil '_type') then {
			{
				_c = missionNamespace getVariable _x;
				if !(isNil '_c') then {
					if ((_c select QUERYUNITTIME) > _longest) then {_longest = (_c select QUERYUNITTIME);};
					if (_structure in ["LIGHT", "HEAVY"]) then {if (_balancePrice in [1,3]) then {_c set [QUERYUNITPRICE, (_c select QUERYUNITPRICE)*2]}};
					if (_structure in ["AIRCRAFT", "AIRPORT"]) then {if (_balancePrice in [1,2]) then {_c set [QUERYUNITPRICE, (_c select QUERYUNITPRICE)*2]}};
				};
			} forEach _type;
		};
	} forEach cti_PRESENTSIDES;

	missionNamespace setVariable [Format ["cti_LONGEST%1BUILDTIME",_structure], _longest];
} forEach ["BARRACKS","LIGHT","HEAVY","AIRCRAFT","AIRPORT","DEPOT"];

//--- Make a global array of miscelleanous stuff.
_repairs = [];
{
	_repairs = _repairs + (missionNamespace getVariable Format["cti_%1REPAIRTRUCKS", _x]);
} forEach cti_PRESENTSIDES;

missionNamespace setVariable ["cti_REPAIRTRUCKS", _repairs];


//---Upsmon init
//call compile preprocessFileLineNumbers "Common\Module\UPSMON\Init_UPSMON.sqf";
//cti_CO_FNC_SetUpsPatrol = Compile preprocessFile "Common\Module\UPSMON\UPSMON.sqf";

//--- Common initilization is complete at this point.
["INITIALIZATION", Format ["Init_Common.sqf: Common initialization ended at [%1]", time]] Call EZC_fnc_Functions_Common_LogContent;

//_igiload =  execVM "Client\Module\IgiLoad\IgiLoadInit.sqf";

commonInitComplete = true;