/*
  # HEADER #
	Script: 		Client\Functions\Client_OnPlayerDamaged.sqf
	Alias:			CTI_CL_FNC_OnPlayerDamaged
	Description:	Triggered from the "HandleDamage" EH whenever the player takes damage
					Note this function shall be called by an Event Handler (EH) but can be called manually
	Author: 		OFPS
	Creation Date:	29-07-2017
	Revision Date:	29-07-2017

  # PARAMETERS #
    0	[Object]: The unit
    1	[String]: Name of the selection where the unit was damaged. "" for over-all structural damage, "?" for unknown selections.
    2	[Number]: Resulting level of damage for the selection.
    3	[Object]: The source unit that caused the damage.
    4	[String]: Classname of the projectile that caused inflicted the damage.


  # RETURNED VALUE #
	None

  # SYNTAX #
	[UNIT, HITSELECTION, DAMAGE, SOURCE, PROJECTILE] spawn CTI_CL_FNC_OnPlayerDamaged

  # DEPENDENCIES #

  # EXAMPLE #
	player addEventHandler ["HandleDamage", {_this spawn CTI_CL_FNC_OnPlayerDamaged}];
	  -> This function be triggered everytime the player takes damage
*/

params ["_unit","_hitselection","_damage","_source","_projectile"];
private["_isleader"];
_isleader = isPlayer (leader(group player));

if !(_unit isKindOf "Man") exitWith {0};

//--- Make sure that player is always the leader (of his group).
if (lifeState player isEqualTo "INCAPACITATED") then {
	if (! (isPlayer (leader(group player)))) then {(group player) selectLeader player};
};   
//log for debugging
//systemchat format ["unit %1 took damage %2 from source %3 and was leader? %4", name _unit, _damage, _source, _isleader];
//diag_log format ["DEBUG:: Client_OnPlayerDamaged.sqf:: unit %1 took damage %2 from source %3 and was leader? %4", name _unit, _damage, _source, _isleader];

_damage