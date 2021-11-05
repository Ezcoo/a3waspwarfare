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
_mod = "SFP";

_u = []; //Gear Classname

//--------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------------
//SFP SOURCE: http://hosted.anrop.se/zip/sfpweb/docs/
//--------------------------------------------------------------------------------------------------------------

//Glasses Classes-------------------------------------------------------------------------------------
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'G_Aviator',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'G_Bandanna_khk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'G_Shades_Red',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
		
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_gloves',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
 	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_gloves_black',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_medicalgloves',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_skyddsmask90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];

//Gear Classes-------------------------------------------------------------------------------------
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'launch_RPG32_F',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
 	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_105mm_cannon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_120mm_cannon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_20mm_akan',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_73mm_cannon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_75mm_cannon_costal',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_84mm_cannon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_cannon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_cannon_pvpj1110',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_aden30',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_adyk_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ag90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 		
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 		
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4b',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4b_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4c',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4c_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4d_marksman',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak4or',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];		
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5_gold',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5_m203',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5_snow',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5b',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5b_susat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_3xaimpoint_dbal2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_aimpoint_dbal2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_aimpoint_dbal2_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_aimpoint_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_alt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_m203',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_m203_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_m203_aimpoint_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5c_m203_blk',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5d',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5dmk2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5dmk2_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5dmk2_aimpoint_dbal2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ak5dmk2_aimpoint_flashlight',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_arak135_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_armor_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bandage',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_batmossa_m48',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bk90_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_57mm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_57mm_hepf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_cbj_ms',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_cbj_ms_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_cbj_ms_aimpoint_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];		
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_cga5p',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_criminal_uniform1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_criminal_uniform2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_criminal_uniform3',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_criminal_uniform4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_dbal2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_droptank',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_flashlight',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_flighthelmet116',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_fm_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_fsj_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_g36c',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_g36c_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_g36c_holo_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_gbu_m17_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_gbu39_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ghillie_desert_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ghillie_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg86',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_hat_suntrip',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_holster',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_homeguard_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_icecream_horn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_imgint_1010',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_indiska_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_item_firstaid',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_k3_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_k4_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kj_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kpistm45',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kroppsskydd12',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kroppsskydd12_at',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kroppsskydd12_crew',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kroppsskydd12_holster',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kroppsskydd12_medic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kroppsskydd12_tl',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kroppsskydd94',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp39_machinegun',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp58B2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp58b2_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp58c',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp88',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp88_dual',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp88_rws',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp90b',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp90b_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp90c',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp90c_aimpoint_dbal2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp94_machinegun',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_lg_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_lgmp_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m1_onu_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m1_un_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m37w_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m37w_helmet_cap1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m37w_helmet_cap2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m37w_helmet_dok',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m37w_helmet_dok2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m51_rocket_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m59w_cap',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m59w_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90_BasicBody',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_cap',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_cap_isaf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_cap_peltor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_helmet_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_helmet_headset_nvg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_helmet_nvg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_helmet_peltor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_helmet_peltor_nvg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_uniform_folded',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90d_uniform_tshirt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90p_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90s_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90s_helmet_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90s_helmet_peltor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90s_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90s_uniform_hood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90un_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90un_helmet_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90un_helmet_peltor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_booniehat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_cap',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_cap_peltor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_helmet_headset',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_helmet_headset_nvg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_helmet_nvg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_helmet_peltor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_helmet_peltor_nvg',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_uniform_dirty',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_uniform_folded',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_uniform_ksk90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_uniform_mp',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_uniform_tshirt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m93_naval',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_mauser_bk27_27mm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_mortar_120mm',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_mp5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_mp5_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];		
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_mp5_rail',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_muzzle_snds_cbj',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_optic_3x_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_optic_aimpoint',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_optic_aimpoint_t1',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_optic_aimpoint_twist',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_optic_hensoldt_4x',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_optic_kikarsikte90b_10x',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_optic_susat_4x',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_p226',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_p88',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_p88_fl',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_p88_sd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_peltor',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_belt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_hat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_helmet',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_horn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_tacVest',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_uniform',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_uniform_modern',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_uniform_modern_reflective',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_uniform_modern_tactical',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_police_uniform_tactical',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_prisonhood',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_psg90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];		
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_psg90_camo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_psg90_camo_scope',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott68',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott68_used',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott86',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott86_used',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ra135',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb55_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb56_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb57',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb57_used',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb70_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs04_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs05_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs100_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs15_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs17_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs24_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs69',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs71_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs74_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs75_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs97_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs98_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs99_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_remington870',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 		
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_santa_hat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_signpist50',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_sjunkbomb_Launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_stridssele',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_stridssele_gas',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_stridssele_ksk90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_stridsvast08',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_stridsvast2000',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_suicidebelt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_suntrip_tshirt',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_swe_fighter_suit',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_tlr2',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_torpedo45',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_torpedo61_launcher',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_un_beret',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_un_booniehat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];
	

//Magazines Classes-------------------------------------------------------------------------------------
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_100Rnd_762x51_ksp58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_10Rnd_127x99_ag90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_12Gauge_8rd_Pellets',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_12Gauge_8rd_Slug',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_12rnd_arak135',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_12x_sjunkbombm33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_14x_m51_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_15Rnd_9x19_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_16rnd_gbu_m71',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_17Rnd_9x19_Mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_1rnd_lyspatron7_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_1x_blankpylon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_200Rnd_556x45_ksp90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_20mm_hei_30rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_20mm_hei_720rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_20Rnd_762x51_ak4',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_20Rnd_762x51_ak4_tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_249Rnd_762x51_ksp58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_24rnd_arak135',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_250Rnd_762_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2nd_120mm_Guided_shells',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2Rnd_120mm_Mo_shells',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2rnd_bk90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2rnd_gbu39',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_blankpylon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb04e',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb05',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb100',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb15',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb24',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb71',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb74',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb75',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb98',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb99',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_rb99_internal',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_2x_torpedo61',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_30Rnd_556x45_Stanag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_30Rnd_556x45_Stanag_tracer',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_30Rnd_650x25mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_30Rnd_650x25mag_subsonic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_30Rnd_9mm_mp5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_30Rnd_9mm_mp5_JHP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_36Rnd_9mm_kpistm45',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_3x_blankpylon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_3x_rb04e',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_3x_rb75',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_3x_rb98',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_40mm_apfsds_8rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_40mm_hei_8rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_40mm_hepf_8rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_blankpylon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_rb100',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_rb15',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_rb24',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_rb71',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_rb75',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_rb99',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_sjunkbombm33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_4x_torpedo61',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_50Rnd_127_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_50Rnd_762x51_ksp58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_57mm_hei_60rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_57mm_hepf_60rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_5x_blankpylon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_5x_rb75',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_6rnd_arak135',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_6x_blankpylon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_75mm_heat_40rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_8rnd_gbu_m71',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_8rnd_gbu39',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_8x_rb15',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_he_20rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_heat_39rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_9Rnd_762x51_psg90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_9Rnd_762x51_psg90_prick',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_aden30_126rnds',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_aden30_150rnds',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_aden30_300rnds',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bru61',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_disposabledummy',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_droptank_300gal',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_FlashBang',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_he_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_heat_62_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_heat_66_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_heat_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
]; 	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_illum_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_smoke_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_handgrenade_shgr07',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_handgrenade_shgr2000',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_handgrenade_shgr56',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ksp94_200rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_mauser_bk27_120rnd',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott68_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott86_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb55_4x_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb55_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb56_4x_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb56_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb57_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb70_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs17_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs69_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs97_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_sprdeg46_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_strvm5_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_strvm6_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_torpedo45_2x_mag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_wheel_horn',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];

//AMMO Classes-------------------------------------------------------------------------------------
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_120mm_mortar',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_120mm_mortar_guided',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_12Gauge_Pellets',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_12Gauge_Slug',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_20mm_hei',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_40mm_apfsds',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_40mm_hei',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_40mm_hepf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_556x45_ball',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_57mm_hei',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_57mm_hepf',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_650x25_cbj_ball',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_650x25_cbj_subsonic',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_75mm_heat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_762x51_ball',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_762x51_prick',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_he',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_heat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_lp_heat',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_9x19_parrabellum',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_9x19_parrabellum_JHP',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_aden30_gunpods',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bk90_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bk90_m1j',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_blankpylon',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bru61_rack',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_droptank_300gal',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_FlashShell',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_gbu39_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_flare',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_flare_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_he_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_heat_62_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_heat_66_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_heat_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grg_smoke_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m51_rocket_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott68_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_pskott86_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_R_135mm_HE',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb04_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb15_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb17_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb55_at',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb56_at',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb70_missile',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb71_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb75_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb98_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb99_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rb99_ammo_internal',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs69_rocket',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs97_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_shgr07',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_shgr07_dummy',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_shgr2000',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_shgr56',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_sjunkbombm33',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_sjunkbombm33_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_sprdeg46_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_strvm5_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_strvm6_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_suicide_bomb',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_torpedo45_ammo',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_torpedo61',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];	
	
_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_wheel_gas',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/5,
	/*Camo*/[],
	/*Type*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_grg_loader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_grg_loader_flare',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_grg_loader_smoke',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_lk35',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_lk35_assault',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_lk35_explosives',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_lk35_ksp58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_lk35_ksp90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_lk35_mines',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_lk35_repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_rb56_loader',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_sjvv9',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack08',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack08_assault',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack08_explosives',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack08_ksp58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack08_ksp90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack08_repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack2000',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack2000_assault',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack2000_explosives',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack2000_ksp58',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack2000_ksp90',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_backpack_stridssack2000_repair',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_kamin_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_bag_base',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_dummy_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_m90w_underwear',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grkm84_support_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_grkm84_weapon_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ra145',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
];  	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_ra180',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs17_missile_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs17_support_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs17_weapon_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs56_support_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs56_weapon_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs70_support_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 	

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_rbs70_weapon_bag',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_strvm5',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

_u pushBack [
	/*Enabled*/false,
	/*Name*/'',
	/*ClassName*/'sfp_strvm6',
	/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
	/*UpgradeLevel*/0,
	/*Price*/100,
	/*Camo*/[],
	/*Type*/[]
]; 

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Gear\Gear_Config_Set.sqf";
