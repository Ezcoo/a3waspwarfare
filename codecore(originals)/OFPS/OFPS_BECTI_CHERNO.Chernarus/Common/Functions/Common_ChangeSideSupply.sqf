/*
  # HEADER #
	Script: 		Common\Functions\Common_ChangeSideSupply.sqf
	Alias:			CTI_CO_FNC_ChangeSideSupply
	Description:	Change the supply of a given side
	Author: 		Benny
	Creation Date:	10-05-2016
	Revision Date:	10-05-2016
	
  # PARAMETERS #
    0	[Side]: The side
    1	[Integer]: The amount to add/subtract
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SIDE, AMOUNT] call CTI_CO_FNC_ChangeSideSupply
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_GetSideSupply
	
  # EXAMPLE #
	[West, 600] call CTI_CO_FNC_ChangeSideSupply; 
	  -> Assuming west had 600 before: 1200
	[West, -50] call CTI_CO_FNC_ChangeSideSupply; 
	  -> Assuming west had 1000 before: 950
*/

params ["_side", "_value"];
private ["_logic","_supply","_structures", "_supply_depots", "_supply_depots_count", "_supply_limit"];

if (isNil '_value') exitWith {["ERROR", "FILE: Common\Functions\Common_ChangeSideSupply.sqf", format["A nil supply value has been specified for side [%1]", _side]] call CTI_CO_FNC_Log};
if !(typeName _value isEqualTo "SCALAR") exitWith {["ERROR", "FILE: Common\Functions\Common_ChangeSideSupply.sqf", format["A non-scalar value has been specified for side [%1]", _side]] call CTI_CO_FNC_Log};

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_supply = (_side) call CTI_CO_FNC_GetSideSupply;

//--- Supply Depot
_structures = (_side) call CTI_CO_FNC_GetSideStructures;
_supply_depots = [CTI_SUPPLY_DEPOT, _structures] call CTI_CO_FNC_GetSideStructuresByType;
_supply_depots_count = count _supply_depots;
_supply_limit = CTI_BASE_SUPPLY_BASE_VALUE + (_supply_depots_count * CTI_BASE_SUPPLY_DEPOT_VALUE);

if (_value > 0) then {
	if (_supply <= _supply_limit) then {
		_logic setVariable ["cti_supply", _supply + _value, true];
	} else {
		[_supply_limit] remoteExec ["CTI_PVF_CLT_SupplyMaxReached", _side];
	};
} else {
	if ((_supply + _value) < 0) then {
		_logic setVariable ["cti_supply", 0, true];
	} else {
		_logic setVariable ["cti_supply", _supply + _value, true];
	};
};