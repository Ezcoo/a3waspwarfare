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
_faction = "West";
_mod = "RHS_USAF";

_u = []; //Gear Classname

//--------------------------------------------------------------------------------------------------------------


_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M590_5RD',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M590_8RD',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_weap_MP7A2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_weap_MP7A2_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_weap_MP7A2_aor1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_weap_MP7A2_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4_carryhandle',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4_carryhandle_pmag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4_carryhandle_mstock',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_pmag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_mstock',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_carryhandle',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_carryhandle_pmag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_carryhandle_mstock',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_d_mstock',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_KAC',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_KAC_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_KAC_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_KAC_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_KAC',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_KAC_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_KAC_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_KAC_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
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
	/*ClassName*/'rhs_weap_hk416d10',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d10_LMT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d10_LMT_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d10_LMT_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d145',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d145_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d145_wd_2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d145_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d145_d_2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m27iar',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m27iar_grip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m16a4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m16a4_pmag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m16a4_carryhandle',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m16a4_carryhandle_pmag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4_m320',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_m320',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_mk18_m320',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
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
	/*ClassName*/'rhs_weap_hk416d10_m320',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_hk416d145_m320',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4_m203',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_carryhandle_m203',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4_m203S',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_carryhandle_m203S',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_m203s_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_M203',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_M203_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_M203_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m4a1_blockII_M203_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m16a4_carryhandle_M203',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Rifle-GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_lmg_minimipara',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_minimi_para_railed',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_lmg_minimi_railed',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m249_pip_S_vfg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m249_pip_L_vfg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m249_pip_S_para',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m249_pip_L_para',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m249_pip_S',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m249_pip_L',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m249_pip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m240G',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1800,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m240B',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1800,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m240B_CAP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1800,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m14ebrri',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_sr25_ec',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_sr25_ec_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_sr25_ec_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_sr25',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_sr25_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_sr25_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/800,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m24sws_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m24sws',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m24sws_ghillie',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m40a5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/1500,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m40a5_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/1500,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m40a5_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/1500,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_XM2010',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_XM2010_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_XM2010_sa',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_XM2010_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M107',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/3000,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M107_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/3000,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M107_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/3000,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m32',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_m72a7',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/220,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M136',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/310,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M136_hp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/310,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M136_hedp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/310,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_smaw',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/345,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_smaw_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/345,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_maaws',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/470,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_fgm148',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/1450,
	/*Camo*/[],
	/*Type*/["Lock-On Only"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_fim92',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/1250,
	/*Camo*/[],
	/*Type*/["Rocket AA"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_weap_m9',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Semi-Auto Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_weap_glock17g4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/225,
	/*Camo*/[],
	/*Type*/["Semi-Auto Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_weap_m1911a1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Semi-Auto Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_M320',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SF3P556',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SFMB556',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ARDEC_M240',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_omega9k',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_rotex_mp7',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_rotex_mp7_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_rotex_mp7_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_rotex_mp7_aor1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_nt4_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_nt4_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_rotex5_grey',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_rotex5_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SR25S',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M2010S',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M2010S_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M2010S_sa',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M2010S_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Flash Hider/Silencer"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'acc_flashlight_pistol',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Light"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M952V',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Light"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_wmx',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Light"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_wmx_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Light"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15A',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15side_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15side',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_bk_top',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_top',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_bk_top_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_top_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_bk_light',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_bk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_wmx_light',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_wmx',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_light',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_bk_light_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_light_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_wmx_light_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_wmx_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpeq15_bk_h',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Light/Laser"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_compm4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_T1_low',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_T1_low_fwd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_T1_high',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_eotech_xps3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_EOTECH',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_eotech_552',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_eotech_552_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ELCAN',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ELCAN_pip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ELCAN_ard',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ELCAN_ard_pip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG_sa',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_g33_T1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_g33_xps3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_g33_xps3_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SpecterDR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SpecterDR_A',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SpecterDR_D',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SpecterDR_OD',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG_RMR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/250,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG_MDO',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Medium/Close"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_LEUPOLDMK4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_LEUPOLDMK4_2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_LEUPOLDMK4_2_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M8541',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M8541_low',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M8541_low_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M8541_low_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_premier',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/550,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_premier_low',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/550,
	/*Camo*/[],
	/*Type*/["Long"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpvs27',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Nightvision"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_SpecterDR_pvs27',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Nightvision"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_ACOG_anpvs27',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Nightvision"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_premier_anpvs27',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/700,
	/*Camo*/[],
	/*Type*/["Nightvision"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_anpas13gv1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/900,
	/*Camo*/[],
	/*Type*/["Thermal"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_M2A1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Other"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_weap_optic_smaw',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Other"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_optic_maaws',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Other"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_grip2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_grip2_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_grip2_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_grip3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_grip3_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_grip4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_grip1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_acc_harris_bipod',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Grips and Bipods"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_15Rnd_9x19_JHP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_15Rnd_9x19_FMJ',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_17Rnd_9x19_JHP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_17Rnd_9x19_FMJ',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_7x45acp_MHP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Pistol"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_00Buck',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_Slug',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_FRAG',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_HE',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_doomsday_Buck',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_8Rnd_00Buck',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_8Rnd_Slug',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_8Rnd_FRAG',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_8Rnd_HE',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_8Rnd_doomsday_Buck',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Shotgun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_40Rnd_46x30_JHP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_40Rnd_46x30_FMJ',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_40Rnd_46x30_AP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["SMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_M200_Stanag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_M855A1_Stanag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_Mk262_Stanag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Rifle"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_30Rnd_556x45_Mk318_Stanag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
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
	/*ClassName*/'rhsusf_100Rnd_556x45_M200_soft_pouch',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_100Rnd_556x45_soft_pouch',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_100Rnd_556x45_M855_soft_pouch',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_200Rnd_556x45_soft_pouch',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_200Rnd_556x45_M855_soft_pouch',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_200rnd_556x45_B_SAW',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_200rnd_556x45_T_SAW',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_200rnd_556x45_M_SAW',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_50Rnd_762x51_m82_blank',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_50Rnd_762x51',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/38,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_50Rnd_762x51_m62_tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_50Rnd_762x51_m61_ap',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_50Rnd_762x51_m80a1epr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_100Rnd_762x51_m82_blank',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_100Rnd_762x51',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_100Rnd_762x51_m62_tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_100Rnd_762x51_m61_ap',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_100Rnd_762x51_m80a1epr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["LMG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_20Rnd_762x51_m118_special_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_20Rnd_762x51_m62_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_20Rnd_762x51_m993_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["DMR"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_762x51_m118_special_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_762x51_m62_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_762x51_m993_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_10Rnd_762x51_m118_special_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_10Rnd_762x51_m62_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_10Rnd_762x51_m993_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_5Rnd_300winmag_xm2010',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Sniper"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_10Rnd_STD_50BMG_M33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_10Rnd_STD_50BMG_mk211',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m18_purple',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m18_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m18_yellow',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m18_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_an_m8hc',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Smoke"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m7a3_cs',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Stun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_mk84',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Stun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_mk3a2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Stun"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m69',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Dumby"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_an_m14_th3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Lethal"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m67',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/75,
	/*Camo*/[],
	/*Type*/["Lethal"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m714_White',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m715_Green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m716_yellow',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m713_Red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_M585_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m661_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m662_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/30,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m4009',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_m576',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_M441_HE',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_M397_HE-T',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_M433_HEDP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Under-Barrel GL"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m714_White',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/180,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m715_Green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/180,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m716_yellow',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/180,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m713_Red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/180,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_M585_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/180,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m661_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/180,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m662_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/180,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m4009',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_m576',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_M441_HE',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_M397_HE-T',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mag_6Rnd_M433_HEDP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Special"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_smaw_SR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_smaw_HEAA',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/320,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_smaw_HEDP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/320,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_maaws_HE',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/420,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_maaws_HEDP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/420,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mag_maaws_HEAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/420,
	/*Camo*/[],
	/*Type*/["Dumbfire"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fgm148_magazine_AT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/5,
	/*Price*/950,
	/*Camo*/[],
	/*Type*/["Lock-On Only"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_fim92_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/850,
	/*Camo*/[],
	/*Type*/["Rocket AA"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_Rhino',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["NVG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ANPVS_14',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["NVG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ANPVS_15',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["NVG"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'lerca_1200_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Spotting"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'lerca_1200_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Spotting"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mine_m14_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["AP Mine"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_mine_M19_mag',
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
	/*ClassName*/'rhs_uniform_g3_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_g3_rgr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_g3_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_g3_m81',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_g3_mc',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ucp_101st',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ucp_10th',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ucp_82nd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ocp_101st',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ocp_10th',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_cu_ocp_82nd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_FROG01_wd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_uniform_FROG01_d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Uniform"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp_Medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp_Repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp_Grenadier',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp_Rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp_SAW',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp_Squadleader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ucp_Teamleader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp_Medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp_Repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/350,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp_Grenadier',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp_Rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/400,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp_SAW',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp_Squadleader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_iotv_ocp_Teamleader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spcs_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spcs_ucp_rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3 ,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spcs_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spcs_ocp_rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/450,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_crewman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_corpsman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/550,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_light',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_mg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_marksman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_rifleman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_iar',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_squadleader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_spc_teamleader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/3,
	/*Price*/600,
	/*Camo*/[],
	/*Type*/["Vest"]
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
	/*ClassName*/'B_rhsusf_B_BACKPACK',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_falconii_coy',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_falconii_mc',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_assault_eagleaiii_coy',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_assault_eagleaiii_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/300,
	/*Camo*/[],
	/*Type*/["Backpack"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_assault_eagleaiii_ocp',
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
	/*ClassName*/'RHS_M2_MiniTripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_M2_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_M2_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Mk19_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RHS_Mk19_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/1000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_TOW_Tripod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_Tow_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/4,
	/*Price*/2000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_M252_Bipod_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/500,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_M252_Gun_Bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/6,
	/*Price*/20000,
	/*Camo*/[],
	/*Type*/["Static"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_Bowman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_bowman_cap',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_Booniehat_m81',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_Booniehat_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_Booniehat_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_booniehat2_marpatwd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_booniehat2_marpatd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_patrolcap_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_patrolcap_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_8point_marpatwd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_8point_marpatd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/25,
	/*Camo*/[],
	/*Type*/["Hat"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_black_skull',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_black_skull',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_Empire_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_green_mo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_green_mo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_mo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_skull',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_mo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_green_mo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_pink',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_pink',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_pink',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_pink',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_saf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_saf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_saf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_saf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_mask_smiley',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_mask_smiley',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_usa',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_hgu56p_visor_usa',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Pilot"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_protech_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_protech_helmet_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/60,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_protech_helmet_rhino',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/60,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_protech_helmet_rhino_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/70,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_cvc_green_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_cvc_green_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/60,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_cvc_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_cvc_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/60,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_M81',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_headset_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_tan_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_tan_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_tan_headset_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_wood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_wood_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_wood_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_wood_headset_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_des',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_des_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_des_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_des_headset_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_ESS_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_headset_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_headset_ess_ucp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_ucp_norotos',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_ESS_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_headset_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_headset_ess_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_ocp_norotos',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_helmet_camo_ocp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/2,
	/*Price*/200,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_semi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_semi_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_semi_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_ach_bare_semi_headset_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_M1942',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatwd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatwd_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatwd_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatwd_blk_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatwd_headset_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatd_ess',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_lwh_helmet_marpatd_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_alt_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_alt_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_alt_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_tan_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_alt_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_tan_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_alt_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_alt_tan_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_tan_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_alt_tan_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_semi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_alt_semi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_semi_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_semi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_alt_semi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_semi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_semi_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_alt_semi',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_alt_semi_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_semi_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_bare_norotos_arc_alt_semi_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd_alt_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd_norotos',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd_norotos_arc',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd_norotos_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatwd_norotos_arc_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd_alt_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/150,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd_norotos',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/110,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd_norotos_arc',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/120,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd_norotos_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/160,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_mich_helmet_marpatd_norotos_arc_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/1,
	/*Price*/170,
	/*Camo*/[],
	/*Type*/["Helmet"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_googles_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_googles_clear',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_googles_orange',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_googles_yellow',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhs_ess_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_oakley_goggles_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_oakley_goggles_clr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_oakley_goggles_ylw',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_grn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_grn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_od',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_od',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/50,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_gogg_grn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh2_gogg_grn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_gogg_od',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh2_gogg_od',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_gogg_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh2_gogg_tan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh_gogg_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rhsusf_shemagh2_gogg_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/["Facewear"]
];




//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Gear\Gear_Config_Set.sqf";