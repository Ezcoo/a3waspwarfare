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
			//[] = no collisions
			//["*"] = block all
			//[["Land_Shed_Small_F", 12], ["Land_BagBunker_Small_F", 10]] = Specific blacklist classnames: Classname, distance
			//[["All", 25]]; - block all within set range - second value is distance
			//[["Factories", 25]]; - block all within set range excluding factories (shed support)

	
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
_mod = "Vanilla";

_u = []; //Defense Classname

//--------------------------------------------------------------------------------------------------------------



_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mil Wall x3',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","mil_wall_3",2]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
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
	/*Name*/'Mil Wall x5',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","mil_wall_5",2]]],
	/*Price*/200,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
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
	/*Name*/'Mil Wall x12',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","mil_wall_12",2]]],
	/*Price*/450,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x4 (Woodland)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_4_woodland",2]]],
	/*Price*/110,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x8 (Woodland)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_8_woodland",2]]],
	/*Price*/220,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x16 (Woodland)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_16_woodland",2]]],
	/*Price*/330,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x32 (Woodland)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_32_woodland",2]]],
	/*Price*/550,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x4 (Desert)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_4_desert",2]]],
	/*Price*/110,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x8 (Desert)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_8_desert",2]]],
	/*Price*/220,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x16 (Desert)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_16_desert",2]]],
	/*Price*/330,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'High H-barrier x32 (Desert)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","high_hbarrier_32_desert",2]]],
	/*Price*/550,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Camp Bravery with Hedgehogs',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","camp_bravery_hedgehogs",0]]],
	/*Price*/1500,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Camp Bravery with Hedgehogs (Desert)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","camp_bravery_hedgehogs_desert",0]]],
	/*Price*/1500,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Wall x3',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","concrete_wall_3",2]]],
	/*Price*/1200,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Wall x5',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","concrete_wall_5",2]]],
	/*Price*/2000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Shed Mil Walled',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","shed_walled",2]]],
	/*Price*/3000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["Factories", 15]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Shed Concrete Walled',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","shed_walled_concrete",2]]],
	/*Price*/6000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ"],
	/*Blacklist*/[["Land_Airport_02_controlTower_F", 20],["Land_Airport_Tower_ruins_F", 20],["Land_Airport_Tower_F", 20]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Fort',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","fort_box",2]]],
	/*Price*/2000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bunker MG',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","bunker_mg_west",2]]],
	/*Price*/6000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bunker GL',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","bunker_gl_west",2]]],
	/*Price*/9000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Lifetower MG',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","lifetower_mg_west",2]]],
	/*Price*/2500,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Lifetower GL',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","lifetower_gl_west",2]]],
	/*Price*/3500,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Lifetower AT',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","lifetower_at_west",2]]],
	/*Price*/8500,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower MG x2',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","tower_mg_west",2]]],
	/*Price*/3500,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower GL x2',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","tower_gl_west",2]]],
	/*Price*/7000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower AT',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","tower_at_west",2]]],
	/*Price*/9000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower Tall MG x2',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","tower_tall_mg_west",1]]],
	/*Price*/6000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 15]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower Tall GL x2',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","tower_tall_gl_west",1]]],
	/*Price*/8000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 15]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Cargo Tower AA x3',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","cargo_tower_aa_west",1]]],
	/*Price*/25000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Bunker',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","bunker_concrete",2]]],
	/*Price*/1500,
	/*Placement*/[0, 5],
	/*Tags*/["Composition"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Bunker (mg x2)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","bunker_concrete_mg_west",2]]],
	/*Price*/5000,
	/*Placement*/[0, 5],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Outpost Alpha',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","outpost_alpha",0]]],
	/*Price*/2000,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 30]],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Basic',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","template_basic",0]]],
	/*Price*/2000,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 50]],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Alpha',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","template_alpha",0]]],
	/*Price*/4000,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 50]],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Alpha Armed (Mg)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","template_alpha_armed_west",0]]],
	/*Price*/10000,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 50]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bravo',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","template_bravo",0]]],
	/*Price*/3000,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 50]],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bravo Armed (Mg)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","template_bravo_armed_west",0]]],
	/*Price*/7000,
	/*Placement*/[0, 5],
	/*Tags*/["Templates"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 50]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Base Bunker 9000 (CRAM/AT/AA/GL)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","base_bunker_9000_west",0]]],
	/*Price*/80000,
	/*Placement*/[0, 10],
	/*Tags*/["Templates"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x3',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_3",2]]],
	/*Price*/1200,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x3 (Green)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_3_green",2]]],
	/*Price*/1200,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x3 Watchtower',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_3_watchtower",2]]],
	/*Price*/1600,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x3 Watchtower (Green)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_3_watchtower_green",2]]],
	/*Price*/1600,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x3 Watchtower x2',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_3_watchtowers",2]]],
	/*Price*/2000,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x3 Watchtower x2 (Green)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_3_watchtowers_green",2]]],
	/*Price*/2000,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x6 Watchtower',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_6_watchtower",2]]],
	/*Price*/2400,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier x6 Watchtower (Green)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","hbarrier_6_watchtower_green",2]]],
	/*Price*/2400,
	/*Placement*/[0, 15],
	/*Tags*/["Composition"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bunker (MG)',
	/*Class*/["Land_BagBunker_Small_F", [["Armed","MG"]]],
	/*Price*/3000,
	/*Placement*/[0, 7],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower (MG)',
	/*Class*/["Land_Cargo_Patrol_V3_F", [["Armed","MG"]]],
	/*Price*/3000,
	/*Placement*/[0, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Cargo Tower (AA)',
	/*Class*/["Land_Cargo_Tower_V1_No1_F", [["Armed","AA"]]],
	/*Price*/15000,
	/*Placement*/[0, 30],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Praetorian Fortified',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","praetorian_fortified_west",2]]],
	/*Price*/30000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/4,
	/*Cooldown*/120,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Spartan Fortified',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","spartan_fortified_west",2]]],
	/*Price*/55000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/2,
	/*Cooldown*/240,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Centurion Fortified',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","centurion_fortified_west",2]]],
	/*Price*/250000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/1,
	/*Cooldown*/300,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Razor Wire',
	/*Class*/"Land_Razorwire_F",
	/*Price*/50,
	/*Placement*/[0, 5],
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
	/*Name*/'Short Sandbag',
	/*Class*/"Land_BagFence_Short_F",
	/*Price*/75,
	/*Placement*/[[0, 5],["CanAutoAlign", 1.7, 0]],
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
	/*Name*/'Long Sandbag',
	/*Class*/"Land_BagFence_Long_F",
	/*Price*/75,
	/*Placement*/[[0, 5],["CanAutoAlign", 3, 0]],
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
	/*Name*/'Round Sandbag',
	/*Class*/"Land_BagFence_Round_F",
	/*Price*/75,
	/*Placement*/[0, 5],
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
	/*Name*/'Wood Wall Low',
	/*Class*/"Land_Shoot_House_Wall_Crouch_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Wood Wall Low (long)',
	/*Class*/"Land_Shoot_House_Wall_Long_Crouch_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 4, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Wood Wall Short',
	/*Class*/"Land_Shoot_House_Wall_Stand_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Wood Wall Short (long)',
	/*Class*/"Land_Shoot_House_Wall_Long_Stand_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 4, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Wood Wall',
	/*Class*/"Land_Shoot_House_Wall_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Wood Wall (long)',
	/*Class*/"Land_Shoot_House_Wall_Long_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 4, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Wood Tunnel',
	/*Class*/"Land_Shoot_House_Tunnel_F",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Tin Wall (4)',
	/*Class*/"Land_TinWall_02_l_4m_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 4, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'High Wall Gate (Mil)',
	/*Class*/"Land_Mil_WallBig_Gate_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 3.8, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'H-Barrier (Block)',
	/*Class*/"Land_HBarrier_1_F",
	/*Price*/10,
	/*Placement*/[[90, 5],["CanAutoAlign", 1.7, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier (Block, Green)',
	/*Class*/"Land_HBarrier_01_line_1_green_F",
	/*Price*/10,
	/*Placement*/[[90, 5],["CanAutoAlign", 1.7, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier (Small) (3 Block)',
	/*Class*/"Land_HBarrier_3_F",
	/*Price*/30,
	/*Placement*/[[0, 5],["CanAutoAlign", 3.1, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier (Small) (5 Block)',
	/*Class*/"Land_HBarrier_5_F",
	/*Price*/50,
	/*Placement*/[[0, 5],["CanAutoAlign", 5.7, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Barrier',
	/*Class*/"Land_CncBarrier_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2.7, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Barrier (strip)',
	/*Class*/"Land_CncBarrier_stripes_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 2.7, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Rampart Mount',
	/*Class*/"Land_Rampart_F",
	/*Price*/200,
	/*Placement*/[0, 7],
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
	/*Name*/'Tin Wall (8)',
	/*Class*/"Land_TinWall_02_l_8m_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 8, 0]],
	/*Tags*/["Walls Light"],
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
	/*Name*/'Bunker (Small)',
	/*Class*/"Land_BagBunker_Small_F",
	/*Price*/250,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Infantry Spawn Pad',
	/*Class*/"Land_MobileLandingPlatform_01_F",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Markers"],
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
	/*Name*/'Pods/Crates Spawn Pad',
	/*Class*/"Land_JumpTarget_F",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Markers"],
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
	/*Name*/'Light Vehicle Spawn Pad',
	/*Class*/"Land_HelipadSquare_F",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Markers"],
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
	/*Name*/'Heavy Vehicle Spawn Pad',
	/*Class*/"Land_HelipadRescue_F",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Markers"],
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
	/*Name*/'Rotary Air Spawn Pad',
	/*Class*/"Land_HelipadCircle_F",
	/*Price*/100,
	/*Placement*/[180, 7],
	/*Tags*/["Markers"],
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
	/*Name*/'Fixed Air Spawn Pad',
	/*Class*/"Land_HelipadCivil_F",
	/*Price*/100,
	/*Placement*/[180, 7],
	/*Tags*/["Markers"],
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
	/*Name*/'Lamp',
	/*Class*/"Land_LampHalogen_F",
	/*Price*/50,
	/*Placement*/[90, 15],
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
	/*Name*/'Flag',
	/*Class*/"Flag_NATO_F",
	/*Price*/50,
	/*Placement*/[90, 15],
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
	/*Name*/'Warning Sign- Mines',
	/*Class*/"Land_Sign_Mines_F",
	/*Price*/5,
	/*Placement*/[90, 7],
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
	/*Name*/'Campfire',
	/*Class*/"FirePlace_burning_F",
	/*Price*/50,
	/*Placement*/[90, 7],
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
	/*Name*/'Camp Chair',
	/*Class*/"Land_CampingChair_V1_F",
	/*Price*/50,
	/*Placement*/[90, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Camp Table',
	/*Class*/"Land_CampingTable_F",
	/*Price*/50,
	/*Placement*/[90, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Latrine',
	/*Class*/"Land_ToiletBox_F",
	/*Price*/50,
	/*Placement*/[90, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tent',
	/*Class*/"Land_TentDome_F",
	/*Price*/50,
	/*Placement*/[90, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Double Portable Light',
	/*Class*/"Land_PortableLight_double_F",
	/*Price*/50,
	/*Placement*/[90, 7],
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
	/*Name*/'Map',
	/*Class*/"MapBoard_altis_F",
	/*Price*/1,
	/*Placement*/[180, 10],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Runway Light (Blue)',
	/*Class*/"Land_runway_edgelight_blue_F",
	/*Price*/1,
	/*Placement*/[0, 5],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'WindSock',
	/*Class*/"Windsock_01_F",
	/*Price*/1,
	/*Placement*/[0, 5],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mk30 HMG',
	/*Class*/"B_HMG_01_High_F",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
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
	/*Name*/'Mk32 GMG',
	/*Class*/"B_GMG_01_high_F",
	/*Price*/3000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
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
	/*Name*/'GMG UAV',
	/*Class*/"B_GMG_01_A_F",
	/*Price*/3000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'HMG UAV',
	/*Class*/"B_HMG_01_A_F",
	/*Price*/3000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Camo net',
	/*Class*/"CamoNet_BLUFOR_F",
	/*Price*/50,
	/*Placement*/[0, 15],
	/*Tags*/["Camo"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Camo net open',
	/*Class*/"CamoNet_BLUFOR_open_F",
	/*Price*/50,
	/*Placement*/[0, 15],
	/*Tags*/["Camo"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Camo net vehicle',
	/*Class*/"CamoNet_BLUFOR_big_F",
	/*Price*/50,
	/*Placement*/[0, 15],
	/*Tags*/["Camo"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower (green)',
	/*Class*/"Land_Cargo_Patrol_V1_F",
	/*Price*/250,
	/*Placement*/[0, 15],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Tower (tan)',
	/*Class*/"Land_Cargo_Patrol_V3_F",
	/*Price*/250,
	/*Placement*/[0, 15],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 12]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Shed (Land)',
	/*Class*/["Land_Shed_Small_F",[["RuinOnDestroyed", "Land_shed_small_ruins_f"]]],
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
	/*Name*/'Shed (Roof)',
	/*Class*/["Land_Shed_Big_F",[["RuinOnDestroyed", "Land_shed_big_ruins_f"]]],
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
	/*Name*/'Tent Hangar',
	/*Class*/["Land_TentHangar_V1_F",[["RuinOnDestroyed", "Land_TentHangar_V1_ruins_F"], ["DMG_Reduce", 5]]],
	/*Price*/2500,
	/*Placement*/[0, 150],
	/*Tags*/["Sheds"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["Land_Airport_01_hangar_F", 15], ["Land_SCF_01_shed_F", 15], ["Land_SM_01_shelter_narrow_F", 15], ["Land_SM_01_shelter_wide_F", 15], ["Land_Shed_Big_F", 15], ["Land_TentHangar_V1_F", 150], ["Land_Dome_Small_F", 30], ["Land_Dome_Big_F", 40]],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 3]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Ramp (med)',
	/*Class*/"Land_RampConcrete_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Ramp (High)',
	/*Class*/"Land_RampConcreteHigh_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Block',
	/*Class*/"BlockConcrete_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier (Big)',
	/*Class*/"Land_HBarrier_Big_F",
	/*Price*/500,
	/*Placement*/[[0, 5],["CanAutoAlign", 8, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Wall (4)',
	/*Class*/"Land_HBarrierWall4_F",
	/*Price*/400,
	/*Placement*/[[0, 5],["CanAutoAlign", 5.2, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Wall (6)',
	/*Class*/"Land_HBarrierWall6_F",
	/*Price*/600,
	/*Placement*/[[180, 7],["CanAutoAlign", 8.1, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Wall (Corner)',
	/*Class*/"Land_HBarrierWall_corner_F",
	/*Price*/400,
	/*Placement*/[90, 7],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Coridor',
	/*Class*/"Land_HBarrierWall_corridor_F",
	/*Price*/200,
	/*Placement*/[90, 7],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Barrier (med)',
	/*Class*/"Land_CncBarrierMedium_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 1.8, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Barrier (med 4)',
	/*Class*/"Land_CncBarrierMedium4_F",
	/*Price*/400,
	/*Placement*/[[0, 7],["CanAutoAlign", 7.5, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Shelter',
	/*Class*/"Land_CncShelter_F",
	/*Price*/200,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Wall (sm4)',
	/*Class*/"Land_Concrete_SmallWall_4m_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 4, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Wall (sm8)',
	/*Class*/"Land_Concrete_SmallWall_8m_F",
	/*Price*/200,
	/*Placement*/[[0, 7],["CanAutoAlign", 8, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Panel',
	/*Class*/"Land_Wall_IndCnc_2deco_F",
	/*Price*/200,
	/*Placement*/[[0, 7],["CanAutoAlign", 3, 0]],
	/*Tags*/["Walls Heavy"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.25]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bunker Large',
	/*Class*/"Land_BagBunker_Large_F",
	/*Price*/1000,
	/*Placement*/[90, 5],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Bunker',
	/*Class*/"Land_BagBunker_Tower_F",
	/*Price*/500,
	/*Placement*/[90, 5],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier Tower',
	/*Class*/"Land_HBarrierTower_F",
	/*Price*/500,
	/*Placement*/[0, 7],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Cargo Tower (big)',
	/*Class*/["Land_Cargo_Tower_V1_F",[["RuinOnDestroyed", "Land_Cargo_Tower_V1_ruins_F"]]],
	/*Price*/4000,
	/*Placement*/[0, 30],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[["All", 20]],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'AA Defense',
	/*Class*/"B_static_AA_F",
	/*Price*/2000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'H-Barrier (Big)',
	/*Class*/"Land_HBarrierBig_F",
	/*Price*/500,
	/*Placement*/[[0, 7],["CanAutoAlign", 8, 0]],
	/*Tags*/["Walls Medium"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Concrete Wall (1)',
	/*Class*/"Land_CncWall1_F",
	/*Price*/100,
	/*Placement*/[[0, 7],["CanAutoAlign", 1.4, 0]],
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
	/*Name*/'Concrete Wall (4)',
	/*Class*/"Land_CncWall4_F",
	/*Price*/400,
	/*Placement*/[[0, 7],["CanAutoAlign", 5.1, 0]],
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
	/*Name*/'ConcreteWall',
	/*Class*/"Land_Mil_ConcreteWall_F",
	/*Price*/400,
	/*Placement*/[[0, 7],["CanAutoAlign", 4, 0]],
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
	/*Name*/'Bridge',
	/*Class*/"Land_Canal_Dutch_01_bridge_F",
	/*Price*/2000,
	/*Placement*/[0, 7],
	/*Tags*/["Misc"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mortar',
	/*Class*/"B_Mortar_01_F",
	/*Price*/20000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'AT Defense',
	/*Class*/"B_static_AT_F",
	/*Price*/7000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Dome (Small)',
	/*Class*/"Land_Dome_Small_F",
	/*Price*/10000,
	/*Placement*/[0, 32],
	/*Tags*/["Sheds"],
	/*Location*/["HQ"],
	/*Blacklist*/[["Land_Airport_01_hangar_F", 15], ["Land_SCF_01_shed_F", 15], ["Land_SM_01_shelter_narrow_F", 15], ["Land_SM_01_shelter_wide_F", 15], ["Land_Shed_Big_F", 15], ["Land_TentHangar_V1_F", 30], ["Land_Dome_Small_F", 30], ["Land_Dome_Big_F", 40]],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Multiplier", 4]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Dome (Big)',
	/*Class*/"Land_Dome_Big_F",
	/*Price*/20000,
	/*Placement*/[0, 50],
	/*Tags*/["Sheds"],
	/*Location*/["HQ"],
	/*Blacklist*/[["Land_Airport_01_hangar_F", 15], ["Land_SCF_01_shed_F", 15], ["Land_SM_01_shelter_narrow_F", 15], ["Land_SM_01_shelter_wide_F", 15], ["Land_Shed_Big_F", 15], ["Land_TentHangar_V1_F", 30], ["Land_Dome_Small_F", 30], ["Land_Dome_Big_F", 40]],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Multiplier", 4]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'FOB',
	/*Class*/["CampEast",[["RuinOnDestroyed", ""]]],
	/*Price*/15000,
	/*Placement*/[180, 15],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["FOB"],["DMG_Alternative"], ["DMG_Reduce", 1.5],["Condition", {_cpt = if (isNil {CTI_P_SideLogic getVariable "cti_fobs"}) then {1000} else {count (CTI_P_SideLogic getVariable "cti_fobs")}}]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'LARGE FOB',
	/*Class*/["Land_Cargo_House_V3_F",[["RuinOnDestroyed", "Land_Cargo_House_V3_ruins_F"]]],
	/*Price*/40000,
	/*Placement*/[180, 15],
	/*Tags*/["Fortification"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["LARGE_FOB"],["DMG_Alternative"], ["DMG_Reduce", 1.5],["Condition", {_cpt = if (isNil {CTI_P_SideLogic getVariable "cti_large_fobs"}) then {1000} else {count (CTI_P_SideLogic getVariable "cti_large_fobs")}}]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Cargo Container Military (used in comp)',
	/*Class*/"Misc_Cargo1B_military",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Light"],
	/*Location*/[],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Fence Corrugated Plate (used in comp)',
	/*Class*/"Fence_corrugated_plate",
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Walls Light"],
	/*Location*/[],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Bulldozer Terrain (10m)',
	/*Class*/["Land_JumpTarget_F", [["Bulldozer","terrain",10]]],
	/*Price*/100,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
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
	/*Name*/'Bulldozer Terrain (25m)',
	/*Class*/["ProtectionZone_F", [["Bulldozer","terrain",25]]],
	/*Price*/500,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
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
	/*Name*/'Bulldozer Terrain (100m)',
	/*Class*/["ProtectionZone_F", [["Bulldozer","terrain",100]]],
	/*Price*/1000,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
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
	/*Name*/'Bulldozer Buildings (10m)',
	/*Class*/["Land_JumpTarget_F", [["Bulldozer","buildings",10]]],
	/*Price*/500,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
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
	/*Name*/'Bulldozer Buildings (25m)',
	/*Class*/["ProtectionZone_F", [["Bulldozer","buildings",25]]],
	/*Price*/2000,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
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
	/*Name*/'Bulldozer Buildings (100m)',
	/*Class*/["ProtectionZone_F", [["Bulldozer","buildings",100]]],
	/*Price*/5000,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
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
	/*Name*/'Demolition (5m)',
	/*Class*/["Land_JumpTarget_F", [["Demolition",5]]],
	/*Price*/500,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
	/*Location*/["HQ", "RepairTruck","DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Demolition (25m)',
	/*Class*/["Land_JumpTarget_F", [["Demolition",25]]],
	/*Price*/1000,
	/*Placement*/[0, 7],
	/*Tags*/["Bulldozer"],
	/*Location*/["HQ", "RepairTruck","DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Pier (Naval Spawn L/R)',
	/*Class*/"Land_nav_pier_m_F",
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
	/*Name*/'Pier (Wooden)',
	/*Class*/"Land_Pier_small_F",
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
	/*Name*/'Pier (Concrete)',
	/*Class*/"Land_Pier_F",
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
	/*Name*/'Pier Box',
	/*Class*/"Land_Pier_Box_F",
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
	/*Name*/'Rock Wavebreaker',
	/*Class*/"Land_Sea_Wall_F",
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
	/*Name*/'Darter Patrol',
	/*Class*/"B_UAV_01_F",
	/*Price*/4000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Defenses.sqf";
