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
_faction = 'East';
_mod = 'Vanilla';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_SupplyCrate_F',
	/*MenuName*/['Empty Supply Crate'],
	/*Location*/[CTI_AMMO,[CTI_DEPOT,"logistics"],[CTI_FOB,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/10,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CRATE'],
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
	/*ClassName*/'O_Soldier_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_officer_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_lite_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_GL_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/80,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_AR_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_SL_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_TL_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_soldier_M_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_LAT_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_medic_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_soldier_repair_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_soldier_exp_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_helipilot_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_A_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_AT_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/7000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_AA_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/5,
	/*Price*/4000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_engineer_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_crew_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Pilot_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_helicrew_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_soldier_PG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/60,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_soldier_UAV_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/2100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Survivor_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_unarmed_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/10,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_AAR_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_AAT_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*BuildTime*/6,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Soldier_AAA_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_support_MG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_support_GMG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_support_Mort_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_support_AMG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_support_AMort_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_G_Soldier_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_lite_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_SL_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_TL_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_AR_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_medic_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/575,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_engineer_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_exp_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_GL_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_M_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_LAT_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_A_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_officer_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/450,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Soldier_unarmed_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_G_Survivor_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Green'],
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
	/*ClassName*/'O_soldierU_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_AR_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_AAR_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_LAT_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_AT_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/7000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_AAT_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_AA_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/4000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_AAA_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_TL_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_SoldierU_SL_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_medic_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_repair_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_exp_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_engineer_U_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_M_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_soldierU_A_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_SoldierU_GL_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/80,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_SoldierU_unarmed_F',
	/*MenuName*/['%1 (Urban)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/350,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Urban'],
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
	/*ClassName*/'O_diver_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Black'],
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
	/*ClassName*/'O_diver_TL_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Black'],
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
	/*ClassName*/'O_diver_exp_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/900,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Black'],
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
	/*ClassName*/'O_spotter_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_sniper_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/2200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_recon_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_recon_M_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/900,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_recon_LAT_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_recon_medic_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/900,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_recon_exp_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/900,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_recon_JTAC_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_recon_TL_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_ghillie_lsh_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/2500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_ghillie_sard_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/2500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_ghillie_ard_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/2500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Hex'],
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
	/*ClassName*/'O_Boat_Transport_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/500,
	/*BuildTime*/30,
	/*Distance*/3,
	/*Camo*/['Black'],
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
	/*ClassName*/'O_SDV_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/3,
	/*Camo*/['Black'],
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
	/*ClassName*/'O_T_Boat_Armed_01_hmg_F',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/3,
	/*Camo*/['Black'],
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
	/*ClassName*/'Land_Pod_Heli_Transport_04_medevac_F',
	/*MenuName*/'Respawn Pod',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/5000,
	/*BuildTime*/5,
	/*Distance*/1,
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
	/*ClassName*/'Land_Pod_Heli_Transport_04_covered_F',
	/*MenuName*/'Covered Inf Pod',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/1,
	/*Camo*/['Grey'],
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
	/*ClassName*/'Land_Pod_Heli_Transport_04_bench_F',
	/*MenuName*/'Inf Bench Pod',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/1,
	/*Camo*/['Grey'],
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
	/*ClassName*/'O_UAV_02_dynamicLoadout_F',
	/*MenuName*/'K40 Ababil-3 (6x ATGM)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/24000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['UAV'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Plane_CAS_02_dynamicLoadout_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/80000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Ground Attack Aircraft'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_Plane_CAS_02_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/80000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Ground Attack Aircraft'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Heli_Transport_04_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/7000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Heavy Lift Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Heli_Transport_04_ammo_F',
	/*MenuName*/'Taru Ammo',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Logistics Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-ammotruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_Heli_Transport_04_bench_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Transport Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_Heli_Transport_04_box_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
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
	/*ClassName*/'O_Heli_Transport_04_fuel_F',
	/*MenuName*/'Taru Fuel',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Logistics Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-fueltruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Heli_Transport_04_medevac_F',
	/*MenuName*/'Taru Medic',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Logistics Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_Heli_Transport_04_repair_F',
	/*MenuName*/'Taru Repair',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Logistics Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-repairtruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Heli_Transport_04_covered_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/['Transport Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Heli_Attack_02_dynamicLoadout_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/40000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Attack Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'PO-30 Orca - 12 DAGRs/Cannon',
	/*ClassName*/'O_Heli_Light_02_dynamicLoadout_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/14000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Armed Transport Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Heli_Light_02_unarmed_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/7000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Transport Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_MBT_02_arty_F',
	/*MenuName*/'2S9 Sochor Artillery (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/250000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_MBT_02_arty_ghex_F',
	/*MenuName*/'2S9 Sochor Artillery (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/250000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_APC_Tracked_02_cannon_F',
	/*MenuName*/'BTR-K Kamysh (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/23000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_APC_Tracked_02_cannon_ghex_F',
	/*MenuName*/'BTR-K Kamysh (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/23000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_MBT_02_cannon_F',
	/*MenuName*/'T-100 Varsuk (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/35000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_MBT_02_cannon_ghex_F',
	/*MenuName*/'T-100 Varsuk (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/35000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_APC_Tracked_02_AA_F',
	/*MenuName*/'ZSU-39 Tigris (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/30000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_APC_Tracked_02_AA_ghex_F',
	/*MenuName*/'ZSU-39 Tigris (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/30000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_MRAP_02_F',
	/*MenuName*/'Ifrit Unarmed (CSAT)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_MRAP_02_ghex_F',
	/*MenuName*/'Ifrit Unarmed (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_APC_Wheeled_02_rcws_F',
	/*MenuName*/'MSE-3 Marid (CSAT)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_APC_Wheeled_02_rcws_ghex_F',
	/*MenuName*/'MSE-3 Marid (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_MRAP_02_gmg_F',
	/*MenuName*/'Ifrit GMG (CSAT)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/6000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_MRAP_02_gmg_ghex_F',
	/*MenuName*/'Ifrit GMG (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/6000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_MRAP_02_hmg_F',
	/*MenuName*/'Ifrit HMG (CSAT)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_MRAP_02_hmg_ghex_F',
	/*MenuName*/'Ifrit HMG (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_G_Offroad_01_F',
	/*MenuName*/'Defense Truck',
	/*Location*/[CTI_REPAIR,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Black'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-defensetruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_G_Offroad_01_armed_F',
	/*MenuName*/'Offroad M2',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/1500,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Black'],
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
	/*ClassName*/'O_Quadbike_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/10,
	/*Distance*/1,
	/*Camo*/['Black'],
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
	/*ClassName*/'O_Truck_02_transport_F',
	/*MenuName*/'Tempest Flatbed (PODS)',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/20,
	/*Distance*/1,
	/*Camo*/['SandHex'],
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
	/*ClassName*/'O_Truck_03_ammo_F', 
	/*MenuName*/'Tempest Ammo (CSAT)',
	/*Location*/[CTI_AMMO],
	/*UpgradeLevel*/0,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-ammotruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Land_Pod_Heli_Transport_04_ammo_F',
	/*MenuName*/'Ammo Pod',
	/*Location*/[CTI_AMMO],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-ammotruck',
	/*Picture*/'\A3\Weapons_F\Data\placeholder_co.paa'
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_Truck_03_ammo_ghex_F',
	/*MenuName*/'Tempest Ammo (Tropic)',
	/*Location*/[CTI_AMMO],
	/*UpgradeLevel*/0,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-ammotruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Truck_03_fuel_F',
	/*MenuName*/'Tempest Fuel (CSAT)',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-fueltruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Land_Pod_Heli_Transport_04_fuel_F',
	/*MenuName*/'Fuel Pod',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-fueltruck',
	/*Picture*/'\A3\Weapons_F\Data\placeholder_co.paa'
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_Truck_03_fuel_ghex_F',
	/*MenuName*/'Tempest Fuel (Tropic)',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-fueltruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Truck_03_medical_F',
	/*MenuName*/'Tempest Medic (CSAT)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/7500,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_Truck_03_medical_ghex_F',
	/*MenuName*/'Tempest Medic (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/7500,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_Truck_03_repair_F',
	/*MenuName*/'Tempest Repair (CSAT)',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-repairtruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Land_Pod_Heli_Transport_04_repair_F',
	/*MenuName*/'Repair Pod',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-repairtruck',
	/*Picture*/'\A3\Weapons_F\Data\placeholder_co.paa'
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_Truck_03_repair_ghex_F',
	/*MenuName*/'Tempest Repair (Tropic)',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-repairtruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_Truck_03_transport_F',
	/*MenuName*/'Tempest Transport (CSAT)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['SandHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_Truck_03_transport_ghex_F',
	/*MenuName*/'Tempest Transport (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
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
	/*ClassName*/'O_G_Van_01_fuel_F',
	/*MenuName*/'Deployable FOB',
	/*Location*/[CTI_REPAIR,[CTI_DEPOT,"logistics",4]],
	/*UpgradeLevel*/2,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Small FOB Truck'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'deployable-fob',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_UGV_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/2000,
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
	/*ClassName*/'O_UGV_01_rcws_F',
	/*MenuName*/'UGV Saif RCWS',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/8000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_T_UGV_01_rcws_ghex_F',
	/*MenuName*/'UGV Stomper Armed (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['TropicHex'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'O_Truck_02_box_F',
	/*MenuName*/'Deployable Large FOB',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/3,
	/*Price*/100000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Black'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'deployable-fob-large',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CTI_Salvager_EAST',
	/*MenuName*/'Salvage Truck',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Salvage'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/['O_G_Offroad_01_repair_F','salvager'],
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'O_G_Offroad_01_repair_F',
	/*MenuName*/'Salvage Truck',
	/*Location*/[],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Salvage'],
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
	/*ClassName*/'CTI_Salvager_Independent_East',
	/*MenuName*/'Independent Salvager',
	/*Location*/[],
	/*UpgradeLevel*/0,
	/*Price*/CTI_VEHICLES_SALVAGER_PRICE,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Salvage'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/['O_G_Offroad_01_repair_','salvager-independent'],
	/*Picture*/''
];




//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';