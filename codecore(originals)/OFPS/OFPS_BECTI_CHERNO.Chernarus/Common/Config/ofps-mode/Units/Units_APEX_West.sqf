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
_mod = 'Apex';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_T_Soldier_A_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_AA_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/5,
	/*Price*/4000,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_AT_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/7000,
	/*BuildTime*/6,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_AR_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Crew_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Engineer_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_Exp_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_GL_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/80,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Helipilot_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_M_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Medic_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Officer_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_TL_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_SL_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_soldier_PG_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/4,
	/*Price*/60,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_Repair_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_LAT_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/4,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_soldier_UAV_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/8000,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_AAR_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Support_AMG_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Support_AMort_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_AAA_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Soldier_AAT_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Support_GMG_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Support_MG_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Support_Mort_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Helicrew_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/4,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Pilot_F',
	/*MenuName*/['%1 (Pacific)'],
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/4,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Diver_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/650,
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
	/*ClassName*/'B_T_Diver_TL_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/650,
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
	/*ClassName*/'B_T_Recon_Exp_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Recon_JTAC_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Recon_Medic_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Recon_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Recon_LAT_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Recon_TL_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/850,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Sniper_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2000,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_ghillie_tna_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/2200,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Spotter_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/1000,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Diver_Exp_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_T_Recon_M_F',
	/*MenuName*/['%1 (Special Forces)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/5,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_GEN_Soldier_F',
	/*MenuName*/['%1 (Gendarmerie)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/900,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_GEN_Commander_F',
	/*MenuName*/['%1 (Gendarmerie)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/950,
	/*BuildTime*/5,
	/*Distance*/0,
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
	/*ClassName*/'B_CTRG_Soldier_AR_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Soldier_Exp_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Soldier_JTAC_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Soldier_M_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Soldier_Medic_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2650,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Soldier_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Soldier_LAT_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/3200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Soldier_TL_tna_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_CTRG_Miller_F',
	/*MenuName*/['%1 (CTRG Thermal Masking)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/6,
	/*Price*/2800,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['CTRG'],
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
	/*ClassName*/'B_T_LSV_01_armed_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/2000,
	/*BuildTime*/5,
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
	/*ClassName*/'B_LSV_01_armed_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/2000,
	/*BuildTime*/15,
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
	/*ClassName*/'B_LSV_01_unarmed_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*BuildTime*/5,
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
	/*ClassName*/'B_CTRG_LSV_01_light_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*BuildTime*/5,
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
	/*ClassName*/'B_T_LSV_01_unarmed_F',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*BuildTime*/5,
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
	/*ClassName*/'B_T_VTOL_01_infantry_F',
	/*MenuName*/'V-44 X Blackfish (Transport)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/2,
	/*Price*/13000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['VTOL Transport Aircraft'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_T_VTOL_01_vehicle_F',
	/*MenuName*/'V-44 X Blackfish (VIV)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['VTOL Vehicle Transport Aircraft'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_T_VTOL_01_armed_F',
	/*MenuName*/'V-44 X Blackfish (Armed)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/2,
	/*Price*/25000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Aerial Gun Platform'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_T_UAV_03_dynamicLoadout_F',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/25000,
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
	/*ClassName*/'C_Boat_Transport_02_F',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/500,
	/*BuildTime*/10,
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
	/*ClassName*/'C_Scooter_Transport_01_F',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*BuildTime*/10,
	/*Distance*/3,
	/*Camo*/['Black'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];




//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';