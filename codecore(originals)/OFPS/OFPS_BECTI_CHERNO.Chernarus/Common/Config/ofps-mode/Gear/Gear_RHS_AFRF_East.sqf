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
private ["_side", "_faction", "_u"];

_side = _this;
_faction = "East";
_mod = "RHS_AFRF";

_u = []; //Gear Classname

//--------------------------------------------------------------------------------------------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_Izh18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_pp2000',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz61',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_g36c',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_g36kv',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m21s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m21s_pr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m21a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m21a_pr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_asval',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_asval_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_asval_grip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_asval_grip_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_vss',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_vss_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_vss_grip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_vss_grip_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_aks74u',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_aks74un',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_2mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_fullplum',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_fullplum_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_plummag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_plummag_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_camo_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_2mag_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_2mag_camo_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_desert_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_zenitco01',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_zenitco01_b33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74mr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74n',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74n_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_aks74',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_aks74_2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_aks74n',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak105',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak105_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak105_zenitco01',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak105_zenitco01_b33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak103',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak103_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak103_zenitco01',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak103_zenitco01_b33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak104',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak104_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak104_zenitco01',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak104_zenitco01_b33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_akm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_akms',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58p_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58p_rail_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58p_rail',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58v_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58v_rail_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58v',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_savz58v_rail',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_g36kv_ag36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m21a_pbg40',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m21a_pr_pbg40',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_gp25_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_fullplum_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74m_fullplum_gp25_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74mr_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74n_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74n_gp25_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_aks74n_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_aks74_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak74_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak103_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_ak103_gp25_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_akm_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_akms_gp25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_pkp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_pkm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1400,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m84',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1400,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_svds',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_svds_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_svdp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_svdp_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_svdp_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_svdp_wd_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m76',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_t5000',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_rshg2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/220,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_rpg26',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/320,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_rpg7',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_igla',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/4000,
	/*Camo*/[],
	/*Type*/["Rocket AA"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_rsp30_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Flare"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_rsp30_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Flare"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_rsp30_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Flare"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_tr8',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Periscope"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_makarov_pm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Semi-Auto Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_pya',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/225,
	/*Camo*/[],
	/*Type*/["Semi-Auto Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_pp2000_folded',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Machine Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_ak5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk1p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk1l',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk1983',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pgs64',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pgs64_74u',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pgs64_74un',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_uuk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_acc_zendl',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk4short',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk4long',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dtk4screws',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_tgpa',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pbs1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pbs4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_tgpv',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_2dpZenit_ris',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Light"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_perst3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_npz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/[""]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_1p87',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_rakursPM',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_1p63',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pkas',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_ekp1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_1p78',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_nita',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_1p29',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pso1m2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pso1m21',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_dh520x56',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/550,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_1pn93_1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["NV Optic"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_1pn93_2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["NV Optic"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pgo7v',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pgo7v2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_pgo7v3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_grip_rk6',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_grip_rk2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_acc_grip_ffg2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_harris_swivel',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_9x18_8_57N181S',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_9x19_17',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_1Rnd_00Buck',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/10,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_1Rnd_Slug',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/10,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_9x19mm_7n21_20',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_9x19mm_7n21_44',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_9x19mm_7n31_20',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_9x19mm_7n31_44',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_10rnd_765x17_vz61',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_20rnd_765x17_vz61',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_30rnd_556x45_EPR_G36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_30rnd_556x45_SOST_G36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_30rnd_556x45_SPR_G36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_30rnd_556x45_Tracers_G36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_30rnd_556x45_MDIM_G36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_30rnd_556x45_TDIM_G36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_100rnd_556x45_EPR_G36',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_30rnd_556x45_m21',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_30rnd_556x45_m21_t',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_10rnd_9x39mm_SP5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_20rnd_9x39mm_SP5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_10rnd_9x39mm_SP6',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_20rnd_9x39mm_SP6',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_545x39_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_545x39_AK_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_545x39_7N6_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_545x39_7N10_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_545x39_7N22_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_545x39_7U1_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_45Rnd_545X39_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_45Rnd_545X39_AK_Green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_45Rnd_545X39_7N6_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_45Rnd_545X39_7N10_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_45Rnd_545X39_7N22_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_45Rnd_545X39_7U1_AK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_762x39mm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_762x39mm_tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_762x39mm_U',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_762x39mm_89',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_762x39mm_Savz58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_30Rnd_762x39mm_Savz58_tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_100Rnd_762x54mmR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_100Rnd_762x54mmR_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_100Rnd_762x54mmR_7BZ3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_100Rnd_762x54mmR_7N13',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_100Rnd_762x54mmR_7N26',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_250Rnd_762x54R',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_10Rnd_762x54mmR_7N1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_10Rnd_792x57_m76',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhssaf_10Rnd_792x57_m76_tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_5Rnd_338lapua_t5000',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_rdg2_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_rdg2_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_nspn_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_nspn_yellow',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_nspn_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_nspd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_fakel',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Stun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_fakels',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Stun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_zarya2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Stun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_plamyam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Stun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_rgd5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Lethal"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_rgn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Lethal"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_rgo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Lethal"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_GDM40',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_GRD40_White',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_GRD40_Green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_GRD40_Red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40MD_White',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40MD_Green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40MD_Red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40OP_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/20,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40OP_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/20,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40OP_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/20,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40SZ',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VG40TB',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VOG25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_VOG25p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_OG7V_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_PG7V_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_PG7VL_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_PG7VM_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_PG7VR_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_PG7VS_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_TBG7V_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg7_type69_airburst_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/410,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_9k38_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1250,
	/*Camo*/[],
	/*Type*/["Rocket AA"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_1PN138',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["NVG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_pdu4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Spotting"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mine_pmn2_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["AP Mine"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mine_tm62m_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["AT Mine"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_m112_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Remote Explosive"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_m112x4_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Remote Explosive"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_df15',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_df15_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_gorka_r_g',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_gorka_r_y',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_m88_patchless',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_mvd_izlom',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_flora_patchless',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_vmf_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_rva_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_vdv_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_vmf_flora_subdued',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_flora_patchless_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_mflora_patchless',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_vdv_mflora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_emr_patchless',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_msv_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_vdv_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_emr_des_patchless',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_vdv_emr_des',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh46',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vest_pistol_holster',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vest_commander',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_vydra_3m',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_vog_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_vsr_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_vsr_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_vsr_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_vsr_vog_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_digi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_digi_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_digi_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/175,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_digi_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6sh92_digi_vog_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_crewofficer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_engineer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_sniper',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_crew',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_vydra_3m',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh92_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh92_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh92_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh92_vog_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh92_headset_mapcase',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh116',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh116_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh116_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh116_vog_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh116_od',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_6sh116_vog_od',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_crewofficer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_engineer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_sniper',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_crew',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_vydra_3m',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_6sh92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_6sh92_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_6sh92_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_6sh92_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_6sh92_vog_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_ML_6sh92_headset_mapcase',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_crewofficer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_engineer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_sniper',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_crew',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/275,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_vydra_3m',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_vog_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_headset_mapcase',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_Spetsnaz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_headset_spetsnaz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_Flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_Flora_crewofficer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/425,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_Flora_6sh92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_Flora_6sh92_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_Flora_6sh92_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_Flora_6sh92_headset_mapcase',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_crewofficer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/425,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_6sh92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_6sh92_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_6sh92_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_6sh92_headset_mapcase',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_EMR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_EMR_6sh92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_EMR_6sh92_radio',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_EMR_6sh92_vog',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b13_EMR_6sh92_headset_mapcase',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_d6_Parachute_backpack',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_medic_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_rpg_empty',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_sidor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_assault_umbts',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_assault_umbts_engineer_empty',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsgref_hidf_alicepack',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_DShkM_TripodLow_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_DShkM_TripodHigh_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_DShkM_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Kord_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Kord_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_NSV_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_NSV_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_AGS30_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_AGS30_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_SPG9_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_SPG9_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/1500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Metis_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Metis_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Kornet_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Kornet_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/2500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Podnos_Bipod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Podnos_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/20000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beanie_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beanie',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beret_milp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beret_mp1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beret_mp2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beret_vdv1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beret_vdv2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_beret_vdv3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_Booniehat_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_Booniehat_digi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap_khk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap_helm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap_ml',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap_helm_ml',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap_digi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap_helm_digi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fieldcap_digi_des',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_zsh7a_mike',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_zsh7a_mike_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_zsh7a_mike_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_zsh7a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_zsh7a_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_altyn_novisor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_altyn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_altyn_visordown',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_altyn_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/135,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_altyn_novisor_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_altyn_novisor_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_altyn_novisor_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/135,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26_bala_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26_ess_bala_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26_ess_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b26_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_green_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_green_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_green_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/135,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_ml',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_ml_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_ml_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_ML_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/135,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/135,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_digi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_digi_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_digi_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/125,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b27m_digi_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/135,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_flora_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_flora_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_flora_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_green_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_green_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b28_green_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b47',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b47_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b47_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b47_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala1_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala1_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala1_olive',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala2_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala2_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_bala2_olive',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_emr_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_emr_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_ess_bala',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_flora_ns3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_6b7_1m_olive',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_scarf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_balaclava',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_balaclava1_olive',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Facewear"]
];





//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Gear\Gear_Config_Set.sqf";