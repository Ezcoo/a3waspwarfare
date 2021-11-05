/*
  # HEADER #
	Script: 		Client\Functions\Client_OnWeaponAssembled.sqf
	Alias:			CTI_CL_FNC_OnWeaponAssembled
	Description:	Triggered from the "WeaponAssembled" EH whenever the player assembles a static weapon
	Author: 		ProtossMaster
	Creation Date:	10-04-2017
	Revision Date:	01-01-2018

  # PARAMETERS #
    0	[Object]: unit: Object - Object the event handler is assigned to
    1	[Object]: weapon: Object - Object of the assembled weapon

  # RETURNED VALUE #
	None

  # SYNTAX #
	[unit, weapon] spawn CTI_CL_FNC_OnWeaponAssembled

  # DEPENDENCIES #
	Client Function: CTI_CL_FNC_AddMissionActions
	Common Function: CTI_CO_FNC_OnUnitKilled

  # EXAMPLE #
	player addEventHandler ["WeaponAssembled", {_this spawn CTI_CL_FNC_OnWeaponAssembled}];
	  -> This function is triggered everytime the player assembles a weapon
*/

params["_builder", "_defense"];
private ["_properly_created", "_prev_owner"];

//-- quickly figure out if we need to attach event handlers
_properly_created = _defense getVariable "cti_static_properly_created";
if !(isNil "_properly_created") exitWith {};  //-- if the static was assembled and doesnt have cti_static_properly_created variable defined, we need to re-add event handlers and variables
//systemChat typeOf _defense;
_defense setVariable ["cti_assembled", true, true];
_prev_owner = _defense getVariable "cti_originalowner";
_defense setVariable ["cti_originalowner", getPlayerUID player, true];

_defense call CTI_CO_FNC_UnitCreated;

if (CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY > -1 && ((_defense isKindOf "StaticMortar") )) then { 
	//(_defense) remoteExec ["CTI_PVF_CLT_OnArtilleryPieceTracked", CTI_PV_CLIENTS];
	if (!CTI_IsServer) then {
		(_defense) remoteExec ["CTI_PVF_SRV_OnArtilleryPieceTracked", CTI_PV_SERVER];
	} else {
		(_defense) call CTI_PVF_SRV_OnArtilleryPieceTracked;
	};
	
	_defense setVariable ["_properly_created", true, true]; //-- set _properly_created to "true" and broadcast that variable to all clients and JIP. Use that variable to determine if we need to re-add event handlers 
};