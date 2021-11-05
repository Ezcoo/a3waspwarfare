["INITIALIZATION", Format ["Init_Common.sqf: Common initialization begins at [%1]", time]] Call CTI_CO_FNC_LogContent;

Private ['_count'];

// --- additional handlers
CTI_CO_FNC_HandleArty = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleArty.sqf";
CTI_CO_FNC_HandleAAMissiles = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleAAMissiles.sqf";
CTI_CO_FNC_HandleBombs = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleBombs.sqf";
CTI_CO_FNC_BalanceInit = Compile preprocessFileLineNumbers "Common\Functions\Common_BalanceInit.sqf";
CTI_CO_FNC_Requip_AI = Compile preprocessFileLineNumbers "Common\Functions\Common_Requip_AI.sqf";
CTI_CO_FNC_Requip_AIR_VEH = Compile preprocessFileLineNumbers "Common\Functions\Common_Requip_AIR_VEH.sqf";
CTI_CO_FNC_BuildingInRange = Compile preprocessFileLineNumbers "Common\Functions\Common_BuildingInRange.sqf";
CTI_CO_FNC_ChangeSideSupply = Compile preprocessFileLineNumbers "Common\Functions\Common_ChangeSideSupply.sqf";
CTI_CO_FNC_EquipLoadout = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipLoadout.sqf";
CTI_CO_FNC_GetAIDigit = Compile preprocessFileLineNumbers "Common\Functions\Common_GetAIDigit.sqf";
CTI_CO_FNC_GetClosestLocation = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestLocation.sqf";
CTI_CO_FNC_GetClosestLocationBySide = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestLocationBySide.sqf";
CTI_CO_FNC_GetConfigInfo = Compile preprocessFileLineNumbers "Common\Functions\Common_GetConfigInfo.sqf";
CTI_CO_FNC_GetFactories = Compile preprocessFileLineNumbers "Common\Functions\Common_GetFactories.sqf";
CTI_CO_FNC_GetFriendlyCamps = Compile preprocessFileLineNumbers "Common\Functions\Common_GetFriendlyCamps.sqf";
CTI_CO_FNC_GetHostilesInArea = Compile preprocessFileLineNumbers "Common\Functions\Common_GetHostilesInArea.sqf";
CTI_CO_FNC_GetPositionFrom = Compile preprocessFileLineNumbers "Common\Functions\Common_GetPositionFrom.sqf";
CTI_CO_FNC_GetRespawnCamps = Compile preprocessFileLineNumbers "Common\Functions\Common_GetRespawnCamps.sqf";
CTI_CO_FNC_GetRespawnThreeway = Compile preprocessFileLineNumbers "Common\Functions\Common_GetRespawnThreeway.sqf";
CTI_CO_FNC_GetSafePlace = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSafePlace.sqf";   // USE IT FOR RESPAWN OF VEHICLES IN CREATEVEHICLE.SQF
CTI_CO_FNC_GetTeamArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamArtillery.sqf";
CTI_CO_FNC_GetTeamMoveMode = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamMoveMode.sqf";
CTI_CO_FNC_GetTeamMovePos = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamMovePos.sqf";
CTI_CO_FNC_GetTeamRespawn = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamRespawn.sqf";
CTI_CO_FNC_GetTeamType = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamType.sqf";
CTI_CO_FNC_GetTeamVehicles = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamVehicles.sqf";
CTI_CO_FNC_GetTotalSupplyValue = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTotalSupplyValue.sqf";
CTI_CO_FNC_GetTownsHeld = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTownsHeld.sqf";
CTI_CO_FNC_GetTownsIncome = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTownsIncome.sqf";
CTI_CO_FNC_GetUnitVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_GetUnitVehicle.sqf";
CTI_CO_FNC_IsArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_IsArtillery.sqf";
CTI_CO_FNC_MarkerUpdate = Compile preprocessFileLineNumbers "Common\Common_MarkerUpdate.sqf";
CTI_CO_FNC_PlaceNear = Compile preprocessFileLineNumbers "Common\Functions\Common_PlaceNear.sqf";
CTI_CO_FNC_PlaceSafe = Compile preprocessFileLineNumbers "Common\Functions\Common_PlaceSafe.sqf";
CTI_CO_FNC_RearmVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_RearmVehicle.sqf";
CTI_CO_FNC_SetCommanderVotes = Compile preprocessFileLineNumbers "Common\Functions\Common_SetCommanderVotes.sqf";
CTI_CO_FNC_SetTeamRespawn = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamRespawn.sqf";
CTI_CO_FNC_SetTeamMoveMode = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamMoveMode.sqf";
CTI_CO_FNC_SetTeamMovePos = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamMovePos.sqf";
CTI_CO_FNC_SetTeamType = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTeamType.sqf";
CTI_CO_FNC_UpdateStatistics = Compile preprocessFileLineNumbers "Common\Functions\Common_UpdateStatistics.sqf";  // USE IT FOR GLOBAL STATISTIC COLLECTOR
CTI_CO_FNC_TrashObject = Compile preprocessFile "Common\Functions\Common_TrashObject.sqf";
CTI_CO_FNC_GetClosestStructure = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetClosestStructure.sqf";

// Module: Arty
CTI_CO_FNC_ARTY_HandleILLUM = Compile preprocessFile "Common\Module\Arty\ARTY_HandleILLUM.sqf";
CTI_CO_FNC_ARTY_HandleSADARM = Compile preprocessFile "Common\Module\Arty\ARTY_HandleSADARM.sqf";
CTI_CO_FNC_ARTY_Prep = Compile preprocessFile "Common\Module\Arty\ARTY_mobileMissionPrep.sqf";
CTI_CO_FNC_ARTY_Finish = Compile preprocessFile "Common\Module\Arty\ARTY_mobileMissionFinish.sqf";
CTI_CO_FNC_TRACK_AIR_TARGETS = Compile preprocessFile "Common\Common_AARadarMarkerUpdate.sqf";

//Module: roles
WSW_fnc_roleList = compileFinal preprocessfilelinenumbers "Common\Module\Roles\config\roleList.sqf";
WSW_fnc_getRoleDetails = compileFinal preprocessfilelinenumbers "Common\Module\Roles\getRoleDetails.sqf";
WSW_fnc_resetRoles = compileFinal preprocessfilelinenumbers "Client\Module\Role\role_menu\resetRoles.sqf";
[east] call WSW_fnc_roleList;
[west] call WSW_fnc_roleList;

CTI_CO_FNC_AreWaypointsComplete = Compile preprocessFileLineNumbers "Common\Functions\Common_AreWaypointsComplete.sqf";
CTI_CO_FNC_ArrayShift = Compile preprocessFileLineNumbers "Common\Functions\Common_ArrayShift.sqf";
CTI_CO_FNC_ArrayShuffle = Compile preprocessFileLineNumbers "Common\Functions\Common_ArrayShuffle.sqf";
CTI_CO_FNC_ChangeTeamFunds = Compile preprocessFileLineNumbers "Common\Functions\Common_ChangeTeamFunds.sqf";
CTI_CO_FNC_HandleIncomingMissile = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleIncomingMissile.sqf";
CTI_CO_FNC_ChangeUnitGroup = Compile preprocessFileLineNumbers "Common\Functions\Common_ChangeUnitGroup.sqf";
CTI_CO_FNC_ClearVehicleCargo = Compile preprocessFileLineNumbers "Common\Functions\Common_ClearVehicleCargoOA.sqf";
CTI_CO_FNC_CreateTeam = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateTeam.sqf";
CTI_CO_FNC_CreateTownUnits = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateTownUnits.sqf";
CTI_CO_FNC_CreateUnitForStaticDefence = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateUnitForStaticDefence.sqf";
CTI_CO_FNC_CreateUnitsForResBases = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateUnitsForResBases.sqf";
CTI_CO_FNC_CreateVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateVehicle.sqf";
CTI_CO_FNC_CreateUnit = Compile preprocessFileLineNumbers "Common\Functions\Common_CreateUnit.sqf";
CTI_CO_FNC_EquipBackpack = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipBackpack.sqf";
CTI_CO_FNC_EquipUnit = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipUnit.sqf";
CTI_CO_FNC_EquipVehicle = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipVehicle.sqf";
CTI_CO_FNC_FindTurretsRecursive = Compile preprocessFileLineNumbers "Common\Functions\Common_FindTurretsRecursive.sqf";
CTI_CO_FNC_FireArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_FireArtillery.sqf";
CTI_CO_FNC_GetAreaEnemiesCount = Compile preprocessFileLineNumbers "Common\Functions\Common_GetAreaEnemiesCount.sqf";
CTI_CO_FNC_GetCommanderTeam = Compile preprocessFileLineNumbers "Common\Functions\Common_GetCommanderTeam.sqf";
CTI_CO_FNC_GetClosestEnemyLocation = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEnemyLocation.sqf";
CTI_CO_FNC_GetClosestEntity = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity.sqf";
CTI_CO_FNC_GetClosestEntity2 = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity2.sqf";
CTI_CO_FNC_GetClosestEntity3 = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity3.sqf";
CTI_CO_FNC_GetClosestEntity4 = Compile preprocessFileLineNumbers "Common\Functions\Common_GetClosestEntity4.sqf";
CTI_CO_FNC_GetConfigEntry = Compile preprocessFileLineNumbers "Common\Functions\Common_GetConfigEntry.sqf";
CTI_CO_FNC_GetDirTo = Compile preprocessFileLineNumbers "Common\Functions\Common_GetDirTo.sqf";
CTI_CO_FNC_GetEmptyPosition = Compile preprocessFileLineNumbers "Common\Functions\Common_GetEmptyPosition.sqf";
CTI_CO_FNC_GetLiveUnits = Compile preprocessFileLineNumbers "Common\Functions\Common_GetLiveUnits.sqf";
CTI_CO_FNC_GetRandomPosition = Compile preprocessFileLineNumbers "Common\Functions\Common_GetRandomPosition.sqf";
CTI_CO_FNC_GetSideFromID = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideFromID.sqf";
CTI_CO_FNC_GetSideHQDeployStatus = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideHQDeployStatus.sqf";
CTI_CO_FNC_GetSideHQ = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideHQ.sqf";
CTI_CO_FNC_GetSideID = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideID.sqf";
CTI_CO_FNC_GetSideLogic = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideLogic.sqf";
CTI_CO_FNC_GetSideSupply = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideSupply.sqf";
CTI_CO_FNC_GetSideStructures = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideStructures.sqf";
CTI_CO_FNC_GetSideTowns = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideTowns.sqf";
CTI_CO_FNC_GetSideUpgrades = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideUpgrades.sqf";
CTI_CO_FNC_GetTeamFunds = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTeamFunds.sqf";
CTI_CO_FNC_GetTotalCamps = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTotalCamps.sqf";
CTI_CO_FNC_GetTotalCampsOnSide = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTotalCampsOnSide.sqf";
CTI_CO_FNC_GetTownsSupply = Compile preprocessFileLineNumbers "Common\Functions\Common_GetTownsSupply.sqf";
CTI_CO_FNC_GetUnitConfigGear = Compile preprocessFileLineNumbers "Common\Functions\Common_GetUnitConfigGear.sqf";
CTI_CO_FNC_GetUnitsPerSide = Compile preprocessFileLineNumbers "Common\Functions\Common_GetUnitsPerSide.sqf";
CTI_CO_FNC_GetVehicleTurretsGear = Compile preprocessFileLineNumbers "Common\Functions\Common_GetVehicleTurretsGear.sqf";
CTI_CO_FNC_HandleArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_HandleArtillery.sqf";
CTI_CO_FNC_OnUnitHit = Compile preprocessFileLineNumbers "Common\Functions\Common_OnUnitHit.sqf";
CTI_CO_FNC_OnUnitKilled = Compile preprocessFileLineNumbers "Common\Functions\Common_OnUnitKilled.sqf";
CTI_CO_FNC_RevealArea = Compile preprocessFileLineNumbers "Common\Functions\Common_RevealArea.sqf";
CTI_CO_FNC_RemoveCountermeasures = Compile preprocessFileLineNumbers "Common\Functions\Common_RemoveCountermeasures.sqf";
CTI_CO_FNC_SetTurretsMagazines = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTurretsMagazines.sqf";
CTI_CO_FNC_SortByDistance = Compile preprocessFileLineNumbers "Common\Functions\Common_SortByDistance.sqf";
CTI_CO_FNC_WaypointPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrol.sqf";
CTI_CO_FNC_WaypointPatrolTown = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointPatrolTown.sqf";
CTI_CO_FNC_WaypointSimple = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointSimple.sqf";
CTI_CO_FNC_WaypointsAdd = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointsAdd.sqf";
CTI_CO_FNC_WaypointsRemove = Compile preprocessFileLineNumbers "Common\Functions\Common_WaypointsRemove.sqf";
CTI_CO_FNC_GetSideStructuresByType = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetSideStructuresByType.sqf";
CTI_CO_FNC_ConvertGearToFlat = compileFinal preprocessFileLineNumbers "Common\Functions\Common_ConvertGearToFlat.sqf";
CTI_CO_FNC_GetGearItemUpgradeLevel = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetGearItemUpgradeLevel.sqf";
CTI_CO_FNC_GetGearItemCost = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetGearItemCost.sqf";
CTI_CO_FNC_ArrayDiffers = compileFinal preprocessFileLineNumbers "Common\Functions\Common_ArrayDiffers.sqf";
CTI_CO_FNC_ArrayToLower = compileFinal preprocessFileLineNumbers "Common\Functions\Common_ArrayToLower.sqf";
CTI_CO_FNC_EquipContainerBackpack = compileFinal preprocessFileLineNumbers "Common\Functions\Common_EquipContainerBackpack.sqf";
CTI_CO_FNC_EquipContainerUniform = compileFinal preprocessFileLineNumbers "Common\Functions\Common_EquipContainerUniform.sqf";
CTI_CO_FNC_EquipContainerVest = compileFinal preprocessFileLineNumbers "Common\Functions\Common_EquipContainerVest.sqf";
CTI_CO_FNC_GetUnitLoadout = compileFinal preprocessFileLineNumbers "Common\Functions\Common_GetUnitLoadout.sqf";
CTI_CO_FNC_EquipArtillery = Compile preprocessFileLineNumbers "Common\Functions\Common_EquipArtillery.sqf";
CTI_CO_FNC_SetPatrol = Compile preprocessFileLineNumbers "Common\Functions\Common_SetTownPatrol.sqf";
CTI_CO_FNC_UPDATE_CLIENT_TEAMS = Compile preprocessFileLineNumbers "Common\Functions\Common_UpdateClientTeams.sqf";
CTI_CO_FNC_Change_Vehicle_Texture = Compile preprocessFile "Common\Functions\Common_ChangeVehicleTexture.sqf";
CTI_CO_FNC_CreateComposition = Compile preprocessFile "Common\Functions\Common_CreateComposition.sqf";
CTI_CO_FNC_CleanResBaseArea = Compile preprocessFile "Common\Functions\Common_CleanResBaseArea.sqf";
["INITIALIZATION", "Init_Common.sqf: Functions are initialized."] Call CTI_CO_FNC_LogContent;

varQueu = random(10)+random(100)+random(1000); //clt, to remove with new sys later on.
unitMarker = 0;



//--- Load the profile variables if needed (Requires at least version 1.62 build 97105).
CTI_CO_FNC_GetProfileVariable = Compile preprocessFileLineNumbers "Common\Functions\Common_GetProfileVariable.sqf";
CTI_CO_FNC_SaveProfile = Compile preprocessFileLineNumbers "Common\Functions\Common_SaveProfile.sqf";
CTI_CO_FNC_SetProfileVariable = Compile preprocessFileLineNumbers "Common\Functions\Common_SetProfileVariable.sqf";


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
CTI_Logic_Airfield = "LocationEvacPoint_F";
CTI_Logic_Camp = "LocationCamp_F";
CTI_Logic_Depot = "LocationFOB_F";

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
			Call Compile preprocessFileLineNumbers 'Common\Config\Core_Models\CombinedOps.sqf';
		} else {
			Call Compile preprocessFileLineNumbers 'Common\Config\Core_Models\CombinedOps_W.sqf';
		};

		/* Class Core */
		Call Compile preprocessFileLineNumbers 'Common\Config\Core\Core_CIV.sqf';
		Call Compile preprocessFileLineNumbers 'Common\Config\Core\Core_GUE.sqf';
		Call Compile preprocessFileLineNumbers 'Common\Config\Core\Core_RU.sqf';
		Call Compile preprocessFileLineNumbers 'Common\Config\Core\Core_US.sqf';

		/* Call in the teams template - Combined Operations */
		_team_west = 'US';
		_team_east = 'RU';
};

["INITIALIZATION", "Init_Common.sqf: Core Files are loaded."] Call CTI_CO_FNC_LogContent;

//--- new system.
_grpWest = (missionNamespace getVariable 'CTI_C_UNITS_FACTIONS_WEST') select (missionNamespace getVariable 'CTI_C_UNITS_FACTION_WEST');
_grpEast = (missionNamespace getVariable 'CTI_C_UNITS_FACTIONS_EAST') select (missionNamespace getVariable 'CTI_C_UNITS_FACTION_EAST');
_grpRes = (missionNamespace getVariable 'CTI_C_UNITS_FACTIONS_GUER') select (missionNamespace getVariable 'CTI_C_UNITS_FACTION_GUER');

["INITIALIZATION", Format["Init_Common.sqf: Using groups - West [%1], East [%2], Resistance [%3].",_grpWest,_grpEast,_grpRes]] Call CTI_CO_FNC_LogContent;

/* CORE SYSTEM - End */

//--- Determine which logics are defined.
_presents = [];
{
	Private ["_sideIsPresent"];
	_sideIsPresent = if !(isNil (_x select 1)) then {true} else {false};
	missionNamespace setVariable [Format["CTI_%1_PRESENT", str (_x select 0)], _sideIsPresent];
	if (_sideIsPresent) then {_presents pushBack (_x select 0);};
} forEach [[west,"CTI_L_BLU"],[east,"CTI_L_OPF"],[resistance,"CTI_L_GUE"]];

CTI_PRESENTSIDES = _presents;
CTI_ISTHREEWAY = false;

CTI_DEFENDER = resistance;
CTI_DEFENDER_ID = (CTI_DEFENDER) Call CTI_CO_FNC_GetSideID;

//--- Import the desired global side variables.
Call Compile preprocessFileLineNumbers Format["Common\Config\Core_Root\Root_%1.sqf",_grpRes];
Call Compile preprocessFileLineNumbers Format["Common\Config\Core_Root\Root_%1.sqf", _team_west];
Call Compile preprocessFileLineNumbers Format["Common\Config\Core_Root\Root_%1.sqf", _team_east];

//--- Import the desired defenses. (todo, Replace the old defense init by this one).
Call Compile preprocessFileLineNumbers Format["Common\Config\Defenses\Defenses_%1.sqf",_grpWest];
Call Compile preprocessFileLineNumbers Format["Common\Config\Defenses\Defenses_%1.sqf",_grpEast];
Call Compile preprocessFileLineNumbers Format["Common\Config\Defenses\Defenses_%1.sqf",_grpRes];

//--- Server Exec.
if (isServer) then {
	//--- Import the desired town groups.
	Call Compile preprocessFileLineNumbers Format["Common\Config\Groups\Groups_%1.sqf",_grpWest];
	Call Compile preprocessFileLineNumbers Format["Common\Config\Groups\Groups_%1.sqf",_grpEast];
	Call Compile preprocessFileLineNumbers Format["Common\Config\Groups\Groups_%1.sqf",_grpRes];
};

//--- Airports Init.
ExecVM "Common\Init\Init_Airports.sqf";

["INITIALIZATION", "Init_Common.sqf: Config Files are loaded."] Call CTI_CO_FNC_LogContent;

//--- Boundaries, use setPos to find the perfect spot on other islands and worldName to determine the island name (editor: diag_log worldName; player setPos [0,5120,0]; ).
Call Compile preprocessFileLineNumbers "Common\Init\Init_Boundaries.sqf";
["INITIALIZATION", "Init_Common.sqf: Boundaries are loaded."] Call CTI_CO_FNC_LogContent;

//--- ICBM.
if ((missionNamespace getVariable "CTI_C_MODULE_CTI_ICBM") > 0) then {
	CTI_CO_FNC_Nuke = Compile preprocessFile "Client\Module\Nuke\nuke.sqf";
	CTI_CO_FNC_NukeDammage = Compile preprocessFile "Client\Module\Nuke\damage.sqf";
	CTI_CO_FNC_NukeRadiation = Compile preprocessFile "Client\Module\Nuke\radzone.sqf";
	CTI_CO_FNC_PostNuclearEffects = Compile preprocessFile "Client\Module\Nuke\post_nuclear_effects.sqf";
	CTI_CO_FNC_NukeIncomming = Compile preprocessFile "Client\Module\Nuke\nukeincoming.sqf";
}; 

//--- CIPHER Module - Functions.
Call Compile preprocessFileLineNumbers "Common\Module\CIPHER\CIPHER_Init.sqf";

//--- Longest vehicles purchase (+ extra processing).
_balancePrice = missionNamespace getVariable "CTI_C_UNITS_PRICING";
{
	Private ["_longest","_structure"];
	_structure = _x;

	//--- Get the longest build time per structure.
	_longest = 0;
	{
		_type = missionNamespace getVariable Format ["CTI_%1%2UNITS", _x, _structure];
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
	} forEach CTI_PRESENTSIDES;

	missionNamespace setVariable [Format ["CTI_LONGEST%1BUILDTIME",_structure], _longest];
} forEach ["BARRACKS","LIGHT","HEAVY","AIRCRAFT","AIRPORT","DEPOT"];

//--- Make a global array of miscelleanous stuff.
_repairs = [];
{
	_repairs = _repairs + (missionNamespace getVariable Format["CTI_%1REPAIRTRUCKS", _x]);
} forEach CTI_PRESENTSIDES;

missionNamespace setVariable ["CTI_REPAIRTRUCKS", _repairs];

//--Advanced Sling Loading
[] Call Compile preprocessFile "Common\Functions\Common_AdvancedSlingLoadingInit.sqf";

//---Upsmon init
call compile preprocessFileLineNumbers "Common\Module\UPSMON\Init_UPSMON.sqf";
CTI_CO_FNC_SetUpsPatrol = Compile preprocessFile "Common\Module\UPSMON\UPSMON.sqf";

//--- Common initilization is complete at this point.
["INITIALIZATION", Format ["Init_Common.sqf: Common initialization ended at [%1]", time]] Call CTI_CO_FNC_LogContent;
commonInitComplete = true;