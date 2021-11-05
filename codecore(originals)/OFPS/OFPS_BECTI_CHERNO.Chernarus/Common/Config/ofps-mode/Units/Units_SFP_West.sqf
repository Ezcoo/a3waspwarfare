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
_mod = 'SFP';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------
//SFP SOURCE: http://hosted.anrop.se/zip/sfpweb/docs/
//--------------------------------------------------------------------------------------------------------------


//Infantry Classes-------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_1990_m90d_rifleman_rto',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90s_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_aa_specialist_rbs69',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_at_loader_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_at_specialist_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_at_specialist_pskott86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_automaticrifleman_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_gr',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_militarypolice_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_rb56_crewcheif',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_rb56_gunner',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_rb56_loader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_rifleman_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_rifleman_ak4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_rifleman_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_1990_m90w_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_civ_tourist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_civ_tourist_hat',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_crescent1189',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal1',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal1',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal2',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal2',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal3',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal3',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_criminal4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_lightbar',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_lvakan48',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_at_specialist_grg48',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_at_specialist_pskott86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_automaticrifleman_ag42',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_rifleman_ak4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_rifleman_kpist45',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59s_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_aa_specialist_rbs69',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_at_loader_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_at_specialist_grg48',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_at_specialist_pskott86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_automaticrifleman_ag42',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_fjs_operator',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_kj_at',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_kj_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_kj_machinegunner',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_kj_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_kj_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_kj_operator',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_kj_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_rifleman_ak4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_rifleman_kpist45',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_sailor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m59w_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_at_loader_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_at_specialist_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_at_specialist_pskott86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_at_specialist_rb57',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_automaticrifleman_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_gr',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_ak4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_cap_peltor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_folded',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_jtac',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_nbc',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_peltor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_rto',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_tshirt',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_rifleman_uav_op',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_ak5_sd',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_at_specialist_grg',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_at_specialist_rb57',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_g36',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_jtac',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_sniper_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_spotter',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_sog_uav_op',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90d_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_aa_specialist_rbs69',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_at_loader_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_at_specialist_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_at_specialist_pskott86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_automaticrifleman_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_gr',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_rifleman_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_rifleman_ak4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_rifleman_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_rifleman_rto',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90s_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_combat_diver',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_combat_diver_exp',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_combat_diver_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_combat_diver_tl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_ak5_sd',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_at_specialist_grg',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_at_specialist_rb57',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_g36',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_hk1',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_jtac',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_sniper_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_spotter',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90t_sog_uav_op',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_at_loader_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_at_specialist_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_at_specialist_pskott86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_at_specialist_rb57',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_automaticrifleman_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_combat_diver',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_combat_diver_exp',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_combat_diver_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_combat_diver_tl',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_gr',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_helipilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_militarypolice_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_ak4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_cap_peltor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_folded',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_jtac',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_nbc',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_peltor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_rto',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_tshirt',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_rifleman_uav_op',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_ak5_sd',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_at_specialist_grg',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_at_specialist_rb57',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_g36',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_jtac',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_sniper_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_spotter',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_sog_uav_op',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_at_loader_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_at_specialist_grg86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_at_specialist_pskott86',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_at_specialist_rb57',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_automaticrifleman_ksp90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_gr',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_militarypolice_ak5d',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_rifleman_ag90',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_rifleman_ak4',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_rifleman_ak5',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_rifleman_rto',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_rifleman_uav_op',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_sniper',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m90w_un_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_m93_naval_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_refx',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_refx',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_tactical',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_tactical',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_tactical_shotgun',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_tactical_shotgun',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_tactical_submachinegun',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_modern_tactical_submachinegun',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_at_loader_grg48',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_at_specialist_grg48',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_explosive_specialist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_machinegunner_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_pilot',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_platoonleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_rifleman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_squadleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_teamleader',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/[],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

//Unit Classes-------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_wheelchair',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_wheelchair_mark2',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_cykel42',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_cykel42',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_mc258',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_dakota',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_van_hemglass',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_mercedes',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_mercedes_black',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_mercedes_blue',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_mercedes_red',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_mercedes_white',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_offroad',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_police_suv',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_un_offroad',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_bv206',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb11',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb1111',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb1112',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb13',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb13_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb1314',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb20',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb30',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb30_repair',
	/*MenuName*/'',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-repairtruck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_81_tgb40',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb40_ammo',
	/*MenuName*/'',
	/*Location*/[CTI_AMMO],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_tgb40_fuel',
	/*MenuName*/'',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-fueltruck',
	/*Picture*/''
];	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_81_tgb40_fuelcontainer',
	/*MenuName*/'',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_bv206',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_bv206_winter',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb11',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb1111',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb1111_sog_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb1111_sog_rbs56',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb1112',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb13',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb13_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb1314',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb1317',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb16',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb16_desert',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb16_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb16_ksp88',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb16_rws',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb20',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb20_ksp58',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb30',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb30_repair',
	/*MenuName*/'',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-repairtruck',
	/*Picture*/''
];	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_tgb40',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb40_ammo',
	/*MenuName*/'',
	/*Location*/[CTI_AMMO],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb40_cabin',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tgb40_fuel',
	/*MenuName*/'',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-fueltruck',
	/*Picture*/''
];	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_patgb203',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_patgb203_ambulance',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_ikv91',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_ikv91',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_lvkv90c',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_lvkv90c_desert',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_lvkv90c_snow',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_lvkv90c_un',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_centurion',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strf9040a',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strf90c',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strf90c_desert',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strf90c_snow',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strf90c_un',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_grkpbv90120',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_81_strv102',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strv102',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strv122',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strv122_snow',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strv122b',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_uav_skeldar',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_bell429_police',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_jetranger_police',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp16',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp4',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp4',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp4_1981_asw',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp4_2015',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp4_2015',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp4_af',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp4_asw',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp6',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp9',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp9_rb55',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_hkp9_sog',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_uav03',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_ucav23',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_ucav23_aa',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tp100',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_s100b',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_saab340',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_saab340_sas',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tp84',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_tp84_2015',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_sk60',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_sk60_arak135',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_sk60_cas',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_sk60_team60',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_j29',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_j29_rockets',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_jas39',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_jas39_bk90',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_jas39_canopy',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_jas39_cap',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_jas39_gbu39',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_jas39_rb15',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strb90',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_strb90_rws',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_nacken',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_neptun',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_rbb_norrkoping',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_gotland',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_gruppbat',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_svavare2000',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
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
	/*ClassName*/'sfp_svavare2000_transport',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/[],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];


//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';