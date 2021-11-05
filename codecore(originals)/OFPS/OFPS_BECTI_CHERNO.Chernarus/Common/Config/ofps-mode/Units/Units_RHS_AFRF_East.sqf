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
_mod = 'RHS_AFRF';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_rifleman',
	/*MenuName*/'0- Rifleman (AK74M)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_aa',
	/*MenuName*/'3- AA Specialist (9K38 Igla)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_arifleman',
	/*MenuName*/'2- Machine Gunner (PKP)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_at',
	/*MenuName*/'2- AT Specialist (RPG-7V2)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_combatcrew',
	/*MenuName*/'0- Crew (Combat)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_LAT',
	/*MenuName*/'0- Rifleman (RPG-26)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/0,
	/*Price*/350,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_RShG2',
	/*MenuName*/'0- Rifleman (RShG-2)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/550,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_engineer',
	/*MenuName*/'2- Engineer (Toolkit)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_grenadier',
	/*MenuName*/'1- Grenadier',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_medic',
	/*MenuName*/'1- Medic',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_pilot',
	/*MenuName*/'2- Pilot',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_marksman',
	/*MenuName*/'1- Marksman (SVDM)',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/450,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_junior_sergeant',
	/*MenuName*/'1- Junior Sergeant',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_sergeant',
	/*MenuName*/'2- Sergeant',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_officer',
	/*MenuName*/'3- Officer',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_crew',
	/*MenuName*/'3- Crew',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_armoredcrew',
	/*MenuName*/'3- Armored Crew',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_crew_commander',
	/*MenuName*/'3- Crew Commander',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_driver',
	/*MenuName*/'3- Driver',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_driver_armored',
	/*MenuName*/'3- Armored Driver',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_efreitor',
	/*MenuName*/'3- Efreitor',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_grenadier_rpg',
	/*MenuName*/'3- Grenadier RPG',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_strelok_rpg_assist',
	/*MenuName*/'3- RPG Assist',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_machinegunner',
	/*MenuName*/'3- Machinegunner',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_machinegunner_assistant',
	/*MenuName*/'3- Machinegunner Assist',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_emr_officer_armored',
	/*MenuName*/'3- Officer Armored',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Digi'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_msv_aa',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_msv_at',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_msv_arifleman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_msv_driver',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_msv_crew',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_msv_armoredcrew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_msv_machinegunner_assistant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_msv_officer_armored',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_msv_combatcrew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_msv_grenadier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_msv_crew_commander',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_msv_driver_armored',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_msv_RShG2',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_msv_efreitor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/350,
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
	/*ClassName*/'rhs_msv_LAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_msv_engineer',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_msv_grenadier_rpg',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_msv_strelok_rpg_assist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_msv_junior_sergeant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/400,
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
	/*ClassName*/'rhs_msv_machinegunner',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_msv_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_msv_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_msv_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_msv_rifleman',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_msv_sergeant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_des_aa',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_at',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_arifleman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_armoredcrew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_combatcrew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_crew_commander',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_driver',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_driver_armored',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_efreitor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_engineer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_machinegunner',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_marksman_asval',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_officer_armored',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_rifleman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_rifleman_lite',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_LAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_RShG2',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_sergeant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_grenadier_rpg',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_strelok_rpg_assist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_junior_sergeant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_machinegunner_assistant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_grenadier',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_des_rifleman_asval',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
	/*BuildTime*/5,
	/*Distance*/0,
	/*Camo*/['Coyote'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vdv_mflora_aa',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vdv_mflora_at',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vdv_mflora_crew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_vdv_mflora_efreitor',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/350,
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
	/*ClassName*/'rhs_vdv_mflora_machinegunner_assistant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_mflora_armoredcrew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_vdv_mflora_combatcrew',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_mflora_crew_commander',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_mflora_driver_armored',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_vdv_mflora_driver',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_vdv_mflora_engineer',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vdv_mflora_grenadier_rpg',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vdv_mflora_strelok_rpg_assist',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_mflora_junior_sergeant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_vdv_mflora_machinegunner',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vdv_mflora_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vdv_mflora_medic',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_mflora_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vdv_mflora_officer_armored',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vdv_mflora_rifleman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_vdv_mflora_rifleman_lite',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
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
	/*ClassName*/'rhs_vdv_mflora_LAT',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_mflora_RShG2',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/300,
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
	/*ClassName*/'rhs_vdv_mflora_sergeant',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/250,
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
	/*ClassName*/'rhs_vmf_recon_arifleman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/350,
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
	/*ClassName*/'rhs_vmf_recon_efreitor',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_machinegunner_assistant',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_marksman',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/1000,
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
	/*ClassName*/'rhs_vmf_recon_marksman_vss',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vmf_recon_medic',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_officer',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vmf_recon_officer_armored',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/750,
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
	/*ClassName*/'rhs_vmf_recon_rifleman',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_rifleman_akms',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_rifleman_l',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/350,
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
	/*ClassName*/'rhs_vmf_recon_rifleman_asval',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_grenadier',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_rifleman_lat',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_rifleman_scout_akm',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_rifleman_scout',
	/*MenuName*/'',
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
	/*ClassName*/'rhs_vmf_recon_grenadier_scout',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/350,
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
	/*ClassName*/'rhs_vmf_recon_arifleman_scout',
	/*MenuName*/'',
	/*Location*/[CTI_BARRACKS],
	/*UpgradeLevel*/3,
	/*Price*/350,
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
	/*ClassName*/'rhs_vmf_recon_sergeant',
	/*MenuName*/'',
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
	/*ClassName*/'RHS_TU95MS_vvs_old',
	/*MenuName*/'TU-95 (AGM)',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/2,
	/*Price*/25000,
	/*BuildTime*/30,
	/*Distance*/10,
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
	/*ClassName*/'RHS_Ka52_UPK23_vvsc',
	/*MenuName*/'KA-52 (AT&UPK)',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/37500,
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
	/*ClassName*/'rhs_mi28n_vvs',
	/*MenuName*/'MI-28 AT',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/4,
	/*Price*/40000,
	/*BuildTime*/30,
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
	/*ClassName*/'RHS_Mi8AMTSh_UPK23_vvs',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/35000,
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
	/*ClassName*/'rhs_sprut_vdv',
	/*MenuName*/'2S25 Sprut-SD (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/15000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_2s3_tv',
	/*MenuName*/'2S3M1 Artillery',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/250000,
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
	/*ClassName*/'rhs_bmd1',
	/*MenuName*/'BMD-1 (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/6000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmd1p',
	/*MenuName*/'BMD-1P (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/6000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmd1r',
	/*MenuName*/'BMD-1R (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/0,
	/*Price*/4500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmd2',
	/*MenuName*/'BMD-2 (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/7500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmd2m',
	/*MenuName*/'BMD-2M (NV)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/7500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmd4ma_vdv',
	/*MenuName*/'BMD-4MA (Thermal)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/18500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmp1_msv',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/15000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmp2d_msv',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/15000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_bmp3mera_msv',
	/*MenuName*/'BMP-3M ERA (Thermal)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/18500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_prp3_msv',
	/*MenuName*/'BMP-2 (Mortar /Flares)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/17500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_m2a2',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/12000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_m6',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/12000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_t72ba_tv',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/17500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_t80bv',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/20000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_t80uk',
	/*MenuName*/'T-80 (Thermal)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/25000,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_t90a_tv',
	/*MenuName*/'T-90a (Thermal)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/27500,
	/*BuildTime*/10,
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
	/*ClassName*/'rhs_9k79',
	/*MenuName*/'Scud 9P-120-1M',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/50000,
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
	/*ClassName*/'rhs_btr60_vdv',
	/*MenuName*/'BTR-60',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4750,
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
	/*ClassName*/'rhs_btr70_msv',
	/*MenuName*/'BTR-70',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/5000,
	/*BuildTime*/5,
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
	/*ClassName*/'rhs_btr80_msv',
	/*MenuName*/'BTR-80',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/6000,
	/*BuildTime*/5,
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
	/*ClassName*/'rhs_btr80a_msv',
	/*MenuName*/'BTR-80a (NV)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/12000,
	/*BuildTime*/5,
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
	/*ClassName*/'rhs_tigr_msv',
	/*MenuName*/'GAZ-23301 Unarmed',
	/*Location*/[CTI_LIGHT],
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
	/*ClassName*/'rhs_tigr_m_msv',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
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
	/*ClassName*/'rhs_tigr_sts_msv',
	/*MenuName*/'GAZ-23301 Tiger AGS30/PKM',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/3500,
	/*BuildTime*/5,
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
	/*ClassName*/'rhs_gaz66_zu23_msv',
	/*MenuName*/'GAZ-66 ZU-23',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4750,
	/*BuildTime*/5,
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
	/*ClassName*/'rhs_zsu234_aa',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/4750,
	/*BuildTime*/5,
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
	/*ClassName*/'rhsgref_cdf_b_reg_uaz_ags',
	/*MenuName*/'UAZ AGS-30',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/3000,
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
	/*ClassName*/'rhsgref_cdf_b_reg_uaz_spg9',
	/*MenuName*/'UAZ SPG-9',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/3200,
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
	/*ClassName*/'RHS_Ural_Zu23_MSV_01',
	/*MenuName*/'Ural ZU-23',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/0,
	/*Price*/4750,
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





//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';