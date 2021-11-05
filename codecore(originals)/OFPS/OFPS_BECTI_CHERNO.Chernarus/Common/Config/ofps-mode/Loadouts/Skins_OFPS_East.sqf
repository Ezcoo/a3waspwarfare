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
		//EXAMPLES: '\ofps_assets\images\skin_black.paa'

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
	/*Name*/'dark',
	/*MenuName*/'Dark',
	/*Texture*/'\ofps_assets\images\east_dark.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'arid',
	/*MenuName*/'Arid',
	/*Texture*/'\ofps_assets\images\east_arid.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'arid1',
	/*MenuName*/'Arid1',
	/*Texture*/'\ofps_assets\images\east_arid1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'arid2',
	/*MenuName*/'Arid2',
	/*Texture*/'\ofps_assets\images\east_arid2.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'lush',
	/*MenuName*/'Lush',
	/*Texture*/'\ofps_assets\images\east_lush.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'lush1',
	/*MenuName*/'Lush1',
	/*Texture*/'\ofps_assets\images\east_lush1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'lush2',
	/*MenuName*/'Lush2',
	/*Texture*/'\ofps_assets\images\east_lush2.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'urban',
	/*MenuName*/'Urban',
	/*Texture*/'\ofps_assets\images\east_urban.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'urban1',
	/*MenuName*/'Urban1',
	/*Texture*/'\ofps_assets\images\east_urban1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'urban2',
	/*MenuName*/'Urban2',
	/*Texture*/'\ofps_assets\images\east_urban2.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'winter',
	/*MenuName*/'Winter',
	/*Texture*/'\ofps_assets\images\east_winter.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'winter1',
	/*MenuName*/'Winter1',
	/*Texture*/'\ofps_assets\images\east_winter1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'winter2',
	/*MenuName*/'Winter2',
	/*Texture*/'\ofps_assets\images\east_winter2.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'naval',
	/*MenuName*/'Naval',
	/*Texture*/'\ofps_assets\images\east_naval.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'naval1',
	/*MenuName*/'Naval1',
	/*Texture*/'\ofps_assets\images\east_naval1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'naval2',
	/*MenuName*/'Naval2',
	/*Texture*/'\ofps_assets\images\east_naval2.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'air',
	/*MenuName*/'Air',
	/*Texture*/'\ofps_assets\images\east_air.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'air1',
	/*MenuName*/'Air1',
	/*Texture*/'\ofps_assets\images\east_air1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'air2',
	/*MenuName*/'Air2',
	/*Texture*/'\ofps_assets\images\east_air2.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/0
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'vp',
	/*MenuName*/'VP',
	/*Texture*/'\ofps_assets\images\vp1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'admin',
	/*MenuName*/'Admin',
	/*Texture*/'\ofps_assets\images\admin1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/2
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'dev',
	/*MenuName*/'Dev',
	/*Texture*/'\ofps_assets\images\dev1.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/3
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'shrubbery',
	/*MenuName*/'Shrubbery',
	/*Texture*/'\ofps_assets\images\dev2.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/3
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'USA',
	/*MenuName*/'USA',
	/*Texture*/'\ofps_assets\images\skin_usa.paa',
	/*Price*/100,
	/*Rank*/'PRIVATE',
	/*Special*/3
];

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Loadouts\Skins_Config_Set.sqf";