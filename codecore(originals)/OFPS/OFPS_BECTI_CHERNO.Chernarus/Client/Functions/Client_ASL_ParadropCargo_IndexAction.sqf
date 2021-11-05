/*
  # HEADER #
	Script: 		Client\Functions\Client_ASL_ParadropCargo_IndexAction.sqf
	Alias:			CTI_CL_FNC_ASL_ParadropCargo_IndexAction
	Description:	Called to paradrop cargo attached to selected ropes. Based on ASL_Release_Cargo_Index_Action
	Author: 		JEDMario
	Creation Date:	03-01-2018
	Revision Date:	03-01-2018
	
  # PARAMETERS #
    0	[Number]: Which ropes' cargo to paradrop
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[ROPEINDEX] call CTI_CL_FNC_ASL_ParadropCargo_IndexAction
	
  # DEPENDENCIES #
	Serverside Mod: "Advanced Sling Loading" by duda
	IgiLoad Script
	
  # EXAMPLE #
    0 call CTI_CL_FNC_ASL_ParadropCargo_IndexAction;
*/

params ["_ropesIndex"];
private ["_vehicle"];
_vehicle = CTI_P_Controlled getVariable ["ASL_Release_Cargo_Index_Vehicle", objNull];
if(_ropesIndex >= 0 && !isNull _vehicle && [_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Release_Cargo && speed (vehicle CTI_P_Controlled) < 50 && speed (vehicle CTI_P_Controlled) > -50 && (((getPosATL vehicle CTI_P_Controlled) select 2) >= IL_Para_Drop_ATL)) then {
	[_vehicle,CTI_P_Controlled,_ropesIndex] call CTI_CL_FNC_ASL_ParadropCargo;
};