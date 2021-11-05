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
	/*ClassName*/'at_phalanx_35_autocannon_AA_35mm',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'ofps_autocannon_40mm_CTWS',
	/*MaxMags*/1
];

//--- Explosives --------------------------

//--- Heavy --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_Vcannon_D30MP_veh',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_Vcannon_D30GNDAP_veh',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_Vcannon_D30GNDAT_veh',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'ofps_cannon_127mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_cannon_125mm_advanced',
	/*MaxMags*/8
];

//--- Arty --------------------------

//--- HE --------------------------

//--- Grenades --------------------------

//--- Launchers --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'ofps_SAM_missiles_titan_static',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_rbs97_launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_weapon_rim162Launcher_4km',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_weapon_rim162Launcher_6km',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_weapon_rim162Launcher_8km',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_weapon_mim145Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_weapon_s750Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'ofps_torpedo45',
	/*MaxMags*/4
];

//--- Naval --------------------------

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'OFPS_weapon_coastalLauncher',
	/*MaxMags*/1
];

//--- Other --------------------------

//--- AIR ------------------------------------------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'bwi_ffar_pods',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'bwi_50_pods',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'bwi_FFARLauncher_unguided',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'bwi_AGM114_Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'bwi_50',
	/*MaxMags*/1
];

//--- Missles --------------------------

//--- Bombs --------------------------

//--- Pylons --------------------------

//--- Other --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rkb_kraftStrahlKanone',
	/*MaxMags*/20
];




//--------------------------------------------------------------------------------------------------------------

[_side, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Ammo\Weapon_Config_Set.sqf";