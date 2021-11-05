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
		//DESCRIPTION: Common Unit name, primarily for internal reference
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'Mil Wall'

	/*Headers*/
		//DESCRIPTION:  Menu name and various
		//TYPE: Array
		//DEFAULT: ''
		//EXAMPLES: 
			//'Dome (Small )'
			//["Barricade 4m",[["CanAutoAlign", 4, 0]]]

	/*ClassName*/
		//DESCRIPTION:  Unit Class Name
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'O_T_Soldier_A_F'

	/*Price*/
		//DESCRIPTION:  Price of the unit
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 500

	/*Placement*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Categories - tags*/
		//DESCRIPTION:  Filter by Camo
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Tropic'],
			//['Tropic','Tropic'],

	/*CoinMenu Location*/
		//DESCRIPTION:  Which factory unit will be available for purchase
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//[CTI_FACTORY_BARRACKS]
			//[CTI_FACTORY_BARRACKS,CTI_FACTORY_BARRACKS]

	/*Blacklist*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3
	
	/*UpgradeLevel*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*MaxCount*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Cooldown*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Specials*/
		//DESCRIPTION:  
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Rifle'],
			//['Rifle','Rifle']

//--------------------------------------------------------------------------------------------------------------
private ["_side", "_faction", "_mod", "_u"];

_side = _this;
_faction = "East";
_mod = "RUSSIA_2035";

_u = []; //Defense Classname

//--------------------------------------------------------------------------------------------------------------


_u pushBack [
	/*Enabled*/true,
	/*Name*/'Metis',
	/*Class*/"min_rf_Metis",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'AGS',
	/*Class*/"min_rf_AGS_30",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Kord',
	/*Class*/"min_rf_Kord",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'GMG',
	/*Class*/"min_rf_GMG",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'HMG',
	/*Class*/"min_rf_HMG",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mortar',
	/*Class*/"min_rf_Mortar",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Metis (Desert)',
	/*Class*/"min_rf_Metis_desert",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Metis (Winter)',
	/*Class*/"min_rf_Metis_winter",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'AGS 30 (Desert)',
	/*Class*/"min_rf_ags_30_desert",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'AGS 30 (Winter)',
	/*Class*/"min_rf_ags_30_winter",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Kord (Desert)',
	/*Class*/"min_rf_Kord_desert",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Kord (Winter)',
	/*Class*/"min_rf_Kord_winter",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'GMG (Desert)',
	/*Class*/"min_rf_GMG_desert",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'GMG (Winter)',
	/*Class*/"min_rf_GMG_winter",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'HMG (Desert)',
	/*Class*/"min_rf_HMG_desert",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'HMG (Winter)',
	/*Class*/"min_rf_HMG_winter",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mortar (Desert)',
	/*Class*/"min_rf_Mortar_desert",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mortar (Winter)',
	/*Class*/"min_rf_Mortar_winter",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];



//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Defenses.sqf";