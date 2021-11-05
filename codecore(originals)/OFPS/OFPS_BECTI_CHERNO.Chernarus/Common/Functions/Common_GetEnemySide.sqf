/*
  # HEADER #
	Script: 		Common\Functions\Common_GetEnemySide.sqf
	Alias:			CTI_CO_FNC_GetEnemySide
	Description:	Get the enemy side
	Creation Date:	17-04-2018
	
  # PARAMETERS #
    0	[Side]: The "friendly" side
	
  # RETURNED VALUE #
	[Side]: Enemy side
	
  # SYNTAX #
	(FRIENDLY SIDE) call CTI_CO_FNC_GetEnemySide
	
  # DEPENDENCIES #
	
  # EXAMPLE #
    _enemyside = [CTI_P_SideID] call CTI_CO_FNC_GetEnemySide;
*/

params ["_friendlySide"];
private ["_friendlySide","_enemySide"];

if !(typeName _friendlySide isEqualTo "SIDE") exitWith {-1};

_enemySide = Resistance;

switch (_friendlySide) do {
	case west: {_enemySide = east};
	case east: {_enemySide = west};
};

_enemySide