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
_mod = "Tanks";

_u = []; //Defense Classname

//--------------------------------------------------------------------------------------------------------------


_u pushBack [
	/*Enabled*/true,
	/*Name*/'Repair Depot (tan)',
	/*Class*/["Land_RepairDepot_01_tan_F",[["RuinOnDestroyed", "Land_Cargo_Tower_V1_ruins_F"]]],
	/*Price*/5000,
	/*Placement*/[0, 0],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Repair Depot (green)',
	/*Class*/["Land_RepairDepot_01_green_F",[["RuinOnDestroyed", "Land_RepairDepot_01_green_ruins_F"]]],
	/*Price*/5000,
	/*Placement*/[0, 0],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Repair Depot (civ)',
	/*Class*/["Land_RepairDepot_01_civ_F",[["RuinOnDestroyed", "Land_RepairDepot_01_civ_ruins_F"]]],
	/*Price*/5000,
	/*Placement*/[0, 0],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Dragons Teeth New (4x2)',
	/*Class*/"Land_DragonsTeeth_01_4x2_new_F",
	/*Price*/1000,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Dragons Teeth Old (4x2)',
	/*Class*/"Land_DragonsTeeth_01_4x2_old_F",
	/*Price*/1000,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Dragons Teeth New (1x1)',
	/*Class*/"Land_DragonsTeeth_01_1x1_new_F",
	/*Price*/200,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Dragons Teeth Old (1x1)',
	/*Class*/"Land_DragonsTeeth_01_1x1_old_F",
	/*Price*/200,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Hedgehog',
	/*Class*/"Land_ConcreteHedgehog_01_F",
	/*Price*/200,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Concrete Hedgehog Half',
	/*Class*/"Land_ConcreteHedgehog_01_half_F",
	/*Price*/1000,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Concrete Hedgehog Palette',
	/*Class*/"Land_ConcreteHedgehog_01_palette_F",
	/*Price*/1000,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Czech Hedgehog New',
	/*Class*/"Land_CzechHedgehog_01_new_F",
	/*Price*/200,
	/*Placement*/[0, 0],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];


[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Defenses.sqf";