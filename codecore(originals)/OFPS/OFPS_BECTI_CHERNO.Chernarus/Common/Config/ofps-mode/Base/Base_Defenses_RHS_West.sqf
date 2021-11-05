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
_mod = "RHS";

_u = []; //Defense Classname

//--------------------------------------------------------------------------------------------------------------


_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mk.19 (M3)',
	/*Class*/"RHS_MK19_TriPod_D",
	/*Price*/2000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'M2HB (M3)',
	/*Class*/"RHS_M2StaticMG_MiniTriPod_D",
	/*Price*/1000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'FIM-92F (DMS)',
	/*Class*/"RHS_Stinger_AA_pod_D",
	/*Price*/4000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/1,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Zu-23-2',
	/*Class*/"RHS_ZU23_MSV",
	/*Price*/5000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
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
	/*Name*/'M41A4 TOW',
	/*Class*/"RHS_TOW_TriPod_D",
	/*Price*/4000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'2A18M (D-30A) AT',
	/*Class*/"rhs_d30_at_msv",
	/*Price*/6000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'2B14-1 Podnos',
	/*Class*/"rhs_2b14_82mm_msv",
	/*Price*/20000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/["*"],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];




[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Defenses.sqf";