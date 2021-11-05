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
_mod = 'OFPS';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_I_soldier_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_AA_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/4000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_AR_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_AT_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/7000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_LAT_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_GL_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_M_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_medic_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_TL_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'OFPS_I_Soldier_SL_U',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/["Urban"],
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
	/*ClassName*/'AAF_D_Soldier_F',
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
	/*ClassName*/'AAF_D_Special_AA_F',
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
	/*ClassName*/'AAF_D_Special_AR_F',
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
	/*ClassName*/'AAF_D_Special_AT_F',
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
	/*ClassName*/'AAF_D_Soldier_crew_F',
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
	/*ClassName*/'AAF_D_Soldier_LAT_F',
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
	/*ClassName*/'AAF_D_Soldier_engineer_F',
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
	/*ClassName*/'AAF_D_Special_exp_F',
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
	/*ClassName*/'AAF_D_Special_GL_F',
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
	/*ClassName*/'AAF_D_Special_Medic_F',
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
	/*ClassName*/'AAF_D_Soldier_AR_F',
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
	/*ClassName*/'AAF_D_Soldier_pilot_F',
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
	/*ClassName*/'AAF_D_Sniper_F',
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
	/*ClassName*/'AAF_D_Special_TL_F',
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
	/*ClassName*/'AAF_D_Special_SL_F',
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
	/*ClassName*/'OFPS_GORGON_G_SEMIARID',
	/*MenuName*/'AFV-4 Gorgon (Semi-arid)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Semi-arid'],
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
	/*ClassName*/'OFPS_GORGON_G_ARID',
	/*MenuName*/'AFV-4 Gorgon (Arid)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Arid'],
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
	/*ClassName*/'OFPS_GORGON_G_LUSH',
	/*MenuName*/'AFV-4 Gorgon (Lush)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Lush'],
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
	/*ClassName*/'RyanZombieboss15',
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
	/*ClassName*/'RyanZombieB_Soldier_02_f',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/300,
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
	/*ClassName*/'RyanZombieB_Soldier_02_fmedium',
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
	/*ClassName*/'RyanZombieB_Soldier_02_fwalker',
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
	/*ClassName*/'xmas_santa_ind',
	/*MenuName*/'Father Christmas',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/5000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Holiday'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];


//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';