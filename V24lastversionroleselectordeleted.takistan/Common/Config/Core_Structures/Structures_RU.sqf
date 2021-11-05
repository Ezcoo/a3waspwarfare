Private ['_c','_count','_d','_dir','_dis','_n','_s','_side','_t','_v'];

_side = _this;

/* Root Definition */
_MHQ = "CUP_O_BTR90_HQ_RU";
_HQ = "BTR90_HQ_unfolded";
_BAR = "TK_WarfareBBarracks_Base_EP1";
_LVF = "TK_WarfareBLightFactory_base_EP1";
_CC = "TK_WarfareBUAVterminal_Base_EP1";
_HEAVY = "TK_WarfareBHeavyFactory_Base_EP1";
_AIR = "TK_WarfareBAircraftFactory_Base_EP1";
_SP = "TK_WarfareBVehicleServicePoint_Base_EP1";
_AAR = "TK_WarfareBAntiAirRadar_Base_EP1";
_ARR = "TK_WarfareBArtilleryRadar_Base_EP1";

/* Construction Crates */
missionNamespace setVariable [Format["cti_%1CONSTRUCTIONSITE", _side], 'TK_WarfareBContructionSite_EP1'];

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
//_n =         ["LIB_61k"];
//_n pushBack "LIB_Zis3";
//_n pushBack "LIB_BM37";
//_n pushBack "rhs_Kornet_9M133_2_msv";
//_n pushBack "LIB_Maxim_M30_Trench";
//_n pushBack "LIB_Maxim_M30_base";
//_n pushBack "LIB_SU_SearchLight";
//_n pushBack "Uns_D20_artillery";
//_n pushBack "Uns_D30_artillery";
//_n pushBack "uns_m1941_82mm_mortarNVA_arty";
//_n pushBack "uns_m1941_82mm_mortarNVA";
//_n pushBack "pook_SA21_static_base";

// static walls
//_n pushBack "Base_WarfareBBarrier10xTall";
//_n pushBack "Base_WarfareBBarrier5x";
//_n pushBack "Base_WarfareBBarrier10x";
//_n pushBack "Land_HBarrier_large";
//_n pushBack "Land_HBarrier5";
//_n pushBack "Land_HBarrier3";
//_n pushBack "Land_fort_bagfence_corner";
//_n pushBack "Land_fort_bagfence_round";
//_n pushBack "Land_fort_bagfence_long";
//_n pushBack "Concrete_Wall_EP1";
//_n pushBack "zed_desert";

// static fortification
//_n pushBack "Land_CamoNet_EAST_EP1";
//_n pushBack "Land_CamoNetVar_EAST_EP1";
//_n pushBack "Land_CamoNetB_EAST_EP1";
//_n pushBack "Land_Ind_IlluminantTower";
//_n pushBack "Land_fort_rampart_EP1";
//_n pushBack "Land_fort_artillery_nest_EP1";
//_n pushBack "Hhedgehog_concrete";
//_n pushBack "Hhedgehog_concreteBig";
//_n pushBack "Hedgehog";
//_n pushBack "WireFence";
//_n pushBack "Wire";
//_n pushBack "Fort_Nest";

// static ammo
//_n pushBack "rhs_mags_crate";
//_n pushBack "rhs_gear_crate";
//_n pushBack "rhs_launcher_crate";
//_n pushBack "rhs_spec_weapons_crate";
//_n pushBack "rhs_weapon_crate";
//_n pushBack "TK_GUE_WarfareBVehicleServicePoint_Base_EP1";






_n = ["O_Static_Designator_02_F"];
_n = _n + ["uns_spiderhole_NVA"];
_n = _n + ['uns_mg42_low_VC'];
_n = _n + ["LIB_MG42_Lafette_Deployed"];
_n = _n + ["LIB_MG42_Lafette_low_Deployed"];
_n = _n + ["LIB_Maxim_M30_base"];
_n = _n + ["LIB_Maxim_M30_Trench"];
_n = _n + ['uns_pk_high_VC'];
_n = _n + ['uns_pk_low_VC'];
_n = _n + ['uns_dshk_high_VC'];
_n = _n + ['uns_dshk_low_VC'];
_n = _n + ["CUP_O_KORD_high_RU"];
_n = _n + ["CUP_O_KORD_RU"];
_n = _n + ['uns_dshk_wheeled_VC'];
_n = _n + ['uns_dshk_armoured_VC'];
_n = _n + ['uns_dshk_twin_VC'];
_n = _n + ["CUP_O_AGS_RU"];

_n = _n + ['cwr3_o_konkurs_tripod'];
_n = _n + ["CUP_O_Metis_RU"];
_n = _n + ['CUP_O_Kornet_RU'];





_n = _n + ["LIB_Pak40"];
_n = _n + ["LIB_61k"];






_n = _n + ["LIB_Zis3"];
_n = _n + ['CUP_O_SPG9_ChDKZ'];
_n = _n + ['uns_Type36_57mm_VC'];
_n = _n + ['uns_SPG9_73mm_VC'];
_n = _n + ['uns_M40_106mm_VC'];
_n = _n + ["CUP_O_D30_AT_RU"];

_n = _n + ["CUP_O_ZU23_RU"];
_n = _n + ['uns_ZU23_VC'];
_n = _n + ['uns_Type74_VC'];
_n = _n + ['uns_ZPU4_VC'];
_n = _n + ['uns_S60_VC'];
_n = _n + ['uns_KS12_NVA'];
_n = _n + ['uns_KS19_NVA'];
_n = _n + ["CUP_O_Igla_AA_pod_RU"];

_n = _n + ['CUP_O_SearchLight_static_RU'];
_n = _n + ['LIB_SU_SearchLight'];
_n = _n + ['uns_NVA_SearchLight'];


//arty
_n = _n + ["LIB_M2_60"];
_n = _n + ["LIB_BM37"];
_n = _n + ["CUP_O_2b14_82mm_RU"];
_n = _n + ['uns_m1941_82mm_mortarVC'];
_n = _n + ['uns_m1941_82mm_mortarNVA_arty'];
_n = _n + ["O_Mortar_01_F"];
_n = _n + ['Uns_D30_artillery'];
_n = _n + ['Uns_D20_artillery'];
_n = _n + ["CUP_O_D30_RU"];

//aa
_n = _n + ["CUP_O_Type072_Turret"];
_n = _n + ['B_AAA_System_01_F'];
_n = _n + ["uns_sa2_static_NVA"];
_n = _n + ["uns_SON9_NVA"];
_n = _n + ["O_SAM_System_04_F"];
_n = _n + ["O_Radar_System_02_F"];
_n = _n + ['B_SAM_System_01_F'];

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
missionNamespace setVariable [Format["cti_%1DEFENSES_MG", _side], ['CUP_O_KORD_high_RU']];
missionNamespace setVariable [Format["cti_%1DEFENSES_GL", _side], ['CUP_O_AGS_RU']];
missionNamespace setVariable [Format["cti_%1DEFENSES_AAPOD", _side], ['CUP_O_Igla_AA_pod_RU','CUP_O_ZU23_RU']];
missionNamespace setVariable [Format["cti_%1DEFENSES_ATPOD", _side], ['CUP_O_Metis_RU','CUP_O_SPG9_ChDKZ']];
missionNamespace setVariable [Format["cti_%1DEFENSES_CANNON", _side], ['CUP_O_D30_RU','CUP_O_D30_RU']];
missionNamespace setVariable [Format["cti_%1DEFENSES_MASH", _side], ['land_cwr3_tent1_mash']];
missionNamespace setVariable [Format["cti_%1DEFENSES_MORTAR", _side], ['CUP_O_2b14_82mm_RU']];

missionNamespace setVariable [Format["cti_%1DEFENSENAMES", _side], _n];
