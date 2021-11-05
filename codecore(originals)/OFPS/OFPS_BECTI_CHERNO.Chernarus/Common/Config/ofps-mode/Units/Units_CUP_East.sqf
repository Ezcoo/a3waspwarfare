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
_mod = 'CUP';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Light_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Saiga_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AA_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/2200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AR_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_MG_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_GL_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Spotter_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Crew_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AT_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_HAT_VDV_EMR',
	/*MenuName*/'Russian Airborne Soldier (Metis)',
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/4,
	/*Price*/2600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Engineer_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_TL_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Medic_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Pilot_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Sniper_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Marksman_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_LAT_VDV_EMR',
	/*MenuName*/['Airborne %1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AA_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/2200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AR_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_MG_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_GL_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Spotter_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Crew_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AT_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_HAT_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/4,
	/*Price*/2600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Engineer_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_SL_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_TL_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Medic_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Pilot_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Sniper_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Saiga_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Sniper_KSVK_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Light_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Explosive_Specialist_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Commander_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Marksman_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Officer_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_LAT_VDV',
	/*MenuName*/['Airborne %1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AA_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/2000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_HAT_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/2500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AR_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Crew_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Engineer_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Explosive_Specialist_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/450,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_GL_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_MG_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Marksman_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Medic_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Officer_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Pilot_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_LAT_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AT_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/1100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Saiga_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Sniper_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Sniper_KSVK_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Light_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Spotter_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_SL_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_TL_EMR',
	/*MenuName*/['%1 (EMR)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['EMR'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Light',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Crew',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AA',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/2000,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AR',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_HAT',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/4,
	/*Price*/2500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Engineer',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/450,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Explosive_Specialist',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Commander',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_soldier_GL',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_MG',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Marksman',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Medic',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Officer',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Pilot',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_LAT',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_AT',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/1100,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Saiga',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Sniper',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Sniper_KSVK',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_Light',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/30,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Spotter',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_SL',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RU_Soldier_TL',
	/*MenuName*/['%1 (Flora)'],
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Mountain Flora'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_MVD_Soldier_MG',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
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
	/*ClassName*/'CUP_O_MVD_Soldier_Marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/225,
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
	/*ClassName*/'CUP_O_MVD_Soldier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/75,
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
	/*ClassName*/'CUP_O_MVD_Soldier_GL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/100,
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
	/*ClassName*/'CUP_O_MVD_Soldier_AT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/1100,
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
	/*ClassName*/'CUP_O_MVD_Sniper',
	/*MenuName*/'',
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
	/*ClassName*/'CUP_O_MVD_Soldier_TL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/175,
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
	/*ClassName*/'CUP_O_RUS_Saboteur',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Soldier_GL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Soldier_Marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/4,
	/*Price*/900,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Commander',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_Night',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_SD',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_Scout',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_Scout_Night',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Soldier_TL',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Tropic'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Soldier_Marksman_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Soldier_GL_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/80,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_Night_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_SD_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Commander_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_Scout_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS,[CTI_DEPOT,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_Soldier_TL_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/150,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_RUS_SpecOps_Scout_Night_Autumn',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/650,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Spetsnaz Autumn'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_PBX_RU',
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
	/*ClassName*/'CUP_I_RHIB_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/1500,
	/*BuildTime*/10,
	/*Distance*/3,
	/*Camo*/['Sand'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_I_RHIB2Turret_RACS',
	/*MenuName*/'',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/3000,
	/*BuildTime*/10,
	/*Distance*/3,
	/*Camo*/['Sand'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_LCVP_SLA',
	/*MenuName*/'LCVP (Infantry Transport / Medic)',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
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
	/*ClassName*/'CUP_O_Mi8_medevac_RU',
	/*MenuName*/'Mi-8 Medic',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/14000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[''],
	/*Type*/['Logistics Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'service-medic',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_LCVP_VIV_SLA',
	/*MenuName*/'LCVP VIV (Vehicle Transport/Medic)',
	/*Location*/[CTI_NAVAL,[CTI_DEPOT_NAVAL,"logistics"]],
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
	/*ClassName*/'CUP_O_AN2_TK',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/5000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Transport Plane'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_C47_SLA',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Transport Plane'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_C130J_Cargo_TKA',
	/*MenuName*/'C-130 (VIV)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/1,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Vehicle Transport Plane'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_C130J_TKA',
	/*MenuName*/'C-130 (Transport)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/1,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Transport Plane'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_L39_RKT_TK',
	/*MenuName*/'L39 (RKTS)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/25000,
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
	/*ClassName*/'CUP_O_L39_BMB_TK',
	/*MenuName*/'L39 (FAB)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/22000,
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
	/*ClassName*/'CUP_O_L39_CAP_TK',
	/*MenuName*/'L39 (4xAA)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/18000,
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
	/*ClassName*/'CUP_O_L39_TK',
	/*MenuName*/'L39 (RKTS)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/2,
	/*Price*/20000,
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
	/*ClassName*/'CUP_O_Pchela1T_RU',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/4000,
	/*BuildTime*/20,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Su25_CSAT_T',
	/*MenuName*/'SU-25 Frogfoot - 2AA/4FAB/80RKTS',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/50000,
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
	/*ClassName*/'CUP_O_Su25_RU_3',
	/*MenuName*/'SU-25 (LGB)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/50000,
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
	/*ClassName*/'CUP_O_Su25_RU_2',
	/*MenuName*/'SU-25 Frogfoot - 2AA/4AT/80RKTS',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/60000,
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
	/*ClassName*/'CUP_O_Su25_Dyn_RU',
	/*MenuName*/'SU-25 (Dynamic)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/50000,
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
	/*ClassName*/'CUP_O_Su25_Dyn_CSAT_T',
	/*MenuName*/'SU-25 (Dynamic)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/50000,
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
	/*ClassName*/'CUP_O_Su25_Dyn_SLA',
	/*MenuName*/'SU-25 Frogfoot - 2AA/4FAB/80RKTS',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/50000,
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
	/*ClassName*/'CUP_O_Su25_Dyn_TKA',
	/*MenuName*/'SU-25 (Dynamic)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/50000,
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
	/*ClassName*/'CUP_O_SU34_LGB_CSAT',
	/*MenuName*/'SU-34 (LGB)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/5,
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
	/*ClassName*/'CUP_O_SU34_AGM_CSAT',
	/*MenuName*/'SU-34 (AGM)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/5,
	/*Price*/80000,
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
	/*ClassName*/'CUP_O_SU34_RU',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/60000,
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
	/*ClassName*/'CUP_O_Ka50_DL_RU',
	/*MenuName*/'KA-50 Blackshark - 4AA/40RKTS',   
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/25000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Ka50_DL_SLA',
	/*MenuName*/'KA-50 Blackshark - 4AA/40RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/25000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Ka52_Grey_RU',
	/*MenuName*/'KA-52 Alligator - 12AT(LSR)/40RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/30000,
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
	/*ClassName*/'CUP_O_Ka52_RU',
	/*MenuName*/'KA-52 Alligator - 12AT/40RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/30000,
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
	/*Name*/'KA60 Kasatka - 12RKTS/GMG',
	/*ClassName*/'CUP_O_Ka60_GL_Hex_CSAT',
	/*MenuName*/'KA-60 Kasatka - 12RKTS/GMG',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/12000,
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
	/*ClassName*/'CUP_O_UH1H_armed_SLA',
	/*MenuName*/'UH-1H (x14 Hydra Rockets/x2 M240)',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
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
	/*ClassName*/'CUP_O_UH1H_gunship_SLA',
	/*MenuName*/'UH-1H (x38 Hydra Rockets/x2 M134/x2 M240)',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/16000,
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
	/*ClassName*/'CUP_O_Ka60_Hex_CSAT',
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
	/*ClassName*/'CUP_O_Mi8_SLA_2',
	/*MenuName*/'MI8 - 128RTKS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/19000,
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
	/*ClassName*/'CUP_O_Mi8_RU',
	/*MenuName*/'Mi8 HIP - 128RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/17000,
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
	/*ClassName*/'CUP_O_Mi8_SLA_1',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/5000,
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
	/*ClassName*/'CUP_O_Mi8_VIV_RU',
	/*MenuName*/'Mi-8AMT (Quad bike VIV)',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/4000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Ultra Light Vehicle Transport Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_Mk4_AT_CSAT_T',
	/*MenuName*/'Mi-24 MK4 (AT)',
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_Mk4_FAB_CSAT_T',
	/*MenuName*/'Mi24 SuperHind - Bomb(Dumb)',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/25000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_Mk4_S8_GSh_CSAT_T',
	/*MenuName*/'Mi-24 MK4 (UPK)',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/35000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_D_CSAT_T',
	/*MenuName*/'Mi-24D',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_P_CSAT_T',
	/*MenuName*/'Mi-24P',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/30000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_V_CSAT_T',
	/*MenuName*/'Mi-24V',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_D_Dynamic_CSAT_T',
	/*MenuName*/'Mi24D - 4AT(RDR)/80RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/35000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_P_Dynamic_CSAT_T',
	/*MenuName*/'Mi24P - 4AT(RDR)/40RKTS/2FAB',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/34000,
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
	/*ClassName*/'CUP_O_Mi24_P_Dynamic_RU',
	/*MenuName*/'Mi24P - 4AT/40RKTS/2FAB',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/20000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_Mi24_V_Dynamic_CSAT_T',
	/*MenuName*/'Mi24V - 4AT(RDR)/80RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/30000,
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
	/*ClassName*/'CUP_O_Mi24_Mk4_CSAT_T',
	/*MenuName*/'Mi24 SuperHind - 8AT(AI-TRGT)/80RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/26000,
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
	/*ClassName*/'CUP_O_Mi24_V_Dynamic_RU',
	/*MenuName*/'Mi24V - 4 AT-6/80RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/24000,
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
	/*ClassName*/'CUP_O_Mi24_D_Dynamic_TK',
	/*MenuName*/'Mi24D - 4 AT-2/128RKTS',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/2,
	/*Price*/23000,
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
	/*ClassName*/'CUP_O_MI6T_RU',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Transport/Heavy Lift Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_MI6A_RU',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/12000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/[],
	/*Type*/['Vehicle Transport/Heavy Lift Helicopter'],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_2S6_RU',
	/*MenuName*/'2S6 Tunguska (5km)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/25000,
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
	/*ClassName*/'CUP_O_2S6M_RU',
	/*MenuName*/'2S6M Tunguska (10km)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/4,
	/*Price*/40000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_MTLB_pk_Green_RU',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Winter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_MTLB_pk_WDL_RU',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Winter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_MTLB_pk_WDL_ChDKZ',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Winter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_MTLB_pk_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Winter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_MTLB_pk_TK_MILITIA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Winter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_MTLB_pk_Winter_RU',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Winter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP_HQ_CHDKZ',
	/*MenuName*/'BMP HQ (CHDKZ)',
	/*Location*/[CTI_HEAVY],
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP_HQ_RU',
	/*MenuName*/'BMP HQ (RU)',
	/*Location*/[CTI_HEAVY],
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP_HQ_CSAT',
	/*MenuName*/'BMP HQ (CSAT)',
	/*Location*/[CTI_HEAVY],
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP_HQ_TKA',
	/*MenuName*/'BMP HQ (TKA)',
	/*Location*/[CTI_HEAVY],
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
	/*ClassName*/'CUP_O_BMP1_CSAT',
	/*MenuName*/'BMP-1 (CSAT)',
	/*Location*/[CTI_HEAVY],
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_BMP1_CSAT_T',
	/*MenuName*/'BMP-1 (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
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
	/*ClassName*/'CUP_O_BMP1P_CSAT',
	/*MenuName*/'BMP-1P (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/12000,
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
	/*ClassName*/'CUP_O_BMP1P_CSAT_T',
	/*MenuName*/'BMP-1P (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/12000,
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
	/*ClassName*/'CUP_O_BMP2_CSAT',
	/*MenuName*/'BMP-2 (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/14000,
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
	/*ClassName*/'CUP_O_BMP2_CSAT_T',
	/*MenuName*/'BMP-2 (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/14000,
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
	/*ClassName*/'CUP_O_BMP2_AMB_CSAT',
	/*MenuName*/'BMP Medic (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/8000,
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
	/*ClassName*/'CUP_O_BMP2_AMB_CSAT_T',
	/*MenuName*/'BMP Medic (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/8000,
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
	/*ClassName*/'CUP_O_BMP2_ZU_CSAT',
	/*MenuName*/'BMP-2 ZU (CSAT)',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
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
	/*ClassName*/'CUP_O_BMP2_ZU_CSAT_T',
	/*MenuName*/'BMP-2 ZU (Tropic)',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
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
	/*ClassName*/'CUP_O_BMP3_RU',
	/*MenuName*/'BMP-3 (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/16000,
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
	/*ClassName*/'CUP_O_BMP3_CSAT_T',
	/*MenuName*/'BMP-3 (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/16000,
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
	/*ClassName*/'CUP_O_T55_CSAT',
	/*MenuName*/'T-55 (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/13000,
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
	/*ClassName*/'CUP_O_T34_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/9000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Desert'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_T55_CSAT_T',
	/*MenuName*/'T-55 (Tropic)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/16000,
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
	/*ClassName*/'CUP_O_T72_CSAT',
	/*MenuName*/'T-72 (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/20000,
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
	/*ClassName*/'CUP_O_T72_CSAT_T',
	/*MenuName*/'T-72 (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/25000,
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
	/*ClassName*/'CUP_B_T72_CZ',
	/*MenuName*/'T-72 (Thermal)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/36000,
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
	/*ClassName*/'CUP_O_T90_RU',
	/*MenuName*/'T-90a (Thermal)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
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
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_ZSU23_CSAT',
	/*MenuName*/'ZSU-23 Shilka (CSAT)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/12000,
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
	/*ClassName*/'CUP_O_ZSU23_Afghan_CSAT',
	/*MenuName*/'ZSU-23 Shilka (Afghan CSAT)',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_B_TowingTractor_USMC',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/1000,
	/*BuildTime*/30,
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
	/*ClassName*/'CUP_O_BM21_RU',
	/*MenuName*/'BM21 Grad MLRS',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/5,
	/*Price*/400000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Sand'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_BRDM2_CSAT',
	/*MenuName*/'BRDM2 (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/4000,
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
	/*ClassName*/'CUP_O_BRDM2_CSAT_T',
	/*MenuName*/'BRDM2 (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4000,
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
	/*ClassName*/'CUP_O_BRDM2_ATGM_CSAT',
	/*MenuName*/'BRDM2 ATGM (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/7000,
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
	/*ClassName*/'CUP_O_BRDM2_ATGM_CSAT_T',
	/*MenuName*/'BRDM2 ATGM (Tropic)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/7000,
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
	/*ClassName*/'CUP_O_BTR40_MG_TKM',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/1250,
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
	/*ClassName*/'CUP_O_BTR80_CAMO_RU',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/4400,
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
	/*ClassName*/'CUP_O_BTR80_WINTER_RU',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/4400,
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
	/*ClassName*/'CUP_O_BTR80_DESERT_RU',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/4400,
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
	/*ClassName*/'CUP_O_BTR60_CSAT',
	/*MenuName*/'BTR-60 (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/4200,
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
	/*ClassName*/'CUP_O_BTR60_Winter_RU',
	/*MenuName*/'BTR-60 (Winter)',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/4200,
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
	/*ClassName*/'CUP_O_BTR90_RU',
	/*MenuName*/'BTR-90',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'CUP_O_TT650_CHDKZ',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/180,
	/*BuildTime*/10,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'CUP_O_TT650_TKA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
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
	/*ClassName*/'CUP_O_Volha_SLA',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
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
	/*ClassName*/'CUP_O_Datsun_PK',
	/*MenuName*/'Datsun 620 Jeep PKM',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/450,
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
	/*ClassName*/'CUP_O_GAZ_Vodnik_PK_RU',
	/*MenuName*/'Vodnik PKM',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/1400,
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
	/*ClassName*/'CUP_O_GAZ_Vodnik_MedEvac_RU',
	/*MenuName*/'Vodnik Medic',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'CUP_O_GAZ_Vodnik_AGS_RU',
	/*MenuName*/'Vodnik AGS/PKM',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/2400,
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
	/*ClassName*/'CUP_O_GAZ_Vodnik_BPPU_RU',
	/*MenuName*/'Vodnik BPPU',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/2,
	/*Price*/7000,
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
	/*ClassName*/'CUP_O_BTR80A_CAMO_RU',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/9000,
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
	/*ClassName*/'CUP_O_BTR80A_DESERT_RU',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/9000,
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
	/*ClassName*/'CUP_O_BTR80A_WINTER_RU',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/3,
	/*Price*/9000,
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
	/*ClassName*/'CUP_O_UAZ_AA_RU',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
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
	/*ClassName*/'CUP_O_UAZ_Unarmed_CSAT',
	/*MenuName*/'UAZ Unarmed (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/350,
	/*BuildTime*/5,
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
	/*ClassName*/'CUP_O_UAZ_AGS30_CSAT',
	/*MenuName*/'UAZ AGS-30 (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/850,
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
	/*ClassName*/'CUP_O_UAZ_MG_CSAT',
	/*MenuName*/'UAZ DShKm (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/600,
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
	/*ClassName*/'CUP_O_UAZ_AMB_RU',
	/*MenuName*/'UAZ Medic',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics", 2],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/6000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Woodland'],
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
	/*ClassName*/'CUP_O_UAZ_METIS_CSAT',
	/*MenuName*/'UAZ Metis (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
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
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_UAZ_Open_CSAT',
	/*MenuName*/'UAZ Unarmed Open (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/220,
	/*BuildTime*/5,
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
	/*ClassName*/'CUP_O_UAZ_SPG9_CSAT',
	/*MenuName*/'UAZ SPG-9 (CSAT)',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
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
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_V3S_Refuel_TKA',
	/*MenuName*/'Praga Fuel',
	/*Location*/[CTI_REPAIR],
	/*UpgradeLevel*/0,
	/*Price*/2000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Desert'],
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
	/*ClassName*/'CUP_O_V3S_Repair_TKA',
	/*MenuName*/'Praga Repair',
	/*Location*/[CTI_REPAIR,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/11000,
	/*BuildTime*/90,
	/*Distance*/1,
	/*Camo*/['Desert'],
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
	/*ClassName*/'CUP_O_Kamaz_Repair_RU',
	/*MenuName*/'Kamaz Repair',
	/*Location*/[CTI_REPAIR,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/14000,
	/*BuildTime*/90,
	/*Distance*/1,
	/*Camo*/['Desert'],
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
	/*ClassName*/'CUP_O_Ural_Repair_RU',
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
	/*ClassName*/'CUP_O_Ural_RU',
	/*MenuName*/'Ural Transport',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/600,
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
	/*ClassName*/'CUP_O_V3S_Covered_TKM',
	/*MenuName*/'Praga Transport',
	/*Location*/[CTI_LIGHT,[CTI_DEPOT,"logistics"],[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/400,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Desert'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_O_Ural_ZU23_RU',
	/*MenuName*/'Ural ZU-23',
	/*Location*/[CTI_LIGHT,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/0,
	/*Price*/4000,
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

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';