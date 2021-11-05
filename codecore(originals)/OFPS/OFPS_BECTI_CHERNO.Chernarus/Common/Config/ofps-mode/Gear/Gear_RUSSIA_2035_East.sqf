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
_mod = "RUSSIA_2035";

_u = []; //Gear Classname

//--------------------------------------------------------------------------------------------------------------



//--- Weapons

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_desert_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_camo_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_winter_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_desert_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_desert_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_desert_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_desert_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_desert_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_desert_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_camo_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_camo_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_camo_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_camo_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_camo_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_camo_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_winter_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_winter_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_winter_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_winter_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_winter_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_aek_a545_folded_winter_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_desert_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_camo_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_winter_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_desert_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_camo_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_grip_winter_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_desert_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_camo_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_pkm_a_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_eotech_553',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_eotech_553_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ak_12_gp_winter_eotech_553_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_desert_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_desert_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_camo_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_camo_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_winter_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'srifle_min_rf_vs_121_winter_po_4x24_p_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ash_12',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ash_12_pkm_a',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ash_12_ekp_8_18',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ash_12_po_4x24_p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ash_12_po_4x24_p_ir',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'arifle_min_rf_ash_12_c',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

//--- Magazines

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'30Rnd_min_rf_30mm_AGS_30_Box',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'1Rnd_min_rf_9M336_missiles',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'100Rnd_min_rf_762x54_Box',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'100Rnd_min_rf_762x54_T_Box',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'5Rnd_min_rf_338_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'6Rnd_min_rf_9M131_missiles',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'6Rnd_min_rf_9M119_missiles',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'20Rnd_min_rf_9x19_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'20Rnd_min_rf_9x19_T_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'18Rnd_min_rf_9x19_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'40Rnd_min_rf_80mm_rockets',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'12Rnd_min_rf_LG_scalpel',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'40Rnd_min_rf_122mm_grad',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'700Rnd_min_rf_30mm_2A38M',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'12Rnd_min_rf_57E6_missiles',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'4Rnd_min_rf_9M133_missiles',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'2000Rnd_min_rf_762x51_coax_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'PylonRack_min_rf_20Rnd_B_8V20_HE',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'PylonRack_min_rf_20Rnd_B_8V20_AP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'PylonRack_min_rf_6Rnd_Vikhr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'150Rnd_min_rf_127x108_Kord',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'450Rnd_min_rf_127x108_Kord',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'50Rnd_min_rf_127x108_Kord',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

//--- GEAR

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_bandana_olive',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_bandana_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_bandana_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_beanie_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_beanie_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_cap_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_cap_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_cap_flora_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_hat_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_hat_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_hat_flora_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_hat_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_hat_skol',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_crew',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_crew_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_crew_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_crew_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_para',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_recon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_recon_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_recon_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_pilot',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_ace',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_soldier_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_soldier_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_soldier_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_soldier_izlom',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_soldier_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_mich_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_mich_urban',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_helmet_mich_green_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_beret_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_beret_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_cap_headphones',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Headgear_min_rf_ushanka',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_armor_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_armor_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_armor_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_armor_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_armor_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_lite_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_lite_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_lite_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_lite_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_lite_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_tactical_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_tactical_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_tactical_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_tactical_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_tactical_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_special_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_special_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_special_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_special_vest_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_special_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_special_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_special_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_special_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_special_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_special_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_highcapacity_special_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_belt_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_belt_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_combat_belt_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_combat_belt_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_combat_belt_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_combat_belt_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_combat_belt_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Vest_min_rf_combat_belt_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_flora_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_flora_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_flora_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_flora_desert_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_flora_desert_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_surpat_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_surpat_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_izlom',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_izlom_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_izlom_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_hex_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_hex_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_urban',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_urban_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_urban_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_green_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_green_hex_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_green_hex_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_ghillie',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_desert_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_desert_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_desert_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_desert_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_emr_desert_ghillie',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_klmk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_klmk_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_klmk_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_klmk_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_klmk_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_surpat_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_surpat_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_surpat_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_surpat_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_partizan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_partizan_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_partizan_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_partizan_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_gorka_partizan_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_helipilot_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_pilot_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_helipilot_desert_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_pilot_desert_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_tactical_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_tactical_skol',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_tactical_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_tactical_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_winter_suit',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_winter_suit_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_winter_suit_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Item_min_rf_winter_suit_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];


//--- Helmets and Vests

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_flora_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_flora_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_flora_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_flora_desert_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_flora_desert_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_surpat_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_surpat_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_izlom',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_izlom_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_izlom_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_hex_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_hex_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_urban',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_urban_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_urban_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_green_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_green_hex_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_green_hex_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_ghillie',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_desert_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_desert_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_desert_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_desert_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_emr_desert_ghillie',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_klmk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_klmk_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_klmk_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_klmk_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_klmk_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_surpat_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_surpat_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_surpat_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_surpat_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_partizan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_partizan_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_partizan_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_partizan_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_gorka_partizan_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helipilot_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_pilot_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helipilot_desert_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_pilot_desert_overall',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_skol',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_emr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_winter_suit',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_winter_suit_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_winter_suit_officer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_winter_suit_hood_lite',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_armor_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_armor_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_armor_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_armor_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_armor_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_lite_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_lite_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_lite_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_lite_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_lite_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_tactical_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_special_vest_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_special_vest_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_special_vest_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_special_vest_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_special_vest_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_special_vest_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_special_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_special_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_special_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_special_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_highcapacity_special_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_belt_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_belt_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_combat_belt_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_combat_belt_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_combat_belt_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_combat_belt_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_combat_belt_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_combat_belt_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_pilot',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_ace',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_crew',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_crew_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_crew_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_crew_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_soldier_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_soldier_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_soldier_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_soldier_izlom',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_soldier_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_mich_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_mich_urban',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_mich_green_hex',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_para',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_recon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_recon_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_helmet_recon_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_cap_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_cap_flora_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_cap_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_hat_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_hat_flora_desert',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_hat_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_hat_multicam',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_beanie_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_bandana_olive',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_bandana_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_bandana_white',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_beret_green',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_beret_red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_cap_headphones',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_ushanka',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

//--- Backpacks

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_winter',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_AR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_GL',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_TL',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_vsr_recon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_vsr_recon_JTAC',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_vsr_recon_M',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_vsr_recon_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_vsr_recon_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_vsr_recon_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_flora_recon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_flora_recon_JTAC',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_flora_recon_M',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_flora_recon_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_flora_recon_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_flora_recon_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_recon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_recon_JTAC',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_recon_M',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_recon_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_recon_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_surpat_recon_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_winter_recon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_winter_recon_JTAC',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_winter_recon_M',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_winter_recon_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_winter_recon_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_backpack_winter_recon_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_vsr',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_AA',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_AAA',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_AAR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_AAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_AT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Eng',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Metis_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_AGS_30_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Kord_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_GMG_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Metis_s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_AGS_30_s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Kord_s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_HMG_s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_HMG_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_vsr_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Mortar_s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_Mortar_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_vsr_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_vsr_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_vsr_saboteur',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_flora_saboteur',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_AA',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_AAA',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_AAR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_AAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_AT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_Ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_Eng',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_GMG_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_HMG_s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_HMG_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_Mortar_s',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_Mortar_w',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_surpat_saboteur',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_AA',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_AAA',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_AAR',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_AAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_AT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_Ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_Eng',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_LAT',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_exp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'min_rf_torna_black_repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/0,
	/*Camo*/[],
	/*Type*/[]
];


//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Gear\Gear_Config_Set.sqf";