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

	/*Location*/
		//DESCRIPTION:  Which factory unit will be available for purchase
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//OPTIONS: CTI_BARRACKS, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_FOB, CTI_LARGE_FOB, "All", "External"
			//[CTI_BARRACKS] //based on gear upgrade
			//[CTI_BARRACKS,CTI_DEPOT] // both based on gear upgrade
			//[CTI_BARRACKS,[CTI_DEPOT,"gear",5]] //barracks normal, from depot require gear upgrade 5 (different from default gear upgrade)
			//[CTI_BARRACKS,[CTI_DEPOT,"logistics"]] //barracks normal, from depot require forward logistics
			//[CTI_BARRACKS,[CTI_DEPOT,"logistics",3]] //barracks normal, from depot require forward logistics 3
			//["All"] //available at all gear sources based on gear upgrade
			//[["All", "logistics"]] //available at all gear sources based on logistics upgrade
			//[CTI_BARRACKS,["External", "logistics"]] //barracks normal, available at all other gear sources based on logistics upgrade

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
			//['Rifle','Rifle']

//--------------------------------------------------------------------------------------------------------------
private ["_side", "_u"];

_side = _this;

_u = []; //Ammo Classname

//--------------------------------------------------------------------------------------------------------------


//--- LAND -----------------------------------------------------------

//--- Small Arms --------------------------

//--- Explosives --------------------------

//--- Heavy --------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'at_phalanx_35mm_AA',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/2,
	/*Price*/6,
	/*RearmTime*/1,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_ammo_Missile_rim162_4km',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/3,
	/*Price*/4500,
	/*RearmTime*/10,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_ammo_Missile_rim162_6km',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/3,
	/*Price*/6000,
	/*RearmTime*/10,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_ammo_Missile_rim162_8km',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/4,
	/*Price*/6500,
	/*RearmTime*/10,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_ammo_Missile_mim145',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/4,
	/*Price*/6500,
	/*RearmTime*/10,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_ammo_Missile_s750',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/4,
	/*Price*/6500,
	/*RearmTime*/10,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_ammo_Missile_coastal',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/4,
	/*Price*/4000,
	/*RearmTime*/10,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_rbs97_ammo',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/3,
	/*Price*/3500,
	/*RearmTime*/10,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_Sh_122_HE',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/4,
	/*Price*/400,
	/*RearmTime*/15,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_Sh_122_WP',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/4,
	/*Price*/60,
	/*RearmTime*/15,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Land',
	/*ClassName*/'OFPS_Sh_122_AT',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/2,
	/*Price*/1200,
	/*RearmTime*/15,
	/*Filters*/[]
];

//--- Arty --------------------------

//--- HE --------------------------

//--- Grenades --------------------------

//--- Launchers --------------------------

//--- Naval --------------------------

//--- Other --------------------------

//--- AIR ------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Air',
	/*ClassName*/'bwi_50cal_POD',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/0,
	/*Price*/1.5,
	/*RearmTime*/1,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Air',
	/*ClassName*/'bwi_FFAR19_POD',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/0,
	/*Price*/1,
	/*RearmTime*/1,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Air',
	/*ClassName*/'bwi_R_Hydra_HE',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*RearmTime*/1,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Air',
	/*ClassName*/'bwi_AGM114K_AG',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/3,
	/*Price*/2700,
	/*RearmTime*/10,
	/*Filters*/[]
];

//--- Missles --------------------------

//--- Bombs --------------------------

//--- Pylons --------------------------

//--- Other --------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Air',
	/*ClassName*/'rkb_ksk_ap',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/0,
	/*Price*/1,
	/*RearmTime*/1,
	/*Filters*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*Type*/'Air',
	/*ClassName*/'rkb_ksk_he',
	/*Location*/[CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB],
	/*UpgradeLevel*/0,
	/*Price*/1,
	/*RearmTime*/1,
	/*Filters*/[]
];



//--------------------------------------------------------------------------------------------------------------

[_side, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Ammo\Ammo_Config_Set.sqf";