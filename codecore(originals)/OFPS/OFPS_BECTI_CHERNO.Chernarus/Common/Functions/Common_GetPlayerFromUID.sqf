/*
  # HEADER #
	Script: 		Common\Functions\Common_GetPlayerFromUID.sqf
	Alias:			CTI_CO_FNC_GetPlayerFromUID
	Description:	Get the player that has the passed UID.
	Author: 		JEDMario
	Creation Date:	11-01-2018
	Revision Date:	11-01-2018
	
  # PARAMETERS #
    0	[Number]: The UID to use
	
  # RETURNED VALUE #
	OBJECT: The matching player. If no player with the UID is found, this will be objNull
	
  # SYNTAX #
	(UID) call CTI_CO_FNC_GetPlayerFromUID
	
  # DEPENDENCIES #
	
  # EXAMPLE #
	_p_UID call Common_GetPlayerFromUID.sqf
*/

params ["_UID"];
private ["_owner_player","_return"];

if !(isNil "_UID") then {
	_owner_player = {if ((getPlayerUID _x) isEqualTo _UID) exitWith {_x};} forEach allPlayers;
};
if (!isNil "_owner_player") then {
	_return = _owner_player;
} else {
	_return = objNull;
};

_return
