/*
  # HEADER #
	Script: 		Common\Functions\Common_SanitizeAmmo.sqf
	Alias:			CTI_CO_FNC_SanitizeAmmo
	Description:	Remove all ammo from a vehicle
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Object]: The vehicle
    1	[Side]: The side of the vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[VEHICLE, SIDE] call CTI_CO_FNC_SanitizeAmmo
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideUpgrades
	
  # EXAMPLE #
    [vehicle player, CTI_P_SideJoined] call CTI_CO_FNC_SanitizeAmmo;
	  -> Remove all ammo from a players vehicle
*/

private ["_vehicle"];

params ["_vehicle"];

_vehicle spawn CTI_CO_FNC_EmptyVehicle;

