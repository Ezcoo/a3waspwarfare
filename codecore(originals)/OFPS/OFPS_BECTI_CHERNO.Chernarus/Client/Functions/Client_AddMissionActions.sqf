/*
  # HEADER #
	Script: 		Client\Functions\Client_AddMissionActions.sqf
	Alias:			CTI_CL_FNC_AddMissionActions
	Description:	Add the contextual actions from the mission to the player
					Note that this file is called at player init and upon respawn
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	call CTI_CL_FNC_AddMissionActions
	
  # EXAMPLE #
    call CTI_CL_FNC_AddMissionActions
*/

//--- Tablet Menu
player addAction ["<t color='#a5c4ff'>TABLET</t>", "Client\Actions\Action_TabletMenu.sqf", "", 90, false, true, "", ""];

// --- Vehicle actions
//object addAction [title, script, arguments, priority, showWindow, hideOnUse, shortcut, condition, radius, unconscious, selection, memoryPoint] 
player addAction ["<t color='#FFBD4C'>Hill Climb On</t>","Client\Functions\Externals\Valhalla\LowGear_Toggle.sqf", [], 6, false, true, "", "CTI_P_ActionLowGear  && !Local_HighClimbingModeOn && canMove (vehicle player)"];
player addAction ["<t color='#FFBD4C'>Hill Climb Off</t>","Client\Functions\Externals\Valhalla\LowGear_Toggle.sqf", [], 6, false, true, "", "CTI_P_ActionLowGear  && Local_HighClimbingModeOn && canMove (vehicle player)"];
player addAction ["<t color='#86F078'>Push</t>","Client\Actions\Action_Push.sqf", [], 99, false, true, "", 'CTI_P_ActionPush && alive (vehicle player) && speed (vehicle player) < 10'];
player addAction ["<t color='#86F078'>Push (Reverse)</t>","Client\Actions\Action_TaxiReverse.sqf", [], 99, false, true, "", 'CTI_P_ActionPush && alive (vehicle player) && speed (vehicle player) < 10 && speed (vehicle player) > -4'];
player addAction ["<t color='#FFBD4C'>Paradrop Cargo</t>","Client\Actions\Action_ParadropSlingload.sqf", nil, 99, false, true, "", "call ASL_Release_Cargo_Action_Check && speed (vehicle CTI_P_Controlled) < 50 && speed (vehicle CTI_P_Controlled) > -50 && ((getPosATL vehicle CTI_P_Controlled) select 2) >= IL_Para_Drop_ATL"];

//--- Skill actions
player addAction ["<t color='#c7a5ff'>SKILL: Lockpick</t>", "Client\Actions\Action_SkillLockpick.sqf", "", 80, false, true, "", "CTI_P_ActionLockPick && time > CTI_P_ActionLockPickNextUse"];
player addAction ["<t color='#c7a5ff'>SKILL: Repair Mobility</t>", "Client\Actions\Action_SkillRepairMobility.sqf", "", 80, false, true, "", "CTI_P_ActionRepair && time > CTI_P_ActionRepairNextUse"];
player addAction ["<t color='#c7a5ff'>SKILL: Repair Turret</t>", "Client\Actions\Action_SkillRepairTurret.sqf", "", 80, false, true, "", "CTI_P_ActionRepair && time > CTI_P_ActionRepairNextUse"];
player addAction ["<t color='#c7a5ff'>SKILL: Repair Hull</t>", "Client\Actions\Action_SkillRepairHull.sqf", "", 80, false, true, "", "CTI_P_ActionRepair && time > CTI_P_ActionRepairNextUse"];