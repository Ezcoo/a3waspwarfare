/*
  # HEADER #
	Script: 		Common\Functions\Common_OnHQHandleDamage.sqf
	Alias:			CTI_CO_FNC_OnHQHandleDamage
	Description:	Triggered by the handleDamage EH when the HQ receive a damage
					Note this function shall be called by an Event Handler (EH)
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	18-09-2013
	
  # PARAMETERS #
    0	[Number]: The incomming damages
    1	[Object]: The shooter
    2	[Integer]: The Side ID of the HQ
	
  # RETURNED VALUE #
	[Number]: The outgoing damages
	
  # SYNTAX #
	[EH DAMAGE, EH SHOOTER, SIDE ID] call CTI_CO_FNC_OnHQHandleDamage
	
  # EXAMPLE #
    _hq addEventHandler ["handleDamage", format["[_this select 2, _this select 3, %1] call CTI_CO_FNC_OnHQHandleDamage", _sideID]]; 
*/

params ["_damage", "_shooter", "_sideID"];

if (CTI_BASE_NOOBPROTECTION isEqualTo 1 && side _shooter in [_sideID call CTI_CO_FNC_GetSideFromID, sideEnemy]) exitWith {0};

_damage