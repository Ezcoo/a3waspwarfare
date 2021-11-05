/*
//--------------------------------------------------------------------------------------------------------------
# HEADER #
Description:	This file presents classnames and their values to the mission.

//--------------------------------------------------------------------------------------------------------------	
# DOCUMENTATION #

	/*Enabled*/
		//DESCRIPTION: Enables use of unit in game, still loads unit into variable for reference
		//TYPE: Boolean
		//DEFAULT: true
		//EXAMPLES: true/false

	/*Name*/
		//DESCRIPTION: Variable Name for Skin/Camo in mission - NO spaces allowed
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'SolidBlack'

	/*MenuName*/
		//DESCRIPTION: Name for Skin/Camo in menus - spaces allowed
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'Solid Black'

	/*Texture*/
		//DESCRIPTION:  Texture Location path
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'Rsc\Pictures\skin_black.paa'

	/*Price*/
		//DESCRIPTION: Price
		//TYPE: Array
		//DEFAULT: 0
		//EXAMPLES:

	/*Rank*/
		//DESCRIPTION: Miniumum rank require to use
		//TYPE: Array
		//DEFAULT: 'PRIVATE'
		//EXAMPLES:
			//'PRIVATE'
			//'CORPORAL'
			//'SERGEANT'
			//'LIEUTENANT'
			//'CAPTAIN'
			//'MAJOR'
			//'COLONEL'

	/*Specials*/
		//DESCRIPTION: Special access only
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES:	
			//0 - no access
			//1 - vp
			//2 - admins
			//3 - devs

//--------------------------------------------------------------------------------------------------------------
private ["_side", "_faction", "_u"];

_side = _this;
_faction = "East";

_u = []; //Loadouts Classname

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'SolidBlack',
	/*MenuName*/'Solid Black',
	/*Texture*/'Rsc\Pictures\skin_solid_black.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'SolidTan',
	/*MenuName*/'Solid Tan',
	/*Texture*/'Rsc\Pictures\skin_solid_tan.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'SolidGreen',
	/*MenuName*/'Solid Green',
	/*Texture*/'Rsc\Pictures\skin_solid_green.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];	

_u pushBack [
	/*Enabled*/true,
	/*Name*/'SolidGrey',
	/*MenuName*/'Solid Grey',
	/*Texture*/'Rsc\Pictures\skin_solid_grey.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Loadouts\Skins_Config_Set.sqf";