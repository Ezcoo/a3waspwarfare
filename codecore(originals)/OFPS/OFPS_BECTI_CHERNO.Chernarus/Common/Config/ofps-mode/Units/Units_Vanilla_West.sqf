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
_faction = 'West';
_mod = 'Vanilla';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_SupplyCrate_F',
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
	/*ClassName*/'B_Soldier_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_RangeMaster_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Soldier_lite_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Soldier_GL_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/80,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_AR_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Soldier_SL_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Soldier_TL_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_M_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_LAT_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_medic_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_repair_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_exp_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Helipilot_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/50,
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
	/*ClassName*/'B_Soldier_A_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_AT_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/7000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_AA_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/5,
	/*Price*/4000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_engineer_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_crew_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_officer_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Competitor_F',
	/*MenuName*/['%1 (Arid)'],
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
	/*ClassName*/'B_Pilot_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'B_helicrew_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/150,
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
	/*ClassName*/'B_soldier_PG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_UAV_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/2100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Survivor_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Soldier_unarmed_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/10,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_AAR_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_AAT_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_soldier_AAA_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_support_MG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_support_GMG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
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
	/*ClassName*/'B_support_Mort_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_support_AMG_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
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
	/*ClassName*/'B_support_AMort_F',
	/*MenuName*/['%1 (Arid)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_G_Soldier_F',
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
	/*ClassName*/'B_G_Soldier_lite_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
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
	/*ClassName*/'B_G_Soldier_SL_F',
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
	/*ClassName*/'B_G_Soldier_TL_F',
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
	/*ClassName*/'B_G_Soldier_AR_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'B_G_medic_F',
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
	/*ClassName*/'B_G_engineer_F',
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
	/*ClassName*/'B_G_Soldier_exp_F',
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
	/*ClassName*/'B_G_Soldier_GL_F',
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
	/*ClassName*/'B_G_Soldier_M_F',
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
	/*ClassName*/'B_G_Soldier_LAT_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'B_G_Soldier_A_F',
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
	/*ClassName*/'B_G_officer_F',
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
	/*ClassName*/'B_G_Soldier_unarmed_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
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
	/*ClassName*/'B_G_Survivor_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/150,
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
	/*ClassName*/'I_G_Story_Protagonist_F',
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
	/*ClassName*/'I_G_Story_SF_Captain_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'I_G_resistanceLeader_F',
	/*MenuName*/['%1 (FIA)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'B_diver_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/600,
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
	/*ClassName*/'B_diver_TL_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
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
	/*ClassName*/'B_diver_exp_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
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
	/*ClassName*/'B_recon_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_recon_LAT_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_recon_exp_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_recon_medic_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_recon_TL_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_recon_M_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_recon_JTAC_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_spotter_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/900,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_sniper_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/2200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['MTP'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Boat_Transport_01_F',
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
	/*ClassName*/'B_SDV_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/1500,
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
	/*ClassName*/'B_Boat_Armed_01_minigun_F',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/2,
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
	/*ClassName*/'B_Heli_Light_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
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
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Heli_Transport_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/10000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Heli_Transport_01_tropic_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/10000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Heli_Transport_01_sand_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/10000,
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
	/*ClassName*/'B_Heli_Light_01_dynamicLoadout_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/13000,
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
	/*Name*/'',
	/*ClassName*/'B_Heli_Attack_01_dynamicLoadout_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/55000,
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
	/*Name*/'',
	/*ClassName*/'B_Plane_CAS_01_dynamicLoadout_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/70000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
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
	/*ClassName*/'B_Plane_CAS_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/70000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
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
	/*ClassName*/'B_UAV_02_dynamicLoadout_F',
	/*MenuName*/'MQ-4A Greyhawk (6x ATGM)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/25000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['UAV'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_APC_Tracked_01_rcws_F',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/10000,
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
	/*ClassName*/'B_APC_Tracked_01_CRV_F',
	/*MenuName*/'CRV-6e Bobcat',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/12000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'B_APC_Tracked_01_AA_F',
	/*MenuName*/'IFV-6a Cheetah (Green)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/30000,
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
	/*ClassName*/'B_T_APC_Tracked_01_AA_F',
	/*MenuName*/'IFV-6a Cheetah (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/30000,
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
	/*ClassName*/'B_MBT_01_cannon_F',
	/*MenuName*/'Slammer (120mm)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/40000,
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
	/*ClassName*/'B_T_MBT_01_cannon_F',
	/*MenuName*/'Slammer (120mm)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/40000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_MBT_01_TUSK_F',
	/*MenuName*/'Slammer UP (120mm)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/45000,
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
	/*ClassName*/'B_T_MBT_01_TUSK_F',
	/*MenuName*/'Slammer UP (120mm)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/45000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Tropic'],
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
	/*ClassName*/'B_MBT_01_arty_F',
	/*MenuName*/'M4 Scorcher Artillery (Green)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/250000,
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
	/*ClassName*/'B_T_MBT_01_arty_F',
	/*MenuName*/'M4 Scorcher Artillery (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/250000,
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
	/*ClassName*/'B_MBT_01_mlrs_F',
	/*MenuName*/'M5 Sandstorm',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/300000,
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
	/*ClassName*/'B_T_MBT_01_mlrs_F',
	/*MenuName*/'M5 Sandstorm (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/300000,
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
	/*ClassName*/'B_APC_Wheeled_01_cannon_F',
	/*MenuName*/'AMV-7 Marshall',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/4,
	/*Price*/20000,
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
	/*ClassName*/'B_Truck_01_transport_F', 
	/*MenuName*/'HEMTT Flatbed (PODS)',
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
	/*ClassName*/'B_G_Van_01_fuel_F',
	/*MenuName*/'Deployable Small FOB',
	/*Location*/[CTI_REPAIR,[CTI_DEPOT,"logistics",4]],
	/*UpgradeLevel*/2,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['FOB'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'deployable-fob',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Truck_01_ammo_F',
	/*MenuName*/'HEMTT Ammo',
	/*Location*/[CTI_AMMO],
	/*UpgradeLevel*/0,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-ammotruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'Land_Pod_Heli_Transport_04_covered_black_F',
	/*MenuName*/'Covered Inf Pod',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
	/*BuildTime*/5,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'Land_Pod_Heli_Transport_04_bench_black_F',
	/*MenuName*/'Inf Bench Pod',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/500,
	/*BuildTime*/5,
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
	/*ClassName*/'B_Slingload_01_Ammo_F',
	/*MenuName*/'Ammo Container',
	/*Location*/[CTI_AMMO],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'B_T_Truck_01_box_F',
	/*MenuName*/'Deployable Large FOB',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/3,
	/*Price*/100000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
	/*Type*/['FOB'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'deployable-fob-large',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Truck_01_Repair_F',
	/*MenuName*/'HEMTT Repair',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'B_Slingload_01_Repair_F',
	/*MenuName*/'Repair Container',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-repairtruck',
	/*Picture*/'\A3\Weapons_F\Data\placeholder_co.paa'
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Truck_01_fuel_F',
	/*MenuName*/'HEMTT Fuel (Green)',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'B_Slingload_01_Fuel_F',
	/*MenuName*/'Fuel Container',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'B_T_Truck_01_fuel_F',
	/*MenuName*/'HEMTT Fuel (Tropic)',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'B_Truck_01_medical_F',
	/*MenuName*/'HEMTT Medic',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/7500,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Medical'],
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
	/*ClassName*/'B_T_Truck_01_medical_F',
	/*MenuName*/'HEMTT Medic',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/7500,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Medical'],
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
	/*ClassName*/'B_Slingload_01_Medevac_F',
	/*MenuName*/'Respawn Container',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Medical'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/'\A3\Weapons_F\Data\placeholder_co.paa'
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_Truck_01_covered_F',
	/*MenuName*/'HEMTT Transport Covered (Green)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'B_T_Truck_01_covered_F',
	/*MenuName*/'HEMTT Transport Covered (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'B_MRAP_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
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
	/*ClassName*/'B_T_MRAP_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'B_MRAP_01_gmg_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/6000,
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
	/*ClassName*/'B_T_MRAP_01_gmg_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/6000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'B_MRAP_01_hmg_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/4000,
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
	/*ClassName*/'B_T_MRAP_01_hmg_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/4000,
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
	/*ClassName*/'B_G_Offroad_01_F',
	/*MenuName*/'Defense Truck',
	/*Location*/[CTI_REPAIR,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
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
	/*ClassName*/'B_G_Offroad_01_armed_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/1500,
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
	/*ClassName*/'B_Quadbike_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/10,
	/*Distance*/1,
	/*Camo*/['Other'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_UGV_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['UGV'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_UGV_01_rcws_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['UGV'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CTI_Salvager_WEST',
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
	/*Script*/['B_G_Offroad_01_repair_F','salvager'],
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_G_Offroad_01_repair_F',
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
	/*ClassName*/'CTI_Salvager_Independent_West',
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
	/*Script*/['B_G_Offroad_01_repair_F','salvager-independent'],
	/*Picture*/''
];




//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';