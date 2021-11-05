/*
  # HEADER #
	Script: 		Client\Functions\Client_AddRemoteActionsToUnit.sqf
	Alias:			CTI_CL_FNC_AddRemoteActionsToUnit
	Description:	Add the contextual actions from the mission, and some mods, to the remoteControlled unit
					This file is called when controlling a unit
	Author: 		JEDMario
	Creation Date:	07-01-2018
	Revision Date:	07-01-2018
	
  # PARAMETERS #
    0	[Object]: The unit to add the action to
	
  # RETURNED VALUE #
	[ARRAY]: Two elements, the ID of the first action and the ID of the second action.
	
  # SYNTAX #
	[OBJECT] call CTI_CL_FNC_AddRemoteActionsToUnit
	
  # EXAMPLE #
    CTI_P_Controlled call CTI_CL_FNC_AddRemoteActionsToUnit
*/

params ["_unit"];
private ["_firstAction", "_lastAction"];
//--- Tablet Menu


// --- Vehicle actions

_firstAction =CTI_P_Controlled addAction ["Paradrop Cargo","Client\Actions\Action_ParadropSlingload.sqf", nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Release_Cargo_Action_Check && speed (vehicle _target) < 50 && speed (vehicle _target) > -50 && (((getPosATL vehicle _target) select 2) >= IL_Para_Drop_ATL)"];


[] spawn {
	while {CTI_P_Controlled != player} do {
		missionNamespace setVariable ["CTI_CL_FNC_EXT_SA_Nearby_Tow_Vehicles", ([] call CTI_CL_FNC_EXT_SA_Find_Nearby_Tow_Vehicles)];
		missionNamespace setVariable ["CTI_CL_FNC_EXT_ASL_Nearby_Vehicles", ([] call CTI_CL_FNC_EXT_ASL_Find_Nearby_Vehicles)];
		sleep 2;
	};
};


CTI_P_Controlled addAction ["Extend Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Extend_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Extend_Ropes_Action_Check"];
	
CTI_P_Controlled addAction ["Shorten Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Action_Check"];
		
	CTI_P_Controlled addAction ["Release Cargo", { 
		[] call CTI_CL_FNC_EXT_ASL_Release_Cargo_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Release_Cargo_Action_Check"];
		
	CTI_P_Controlled addAction ["Retract Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Retract_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Retract_Ropes_Action_Check"];
	
	CTI_P_Controlled addAction ["Deploy Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Attach To Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Attach_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Attach_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Drop Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Drop_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Drop_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Pickup Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Pickup_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Pickup_Ropes_Action_Check"];
	
	CTI_P_Controlled addAction ["Deploy Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Take_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Take_Tow_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Put Away Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Attach To Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Drop Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes_Action_Check"];

_lastAction = CTI_P_Controlled addAction ["Pickup Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes_Action_Check"];
	
[_firstAction, _lastAction]
	