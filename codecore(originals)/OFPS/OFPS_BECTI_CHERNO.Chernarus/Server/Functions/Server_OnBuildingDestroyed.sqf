/*
  # HEADER #
	Script: 		Server\Functions\Server_OnBuildingDestroyed.sqf
	Alias:			CTI_SE_FNC_OnBuildingDestroyed
	Description:	Triggered by the Killed EH whenever a structure get destroyed
					Note this function shall be called by an Event Handler (EH) but can also be called manually
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:  16-10-2013
	
  # PARAMETERS #
    0	[Object]: The destroyed structure
    1	[Object]: The killer
    2	[String]: The structure variable name
    3	[Intenger]: The Side ID of the structure
    4	[Array]: The position of the structure
    5	[Number]: The direction
    6	[Number]: The current completion speed ratio
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[KILLED, KILLER, STRUCTURE VARIABLE, SIDE ID, POSITION, DIRECTION, COMPLETION RATIO] spawn CTI_SE_FNC_OnBuildingDestroyed
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideLogic
	Server Function: CTI_SE_FNC_HandleStructureConstruction
	
  # EXAMPLE #
    [_damaged, _shooter, _variable, _sideID, _position, _direction, _completion_ratio] spawn CTI_SE_FNC_OnBuildingDestroyed
*/

params ["_killed", "_killer", "_variable", "_sideID", "_position", "_direction", "_completion_ratio"];
private ["_classnames", "_logic", "_sell", "_side", "_structure", "_var","_structures_wip","_label","_award"];

_side = (_sideID) call CTI_CO_FNC_GetSideFromID;
_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sell = [true, false] select (isNil {_killed getVariable "cti_sell"});

// bistery: a damaged structure will not trigger the EH assigned to the original one! will it get fixed? nop!
_logic setVariable ["cti_structures", (_logic getVariable "cti_structures") - [_killed, objNull], true];
_var = missionNamespace getVariable _variable;
if (CTI_DATABASE_TRACKING) then { // send information to update database
	["buildingDestroyed", [_killed, _killer, _variable, _sideID, _position, _direction, _completion_ratio]] call CTI_SE_FNC_DatabaseUpdate;
};
if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_OnBuildingDestroyed.sqf", format["A [%1] from side [%2] was destroyed by [%3] at position [%4], was it sold? [%5]", (_var select CTI_STRUCTURE_LABELS) select 1, _side, _killer, _position, _sell]] call CTI_CO_FNC_Log;
};

//--- The structure was not sold
if !(_sell) then {
	//--- Replace with ruins
	_structure = ((_var select CTI_STRUCTURE_CLASSES) select 1) createVehicle _position;
	_structure setDir _direction;
	_structure setPos _position;
	_structure setDir _direction;
	_structure setVectorUp [0,0,0];

	_structure setVariable ["cti_completion", 10];
	_structure setVariable ["cti_completion_ratio", _completion_ratio * CTI_BASE_CONSTRUCTION_RATIO_ON_DEATH];
	// _structure setVariable ["cti_structures_iteration", round(CTI_BASE_WORKERS_BUILD_COEFFICIENT / ((_var select CTI_STRUCTURE_TIME)/100))];
	_structure setVariable ["cti_structures_iteration", (_var select CTI_STRUCTURE_TIME)/100];
	_structure setVariable ["cti_structure_type", ((_var select CTI_STRUCTURE_LABELS) select 0), true];

	[_side, _structure, _variable, _position, _direction, false, true] spawn CTI_SE_FNC_HandleStructureConstruction;

	_structures_wip = _logic getVariable "cti_structures_wip";
	_structures_wip pushBack _structure;
	for '_i' from count(_structures_wip)-1 to 0 step -1 do {if (isNull(_structures_wip select _i)) then {_structures_wip deleteAt _i}};
	_logic setVariable ["cti_structures_wip", _structures_wip, true];

	//--- Remove supply if supply depot
	if (((_var select CTI_STRUCTURE_LABELS) select 0) isEqualTo CTI_SUPPLY_DEPOT) then {
		[_side, -CTI_BASE_SUPPLY_DEPOT_VALUE] call CTI_CO_FNC_ChangeSideSupply; 
	};
	
	//--- Bounty
	if !(isNull _killer) then {
		if (!(side _killer isEqualTo sideEnemy) && !(side _killer isEqualTo _side) && (group _killer) call CTI_CO_FNC_IsGroupPlayable) then {
			if (isPlayer leader _killer) then {
				_label = ((_var select CTI_STRUCTURE_LABELS) select 1);
				_award = round((_var select CTI_STRUCTURE_PRICE) * CTI_BASE_CONSTRUCTION_BOUNTY);
				
				[_label, _award] remoteExec ["CTI_PVF_CLT_OnBountyStructure", _killer];
				//["bkill",[_label, _award]] remoteExec ["CTI_CL_FNC_NotificationHandle", _killer];

				["structure-destroyed", [format ["%1 player: %2", side _killer, name _killer], _label]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
				if (CTI_DATABASE_TRACKING) then { // send information to update database
				// for now, only track non TKs
					["buildingDestroyed", [_killed, _killer, _variable, _sideID, _position, _direction, _completion_ratio, _side]] call CTI_PVF_SRV_DatabaseUpdate;
				};
			} else {
				//--- AI Reward
			};
		};
	};
	
} else { //--- The structure was sold
	//--- Update base areas
	(_side) call CTI_SE_FNC_UpdateBaseAreas;
};

sleep 5;
deleteVehicle _killed;

_classnames = _var select CTI_STRUCTURE_CLASSES;
_classnames = if (count _classnames > 2) then {[_classnames select 1] + (_classnames select 2)} else {[_classnames select 1]};

{if (isNil {_x getVariable "cti_completion"}) then { deleteVehicle _x }} forEach (nearestObjects [_position, _classnames, 25]);

[_position, _variable, _sell] remoteExec ["CTI_PVF_CLT_OnFriendlyStructureDestroyed", _side];
[_position, _variable] remoteExec ["CTI_PVF_CLT_RemoveRuins", CTI_PV_CLIENTS];