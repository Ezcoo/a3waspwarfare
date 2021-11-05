/*
  # HEADER #
	Script: 		Client\Functions\Client_ASL_ParadropCargo.sqf
	Alias:			CTI_CL_FNC_ASL_ParadropCargo
	Description:	Called to paradrop slingloaded cargo. Based on ASL_Release_Cargo
	Author: 		JEDMario
	Creation Date:	03-01-2018
	Revision Date:	03-01-2018
	
  # PARAMETERS #
    0	[Object]: The vehicle that the cargo is slingloaded to
    1	[Object]: The player (Unclear what it actually does)
    2	[Number]: Which rope's cargo to paradrop
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[VEHICLE, PLAYER, ROPEINDEX] call CTI_CL_FNC_ASL_ParadropCargo
	
  # DEPENDENCIES #
	Serverside Mod: "Advanced Sling Loading" by duda
	IgiLoad Script
	
  # EXAMPLE #
    [_vehicle, player, 0] call CTI_CL_FNC_ASL_ParadropCargo;
*/

params ["_vehicle","_player",["_ropeIndex",0]];
if(local _vehicle) then {
	private ["_existingRopesAndCargo","_existingRopes","_existingCargo","_allCargo"];
	_existingRopesAndCargo = [_vehicle,_ropeIndex] call ASL_Get_Ropes_And_Cargo;
	_existingRopes = _existingRopesAndCargo select 0;
	_existingCargo = _existingRopesAndCargo select 1; 
	{
		_existingCargo ropeDetach _x;
	} forEach _existingRopes;
	_allCargo = _vehicle getVariable ["ASL_Cargo",[]];
	_allCargo set [_ropeIndex,objNull];
	_vehicle setVariable ["ASL_Cargo",_allCargo, true];
	_this call ASL_Retract_Ropes;
	[_existingCargo, _vehicle] spawn IL_Cargo_Para;
} else {
	[_this,"CTI_CL_FNC_ASL_Paradrop_Cargo",_vehicle,true] call ASL_RemoteExec;
};