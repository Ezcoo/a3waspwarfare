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
	/*ClassName*/'LMG_RCWS',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_65mm_body',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_M200',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_M200_body',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_Minigun',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_Minigun_heli',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_127',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_127_APC',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_127_UGV',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_01',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_static',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_M2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_NSVT',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_127_LSV_01',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_127_AFV',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'MMG_01_vehicle',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'MMG_02_coax',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'MMG_02_vehicle',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'M134_minigun',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_Minigun2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_Minigun_Transport',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_Minigun_Transport2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_coax',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'LMG_coax_ext',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG_127_MBT',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'HMG2_M2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'UGL_F',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'M61_Vulcan_CIWS',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'M61_Vulcan_CIWS_stepped',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'M61_Vulcan',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'ram_gatling_20mm',
	/*MaxMags*/20
];
//--- Explosives --------------------------

//--- Heavy --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_20mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_40mm_CTWS',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon2_40mm_CTWS',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_76mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_100mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_100mm_CTWS',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_120mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_125mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_105mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_120mm_long',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_125mm_advanced',
	/*MaxMags*/4
];

//--- Arty --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'mortar_82mm',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'mortar_155mm_AMOS',
	/*MaxMags*/1
];

//--- HE --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'GMG_20mm',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'GMG_40mm',
	/*MaxMags*/4
];
//--- Grenades --------------------------

//--- Launchers --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_NLAW_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_RPG32_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_Titan_base',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_Titan_short_base',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_B_Titan_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_I_Titan_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_O_Titan_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_Titan_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_B_Titan_short_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_I_Titan_short_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_O_Titan_short_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_Titan_short_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_RPG32_ghex_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_RPG7_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_B_Titan_tna_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_B_Titan_short_tna_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_O_Titan_ghex_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_O_Titan_short_ghex_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_MRAWS_base_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_MRAWS_olive_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_MRAWS_olive_rail_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_MRAWS_green_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_MRAWS_green_rail_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_MRAWS_sand_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_MRAWS_sand_rail_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_O_Vorona_brown_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launch_O_Vorona_green_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'launcher_SPG9',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'SeaRAM_AA',
	/*MaxMags*/1
];
//--- Naval --------------------------

//--- Other --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'SmokeLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'FlareLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CMFlareLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CMFlareLauncher_Singles',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CMFlareLauncher_Triples',
	/*MaxMags*/1
];
//--- AIR ------------------------------------------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Twin_Cannon_20mm',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'gatling_20mm',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'gatling_20mm_VTOL_01',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'gatling_25mm',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'gatling_30mm',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Gatling_30mm_Plane_CAS_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'gatling_30mm_VTOL_02',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Cannon_30mm_Plane_CAS_02_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'autocannon_30mm',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'autocannon_30mm_RCWS',
	/*MaxMags*/3
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'autocannon_35mm',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'autocannon_40mm_CTWS',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'autocannon_30mm_CTWS',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'autocannon_40mm_VTOL_01',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'cannon_105mm_VTOL_01',
	/*MaxMags*/4
];
//--- Missles --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rockets_230mm_GAT',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'rockets_Skyfire',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Rocket_03_HE_Plane_CAS_02_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Rocket_03_AP_Plane_CAS_02_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Rocket_04_HE_Plane_CAS_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Rocket_04_AP_Plane_CAS_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_SCALPEL',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Missile_AA_03_Plane_CAS_02_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Missile_AA_04_Plane_CAS_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Missile_AGM_01_Plane_CAS_02_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Missile_AGM_02_Plane_CAS_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_DAGR',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_DAR',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_ASRAAM',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_titan',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_titan_AA',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_titan_static',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_Zephyr',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_Jian',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_SAAMI',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_Firefist',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_Vorona',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RIM162_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'RIM162_W2',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_RIM_116',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_RIM_116_naval',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_RIM_116_stepped',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_RIM_7',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_RIM_7_naval',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'missiles_RIM_7_stepped',
	/*MaxMags*/1
];
//--- Bombs --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Mk82BombLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Bomb_03_Plane_CAS_02_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Bomb_04_Plane_CAS_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'GBU12BombLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'GBU12BombLauncher_Plane_Fighter_03_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'BombCluster_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'BombCluster_02_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'BombCluster_03_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'BombDemine_01_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Bomb_Leaflets',
	/*MaxMags*/1
];
//--- Pylons --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_Cannon_Phalanx',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_rim116Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_rim162Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_VLS_01',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_Fighter_Gun20mm_AA',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_AMRAAMLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_BIM9xLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_AGM_65Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_GBU12Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_Fighter_Gun_30mm',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_R73Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_R77Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_AGM_KH25Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_KAB250Launcher',
	/*MaxMags*/1
];
//--- Other --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator_mounted',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator_vehicle',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator_pilotCamera',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator_02',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator_03',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator_01_khk_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'Laserdesignator_02_ghex_F',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'DecoyLauncher_L',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'DecoyLauncher_R',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_mim145Launcher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_ShipCannon_120mm',
	/*MaxMags*/2
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_Artillery_rockets_230mm_GAT',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'weapon_s750Launcher',
	/*MaxMags*/1
];

//--------------------------------------------------------------------------------------------------------------

[_side, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Ammo\Weapon_Config_Set.sqf";