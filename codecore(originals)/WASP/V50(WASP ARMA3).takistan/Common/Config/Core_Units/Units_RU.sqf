Private ['_side','_tiMode','_u'];

_side = _this;

_u=      ['rhs_vdv_des_driver_armored'];
_u pushBack 'rhs_vdv_des_armoredcrew';
_u pushBack 'rhs_vdv_des_rifleman_lite';
_u pushBack 'rhs_vdv_des_rifleman';
_u pushBack 'rhs_vdv_des_efreitor';
_u pushBack 'rhs_vdv_des_junior_sergeant';
_u pushBack 'rhs_vdv_des_sergeant';
_u pushBack 'rhs_vdv_des_LAT';
_u pushBack 'rhs_vdv_des_grenadier';
_u pushBack 'rhs_vdv_des_RShG2';
_u pushBack 'rhs_vdv_des_medic';
_u pushBack 'rhs_vdv_des_machinegunner_assistant';
_u pushBack 'rhs_vdv_des_strelok_rpg_assist';
_u pushBack 'rhs_vdv_des_engineer';
_u pushBack 'rhs_vdv_des_rifleman_asval';
_u pushBack 'rhs_vdv_des_marksman';
_u pushBack 'rhs_vdv_des_machinegunner';
_u pushBack 'rhs_vdv_des_arifleman';
_u pushBack 'rhs_vdv_des_grenadier_rpg';
_u pushBack 'rhs_vdv_des_at';
_u pushBack 'rhs_vdv_des_aa';


_u pushBack 'rhs_vdv_mflora_driver_armored';
_u pushBack 'rhs_vdv_mflora_armoredcrew';
_u pushBack 'rhs_vdv_mflora_rifleman_lite';
_u pushBack 'rhs_vdv_mflora_rifleman';
_u pushBack 'rhs_vdv_mflora_efreitor';
_u pushBack 'rhs_vdv_mflora_junior_sergeant';
_u pushBack 'rhs_vdv_mflora_sergeant';
_u pushBack 'rhs_vdv_mflora_LAT';
_u pushBack 'rhs_vdv_mflora_grenadier';
_u pushBack 'rhs_vdv_mflora_RShG2';
_u pushBack 'rhs_vdv_mflora_medic';
_u pushBack 'rhs_vdv_mflora_machinegunner_assistant';
_u pushBack 'rhs_vdv_mflora_strelok_rpg_assist';
_u pushBack 'rhs_vdv_mflora_engineer';
_u pushBack 'rhs_vdv_mflora_marksman';
_u pushBack 'rhs_vdv_mflora_machinegunner';
_u pushBack 'rhs_vdv_mflora_grenadier_rpg';
_u pushBack 'rhs_vdv_mflora_at';
_u pushBack 'rhs_vdv_mflora_aa';


_u pushBack 'rhs_vmf_recon_rifleman';
_u pushBack 'rhs_vmf_recon_rifleman_akms';
_u pushBack 'rhs_vmf_recon_rifleman_scout_akm';
_u pushBack 'rhs_vmf_recon_rifleman_scout';
_u pushBack 'rhs_vmf_recon_efreitor';
_u pushBack 'rhs_vmf_recon_sergeant';
_u pushBack 'rhs_vmf_recon_rifleman_lat';
_u pushBack 'rhs_vmf_recon_grenadier';
_u pushBack 'rhs_vmf_recon_grenadier_scout';
_u pushBack 'rhs_vmf_recon_medic';
_u pushBack 'rhs_vmf_recon_machinegunner_assistant';
_u pushBack 'rhs_vmf_recon_arifleman';
_u pushBack 'rhs_vmf_recon_arifleman_scout';
_u pushBack 'rhs_vmf_recon_rifleman_l';
_u pushBack 'rhs_vmf_recon_rifleman_asval';
_u pushBack 'rhs_vmf_recon_marksman_vss';
_u pushBack 'rhs_vmf_recon_marksman';


_u pushBack 'rhs_pilot_tan';
_u pushBack 'rhs_pilot_transport_heli';
_u pushBack 'rhs_pilot_combat_heli';


missionNamespace setVariable [Format ["WFBE_%1BARRACKSUNITS", _side], _u];
if (local player) then {['BARRACKS', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u =      ['rhs_btr60_msv'];
_u  pushBack 'rhs_btr70_msv';
_u  pushBack 'rhs_btr80_msv';
_u  pushBack 'rhs_btr80a_msv';
_u  pushBack 'rhs_tigr_msv';
_u  pushBack 'rhs_tigr_3camo_msv';
_u  pushBack 'rhs_tigr_sts_msv';
_u  pushBack 'rhs_tigr_sts_3camo_msv';
_u  pushBack 'rhs_tigr_m_msv';
_u  pushBack 'rhs_tigr_m_3camo_msv';
_u  pushBack 'CUP_O_UAZ_METIS_RU';
_u  pushBack 'CUP_O_UAZ_MG_TKA';
_u  pushBack 'CUP_O_UAZ_AGS30_TKA';
//_u  pushBack 'CUP_O_Ural_Open_RU';
_u  pushBack 'RHS_UAZ_MSV_01';
_u  pushBack 'rhs_uaz_open_MSV_01';
_u  pushBack 'rhsgref_BRDM2_msv';
_u  pushBack 'rhsgref_BRDM2_ATGM_msv';
//_u  pushBack 'rhsgref_BRDM2UM_msv';
_u  pushBack 'RHS_BM21_MSV_01';
_u  pushBack 'CUP_O_LR_Ambulance_TKA';
_u  pushBack 'CUP_O_GAZ_Vodnik_PK_RU';
_u  pushBack 'CUP_O_GAZ_Vodnik_AGS_RU';
_u  pushBack 'CUP_O_GAZ_Vodnik_BPPU_RU';
_u  pushBack 'CUP_O_BTR90_RU';
_u  pushBack 'rhs_gaz66_msv';
_u  pushBack 'rhs_gaz66_ammo_msv';
_u  pushBack 'rhs_gaz66_flat_msv';
_u  pushBack 'rhs_gaz66o_msv';
_u  pushBack 'rhs_gaz66o_flat_msv';
//_u  pushBack 'rhs_gaz66_r142_msv';
_u  pushBack 'rhs_gaz66_zu23_msv';
//_u  pushBack 'rhs_gaz66_ap2_msv';
_u  pushBack 'rhs_gaz66_repair_msv';
_u  pushBack 'rhs_kamaz5350_msv';
_u  pushBack 'rhs_kamaz5350_flatbed_cover_msv';
_u  pushBack 'rhs_kamaz5350_open_msv';
_u  pushBack 'rhs_kamaz5350_flatbed_msv';
_u  pushBack 'RHS_Ural_MSV_01';
//_u  pushBack 'RHS_Ural_Flat_MSV_01';
_u  pushBack 'RHS_Ural_Fuel_MSV_01';
_u  pushBack 'RHS_Ural_Open_MSV_01';
_u  pushBack 'RHS_Ural_Repair_MSV_01';
//_u  pushBack 'RHS_Ural_Open_Flat_MSV_01';
_u  pushBack 'RHS_Ural_Zu23_MSV_01';
_u  pushBack 'rhsgref_cdf_reg_uaz_ags';
_u  pushBack 'rhsgref_cdf_reg_uaz_dshkm';
_u  pushBack 'rhsgref_cdf_reg_uaz_spg9';
//_u  pushBack 'CUP_O_PBX_RU';
_u  pushBack 'rhs_typhoon_vdv';
_u  pushBack 'CUP_O_TT650_CHDKZ';

missionNamespace setVariable [Format ["WFBE_%1LIGHTUNITS", _side], _u];
if (local player) then {['LIGHT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

//_u =      ['rhs_bmp1_msv'];
_u =      ['rhs_bmp1d_msv'];
_u  pushBack 'rhs_bmp1k_msv';
//_u  pushBack 'rhs_bmp1p_msv';
//_u  pushBack 'rhs_bmp2e_msv';
//_u  pushBack 'rhs_bmp2_msv';
_u  pushBack 'rhs_bmp2d_msv';
_u  pushBack 'rhs_bmp2_vdv';
//_u  pushBack 'rhs_bmp3_msv';
//_u  pushBack 'rhs_bmp3_late_msv';
_u  pushBack 'rhs_bmp3m_msv';
_u  pushBack 'rhs_bmp3mera_msv';
//_u  pushBack 'rhs_brm1k_msv';
//_u  pushBack 'rhs_Ob_681_2';
//_u  pushBack 'rhs_prp3_msv';
//_u  pushBack 'rhs_t72ba_tv';
_u  pushBack 'rhs_t72bb_tv';
//_u  pushBack 'rhs_t72bc_tv';
_u  pushBack 'rhs_t72bd_tv';
//_u  pushBack 'rhs_t80';
_u  pushBack 'rhs_t80a';
//_u  pushBack 'rhs_t80b';
//_u  pushBack 'rhs_t80bk';
//_u  pushBack 'rhs_t80bv';
//_u  pushBack 'rhs_t80bvk';
//_u  pushBack 'rhs_t80u';
//_u  pushBack 'rhs_t80u45m';
_u  pushBack 'rhs_t80ue1';
//_u  pushBack 'rhs_t80uk';
//_u  pushBack 'rhs_t80um';
_u  pushBack 'rhs_t90_tv';
_u  pushBack 'rhs_t90a_tv';
_u  pushBack 'rhs_sprut_vdv';
//_u  pushBack 'rhs_bmd1';
//_u  pushBack 'rhs_bmd1k';
//_u  pushBack 'rhs_bmd1p';
_u  pushBack 'rhs_bmd1pk';
//_u  pushBack 'rhs_bmd1r';
//_u  pushBack 'rhs_bmd2';
_u  pushBack 'rhs_bmd2k';
_u  pushBack 'rhs_bmd2m';
//_u  pushBack 'rhs_bmd4_vdv';
//_u  pushBack 'rhs_bmd4m_vdv';
_u  pushBack 'rhs_bmd4ma_vdv';
_u  pushBack 'rhs_zsu234_aa';
_u  pushBack 'rhs_2s3_tv';
_u pushBack 'CUP_O_2S6M_RU';

missionNamespace setVariable [Format ["WFBE_%1HEAVYUNITS", _side], _u];
if (local player) then {['HEAVY', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};


_u =      ['RHS_Mi8AMT_vdv'];
//_u  pushBack 'CUP_O_Mi24_P_Dynamic_RU';
_u  pushBack 'CUP_O_Mi24_V_Dynamic_RU';
_u  pushBack 'RHS_Mi8MTV3_heavy_vdv';
_u  pushBack 'RHS_Mi8MTV3_vdv';
_u  pushBack 'CUP_O_MI6T_RU';
_u  pushBack 'CUP_O_Mi17_TK';
_u  pushBack 'CUP_O_Mi8_medevac_RU';
_u  pushBack 'RHS_Ka52_vvsc';
//_u  pushBack 'RHS_Ka52_UPK23_vvsc';
_u  pushBack 'rhs_ka60_c';
_u  pushBack  'CUP_O_KA60_GREY_RU';
_u  pushBack 'rhs_mi28n_vvsc';
//_u  pushBack 'rhs_mi28n_s13_vvsc';
_u  pushBack 'RHS_TU95MS_vvs_old';
//_u  pushBack 'RHS_TU95MS_vvs_chelyabinsk';
//_u  pushBack 'RHS_TU95MS_vvs_dubna';
//_u  pushBack 'RHS_TU95MS_vvs_irkutsk';
//_u  pushBack 'RHS_TU95MS_vvs_tambov';	
//_u  pushBack 'RHS_Su25SM_vvsc';
//_u  pushBack 'RHS_Su25SM_CAS_vvsc';
//_u  pushBack 'CUP_O_Su25_RU_2';
//_u  pushBack 'CUP_O_Su25_RU_3';
//_u  pushBack 'CUP_O_Su25_Dyn_RU';
_u  pushBack 'CUP_O_Su25_Dyn_TKA';
//_u  pushBack 'CUP_O_Su25_Dyn_SLA';
_u  pushBack 'rhs_mig29sm_vmf';
_u  pushBack 'CUP_O_AN2_TK';
_u pushBack 'CUP_O_L39_TK';
_u pushBack 'CUP_O_SU34_RU';
_u  pushBack 'RHS_T50_vvs_generic_ext';
//_u  pushBack 'RHS_T50_vvs_blueonblue';


missionNamespace setVariable [Format ["WFBE_%1AIRCRAFTUNITS", _side], _u];
if (local player) then {['AIRCRAFT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = [];

_u  pushBack 'CUP_O_Su25_Dyn_TKA';
_u  pushBack 'rhs_mig29sm_vmf';
_u  pushBack 'CUP_O_AN2_TK';
_u pushBack 'CUP_O_L39_TK';
_u pushBack 'CUP_O_SU34_RU';
_u  pushBack 'RHS_T50_vvs_generic_ext';
_u  pushBack 'RHS_TU95MS_vvs_old';

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
	_u pushBack 'rhs_vdv_des_medic';
	_u pushBack 'rhs_vdv_des_engineer';
	_u pushBack 'rhs_vdv_des_LAT';
	_u pushBack 'rhs_vdv_des_machinegunner';
	_u pushBack 'rhs_vdv_des_aa';
};

missionNamespace setVariable [Format ["WFBE_%1DEPOTUNITS", _side], _u];
if (local player) then {['DEPOT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};
