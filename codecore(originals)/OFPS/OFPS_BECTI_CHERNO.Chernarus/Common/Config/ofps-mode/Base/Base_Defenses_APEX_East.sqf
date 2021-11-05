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
_mod = "Apex";

_u = []; //Defense Classname

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'BagFence (short)',
	/*Class*/"Land_BagFence_01_short_green_F",
	/*Price*/50,
	/*Placement*/[[0, 7],["CanAutoAlign", 1.8, 0]],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'BagFence (long)',
	/*Class*/"Land_BagFence_01_long_green_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 3.4, 0]],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'BagFence (end)',
	/*Class*/"Land_BagFence_01_end_green_F",
	/*Price*/20,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'BagFence (corner)',
	/*Class*/"Land_BagFence_01_corner_green_F",
	/*Price*/50,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'BagFence (round)',
	/*Class*/"Land_BagFence_01_round_green_F",
	/*Price*/50,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Light"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Green (1)',
	/*Class*/"Land_HBarrier_01_line_1_green_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 1.1, 0]],
	/*Tags*/["Walls Medium"],
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
	/*Name*/'H-Barrier Green (3)',
	/*Class*/"Land_HBarrier_01_line_3_green_F",
	/*Price*/300,
	/*Placement*/[[0, 7],["CanAutoAlign", 3.3, 0]],
	/*Tags*/["Walls Medium"],
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
	/*Name*/'H-Barrier Green (5)',
	/*Class*/"Land_HBarrier_01_line_5_green_F",
	/*Price*/500,
	/*Placement*/[[0, 7],["CanAutoAlign", 5.8, 0]],
	/*Tags*/["Walls Medium"],
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
	/*Name*/'Bunker (Small) Green',
	/*Class*/"Land_BagBunker_01_small_green_F",
	/*Price*/250,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.3]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'IR Cover Small',
	/*Class*/"Land_IRMaskingCover_02_F",
	/*Price*/150,
	/*Placement*/[0, 7],
	/*Tags*/["Camo"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'IR Cover Large',
	/*Class*/"Land_IRMaskingCover_01_F",
	/*Price*/150,
	/*Placement*/[0, 7],
	/*Tags*/["Camo"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Wall Green (4)',
	/*Class*/"Land_HBarrier_01_wall_4_green_F",
	/*Price*/400,
	/*Placement*/[[0, 7],["CanAutoAlign", 5.2, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Wall Green (6)',
	/*Class*/"Land_HBarrier_01_wall_6_green_F",
	/*Price*/600,
	/*Placement*/[[0, 7],["CanAutoAlign", 8.1, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Wall Green (corner)',
	/*Class*/"Land_HBarrier_01_wall_corner_green_F",
	/*Price*/400,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Wall Green (coridor)',
	/*Class*/"Land_HBarrier_01_wall_corridor_green_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bunker Large (green)',
	/*Class*/"Land_BagBunker_01_large_green_F",
	/*Price*/1000,
	/*Placement*/[90, 5],
	/*Tags*/["Fortification"],
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
	/*Name*/'H-Barrier Bunker (green)',
	/*Class*/"Land_HBarrier_01_tower_green_F",
	/*Price*/500,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Tower (green)',
	/*Class*/"Land_HBarrier_01_big_tower_green_F",
	/*Price*/500,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Cargo Tower (big) Jungle',
	/*Class*/["Land_Cargo_Tower_V4_F",[["RuinOnDestroyed", "Land_cargo_tower_v4_ruins_f"]]],
	/*Price*/4000,
	/*Placement*/[0, 30],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 3]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Air Tower',
	/*Class*/"Land_Airport_01_controlTower_F",
	/*Price*/1000,
	/*Placement*/[0, 30],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Big Green (4)',
	/*Class*/"Land_HBarrier_01_big_4_green_F",
	/*Price*/400,
	/*Placement*/[[0, 7],["CanAutoAlign", 8, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Pillbox Wall (3)',
	/*Class*/"Land_PillboxWall_01_3m_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 3, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Pillbox Wall (6)',
	/*Class*/"Land_PillboxWall_01_6m_F",
	/*Price*/200,
	/*Placement*/[[0, 7],["CanAutoAlign", 6, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Pillbox Wall Round (3)',
	/*Class*/"Land_PillboxWall_01_3m_round_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 3, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Pillbox Wall Round (6)',
	/*Class*/"Land_PillboxWall_01_6m_round_F",
	/*Price*/200,
	/*Placement*/[[0, 7],["CanAutoAlign", 6, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Pillbox Rectangle',
	/*Class*/"Land_PillboxBunker_01_rectangle_F",
	/*Price*/400,
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
	/*Name*/'Pillbox Hex',
	/*Class*/"Land_PillboxBunker_01_hex_F",
	/*Price*/500,
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
	/*Name*/'Pillbox Large',
	/*Class*/"Land_PillboxBunker_01_big_F",
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
	/*Name*/'Shed Mine (Land)',
	/*Class*/["Land_SM_01_shelter_narrow_F",[["RuinOnDestroyed", "Land_shed_small_ruins_f"]]],
	/*Price*/1500,
	/*Placement*/[90, 15],
	/*Tags*/["Sheds"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["Land_Airport_01_hangar_F", 15], ["Land_SCF_01_shed_F", 15], ["Land_SM_01_shelter_narrow_F", 15], ["Land_SM_01_shelter_wide_F", 15], ["Land_Shed_Big_F", 15], ["Land_TentHangar_V1_F", 30], ["Land_Dome_Small_F", 30], ["Land_Dome_Big_F", 40]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Multiplier", 3]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Shed Mine (Roof)',
	/*Class*/["Land_SM_01_shelter_wide_F",[["RuinOnDestroyed", "Land_Shed_Big_ruins_f"]]],
	/*Price*/2000,
	/*Placement*/[0, 15],
	/*Tags*/["Sheds"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["Land_Airport_01_hangar_F", 15], ["Land_SCF_01_shed_F", 15], ["Land_SM_01_shelter_narrow_F", 15], ["Land_SM_01_shelter_wide_F", 15], ["Land_Shed_Big_F", 15], ["Land_TentHangar_V1_F", 30], ["Land_Dome_Small_F", 30], ["Land_Dome_Big_F", 40]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Multiplier", 3]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Shed Large',
	/*Class*/"Land_SCF_01_shed_F",
	/*Price*/8000,
	/*Placement*/[0, 15],
	/*Tags*/["Sheds"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["Land_Airport_01_hangar_F", 15], ["Land_SCF_01_shed_F", 15], ["Land_SM_01_shelter_narrow_F", 15], ["Land_SM_01_shelter_wide_F", 15], ["Land_Shed_Big_F", 15], ["Land_TentHangar_V1_F", 30], ["Land_Dome_Small_F", 30], ["Land_Dome_Big_F", 40]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.1]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Hangar Large',
	/*Class*/"Land_Airport_01_hangar_F",
	/*Price*/8000,
	/*Placement*/[0, 15],
	/*Tags*/["Sheds"],
	/*Location*/["HQ"],
	/*Blacklist*/[["Land_Airport_01_hangar_F", 15], ["Land_SCF_01_shed_F", 15], ["Land_SM_01_shelter_narrow_F", 15], ["Land_SM_01_shelter_wide_F", 15], ["Land_Shed_Big_F", 15], ["Land_TentHangar_V1_F", 30], ["Land_Dome_Small_F", 30], ["Land_Dome_Big_F", 40]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Multiplier", 3]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Shed Mine Concrete Walled',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","shed_mine_walled_concrete",2]]],
	/*Price*/5000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ"],
	/*Blacklist*/[["Factories", 15]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Shed Large Concrete Walled',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","shed_large_walled_concrete",2]]],
	/*Price*/10000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ"],
	/*Blacklist*/[["Factories", 15]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Totem (Long Face)',
	/*Class*/"Land_PalmTotem_01_F",
	/*Price*/5,
	/*Placement*/[0, 5],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/false,
	/*Name*/'Totem (Short Face)',
	/*Class*/"Land_PalmTotem_02_F",
	/*Price*/5,
	/*Placement*/[0, 5],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/false,
	/*Name*/'Totem (Plain)',
	/*Class*/"Land_PalmTotem_03_F",
	/*Price*/5,
	/*Placement*/[0, 5],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Port Short (Spawn Piers)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","port_short",0]]],
	/*Price*/5000,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Port Long (Spawn Piers)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","port_long",0]]],
	/*Price*/5000,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wood Pier (x3)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","pier_wood_3",0]]],
	/*Price*/300,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wood Pier (x5)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","pier_wood_5",0]]],
	/*Price*/300,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wood Pier Ramp (x5)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","pier_wood_basic",0]]],
	/*Price*/400,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier Low (x3)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","pier_concrete_low_3",0]]],
	/*Price*/300,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier Low (x5)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","pier_concrete_low_5",0]]],
	/*Price*/500,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier (x3) (Spawn Piers)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","pier_concrete_3",0]]],
	/*Price*/300,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier (x5) (Spawn Piers)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","pier_concrete_5",0]]],
	/*Price*/500,
	/*Placement*/[0, 5],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier (4 m, Ladders)',
	/*Class*/"Land_PierConcrete_01_4m_ladders_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier (16 m)',
	/*Class*/"Land_PierConcrete_01_16m_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier (Bend)',
	/*Class*/"Land_PierConcrete_01_30deg_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier (End)',
	/*Class*/"Land_PierConcrete_01_end_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Pier (Steps)',
	/*Class*/"Land_PierConcrete_01_steps_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wooden Pier (10 m, No Rails)',
	/*Class*/"Land_PierWooden_01_10m_noRails_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wooden Pier (16 m)',
	/*Class*/"Land_PierWooden_01_16m_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wooden Pier (End, Dock)',
	/*Class*/"Land_PierWooden_01_dock_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wooden Pier (End, Hut)',
	/*Class*/"Land_PierWooden_01_hut_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'	Wooden Pier (End, Ladder)',
	/*Class*/"Land_PierWooden_01_ladder_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Wooden Pier (End, Platform)',
	/*Class*/"Land_PierWooden_01_platform_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Old Wooden Pier',
	/*Class*/"Land_PierWooden_02_16m_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Old Wooden Pier (Turn)',
	/*Class*/"Land_PierWooden_02_30deg_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Old Wooden Pier (End, Barrel)',
	/*Class*/"Land_PierWooden_02_barrel_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Old Wooden Pier (End, Hut)',
	/*Class*/"Land_PierWooden_02_hut_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Old Wooden Pier (End, Ladder)',
	/*Class*/"Land_PierWooden_02_ladder_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Small Wooden Pier',
	/*Class*/"Land_PierWooden_03_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Naval"],
	/*Location*/["HQ","RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["Naval"],["DMG_Explosion", 0.2]]
];

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Defenses.sqf";