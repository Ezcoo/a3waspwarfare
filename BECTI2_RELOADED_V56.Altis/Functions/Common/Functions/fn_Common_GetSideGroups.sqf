/*
  # HEADER #
	Script: 		Common\Functions\Common_GetSideGroups.sqf
	Alias:			EZC_fnc_Functions_Common_GetSideGroups
	Description:	Return all CTI Groups of a side
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	15-10-2013
	
  # PARAMETERS #
    0	[Side]: The side
	
  # RETURNED VALUE #
	[Array]: The current CTI Groups
	
  # SYNTAX #
	(SIDE) call EZC_fnc_Functions_Common_GetSideGroups
	
  # DEPENDENCIES #
	Common Function: EZC_fnc_Functions_Common_GetSideLogic
	
  # EXAMPLE #
    _groups = (West) call EZC_fnc_Functions_Common_GetSideGroups
	  -> Return the west CTI Groups
*/

private ["_logic", "_teams"];

if !(typeName _this isEqualTo "SIDE") exitWith {[]};

_logic = (_this) call EZC_fnc_Functions_Common_GetSideLogic;

_teams = [];
if !(isNull _logic) then {
	{
		if !(isNil '_x') then {
			if !(isNull _x) then {
				_teams pushBack _x;
			};
		};
	} forEach (_logic getVariable "cti_teams");
};

_teams