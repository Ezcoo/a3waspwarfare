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
_mod = 'OFPS';

_u = []; //--- Units

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_HUNTER',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/1,
	/*Price*/1000,
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
	/*ClassName*/'OFPS_HUNTER_GMG',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_HUNTER_HMG',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/2,
	/*Price*/7500,
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
	/*ClassName*/'OFPS_B_Truck_03_device_F',
	/*MenuName*/'Nuke Truck',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/5,
	/*Price*/150000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Nuke'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'nuke-truck',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_GORGON_B',
	/*MenuName*/'AFV-4 Gorgon (NATO)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_GORGON_B_DES',
	/*MenuName*/'AFV-4 Gorgon (Desert)',
	/*Location*/[CTI_LIGHT],
	/*UpgradeLevel*/3,
	/*Price*/20000,
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
	/*ClassName*/'OFPS_POD_COVERED_B',
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
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_POD_BENCH_B',
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_CHEETAH',
	/*MenuName*/'',
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
	/*ClassName*/'OFPS_SLAMMER',
	/*MenuName*/'Slammer (120mm)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/50000,
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
	/*ClassName*/'OFPS_SLAMMER_TUSK',
	/*MenuName*/'Slammer UP (105mm)',
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
	/*ClassName*/'OFPS_SCORCHER',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/5,
	/*Price*/270000,
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
	/*ClassName*/'OFPS_SANDSTORM',
	/*MenuName*/'',
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
	/*Enabled*/false,  //lets try and find a better vehicle for this
	/*Name*/'',
	/*ClassName*/'ofps_B_MBT_01_mlrs_base_F',
	/*MenuName*/'SAM Launcher',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/2,
	/*Price*/15000,
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
	/*ClassName*/'OFPS_KUMA_B',
	/*MenuName*/'MBT-52 Kuma (NATO)',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/4,
	/*Price*/60000,
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_MORA_B',
	/*MenuName*/'FV-720 Mora (NATO)',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
	/*UpgradeLevel*/1,
	/*Price*/18000,
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
	/*ClassName*/'OFPS_CAESAR_B',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/0,
	/*Price*/7000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Trans Plane'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_HELLCAT_B',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Armed Transport Helicopter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_HELLCAT_B_DYNAMIC',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/3,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Armed Transport Helicopter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_MOHAWK_B',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/1,
	/*Price*/10000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Transport Helicopter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];


_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_GRYPHON_B',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/4,
	/*Price*/80000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Fighter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_BUZZA_B',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/40000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Fighter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_BUZZA_B_DYNAMIC',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/3,
	/*Price*/40000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Fighter'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'B_UCSV_01',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/0,
	/*Price*/10000,
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
	/*ClassName*/'OFPS_MK10_NATO',
	/*MenuName*/'MK10 (Vehicle Transport / Medic)',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/1,
	/*Price*/8000,
	/*BuildTime*/30,
	/*Distance*/5,
	/*Camo*/['Transport Ship'],
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
	/*ClassName*/'OFPS_LCAC_NATO',
	/*MenuName*/'LCAC (Vehicle Transport / Medic)',
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/1,
	/*Price*/9000,
	/*BuildTime*/30,
	/*Distance*/5,
	/*Camo*/['Transport Ship'],
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
	/*ClassName*/'OFPS_SDV_B',
	/*MenuName*/['%1 (Turbo)'],
	/*Location*/[CTI_NAVAL],
	/*UpgradeLevel*/1,
	/*Price*/6000,
	/*BuildTime*/30,
	/*Distance*/0,
	/*Camo*/['Submarine'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'bwi_a3_t6a',
	/*MenuName*/'Unarmed TurboProp',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/2,
	/*Price*/15000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Attack Plane'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'bwi_a3_at6b',
	/*MenuName*/'GBU TurboProp',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/2,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Attack Plane'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'bwi_a3_at6b_3',
	/*MenuName*/'AA TurboProp',
	/*Location*/[CTI_AIR_FIXED],
	/*UpgradeLevel*/2,
	/*Price*/20000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Attack Plane'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_AWC_AT_B',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/3,
	/*Price*/11000,
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
	/*ClassName*/'OFPS_AWC_SCOUT_B',
	/*MenuName*/['%1 (ECM)'],
	/*Location*/[CTI_HEAVY],
	/*UpgradeLevel*/1,
	/*Price*/18000,
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
	/*ClassName*/'OFPS_AWC_CANNON_B',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY,[CTI_LARGE_FOB,"logistics"]],
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_AWC_AA_B',
	/*MenuName*/'',
	/*Location*/[CTI_HEAVY],
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
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'OFPS_MRL_B',
	/*MenuName*/'',
	/*Location*/[CTI_LIGHT],
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
	/*ClassName*/'xmas_santa_blufor',
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

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'jean_sleigh',
	/*MenuName*/'',
	/*Location*/[CTI_AIR_ROTARY],
	/*UpgradeLevel*/5,
	/*Price*/50000,
	/*BuildTime*/30,
	/*Distance*/1,
	/*Camo*/['Present Delivery'],
	/*Type*/[],
	/*Ammmo*/true,
	/*MaxActive*/-1,
	/*Modifiers*/[],
	/*Script*/'',
	/*Picture*/''
];



//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers 'Common\Config\Common\Units\Set_Units.sqf';