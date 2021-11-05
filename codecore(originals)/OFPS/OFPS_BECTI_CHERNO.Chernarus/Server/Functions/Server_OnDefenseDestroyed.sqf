/*
  # HEADER #
	Script: 		Server\Functions\Server_OnDefenseDestroyed.sqf
	Alias:			CTI_SE_FNC_OnDefenseDestroyed
	Description:	Triggered by the Killed EH whenever a defense get destroyed
					Note this function shall be called by an Event Handler (EH) but can also be called manually
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013
	
  # PARAMETERS #
    0	[Object]: The Killed defense
    1	[Object]: The Killer
    2	[Integer]: The Side ID of the defense
    3	[String]: The ruin classname
    4	[String]: The defense variable name
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[KILLED, KILLER, SIDE ID, RUIN CLASSNAME, DEFENSE VARIABLE] spawn CTI_SE_FNC_OnDefenseDestroyed
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideLogic
	
  # EXAMPLE #
    _defense addEventHandler ["killed", format["[_this select 0, _this select 1, %1, '%2', '%3'] spawn CTI_SE_FNC_OnDefenseDestroyed", _side call CTI_CO_FNC_GetSideID, _ruins, _varname]];
*/

params ["_killed", "_killer", "_sideID", "_ruins", "_varname"];
private ["_logic", "_position", "_side", "_var"];

_position = getPos _killed;
_side = (_sideID) call CTI_CO_FNC_GetSideFromID;

_var = missionNamespace getVariable _varname;
_fob = false;
{if ((_x select 0) isEqualTo "FOB") exitWith {_fob = true}} forEach (_var select CTI_DEFENSE_SPECIALS);
_large_fob = false;
{if (_x select 0 isEqualTo "LARGE_FOB") exitWith {_large_fob = true}} forEach (_var select CTI_DEFENSE_SPECIALS);

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
if (_fob) then { //--- Erase this FOB upon destruction
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_OnDefenseDestroyed.sqf", format["FOB [%1 (%2)] is destroyed and will be removed from side [%3]", _killed, ((_var select CTI_DEFENSE_CLASS) select 0), _side]] call CTI_CO_FNC_Log;
	};

	_logic setVariable ["cti_fobs", (_logic getVariable "cti_fobs") - [objNull, _killed], true];
};
if (_large_fob) then { //--- Erase this Large FOB upon destruction
	_logic setVariable ["cti_large_fobs", (_logic getVariable "cti_large_fobs") - [objNull, _killed], true];
};

sleep 5;

//--- Bounty
if !(isNull _killer) then {
	if (side _killer != sideEnemy && side _killer != _side && (group _killer) call CTI_CO_FNC_IsGroupPlayable) then {
		if (isPlayer leader _killer) then {
			_label = ((_var select CTI_DEFENSE_LABEL));
			_award = round((_var select CTI_DEFENSE_PRICE) * CTI_BASE_CONSTRUCTION_DEFENSE_BOUNTY);
			[_label, _award] remoteExec ["CTI_PVF_CLT_OnBountyDefense", _killer];
		} else {
			//--- AI Reward
		};
	};
};

//--- If the building has some ruins upon destruction then we remove them
if !(_ruins isEqualTo "") then {
	//--- Wipe them from the server
	{deleteVehicle _x} forEach (nearestObjects [_position, [_ruins], 25]);
	
	//--- Current clients need to clean the remains.
	[_position, _ruins] remoteExec ["CTI_PVF_CLT_RemoveRuins", CTI_PV_CLIENTS];
};
//--- Generic ruins cleanup if objects leftover
{
	_smoke = createVehicle ["CMflare_Chaff_Ammo", _position, [], 0, "CAN_COLLIDE"];
	deleteVehicle _x;
	[_position] remoteExec ["CTI_PVF_CLT_APS_SHOCKWAVE"];
} forEach (nearestObjects [_position, ["Ruins"], 30]);

deleteVehicle _killed;