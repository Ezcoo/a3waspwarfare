Private ['_c','_count','_d','_dir','_dis','_n','_s','_side','_t','_v'];

_side = _this;

/* Root Definition */
_MHQ = 'CUP_B_LAV25_HQ_desert_USMC';
_HQ = "M1130_HQ_unfolded_Base_EP1";
_BAR = "US_WarfareBBarracks_Base_EP1";
_LVF = "US_WarfareBLightFactory_base_EP1";
_CC = "US_WarfareBUAVterminal_Base_EP1";
_HEAVY = "US_WarfareBHeavyFactory_Base_EP1";
_AIR = "US_WarfareBAircraftFactory_Base_EP1";
_SP = "US_WarfareBVehicleServicePoint_Base_EP1";
_AAR = "US_WarfareBAntiAirRadar_Base_EP1";
_ARR = "US_WarfareBArtilleryRadar_Base_EP1";

/* Construction Crates */
missionNamespace setVariable [Format["cti_%1CONSTRUCTIONSITE", _side], 'US_WarfareBContructionSite_EP1'];

/* Structures */
_v			= ["Headquarters"];
_n			= [_HQ];
_d			= [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c			= [missionNamespace getVariable "cti_C_STRUCTURES_HQ_COST_DEPLOY"];
_t			= [if (WF_Debug) then {1} else {30}];
_s			= ["HQSite"];
_dis		= [15];
_dir		= [0];

_v pushBack "Barracks";
_n pushBack _BAR;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 200;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 25;
_dir pushBack 90;

_v pushBack "Light";
_n pushBack _LVF;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 600;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 45;
_dir pushBack 90;

_v pushBack "CommandCenter";
_n pushBack _CC;
_d pushBack (localize "STR_WF_CommandCenter");
_c pushBack 1200;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 20;
_dir pushBack 90;

_v pushBack "Heavy";
_n pushBack _HEAVY;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 2800;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 45;
_dir pushBack 90;

_v pushBack "Aircraft";
_n pushBack _AIR;
_d pushBack (localize "STR_WF_AircraftFactory");
_c pushBack 4400;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 55;
_dir pushBack 90;

_v pushBack "ServicePoint";
_n pushBack _SP;
_d pushBack (localize "STR_WF_MAIN_ServicePoint");
_c pushBack 700;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 21;
_dir pushBack 90;


_v pushBack "AARadar";
_n pushBack _AAR;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 3200;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 21;
_dir pushBack 90;

_v pushBack "ArtyRadar";
_n pushBack _ARR;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 2500;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 21;
_dir pushBack 90;


for [{_count = count _v - 1},{_count >= 0},{_count = _count - 1}] do {
	missionNamespace setVariable [Format["cti_%1%2TYPE",_side,_v select _count],_count];
};

{
	missionNamespace setVariable [Format ["%1%2",_side, _x select 0], _x select 1];
} forEach [["HQ",_HQ],["BAR",_BAR],["LVF",_LVF],["CC",_CC],["HEAVY",_HEAVY],["SP",_SP],["AAR",_AAR],["ARR",_ARR]];

missionNamespace setVariable [Format["cti_%1MHQNAME", _side], _MHQ];
missionNamespace setVariable [Format["cti_%1STRUCTURES", _side], _v];
missionNamespace setVariable [Format["cti_%1STRUCTURENAMES", _side], _n];
missionNamespace setVariable [Format["cti_%1STRUCTUREDESCRIPTIONS", _side], _d];
missionNamespace setVariable [Format["cti_%1STRUCTURECOSTS", _side], _c];
missionNamespace setVariable [Format["cti_%1STRUCTURETIMES", _side], _t];
missionNamespace setVariable [Format["cti_%1STRUCTUREDISTANCES", _side], _dis];
missionNamespace setVariable [Format["cti_%1STRUCTUREDIRECTIONS", _side], _dir];
missionNamespace setVariable [Format["cti_%1STRUCTURESCRIPTS", _side], _s];

/* Defenses */

// static defence
/*
_n =         ["CUP_B_M252_USMC"];
_n pushBack "RHS_M119_WD";
_n pushBack "RHS_Stinger_AA_pod_WD";
_n pushBack "RHS_M2StaticMG_WD";
_n pushBack "RHS_M2StaticMG_MiniTripod_WD";
_n pushBack "CUP_B_TOW_TriPod_US";
_n pushBack "RHS_MK19_TriPod_WD";
_n pushBack "B_SAM_System_02_F";
//_n pushBack "CUP_B_RBS70_ACR";

// static walls
_n pushBack "Base_WarfareBBarrier10xTall";
_n pushBack "Base_WarfareBBarrier5x";
_n pushBack "Base_WarfareBBarrier10x";
_n pushBack "Land_HBarrier_large";
_n pushBack "Land_HBarrier5";
_n pushBack "Land_HBarrier3";
_n pushBack "Land_fort_bagfence_corner";
_n pushBack "Land_fort_bagfence_round";
_n pushBack "Land_fort_bagfence_long";
_n pushBack "Concrete_Wall_EP1";
_n pushBack "zed_desert";

// static fortification
_n pushBack "Land_CamoNet_NATO_EP1";
_n pushBack "Land_CamoNetVar_NATO_EP1";
_n pushBack "Land_CamoNetB_NATO_EP1";
_n pushBack "Land_Ind_IlluminantTower";
_n pushBack "Land_fort_rampart_EP1";
_n pushBack "Land_fort_artillery_nest_EP1";
_n pushBack "Hhedgehog_concrete";
_n pushBack "Hhedgehog_concreteBig";
_n pushBack "Hedgehog";
_n pushBack "Fort_RazorWire";
_n pushBack "Wire";
_n pushBack "Fort_Nest";

// static ammo
_n pushBack "rhsusf_mags_crate";
_n pushBack "rhsusf_gear_crate";
_n pushBack "rhsusf_launcher_crate";
_n pushBack "rhsusf_spec_weapons_crate";
_n pushBack "rhsusf_weapon_crate";
_n pushBack "TK_GUE_WarfareBVehicleServicePoint_Base_EP1";
*/



_n = ["B_Static_Designator_01_F"];
_n = _n + ["uns_spiderhole_NVA"];

_n = _n + ['LIB_M1919_M2'];
_n = _n + ["uns_m1919_low"];
_n = _n + ["LIB_MG34_Lafette_Deployed"];
_n = _n + ["LIB_MG34_Lafette_low_Deployed"];
_n = _n + ["LIB_MG42_Lafette_Deployed"];
_n = _n + ["LIB_MG42_Lafette_low_Deployed"];
_n = _n + ['CUP_B_M2StaticMG_US'];
_n = _n + ['CUP_B_M2StaticMG_MiniTripod_US'];
_n = _n + ['uns_m2_high'];
_n = _n + ["uns_m2_low"];
_n = _n + ["CUP_B_L111A1_BAF_MPT"];
_n = _n + ['CUP_B_L111A1_MiniTripod_BAF_MPT'];
_n = _n + ['uns_US_MK18_low'];
_n = _n + ['CUP_B_MK19_TriPod_US'];
_n = _n + ["CUP_B_L134A1_TriPod_BAF_WDL"];

_n = _n + ['CUP_B_TOW_TriPod_US'];
_n = _n + ["CUP_B_TOW2_TriPod_US"];
_n = _n + ['CUP_B_RBS70_ACR'];





_n = _n + ["LIB_Pak40"];
_n = _n + ["uns_M40_106mm_US"];






_n = _n + ["LIB_leFH18_AT"];
_n = _n + ['LIB_FlaK_36'];
_n = _n + ['LIB_FlaK_30'];
_n = _n + ['LIB_Flakvierling_38'];
_n = _n + ['Uns_M55_Quad'];
_n = _n + ["LIB_FlaK_36_AA"];
_n = _n + ["CUP_B_CUP_Stinger_AA_pod_US"];

_n = _n + ['uns_US_SearchLight'];
_n = _n + ['LIB_GER_SearchLight'];
_n = _n + ['CUP_B_SearchLight_static_ACR'];

//arty
_n = _n + ["LIB_M2_60"];
_n = _n + ['uns_M2_60mm_mortar'];
_n = _n + ['LIB_GrWr34'];
_n = _n + ["CUP_B_M252_US"];
_n = _n + ['uns_M1_81mm_mortar'];
_n = _n + ['uns_M1_81mm_mortar_arty'];
_n = _n + ['uns_M30_107mm_mortar'];

_n = _n + ["B_T_Mortar_01_F"];
_n = _n + ["CUP_B_M119_US"];
//_n = _n + ["LIB_IeFH18"];
_n = _n + ['Uns_M102_artillery'];
_n = _n + ['Uns_M114_artillery'];
_n = _n + ["LIB_FlaK_36_ARTY"];
//aa

_n = _n + ['CUP_B_Type072_Turret'];
_n = _n + ['B_AAA_System_01_F'];
_n = _n + ["B_SAM_System_02_F"];
_n = _n + ["B_SAM_System_03_F"];
_n = _n + ['B_Radar_System_01_F'];
_n = _n + ['B_SAM_System_01_F'];

//_n = _n + ["uns_SON9_NVA"];
//_n = _n + ["O_SAM_System_04_F"];
//_n = _n + ["O_Radar_System_02_F"];
//_n = _n + ['B_SAM_System_01_F'];




//Fortification



_n = _n + ['TK_WarfareBBarrier10xTall_EP1'];
_n = _n + ['TK_WarfareBBarrier5x_EP1'];
_n = _n + ['Land_HBarrier_large'];
_n = _n + ['Land_HBarrier5'];
_n = _n + ['Land_HBarrier3'];
_n = _n + ['Land_HBarrier1'];
_n = _n + ['cwr3_bagfence_corner'];
_n = _n + ['cwr3_bagfence'];
_n = _n + ['pook_Land_fort_rampart_DES'];
_n = _n + ['Land_fort_artillery_nest_EP1'];
_n = _n + ['pook_Land_fort_artillery_nest_DES'];
_n = _n + ['Hhedgehog_concreteBig'];

_n = _n + ['LAND_t_2_FOP2'];

//_n = _n + ['cwr3_excercisedtrack3'];
//_n = _n + ['Land_Wood_Tower'];
_n = _n + ['LAND_uns_vctower2'];
_n = _n + ['land_cwr3_vez'];
_n = _n + ['Land_Cargo_Patrol_V2_F'];
_n = _n + ['LAND_fort'];

_n = _n + ['land_cwr3_lampa_sidl_3'];


//bunker
_n = _n + ['Land_Bunker_01_blocks_1_F'];
_n = _n + ['Land_Bunker_01_blocks_3_F'];
_n = _n + ['WW2_BET_PZ_Mauer'];
_n = _n + ['Land_Platform_Stairs_20'];
_n = _n + ['Land_Platform_Stairs_30'];
_n = _n + ['Land_RampConcrete_F'];
_n = _n + ['Land_RampConcreteHigh_F'];
_n = _n + ['WW2_BET_Traegersperre_Closed'];
_n = _n + ['Land_WW2_BET_Walzsperre'];
//_n = _n + ['concretecover'];
_n = _n + ['Land_BasaltWall_01_gate_F'];
_n = _n + ['Land_WW2_BET_MG_Nest_Splinter_A'];
_n = _n + ['Land_WW2_BET_RGB669_Pak_R_Splinter'];
_n = _n + ['Land_WW2_BET_RGB669_Pak_L_Splinter'];
_n = _n + ['Land_WX_japbunker02'];
_n = _n + ['Land_WW2_BET_Regelbau_D2_B'];
_n = _n + ['land_cwr3_ammostore2'];
_n = _n + ['Land_WW2_BET_Tobruk_Splinter'];
_n = _n + ['Land_I44_Buildings_Bunker_AA'];
_n = _n + ['Land_WX_japbunker01'];
_n = _n + ['Land_WW2_BET_Pillbox'];
_n = _n + ['Land_WW2_Bunker_Mg'];
_n = _n + ['Land_WW2_Bunker_Gun_L'];
_n = _n + ['Land_I44_Bunker_01'];
_n = _n + ['Land_WW2_Bunker_H679'];
_n = _n + ['Land_WW2_BET_Regelbau10'];
_n = _n + ['Land_PillboxBunker_01_big_F'];
_n = _n + ['Land_WW2_BET_RGB_667_Com_B'];
_n = _n + ['Land_Bunker_01_tall_F'];
_n = _n + ['Land_WW2_BET_RGB_671'];

//Strategic
//_n = _n + ['LIB_MINE_US_M1A1_ATMINE_Field_30x30'];
//_n = _n + ['LIB_MINE_TM44_Field_70x30'];

//["ProtectionZone_F", [["Bulldozer","terrain",100]]]
//_c = _c + ['Sign_Danger'];
//_i = _i + [[localize 'STR_WF_Minefield','',1200,0,0,0,'Strategic',0,'Civilians',[]]];

//_n = _n + ['ProtectionZone_F'];
_n = _n + ['TK_GUE_WarfareBVehicleServicePoint_Base_EP1'];


_n = _n + ['csj_VCbunk01'];
_n = _n + ['csj_VCshelter01'];
_n = _n + ['LAND_UNS_GuardHouse'];
_n = _n + ['Land_pristresek_mensi'];
_n = _n + ['Fort_Nest'];
_n = _n + ['LAND_uns_vccache1e'];
_n = _n + ['csj_shelter01'];
_n = _n + ['LAND_uns_leanto1'];
_n = _n + ['LAND_uns_vcshelter6'];


_n = _n + ['land_cwr3_tent1_mash'];
_n = _n + ['Land_radar_EP1'];
_n = _n + ['Land_Illum_Tower'];
_n = _n + ['cwr3_target_grenade'];
_n = _n + ['Land_CamoNetB_NATO_EP1'];
_n = _n + ['CamoNet_wdl_big_F'];
//_n = _n + ['Land_CamoNetVar_NATO_EP1'];
//_n = _n + ['CamoNet_wdl_open_F'];
_n = _n + ['Land_IRMaskingCover_01_F'];
_n = _n + ['Land_IRMaskingCover_02_F'];
_n = _n + ['Land_Setka_Car'];
_n = _n + ['cwr3_shed_big'];
_n = _n + ['csj_VCshelter01'];
_n = _n + ['Land_I44_Object_Tent_Zeltbahn_16'];

//shed
//_n = _n + ['Land_Ind_Shed_02_EP1'];
_n = _n + ['Land_smallhangaropen'];
//_n = _n + ['Land_Ind_Shed_01_EP1'];
//_n = _n + ['Land_TentHangar_V1_F'];
//_n = _n + ['land_cwr3_hangar'];
//_n = _n + ['land_cwr3_hangar_2'];
//_n = _n + ['Land_Mil_hangar_EP1'];
//_n = _n + ['Land_Dome_Big_F'];





/* Class used for AI, AI will attempt to build those */
missionNamespace setVariable [Format["cti_%1DEFENSES_MG", _side], ['CUP_B_M2StaticMG_US']];
missionNamespace setVariable [Format["cti_%1DEFENSES_GL", _side], ['CUP_B_MK19_TriPod_US']];
missionNamespace setVariable [Format["cti_%1DEFENSES_AAPOD", _side], ['CUP_B_CUP_Stinger_AA_pod_US']];
missionNamespace setVariable [Format["cti_%1DEFENSES_ATPOD", _side], ['CUP_B_TOW_TriPod_US']];
missionNamespace setVariable [Format["cti_%1DEFENSES_CANNON", _side], ['CUP_B_M119_US']];
missionNamespace setVariable [Format["cti_%1DEFENSES_MASH", _side], ['land_cwr3_tent1_mash']];
missionNamespace setVariable [Format["cti_%1DEFENSES_MORTAR", _side], ['CUP_B_M252_USMC']];

missionNamespace setVariable [Format["cti_%1DEFENSENAMES", _side], _n];
