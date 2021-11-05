Private ['_side','_tiMode','_u'];

_side = _this;

_u=      ['CUP_O_RU_Soldier_Ratnik_BeigeDigital'];
_u pushBack 'CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital';
_u pushBack 'CUP_O_sla_Soldier_LAT_desert';

_u pushBack 'CUP_O_RU_Soldier_GL_Ratnik_BeigeDigital';
_u pushBack 'cwr3_o_soldier_mg';
_u pushBack 'cwr3_o_soldier_at_rpg18';
_u pushBack 'CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital';
_u pushBack 'CUP_O_RU_Soldier_Engineer_Ratnik_BeigeDigital';
_u pushBack 'CUP_O_TK_Spotter';
_u pushBack 'cwr3_o_soldier_at_rpg7';


_u pushBack 'CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital';
_u pushBack 'CUP_O_TK_Sniper';
_u pushBack 'CUP_O_TK_Sniper_SVD_Night';
_u pushBack 'CUP_O_TK_Soldier_FNFAL_Night';
_u pushBack 'CUP_O_RU_Recon_LAT_Ratnik_BeigeDigital';
_u pushBack 'cwr3_o_soldier_hg';
_u pushBack 'cwr3_o_soldier_sniper';
_u pushBack 'cwr3_o_soldier_aa_strela';
_u pushBack 'CUP_O_TK_Soldier_AT';


_u pushBack 'CUP_O_TK_Soldier_AKS_74_GOSHAWK';
_u pushBack 'cwr3_o_soldier_at_at4';
_u pushBack 'CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital';
_u pushBack 'rhs_vdv_des_aa';
_u pushBack 'CUP_O_TK_Sniper_KSVK';
_u pushBack 'CUP_O_RU_Soldier_HAT_Ratnik_BeigeDigital';
_u pushBack 'CUP_O_RU_Soldier_Lite_Ratnik_BeigeDigital';






missionNamespace setVariable [Format ["WFBE_%1BARRACKSUNITS", _side], _u];
if (local player) then {['BARRACKS', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u =      ['cwr3_c_bicycle'];
_u  pushBack 'CUP_O_UAZ_Open_CHDKZ';
_u  pushBack 'CUP_O_Kamaz_Open_RU';
_u  pushBack 'uns_Type55';
_u  pushBack 'CUP_O_Datsun_PK';
_u  pushBack 'uns_nvatruck_mg';
_u  pushBack 'LIB_DAK_Kfz1_MG42';
_u  pushBack 'CUP_O_UAZ_MG_RU';

_u  pushBack 'LIB_SdKfz_7';
_u  pushBack 'CUP_O_UAZ_AGS30_RU';
_u  pushBack 'CUP_O_UAZ_SPG9_RU';
_u  pushBack 'CUP_O_UAZ_METIS_RU';
_u  pushBack 'LIB_SdKfz251_captured';
_u  pushBack 'uns_Type55_LMG';
_u  pushBack 'uns_BTR152_DSHK';
_u  pushBack 'uns_Type55_RR57';
_u  pushBack 'CUP_O_Kamaz_Reammo_RU';
_u  pushBack 'LIB_Zis5V_Med';

_u  pushBack 'CUP_O_UAZ_AMB_RU';
_u  pushBack 'cwr3_o_uaz452_mev';
_u  pushBack 'CUP_O_Kamaz_Repair_RU';
_u  pushBack 'CUP_O_GAZ_Vodnik_AGS_RU';
_u  pushBack 'LIB_SOV_M3_Halftrack';
_u  pushBack 'uns_Type55_patrol';
_u  pushBack 'LIB_Scout_M3';
_u  pushBack 'uns_Type55_ZU';
_u  pushBack 'LIB_SdKfz251_captured_FFV';
_u  pushBack 'CUP_O_Ural_ZU23_RU';
_u  pushBack 'uns_nvatruck_zu23';
_u  pushBack 'CUP_O_BRDM2_RUS';

_u  pushBack 'uns_nvatruck_zpu';
_u  pushBack 'CUP_O_GAZ_Vodnik_MedEvac_RU';
_u  pushBack 'LIB_Zis5v_61K';
_u  pushBack 'CUP_O_UAZ_AA_RU';
_u  pushBack 'uns_Type55_twinMG';
_u  pushBack 'CUP_O_GAZ_Vodnik_BPPU_RU';
_u  pushBack 'CUP_O_BTR80A_DESERT_RU';
_u  pushBack 'CUP_O_BRDM2_ATGM_RUS';
_u  pushBack 'uns_BTR152_ZPU';

_u  pushBack 'LIB_US6_BM13';
_u  pushBack 'uns_Type63_amb';
_u  pushBack 'CUP_O_BM21_RU';
_u  pushBack 'CUP_O_BTR90_RU';
_u  pushBack 'uns_nvatruck_s60';
_u  pushBack 'uns_nvatruck_type65';
_u  pushBack 'CUP_O_Hilux_armored_MLRS_OPF_G_F';
_u  pushBack 'CUP_O_Hilux_podnos_OPF_G_F';
_u  pushBack 'CUP_O_Hilux_armored_BMP1_OPF_G_F';
_u  pushBack 'uns_Type55_M40';
_u  pushBack 'uns_Type55_mortar';
//_u  pushBack 'CUP_O_TT650_CHDKZ';

missionNamespace setVariable [Format ["WFBE_%1LIGHTUNITS", _side], _u];
if (local player) then {['LIGHT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};


_u =      ['LIB_SU85'];
_u  pushBack 'uns_t34_76_vc';
_u  pushBack 'LIB_T34_76';
_u  pushBack 'uns_Type63_mg';
_u  pushBack 'CUP_O_BMP1_TKA';
_u  pushBack 'CUP_O_MTLB_pk_TKA';

_u  pushBack 'CUP_O_T34_TKA';
_u  pushBack 'LIB_T34_85';
_u  pushBack 'uns_ot34_85_nva';
_u  pushBack 'LIB_JS2_43';
_u  pushBack 'uns_ZSU57_NVA';
_u  pushBack 'CUP_O_BMP2_TKA';
_u  pushBack 'CUP_O_BMP1P_TKA';

_u  pushBack 'CUP_O_BMP3_RU';
_u  pushBack 'uns_pt76';
_u  pushBack 'CUP_O_ZSU23_Afghan_CSAT';
_u  pushBack 'CUP_O_T55_TK';
_u  pushBack 'uns_t55_nva';
_u pushBack 'rhs_prp3_msv';


_u  pushBack 'CUP_O_ZSU23_CSAT';
_u  pushBack 'uns_ZSU23_NVA';
_u  pushBack 'cwr3_o_mtlb_sa13';
_u  pushBack 'uns_to55_nva';
_u  pushBack 'uns_t54_nva';
_u  pushBack 'cwr3_o_t55amv';
_u  pushBack 'CUP_O_T72_RU';
_u  pushBack 'cwr3_o_t64b';
_u pushBack 'rhs_2s1_tv';



_u  pushBack 'CUP_O_2S6_RU';
//_u  pushBack 'O_MBT_02_arty_F';
_u  pushBack 'CUP_O_T90_RU';
_u  pushBack 'cwr3_o_t64bv';
_u  pushBack 'cwr3_o_t72b1';
//_u  pushBack 'LIB_SdKfz124_DLV';
_u pushBack 'rhs_2s3_tv';


missionNamespace setVariable [Format ["WFBE_%1HEAVYUNITS", _side], _u];
if (local player) then {['HEAVY', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};


_u = ['CUP_O_AN2_TK'];
_u  pushBack 'LIB_Li2';
_u  pushBack 'CUP_O_UH1H_SLA';

_u  pushBack 'cwr3_o_camel';
_u pushBack 'uns_an2_cas';
_u pushBack 'CUP_O_Mi8_medevac_RU';
_u  pushBack 'CUP_O_Mi8AMT_RU';
_u  pushBack 'CUP_O_Ka50_DL_RU';
_u  pushBack 'LIB_RA_P39_3';

_u pushBack 'LIB_FW190F8_5';
_u pushBack 'LIB_ARR_Ju87';
_u  pushBack 'CUP_O_Ka60_Grey_RU';
_u  pushBack 'LIB_Pe2';

_u  pushBack 'CUP_O_Mi24_P_Dynamic_RU';
_u pushBack 'CUP_O_Mi8_RU';
_u pushBack 'CUP_O_L39_TK';
_u  pushBack 'uns_Mig21_CAS';

_u  pushBack 'CUP_O_Mi24_V_Dynamic_RU';
_u  pushBack 'CUP_O_Su25_Dyn_RU';
_u pushBack 'CUP_O_Ka52_RU';

_u pushBack 'CUP_B_Mi24_D_MEV_Dynamic_CDF';
_u  pushBack 'CUP_I_Mi24_Mk4_ION';
_u  pushBack 'CUP_O_SU34_RU';


missionNamespace setVariable [Format ["WFBE_%1AIRCRAFTUNITS", _side], _u];
if (local player) then {['AIRCRAFT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = ['CUP_O_AN2_TK'];
_u  pushBack 'LIB_Li2';


_u  pushBack 'cwr3_o_camel';
_u pushBack 'uns_an2_cas';
_u  pushBack 'LIB_RA_P39_3';

_u pushBack 'LIB_FW190F8_5';
_u pushBack 'LIB_ARR_Ju87';
_u  pushBack 'LIB_Pe2';


_u pushBack 'CUP_O_L39_TK';
_u  pushBack 'uns_Mig21_CAS';

_u  pushBack 'CUP_O_Mi24_V_Dynamic_RU';
_u  pushBack 'CUP_O_Su25_Dyn_RU';


_u  pushBack 'CUP_O_SU34_RU';



missionNamespace setVariable [Format ["WFBE_%1AIRPORTUNITS", _side], _u];
if (local player) then {['AIRPORT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ["C_Quadbike_01_F"];
_u pushBack "CUP_C_TT650_CIV";
_u pushBack "CUP_C_Octavia_CIV";
_u pushBack "CUP_C_Golf4_yellow_Civ";
_u pushBack "CUP_C_Golf4_black_Civ";
_u pushBack 'CUP_C_SUV_TK';
_u pushBack 'CUP_O_PBX_RU';
_u pushBack "CUP_C_Ural_Civ_01";
_u pushBack "CUP_C_Ural_Civ_02";
_u pushBack "CUP_C_Ural_Open_Civ_01";
_u pushBack "C_Truck_02_fuel_F";
if ((missionNamespace getVariable "WFBE_C_UNITS_TOWN_PURCHASE") > 0) then {
	_u pushBack (missionNamespace getVariable "WFBE_EASTSOLDIER");
	_u pushBack 'CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital';
	_u pushBack 'CUP_O_RU_Soldier_Engineer_Ratnik_BeigeDigital';
	_u pushBack 'CUP_O_sla_Soldier_LAT_desert';
	_u pushBack 'cwr3_o_soldier_mg';
	_u pushBack 'cwr3_o_soldier_aa_strela';
};

missionNamespace setVariable [Format ["WFBE_%1DEPOTUNITS", _side], _u];
if (local player) then {['DEPOT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};
