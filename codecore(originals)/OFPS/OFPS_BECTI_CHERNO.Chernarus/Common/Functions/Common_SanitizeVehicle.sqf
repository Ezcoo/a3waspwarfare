/*
  # HEADER #
	Script: 		Common\Functions\Common_SanitizeVehicle.sqf
	Alias:			CTI_CO_FNC_SanitizeVehicle
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
	[VEHICLE, SIDE] call CTI_CO_FNC_SanitizeVehicle
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideUpgrades
	
  # EXAMPLE #
    [vehicle player, CTI_P_SideJoined] call CTI_CO_FNC_SanitizeVehicle;
	  -> Remove all ammo from a players vehicle
*/

private ["_vehicle"];

params ["_vehicle", "_side"];

//--- We check air ordinance param
if((missionNamespace getVariable "CTI_VEHICLES_AIR_ORDINANCE") > 0 ) then {
	[_vehicle,_side] spawn CTI_CO_FNC_SanitizeAirOrdinance;
};

//--- We check land ordinance param
if((missionNamespace getVariable "CTI_VEHICLES_LAND_ORDINANCE") > 0 ) then {
	[_vehicle,_side] spawn CTI_CO_FNC_SanitizeLandOrdinance;
};
