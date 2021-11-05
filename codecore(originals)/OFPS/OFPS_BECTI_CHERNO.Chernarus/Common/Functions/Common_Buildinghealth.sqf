/*
  # HEADER #
	Script: 		Common\Functions\Common_Buildinghealth.sqf
	Alias:			CTI_CO_FNC_Buildinghealth
	Description:	Return health of structure and color
	Author: 		Omon XR
	Creation Date:	3-8-2020
	Revision Date:	3-8-2020
	
  # PARAMETERS #
    0	[Structure]
	
  # RETURNED ARRAY #
	0 [Health]: Health no decimals
	1 [Color]: The color based on damage
	
  # SYNTAX #
	_structure call CTI_CO_FNC_Buildinghealth

*/
params ["_structure"];
private ["_health","_colorhealth"];

_side = CTI_P_SideJoined;
_health = 100;
_colorhealth = CTI_P_SideColor;

_health = _structure getVariable "cti_altdmg";
_health = ((1 -(_health))*100);
_health = [_health, 0] call BIS_fnc_cutDecimals; //--- Cut Decimals off

switch (true) do {

    case (_health < 20): {_colorhealth = "ColorRed";};
    case (_health < 40): {_colorhealth = "ColorPink";};
    case (_health < 70): {_colorhealth = "ColorOrange";};
    case (_health < 90): {_colorhealth = "ColorYellow";};
    case (_health >= 90): {_colorhealth = CTI_P_SideColor;};

};

[_health, _colorhealth]