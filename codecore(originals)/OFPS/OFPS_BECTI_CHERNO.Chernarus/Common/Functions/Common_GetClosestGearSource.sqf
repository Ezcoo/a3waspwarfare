/*
  # HEADER #
	Script: 		Common\Functions\Common_GetClosestGearSource.sqf
	Alias:			CTI_CO_FNC_GetClosestGearSource
	Description:	Get the closest Gear Source
	
  # DEPENDANCIES #

  
  # PARAMETERS #
    0	[Array/Object]: A position or an object which determine the center
    1	[Array]: The list (objects/positions)
	
  # RETURNED VALUE #
	[Object]: The closest position
	
  # SYNTAX #
	[CENTER, LIST] call CTI_CO_FNC_GetClosestGearSource
	
  # EXAMPLE #
    _closest = [player, [Town1, Town2, Town3]] call CTI_CO_FNC_GetClosestEntity;
    _closest = [player, [Town1, [0,0,0], [50,50]]] call CTI_CO_FNC_GetClosestEntity;
*/

params ["_target", "_side"];
private ["_target", "_side","_var","_gearsourceobj","_closest_list","_structures","_barracks","_ammotruck","_depot","_fob","_large_fob","_type"];

_gearsourceobj = objNull;

//Get closest source
_closest_list = [];
_structures = (_side) call CTI_CO_FNC_GetSideStructures;
//--- Check for barracks
_barracks = [CTI_BARRACKS, _target, _structures, CTI_BASE_GEAR_RANGE] call CTI_CO_FNC_GetClosestStructure;
if (!(isNull _barracks)) then {_closest_list pushBack _barracks};
//--- Check for ammo trucks
_ammotruck = [_target, CTI_SPECIAL_AMMOTRUCK, CTI_SERVICE_AMMO_TRUCK_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles;
if (count _ammotruck > 0) then {_closest_list pushBack (_ammotruck select 0)};
//--- Check for depot
_depot = [_target, _side] call CTI_CO_FNC_GetClosestDepot;
if (!(isNull _depot) && CTI_Base_DepotInRange) then {_closest_list pushBack _depot};
//--- Check for FOB
_fob = [_target, _side] call CTI_CO_FNC_GetClosestFOB;
if (!(isNull _fob) && CTI_Base_GearInRange_FOB) then {_closest_list pushBack _fob};
//--- Check for large FOB
_large_fob = [_target, _side] call CTI_CO_FNC_GetClosestLargeFOB;
if (!(isNull _large_fob) && CTI_Base_LargeFOBInRange) then {_closest_list pushBack _large_fob};
//return closest and available
if (count _closest_list > 0) then {
  _gearsourceobj = [_target, _closest_list] call CTI_CO_FNC_GetClosestEntity;
};

//get object var
_var = _gearsourceobj getVariable "cti_structure_type";
_type = "";
if !(isNil '_var') then {
  _var = missionNamespace getVariable format ["CTI_%1_%2", _side, _var];
  _type = (_var select CTI_STRUCTURE_LABELS) select 0;
} else {
  if !(isNil {_gearsourceobj getVariable "cti_spec"}) then {
    _type = CTI_AMMO_TRUCK;
  };			
  if !(isNil {_gearsourceobj getVariable "cti_depot"}) then {
    _type = CTI_DEPOT;
  };
  if !(isNil {_gearsourceobj getVariable "cti_fob"}) then {
    _type = CTI_FOB;
  };
  if !(isNil {_gearsourceobj getVariable "cti_large_fob"}) then {
    _type = CTI_LARGE_FOB;
  };
};

//systemChat format ["Nearest Gear: %1 | %2 | %3 --- %4 ", _closest_list, _gearsourceobj, _type, _var];

_type