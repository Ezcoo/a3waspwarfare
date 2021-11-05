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
_faction = "West";
_mod = "Malden";

_u = []; //Defense Classname

//--------------------------------------------------------------------------------------------------------------


_u pushBack [
	/*Enabled*/true,
	/*Name*/'Barricade 4m',
	/*Class*/"Land_Barricade_01_4m_F",
	/*Price*/200,
	/*Placement*/[[0, 7],["CanAutoAlign", 4, 0]],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Barricade 10m',
	/*Class*/"Land_Barricade_01_10m_F",
	/*Price*/400,
	/*Placement*/[[0, 7],["CanAutoAlign", 10, 0]],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'SandbagBarricade',
	/*Class*/"Land_SandbagBarricade_01_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2.5, 0]],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'SandbagBarricade half',
	/*Class*/"Land_SandbagBarricade_01_half_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2.5, 0]],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'SandbagBarricade hole',
	/*Class*/"Land_SandbagBarricade_01_hole_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2.5, 0]],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Czech Hedgehog',
	/*Class*/"Land_CzechHedgehog_01_F",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bunker Blocks',
	/*Class*/"Land_Bunker_01_blocks_1_F",
	/*Price*/150,
	/*Placement*/[[0, 7],["CanAutoAlign", 1.7, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bunker Blocks x3',
	/*Class*/"Land_Bunker_01_blocks_3_F",
	/*Price*/300,
	/*Placement*/[[0, 7],["CanAutoAlign", 5.1, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Bunker Small',
	/*Class*/"Land_Bunker_01_small_F",
	/*Price*/500,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Fuel Station Roof',
	/*Class*/"Land_FuelStation_01_roof_malevil_F",
	/*Price*/2000,
	/*Placement*/[0, 7],
	/*Tags*/["Sheds"],
	/*Location*/["HQ"],
	/*Blacklist*/[["Factories", 25]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Bunker Tall',
	/*Class*/"Land_Bunker_01_tall_F",
	/*Price*/1000,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Bunker Big',
	/*Class*/"Land_Bunker_01_big_F",
	/*Price*/2000,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Bunker HQ',
	/*Class*/"Land_Bunker_01_HQ_F",
	/*Price*/2000,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.1]]
];


[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Defenses.sqf";