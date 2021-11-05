/*
//--------------------------------------------------------------------------------------------------------------
# HEADER #
Description:	This file presents classnames and their values to the mission.

//--------------------------------------------------------------------------------------------------------------	
# DOCUMENTATION #

	/*Enabled*/
		//DESCRIPTION: Enables use of Weapon in game, still loads Weapon into variable for reference
		//TYPE: Boolean
		//DEFAULT: true
		//EXAMPLES: true/false

	/*Name*/
		//DESCRIPTION: Common Weapon name, primarily for internal reference
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'GBU Bomb'

	/*ClassName*/
		//DESCRIPTION:  Weapon Class Name
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'Bomb_03_Plane_CAS_02_F'

	/*MaxMags*/
		//DESCRIPTION:  Max amount of magazines allowed per weapon turret
		//TYPE: Integer
		//DEFAULT: 1
		//EXAMPLES: 

//--------------------------------------------------------------------------------------------------------------
private ["_side", "_u"];

_side = _this;

_u = []; //Ammo Classname

//--------------------------------------------------------------------------------------------------------------

//--- LAND -----------------------------------------------------------

//--- Small Arms --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_grg86',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_mauser_bk27_27mm',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_aden30',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp39_machinegun',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp58c',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp58c_2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp58c_3',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp94_machinegun',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp88',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp88_dual',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_ksp88_rws',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_grg48',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_grg_m4',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_grsp_40mm',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_AA',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_AA_main',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_AA_front',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_AA_rear',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_57mm',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bofors_l70_57mm_hepf',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_20mm_akan',
	/*MaxMags*/20
];
//--- Explosives --------------------------

//--- Heavy --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_73mm_cannon',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_75mm_cannon_costal',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_84mm_cannon',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_cannon',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_90mm_cannon_pvpj1110',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_105mm_cannon',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_120mm_cannon',
	/*MaxMags*/4
];

//--- Arty --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_mortar_120mm',
	/*MaxMags*/1
];
//--- HE --------------------------

//--- Grenades --------------------------

//--- Launchers --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rb55_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs15_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs04_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_bk90_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs05_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs24_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs71_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs74_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs75_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_m51_rocket_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs97_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs98_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs99_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs100_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_arak135_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_lyran_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs17_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rb56_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rb70_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rb57',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rb57_used',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_rbs69',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_torpedo45',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_torpedo61_launcher',
	/*MaxMags*/4
];
//--- Naval --------------------------

//--- Other --------------------------

//--- AIR ------------------------------------------------------------

//--- Missles --------------------------

//--- Bombs --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_sjunkbomb_Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_gbu_m17_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'sfp_gbu39_launcher',
	/*MaxMags*/1
];
//--- Pylons --------------------------

//--- Other --------------------------



//--------------------------------------------------------------------------------------------------------------

[_side, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Ammo\Weapon_Config_Set.sqf";