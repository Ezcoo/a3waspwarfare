//--- Debug Commmands, uncomment if you need some of them to be turned on when Dev mode enabled.

onMapSingleClick "vehicle player setPos _pos"; //--- benny debug: teleport
player addEventHandler ["HandleDamage", {false}];
/*	player addEventHandler ["HandleDamage", {if (player != (_this select 3)) then {(_this select 3) setDammage 1}; false}]; //--- God-Slayer mode.
player addAction ["<t color='#ff0000'>DEBUGGER 2000</t>", "debug_diag.sqf"];//debug
player addAction ["<t color='#a5c4ff'>MENU: Construction (HQ)</t>", "Client\Actions\Action_BuildMenu.sqf"];//debug
player addAction ["<t color='#ff0000'>DEBUGGER 2000</t>", "debug_diag.sqf"];//debug
CTI_PurchaseMenu = player addAction ["<t color='#a5c4ff'>DEBUG: Purchase Units</t>", "Client\Actions\Action_PurchaseMenu.sqf", "HQ", 1, false, true, "", "_target isEqualTo player"];//debug
player addAction ["<t color='#a5c4ff'>MENU debug: Factory</t>", "Client\Actions\Action_PurchaseMenu.sqf", "HQ", 93, false, true, "", "_target isEqualTo player"];
player addAction ["<t color='#a5c4ff'>MENU: Equipment</t>", "Client\Actions\Action_GearMenu.sqf", "HQ", 93, false, true, "", "true"];
onMapSingleClick "{(vehicle leader _x) setPos ([_pos, 8, 30] call CTI_CO_FNC_GetRandomPosition)} forEach (CTI_P_SideJoined call CTI_CO_FNC_GetSideGroups)";
call CTI_CL_FNC_PurchaseUnit;
{diag_log format ["%1 ", typeOf _x];} forEach (player nearObjects 10);
diag_log CTI_P_PurchaseRequests;
player sidechat format ["%1 %2",count CTI_P_PurchaseRequests, CTI_P_PurchaseRequests];
(west) execFSM "Server\FSM\update_commander.fsm";
[player, objNull] spawn CTI_CL_FNC_OnPlayerKilled;
(CTI_P_SideJoined) spawn CTI_CL_FNC_OnMissionEnding;
createDialog "CTI_RscUnitsCamera";
createDialog "CTI_RscUpgradeMenu";
createDialog "CTI_RscBuildMenu";
createDialog "CTI_RscTabletCommandMenu";
createDialog "CTI_RscAIMicromanagementMenu";
createDialog "CTI_RscSatelitteCamera";
createDialog "CTI_RscDefenseMenu";
createDialog "CTI_RscPurchaseMenu";
createDialog "CTI_RscTabletDialogOptions";
createDialog "CTI_RscGearMenu";
createDialog "CTI_RscWorkersMenu";
createDialog "CTI_RscTransferResourcesMenu";
createDialog "CTI_RscRequestMenu";
createDialog "CTI_RscArtilleryMenu";
[vehicle player, side player] call CTI_CO_FNC_RearmVehicle;
CTI_P_TeamsRequests_FOB = 1;
player sidechat format ["%1",player ammo primaryWeapon player];
execvm "Client\GUI\GUI_CoinMenu.sqf";
player addAction ["<t color='#a5c4ff'>MENU: Construction (HQ)</t>", "Client\Actions\Action_CoinBuild.sqf", "HQ", 93, false, true, "", "_target isEqualTo player && CTI_Base_HQInRange"];
_structures = (side player) call CTI_CO_FNC_GetSideStructures;
_structure = [player, _structures] call CTI_CO_FNC_GetClosestEntity;
_structure setDammage 1;
_q = (side player) call CTI_CO_FNC_GetSideHQ;
_q setDammage 1;
{uiNamespace setVariable [_x, displayNull]} forEach ["cti_title_capture"];
600200 cutRsc["CTI_CaptureBar","PLAIN",0];
*/

/*
//--- Below are scripts that you can run only in debugger window


//--- Generates a list in log what units belong to HC
_candidates = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";
diag_log ("GROUPOWNER-INFO:" + str _candidates);

//--- Below you can choose a town and get status
_town = limeribay;
_time = (_town getVariable "cti_town_resistance_activeTime");
_time_left = time - _time;
_deactivate = CTI_TOWNS_RESISTANCE_INACTIVE_MAX;
systemchat format ["Town : %1 is active for %2 and need to be %3 to deactivate",_town, _time_left, _deactivate];


//--- Generates chat message on building health
[] spawn { 
while {true} do { 
		{  
		   player sideChat typeof _x + " : " + str (_x getVariable "cti_altdmg");  
		} forEach nearestObjects [player, [], 20]; 
	 sleep 2;
	}
}


//--- Copy to clipboard building positions with in 20m v2
_posX = [];
{_posX pushback (_x buildingPos -1);
} forEach (nearestObjects [player, ["building"], 20]);
copyToClipboard (str _posX);


//--- Add in cash to commander on blufor
_logic = (west) call CTI_CO_FNC_GetSideLogic;
_funds = (west) call CTI_CO_FNC_GetFundsCommander;
_logic setVariable ["cti_commander_funds", _funds + 100000, true];


//--- Add in supply to commander on blufor
_logic = (west) call CTI_CO_FNC_GetSideLogic; _logic setVariable ["cti_supply", 100000000, true];
*/