Private ['_side','_u'];

_side = _this;

_u= 		['CUP_B_USMC_Soldier_FROG_DES'];
_u pushBack 'cwr3_b_soldier_ar_m16';
_u pushBack 'cwr3_b_soldier_at_law';



_u pushBack 'CUP_B_USMC_Medic_des';
_u pushBack 'CUP_B_USMC_Engineer_des';
_u pushBack 'CUP_B_USMC_Soldier_GL_des';
_u pushBack 'cwr3_b_ranger_mg';
_u pushBack 'cwr3_b_soldier_at_carlgustaf';
_u pushBack 'cwr3_b_soldier_spotter';
_u pushBack 'cwr3_b_ranger_at_law';



_u pushBack 'CUP_B_USMC_Soldier_MG_des';
_u pushBack 'CUP_B_US_Sniper_OCP';
_u pushBack 'CUP_B_USMC_Sniper_M40A3_des';
_u pushBack 'CUP_B_USMC_Soldier_LAT_des';
_u pushBack 'CUP_B_GER_Soldier_AT';
_u pushBack 'cwr3_b_soldier_hg';
_u pushBack 'CUP_B_US_Soldier_Marksman_OCP';
_u pushBack 'cwr3_b_soldier_sniper';
_u pushBack 'cwr3_b_soldier_aa_redeye';



_u pushBack 'CUP_B_BAF_Sniper_AS50_TWS_DDPM';
_u pushBack 'CUP_B_USMC_SpecOps_des';
_u pushBack 'CUP_B_USMC_Soldier_AT_des';
_u pushBack 'CUP_B_USMC_Soldier_HAT_des';
_u pushBack 'CUP_B_BAF_Soldier_RiflemanAT_DDPM';
_u pushBack 'CUP_B_USMC_Sniper_M107_des';
_u pushBack 'rhsusf_army_ucp_aa';
_u pushBack 'cwr3_b_soldier_at_m47';
_u pushBack 'CUP_B_US_Sniper_M110_TWS_OCP';
_u pushBack 'cwr3_b_soldier_at_m67';




missionNamespace setVariable [Format ["CTI_%1BARRACKSUNITS", _side], _u];
if (local player) then {['BARRACKS', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = ['cwr3_c_bicycle'];
_u pushBack 'uns_willys_2';
_u pushBack 'cwr3_b_m939_open';
_u pushBack 'LIB_UK_DR_Willys_MB_M1919';
_u pushBack 'uns_willysmg';
_u pushBack 'CUP_B_M1165_GMV_USA';
_u pushBack 'uns_willysmg50';

_u pushBack 'uns_willys_2_m1919';
_u pushBack 'uns_m37b1_m1919';
_u pushBack 'LIB_US_Scout_M3_FFV';
_u pushBack 'uns_willysm40';
_u pushBack 'CUP_B_M1151_M2_USA';
_u pushBack 'CUP_B_M1151_Mk19_USA';
_u pushBack 'CUP_B_HMMWV_TOW_USA';
_u pushBack 'CUP_B_MTVR_Ammo_USA';
_u pushBack 'LIB_OpelBlitz_Ambulance';

_u pushBack 'LIB_US_Willys_MB_Ambulance';
_u pushBack 'CUP_B_HMMWV_Ambulance_USA';
_u pushBack 'CUP_B_MTVR_Repair_USA';
_u pushBack 'uns_xm706e2';
_u pushBack 'LIB_US_M3_Halftrack';
_u pushBack 'LIB_DAK_SdKfz251_FFV';
_u pushBack 'CUP_B_M1167_USA';
_u pushBack 'CUP_B_HMMWV_Crows_MK19_USA';
_u pushBack 'CUP_B_HMMWV_Crows_M2_USA';
_u pushBack 'uns_M113_30cal';
_u pushBack 'LIB_SdKfz_7_AA';
_u pushBack 'LIB_M8_Greyhound';
_u pushBack 'uns_xm706e1';

_u pushBack 'CUP_B_M1133_MEV_Desert';
_u pushBack 'CUP_B_RG31E_M2_USA';
_u pushBack 'CUP_B_RG31_Mk19_USA';
_u pushBack 'CUP_B_M1130_CV_M2_Desert';
_u pushBack 'CUP_B_M1135_ATGMV_Desert';
//_u pushBack 'CUP_B_M1126_ICV_MK19_Desert';
_u pushBack 'CUP_B_LAV25M240_desert_USMC';
_u pushBack 'uns_M113_M2';
_u pushBack 'uns_M113A1_M134';
_u pushBack 'uns_M113A1_XM182';
_u pushBack 'uns_M132';

_u pushBack 'CUP_B_M1128_MGS_Desert';
//_u pushBack 'CUP_B_M1129_MC_MK19_Desert';
_u pushBack 'CUP_B_HMMWV_Avenger_USA';
_u pushBack 'uns_M113_M30';
_u pushBack 'uns_M577_amb';


missionNamespace setVariable [Format ["CTI_%1LIGHTUNITS", _side], _u];
if (local player) then {['LIGHT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = ['LIB_StuG_III_G'];
_u pushBack 'LIB_M3A3_Stuart';
_u pushBack 'uns_M113A1_M40';
_u pushBack 'CUP_B_AAV_USMC';
_u pushBack 'CUP_B_M7Bradley_USA_D';

_u pushBack 'CUP_B_M2Bradley_USA_D';
_u pushBack 'CUP_B_MCV80_GB_D_SLAT';
_u pushBack 'LIB_FlakPanzerIV_Wirbelwind_w';
_u pushBack 'uns_M67A';
_u pushBack 'LIB_Churchill_Mk7_AVRE_desert';
_u pushBack 'LIB_Churchill_Mk7_Howitzer_desert';
_u pushBack 'LIB_UK_Italy_M4A3_75';
_u pushBack 'LIB_Cromwell_Mk4';
_u pushBack 'LIB_M4A4_FIREFLY';

_u pushBack 'CUP_B_FV510_GB_D';
_u pushBack 'CUP_B_M2A3Bradley_USA_D';
_u pushBack 'CUP_B_M60A3_USMC';
_u pushBack 'CUP_B_M163_USA';
_u pushBack 'LIB_Churchill_Mk7_Crocodile_desert';
_u pushBack 'uns_m48a3';



_u pushBack 'CUP_B_FV510_GB_D_SLAT';
_u pushBack 'uns_m163';
_u pushBack 'CUP_B_M60A3_TTS_USMC';
_u pushBack 'uns_m551';
_u pushBack 'cwr3_b_m1';
_u pushBack 'uns_m107sp';





_u pushBack 'CUP_B_M1A1_DES_US_Army';
_u pushBack 'CUP_B_M6LineBacker_USA_D';
_u pushBack 'CUP_B_M270_DPICM_USA';
_u pushBack 'CUP_B_M270_HE_USA';
_u pushBack 'uns_m110sp';
_u pushBack 'rhsusf_m109d_usarmy';

missionNamespace setVariable [Format ["CTI_%1HEAVYUNITS", _side], _u];
if (local player) then {['HEAVY', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = ['CUP_B_C130J_USMC'];
_u pushBack 'uns_H13_gunship_Army';
_u pushBack 'uns_UH1H_m60';

_u pushBack 'CUP_B_UH1Y_MEV_USMC';
_u pushBack 'uns_UH1C_M21_M200_1AC';
_u pushBack 'LIB_RAF_P39';
_u pushBack 'CUP_B_MV22_USMC';
_u pushBack 'CUP_B_UH60M_FFV_US';
_u pushBack 'cwr3_b_uh60_mev';


_u pushBack 'LIB_ARR_Ju87';
_u pushBack 'LIB_FW190F8_5';
_u pushBack 'cwr3_b_kiowa_dyn';
_u pushBack 'CUP_UH1Y_Gunship_Dynamic_USMC';
_u pushBack 'LIB_P47';
_u pushBack 'UNS_AH1G';


_u pushBack 'uns_ach47_m134';
_u pushBack 'uns_A4_skyhawk_CAP';
_u pushBack 'cwr3_b_ah11';
_u pushBack 'uns_f100b_AGM';
_u pushBack 'UNS_UH1B_TOW';
_u pushBack 'CUP_B_MH60L_DAP_4x_US';

_u pushBack 'CUP_B_AH64D_DL_USA';
_u pushBack 'uns_A7N_AGM';

_u pushBack 'CUP_B_AH1Z_Dynamic_USMC';
_u pushBack 'CUP_B_F35B_Stealth_USMC';
_u pushBack 'CUP_B_AV8B_DYN_USMC';
_u pushBack 'uns_F4J_AGM';
_u pushBack 'uns_A6_Intruder_AGM';
_u pushBack 'UNS_F111_AGM';




missionNamespace setVariable [Format ["CTI_%1AIRCRAFTUNITS", _side], _u];
if (local player) then {['AIRCRAFT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = ['CUP_B_C130J_USMC'];

_u pushBack 'LIB_RAF_P39';
_u pushBack 'CUP_B_MV22_USMC';

_u pushBack 'LIB_ARR_Ju87';
_u pushBack 'LIB_FW190F8_5';
_u pushBack 'LIB_P47';

_u pushBack 'uns_A4_skyhawk_CAP';
_u pushBack 'uns_f100b_AGM';

_u pushBack 'uns_A7N_AGM';

_u pushBack 'CUP_B_F35B_Stealth_USMC';
_u pushBack 'CUP_B_AV8B_DYN_USMC';
_u pushBack 'uns_F4J_AGM';
_u pushBack 'uns_A6_Intruder_AGM';
_u pushBack 'UNS_F111_AGM';



missionNamespace setVariable [Format ["CTI_%1AIRPORTUNITS", _side], _u];
if (local player) then {['AIRPORT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ["C_Quadbike_01_F"];
_u	pushBack	"CUP_C_TT650_CIV";
_u  pushBack  "CUP_C_Octavia_CIV";
_u  pushBack  "CUP_C_Golf4_yellow_Civ";
_u  pushBack  "CUP_C_Golf4_black_Civ";
_u  pushBack  "CUP_C_SUV_Civ";
_u  pushBack  'B_G_Boat_Transport_01_F';
_u  pushBack  "CUP_C_Ural_Civ_01";
_u  pushBack  "CUP_C_Ural_Civ_02";
_u  pushBack  "CUP_C_Ural_Open_Civ_01";
_u  pushBack  "C_Truck_02_fuel_F";
if ((missionNamespace getVariable "CTI_C_UNITS_TOWN_PURCHASE") > 0) then {
	_u  pushBack (missionNamespace getVariable "CTI_WESTSOLDIER");
	_u  pushBack  'rhsusf_army_ucp_arb_medic';
	_u  pushBack  'rhsusf_army_ucp_arb_engineer';
	_u  pushBack  'rhsusf_army_ucp_riflemanat';
	_u  pushBack  'rhsusf_army_ucp_arb_machinegunner';
	_u  pushBack  'rhsusf_army_ucp_aa';
};

missionNamespace setVariable [Format ["CTI_%1DEPOTUNITS", _side], _u];
if (local player) then {['DEPOT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};
