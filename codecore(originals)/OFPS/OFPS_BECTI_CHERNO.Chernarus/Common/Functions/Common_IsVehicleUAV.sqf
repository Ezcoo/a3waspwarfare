/*
  # HEADER #
	Script: 		Common\Functions\Common_IsVehicleUav.sqf
	Alias:			CTI_CO_FNC_IsVehicleUAV
	Description:	Returns if a vehicle is a UAV.
	Author: 		MischievousRaven
	Creation Date:	01-11-2018
	
  # PARAMETERS #
    0	[String/Object]: 
			String: the vehicle classname
			Object: the vehicle object

	
  # RETURNED VALUE #
	[Boolean]: True if UAV

  # SYNTAX #
	[VEHICLE CLASSNAME] call CTI_CO_FNC_IsVehicleUAV
	[VEHICLE OBJECT] call CTI_CO_FNC_IsVehicleUAV

  # EXAMPLE #
    _isUAV = ["B_UAV_01_F"] call CTI_CO_FNC_IsVehicleUAV; // Returns true
*/

params [["_vehicle", "", ["",objNull]]];

// If nothing is passed in then return false
if (_vehicle isEqualTo "") exitWith {false};

// If _vehicle is an object, then get its classname
if (_vehicle isEqualType objNull) then {_vehicle = typeOf _vehicle};

_isUav = [false,true] select (getNumber(configFile >> "CfgVehicles" >> _vehicle >> "isUav") isEqualTo 1);

_isUav