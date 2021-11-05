/*
  # HEADER #
	Script: 		Server\Functions\Server_OnDefenseHit.sqf
	Alias:			CTI_SE_FNC_OnDefenseHit
	Description:	Triggered by the Hit EH whenever a structure get hit
					Note this function shall be called by an Event Handler (EH) but can also be called manually
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013
	
  # PARAMETERS #
    0	[Object]: The destroyed structure
    1	[Number]: The afflicted damage
    2	[Intenger]: The Side ID of the structure
    3	[String]: The structure variable name
    4	[Array]: The position of the structure
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[STRUCTURE, DAMAGE, SIDE ID, STRUCTURE VARIABLE, POSITION] spawn CTI_SE_FNC_OnDefenseHit
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideLogic
	
  # EXAMPLE #
    _structure addEventHandler ["hit", format ["[_this select 0, _this select 2, %1, '%2', %3] spawn CTI_SE_FNC_OnDefenseHit", (_side) call CTI_CO_FNC_GetSideID, _variable, _position]];
*/

params ["_structure", "_damage", "_sideID", "_variable", "_position"];
private ["_damage", "_logic", "_position", "_side", "_sideID", "_structure", "_variable"];

systemchat format ["HIT %1",_damage];

_side = (_sideID) call CTI_CO_FNC_GetSideFromID;
_logic = (_side) call CTI_CO_FNC_GetSideLogic;

if (time - (_logic getVariable "cti_structures_lasthit") > 30 && _damage >= 0.02 && (_damage + getDammage _structure) < 1) then {
	_logic setVariable ["cti_structures_lasthit", time];
	["structure-attacked", [_variable, _position]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
};