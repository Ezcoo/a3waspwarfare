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
		//EXAMPLES: 'Mil Wall'

	/*Headers*/
		//DESCRIPTION:  Menu name and various
		//TYPE: Array
		//DEFAULT: ''
		//EXAMPLES: 
			//'Dome (Small )'
			//["Barricade 4m",[["CanAutoAlign", 4, 0]]]

	/*ClassName*/
		//DESCRIPTION:  Unit Class Name
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'O_T_Soldier_A_F'

	/*Price*/
		//DESCRIPTION:  Price of the unit
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 500

	/*Placement*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Categories - tags*/
		//DESCRIPTION:  Filter by Camo
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Tropic'],
			//['Tropic','Tropic'],

	/*CoinMenu Location*/
		//DESCRIPTION:  Which factory unit will be available for purchase
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//[CTI_FACTORY_BARRACKS]
			//[CTI_FACTORY_BARRACKS,CTI_FACTORY_BARRACKS]

	/*Blacklist*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3
	
	/*UpgradeLevel*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*MaxCount*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Cooldown*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Specials*/
		//DESCRIPTION:  
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Rifle'],
			//['Rifle','Rifle']

//--------------------------------------------------------------------------------------------------------------
private ["_side", "_faction", "_mod", "_u"];

_side = _this;
_faction = "East";
_mod = "OFPS";

_u = []; //Defense Classname

//--------------------------------------------------------------------------------------------------------------


_u pushBack [
	/*Enabled*/false,
	/*Name*/'C-RAM Phalanx (Engages incoming rounds)',
	/*Class*/"O_at_phalanx_35AI",
	/*Price*/50000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Static Titan AT (360Â°)',
	/*Class*/"ofps_O_Van_static_AT_F",
	/*Price*/8000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Static Titan AA (360Â°)',
	/*Class*/"ofps_O_Van_static_AA_F",
	/*Price*/8000,
	/*Placement*/[180, 5],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mk45 Advanced Cannon',
	/*Class*/"OFPS_MK45_CANNON_O",
	/*Price*/100000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/4,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Mk21 Centurion (4km)',
	/*Class*/"OFPS_CENTURION_O_4KM",
	/*Price*/60000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/3,
	/*Cooldown*/300,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Mk21 Centurion (6km)',
	/*Class*/"OFPS_CENTURION_O_6KM",
	/*Price*/80000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/2,
	/*Cooldown*/300,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mk21 Centurion (8km)',
	/*Class*/"OFPS_CENTURION_O_8KM",
	/*Price*/125000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/1,
	/*Cooldown*/300,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Coastal Centurion (Anti Naval)',
	/*Class*/"OFPS_CENTURION_O_COASTAL",
	/*Price*/100000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/2,
	/*Cooldown*/300,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Coastal Centurion Fortified (Anti Naval)',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","centurion_coastal_fortified_east",2]]],
	/*Price*/120000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/1,
	/*Cooldown*/300,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'S-750 Rhea (12km)',
	/*Class*/"OFPS_O_SAM_System_04_F",
	/*Price*/300000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/1,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'S-750 Rhea Elevated',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","sam_ofps_east",2]]],
	/*Price*/310000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/1,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'S-750 Rhea Tower',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","sam_tower_ofps_east",2]]],
	/*Price*/310000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/1,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/false,
	/*Name*/'Mk45 Hammer (Arty)',
	/*Class*/"OFPS_MK45_HAMMER_O",
	/*Price*/250000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Alternative"], ["DMG_Reduce", 2]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mk41 VLS',
	/*Class*/"OFPS_MK41_VLS_O",
	/*Price*/300000,
	/*Placement*/[180, 15],
	/*Tags*/["Defense"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/3,
	/*MaxCount*/1,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mk45 Hammer Bunker',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","mk45_hammer_bunker_east",2]]],
	/*Price*/105000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/1,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Mk45 Hammer Bunker Tall',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","mk45_hammer_bunker_tall_east",2]]],
	/*Price*/105000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/2,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Base Bunker Mk45 x4',
	/*Class*/["Sign_Arrow_Direction_Yellow_F", [["Composition","base_bunker_mk45_x4_east",2]]],
	/*Price*/400000,
	/*Placement*/[180, 15],
	/*Tags*/["Composition Armed"],
	/*Location*/["HQ"],
	/*Blacklist*/[],
	/*Upgrade*/2,
	/*MaxCount*/1,
	/*Cooldown*/600,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Noticeboard (OFPS)',
	/*Class*/["Land_Noticeboard_F", [["Sign","notice_ofps","\ofps_assets\images\sign_ofps.paa"]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Signs"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Sign Small (OFPS)',
	/*Class*/["SignAd_SponsorS_F", [["Sign","sign_small_ofps","\ofps_assets\images\sign_ofps.paa"]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Signs"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Map (tips over easy)',
	/*Class*/["Land_MapBoard_F", [["Sign","map","\ofps_assets\images\sign_map.paa"]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Signs"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Sign (CSAT)',
	/*Class*/["SignAd_Sponsor_F", [["Sign","sign_csat","\ofps_assets\images\sign_csat.paa"]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Signs"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Sign (OFPS)',
	/*Class*/["SignAd_Sponsor_F", [["Sign","sign_ofps","\ofps_assets\images\sign_ofps.paa"]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Signs"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Billboard (OFPS)',
	/*Class*/["Land_Billboard_F", [["Sign","billboard_ofps","\ofps_assets\images\sign_ofps.paa"]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Signs"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Large Billboard (OFPS)',
	/*Class*/["Land_Billboard_04_blank_F", [["Sign","large_billboard_ofps","\ofps_assets\images\sign_ofps.paa"]]],
	/*Price*/100,
	/*Placement*/[0, 5],
	/*Tags*/["Signs"],
	/*Location*/["HQ", "RepairTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[["DMG_Explosion", 0.5]]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Briefing Room Desk',
	/*Class*/["Land_BriefingRoomDesk_01_F", [["Sign","briefing_room_desk_ofps","\ofps_assets\images\sign_map.paa"]]],
	/*Price*/50,
	/*Placement*/[90, 15],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'Briefing Room Screen',
	/*Class*/["Land_BriefingRoomScreen_01_F", [["Sign","briefing_room_screen_ofps","\ofps_assets\images\sign_map.paa"]]],
	/*Price*/50,
	/*Placement*/[90, 15],
	/*Tags*/["Misc"],
	/*Location*/["HQ", "RepairTruck", "DefenseTruck"],
	/*Blacklist*/[],
	/*Upgrade*/0,
	/*MaxCount*/-1,
	/*Cooldown*/-1,
	/*Dismantle*/-1,
	/*Specials*/[]
];


[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Defenses.sqf";