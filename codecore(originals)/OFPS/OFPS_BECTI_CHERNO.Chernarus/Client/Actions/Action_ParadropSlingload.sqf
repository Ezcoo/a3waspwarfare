/*
	
	Author: JEDMario
	
	
	Note: This script/action, and the functions that calls are dependent on the AdvancedSlingLoading mod. Script is based on ASL_Release_Cargo_Action
*/
private ["_vehicle"];
_vehicle = vehicle CTI_P_Controlled;
if([_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Release_Cargo) then {
	private ["_activeRopes"];
	_activeRopes = [_vehicle] call ASL_Get_Active_Ropes_With_Cargo;
	if(count _activeRopes > 1) then {
		CTI_P_Controlled setVariable ["ASL_Release_Cargo_Index_Vehicle", _vehicle];
		["Paradrop Cargo","CTI_CL_FNC_ASL_ParadropCargo_IndexAction",_activeRopes,"Cargo"] call ASL_Show_Select_Ropes_Menu;
	} else {
		if(count _activeRopes == 1) then {
			[_vehicle,CTI_P_Controlled,(_activeRopes select 0) select 0] call CTI_CL_FNC_ASL_ParadropCargo;
		};
	};
};