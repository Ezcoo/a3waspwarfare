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
		//EXAMPLES: 'CSAT Infantry (Pacific)'

	/*ClassName*/
		//DESCRIPTION:  Unit Class Name
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'O_T_Soldier_A_F'

	/*MenuName*/
		//DESCRIPTION:  Name shown in menus
		//TYPE: Array or String
		//DEFAULT: ''
		//EXAMPLES: 
			//''; //--- Name leaving blank will use name from config
			//['%1 CustomTextHere']; //--- Default config name + custom
			//'Friendly name'; //--- Fully custom name
			//(format ['Friendly name - Range %1 m',CTI_RESPAWN_MOBILE_RANGE]); //--- Name that will have spawn range based on current upgrade

	/*Location*/
		//DESCRIPTION:  Which factory unit will be available for purchase
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//[CTI_BARRACKS]
			//[CTI_BARRACKS,CTI_DEPOT] //unit available at barracks and depot at default upgrade level
			//[CTI_BARRACKS,[CTI_DEPOT, "default", 5]] //barracks normal, from depot require default factory upgrade 5 (different from default unit upgrade)
			//[CTI_BARRACKS,[CTI_DEPOT,"logistics"]] //barracks normal, from depot require forward logistics using same lvl as default
			//[CTI_BARRACKS,[CTI_DEPOT,"logistics",3]] //barracks normal, from depot require forward logistics 3

	/*UpgradeLevel*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Price*/
		//DESCRIPTION:  Price of the unit
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 500

	/*BuildTime*/
		//DESCRIPTION:  Time it will take to build in seconds 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 

	/*Distance*/
		//DESCRIPTION:  Distance unit will spawn from factory in meters
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 

	/*Camo*/
		//DESCRIPTION:  Filter by Camo
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Tropic'],
			//['Tropic','Tropic'],

	/*Type*/
		//DESCRIPTION:  
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Rifle'],
			//['Rifle','Rifle'],

	/*Ammmo*/
		//DESCRIPTION:  
		//TYPE: Boolean
		//DEFAULT: true
		//EXAMPLES: true/false

	/*Script*/
		//DESCRIPTION:  
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 
			//''; //-- Special / Script blank will do nothing special 
			//'service-medic'; //---  Special / Script service-medic will mark vehicles as medical respawn truck

	/*Picture*/
		//DESCRIPTION:  
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 
			//''; //--- Picture will be used from config
			//'\A3\EditorPreviews_F\Data\CfgVehicles\Land_Pod_Heli_Transport_04_medevac_F.jpg'; //--- Custom picture if config doesnâ€™t have one

//--------------------------------------------------------------------------------------------------------------

_side = _this;
_faction = 'Resistance';
_mod = 'CUP';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Bodyguard_M4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier_AA',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/320,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_AAV_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/7000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier_MG',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/140,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier_M4A3',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/110,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier_AT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier_GL_M16A2',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/130,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier_MG_PKM',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/140,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Sniper_KSVK',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/350,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Soldier_TL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/160,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'UP_I_PMC_Winter_Medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier_MG',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/140,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier_MG_PKM',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/140,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier_AT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier_M4A3',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/110,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier_GL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/130,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Sniper_KSVK',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/320,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier_AA',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/320,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_PMC_Winter_Soldier_TL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];


_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Soldier_AKS74',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Soldier_AA',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Soldier_AR',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Soldier_AT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Saboteur',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/110,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Soldier_GL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Soldier_MG',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_GUE_Commander',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_AA',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_AA_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_MAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_LAT_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_HAT_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_HAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Engineer_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_GL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_GL_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Medic_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_MMG',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_MMG_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_RoyalMarksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Sniper_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Officer_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_SL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_SL_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RACS_Soldier_MAT_wdl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_AA',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_AR',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_AT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_AK_47S',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_HAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Mechanic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_GL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Demo',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/110,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Guerilla_Medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_MG',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Guerilla_Enfield',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/110,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_TL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Commander',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_AA',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_AR',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_AT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_TK_GUE_Soldier_LAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_LAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_HAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_GL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_MG',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Sniper_KSVK',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Soldier_SL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_Officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_SpecOps',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_TK_SpecOps_TL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_C_Volha_Blue_TKCIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_C_Volha_Gray_TKCIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_C_Volha_Limo_TKCIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_C_Lada_Red_CIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_C_Lada_GreenTK_CIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_C_Lada_TK2_CIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_C_Lada_White_CIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_LADA_LM_CIV',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_UAZ_MG_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Hilux_armored_AGS30_TK',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_UAZ_AGS30_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_LR_MG_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_BTR40_MG_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_LR_SPG9_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Hilux_armored_SPG9_TK',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_UAZ_SPG9_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BTR80A_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/9000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BTR80_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4400,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_BRDM2_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BRDM2_TK_Gue',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_M113_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Hilux_armored_BMP1_TK',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/8500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP1_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP1P_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/12000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP2_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/14000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_T34_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/6000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_T55_TK',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/13000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_T72_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/25000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_M60A3_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/18000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Tan'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_M60A3_TTS_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/18500,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Tan'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_T72_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/25000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Tan'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_Ural_ZU23_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP2_ZU_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/6000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_ZSU23_TK',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/14000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Hilux_armored_igla_TK',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/10500,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Olive'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Datsun_AA_Random',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/9000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Olive'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Datsun_PK',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Datsun_PK_Random',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LR_MG_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BTR40_MG_TKG',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_M113_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_MTLB_pk_SYNDIKAT',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_MTLB_pk_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BRDM2_HQ_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BRDM2_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BRDM2_ATGM_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/7000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BRDM2_ATGM_TK_Gue',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/7000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BMP1_TK_GUE',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_BMP2_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/14000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_T34_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/6000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_T55_TK_GUE',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/13000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_T72_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/25000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Hilux_armored_zu23_TK',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/6500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Ural_ZU23_NAPA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_ZSU23_Afghan_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_ZSU23_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/14000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_M163_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/12500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Mi24_D_Dynamic_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_M163_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/12500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Mi24_D_Dynamic_ION',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Mi24_D_Dynamic_UN',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_AH1Z_Dynamic_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/35000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LCVP_RACS',
	/*MenuName*/'LCVP (Infantry Transport / Medic)',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/1,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/5,
	/*Camo*/['Grey'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LCVP_VIV_RACS',
	/*MenuName*/'LCVP VIV (Vehicle Transport / Medic)',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/1,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/5,
	/*Camo*/['Grey'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LCVP_VIV_RACS',
	/*MenuName*/'LCVP VIV (Vehicle Transport / Medic)',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/1,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/5,
	/*Camo*/['Grey'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Frigate_AAF',
	/*MenuName*/['%1 (Respawn)'],
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/3,
	/*Price*/180000,
	/*BuildTime*/30,
	/*Distance*/80,
	/*Camo*/['Attack Ship'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Frigate_RACS',
	/*MenuName*/['%1 (Respawn)'],
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/3,
	/*Price*/180000,
	/*BuildTime*/30,
	/*Distance*/80,
	/*Camo*/['Attack Ship'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_FENNEK_GMG_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/6500,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_FENNEK_HMG_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4500,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_SUV_Armored_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_MATV_GMG_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/6000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_MATV_HMG_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_4WD_LMG_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1400,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_4WD_AT_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LSV_02_AT_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/13000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LSV_02_Minigun_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/["Black ION"],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_SPG9_TK_GUE',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_ZU23_TK_GUE',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_DSHKM_TK_GUE',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_AGS_TK_GUE',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_M2StaticMG_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/20,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_LR_SF_HMG_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1500,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_LR_SF_GMG_AAF',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[""],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Frigate_AAF',
	/*MenuName*/[],
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/180000,
	/*BuildTime*/30,
	/*Distance*/80,
	/*Camo*/[],
	/*Type*/['Attack Ship'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Frigate_RACS',
	/*MenuName*/[],
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/180000,
	/*BuildTime*/30,
	/*Distance*/80,
	/*Camo*/[],
	/*Type*/['Attack Ship'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LAV25M240_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/13000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_LAV25_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/12000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RG31_M2_W_GC_ION',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1800,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Olive'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_Hilux_armored_DSHKM_TK',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Olive'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';