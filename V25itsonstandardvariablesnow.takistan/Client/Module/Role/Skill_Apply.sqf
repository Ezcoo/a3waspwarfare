/*
	Script: Skill Application System by Benny.
	Description: Skill Application.
*/

Private ["_unit"];

_unit = _this;

missionNamespace setVariable ['CTI_C_PLAYERS_AI_MAX',9];

switch (CTI_SK_V_Type) do {
	case WSW_ENGINEER: {
		/* Repair Ability */
		_unit addAction [
			("<t color='#f8d664'>" + localize 'STR_WF_ACTION_Repair'+ "</t>"),
			(CTI_SK_V_Root + 'Engineer' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"time - CTI_SK_V_LastUse_Repair > CTI_SK_V_Reload_Repair"
		];

		_unit addAction ["<t color='#11ec52'>" + localize 'STR_WF_Repair_Camp' + "</t>",'Client\Action\Action_RepairCampEngineer.sqf', [], 97, false, true, '', '[player] call CTI_CL_FNC_Client_GetNearestCamp'];
		_unit addAction ["<t color='#11ec52'>" + localize 'STR_WF_Destroy_Camp' + "</t>",'Client\Action\Action_DestroyCampEngineer.sqf', [], 97, false, true, '', '[player] call CTI_CL_FNC_Client_GetNearestCamp'];
	};
	case WSW_SPECOPS: {
		/* Lockpicking Ability */
		_unit addAction [
			("<t color='#f8d664'>" + localize 'STR_WF_ACTION_Lockpick'+ "</t>"),
			(CTI_SK_V_Root + 'SpecOps' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - CTI_SK_V_LastUse_Lockpick > CTI_SK_V_Reload_Lockpick && vehicle player == player)"
		];
		_unit addAction [
			(localize "STR_WASP_actions_fastrep"),
			(CTI_SK_V_Root + 'LR' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - CTI_SK_V_LastUse_LR > CTI_SK_V_Reload_LR)&&((cursorTarget isKindOf 'Landvehicle' )|| (cursorTarget isKindOf 'Air'))&&(player distance cursorTarget<5)"
		];
	};
	case WSW_SNIPER: {
		/* Spotting Ability */
		_unit addAction [
			("<t color='#f8d664'>" + localize 'STR_WF_ACTION_Spot'+ "</t>"),
			(CTI_SK_V_Root + 'Sniper' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"time - CTI_SK_V_LastUse_Spot > CTI_SK_V_Reload_Spot"
		];
		_unit addAction [
            ("<t color='#FF0000'>" + localize 'STR_WF_ACTION_Arty_Strike'+ "</t>"),
            (CTI_SK_V_Root + 'ArtyStrike' + '.sqf'),
            [],
            80,
            false,
            true,
            "",
            "time - CTI_SK_V_LastUse_ArtyStrike > CTI_SK_V_Reload_Arty_Strike"
        ];
		_unit addAction [
			(localize "STR_WASP_actions_fastrep"),
			(CTI_SK_V_Root + 'LR' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - CTI_SK_V_LastUse_LR > CTI_SK_V_Reload_LR)&&((cursorTarget isKindOf 'Landvehicle' )|| (cursorTarget isKindOf 'Air'))&&(player distance cursorTarget<5)"
		];
	};
    case WSW_SOLDIER: {
         missionNamespace setVariable ['CTI_C_PLAYERS_AI_MAX',ceil (1.5*(missionNamespace getVariable "CTI_C_PLAYERS_AI_MAX"))];
		_unit addAction ["<t color='#11ec52'>" + localize 'STR_WF_Repair_Camp' + "</t>",'Client\Action\Action_RepairCampEngineer.sqf', [], 97, false, true, '', '[player] call CTI_CL_FNC_Client_GetNearestCamp'];
		_unit addAction [
			(localize "STR_WASP_actions_fastrep"),
			(CTI_SK_V_Root + 'LR' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - CTI_SK_V_LastUse_LR > CTI_SK_V_Reload_LR)&&((cursorTarget isKindOf 'Landvehicle' )|| (cursorTarget isKindOf 'Air'))&&(player distance cursorTarget<5)"
		];
	};
	case WSW_ARTY_OPERATOR: {      
		_unit addAction [
			(localize "STR_WASP_actions_fastrep"),
			(CTI_SK_V_Root + 'LR' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - CTI_SK_V_LastUse_LR > CTI_SK_V_Reload_LR)&&((cursorTarget isKindOf 'Landvehicle' )|| (cursorTarget isKindOf 'Air'))&&(player distance cursorTarget<5)"
		];
	};
    case WSW_UAV_OPERATOR: {
		_unit addAction [
			(localize "STR_WASP_actions_fastrep"),
			(CTI_SK_V_Root + 'LR' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - CTI_SK_V_LastUse_LR > CTI_SK_V_Reload_LR)&&((cursorTarget isKindOf 'Landvehicle' )|| (cursorTarget isKindOf 'Air'))&&(player distance cursorTarget<5)"
		];
	};
};