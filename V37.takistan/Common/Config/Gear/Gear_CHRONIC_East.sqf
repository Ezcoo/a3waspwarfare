private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//CORE GEAR (UNITBASED MINIMUM)


//UNIFORM
_i pushBack  "CUP_U_O_RUS_Ratnik_BeigeDigital"; 
_u pushBack  0;
_p pushBack  90;

_i pushBack  "CUP_U_O_SLA_Desert"; 
_u pushBack  0;
_p pushBack  90;

_i pushBack  "U_LIB_NKVD_Efreitor"; 
_u pushBack  0;
_p pushBack  90;

//u1-2
_i pushBack  "cwr3_o_uniform_klmk_1957_birch_v1"; 
_u pushBack  1;
_p pushBack  90;

_i pushBack  "CUP_U_O_TK_Green"; 
_u pushBack  1;
_p pushBack  90;

_i pushBack  "CUP_U_O_TK_Ghillie_Top"; 
_u pushBack  2;
_p pushBack  190;


//u3

_i pushBack  "CUP_U_O_TK_Ghillie"; 
_u pushBack  3;
_p pushBack  210;

_i pushBack  "cwr3_o_vest_ghillie"; 
_u pushBack  3;
_p pushBack  195;

//u4-5

_i pushBack  "rhs_uniform_vdv_emr_des"; 
_u pushBack  4;
_p pushBack  90;

_i pushBack  "cwr3_o_uniform_kzs_v1"; 
_u pushBack  4;
_p pushBack  90;

//BACKPACK


_i pushBack  "B_LIB_SOV_RA_MedicalBag_Empty"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "UNS_NVA_R1"; 
_u pushBack  0;
_p pushBack  150;

//b1-2

_i pushBack  "cwr3_o_backpack_rpg7_pg7vl"; 
_u pushBack  1;
_p pushBack  50;

_i pushBack  "cwr3_o_backpack_veshmeshok_pk"; 
_u pushBack  2;
_p pushBack  150;

_i pushBack  "CUP_O_RUS_Patrol_bag_BeigeDigital_Shovel_Engineer"; 
_u pushBack  2;
_p pushBack  120;

_i pushBack  "CUP_O_RUS_Patrol_bag_BeigeDigital_Medic"; 
_u pushBack  2;
_p pushBack  120;

//b3

_i pushBack  "CUP_B_TK_RPG_Backpack_Single"; 
_u pushBack  3;
_p pushBack  70;

_i pushBack  "cwr3_o_backpack_veshmeshok_hg"; 
_u pushBack  3;
_p pushBack  120;

//b4-5

_i pushBack  "CUP_O_RUS_Patrol_bag_BeigeDigital_AT"; 
_u pushBack  3;
_p pushBack  120;

//VEST
_i pushBack  "CUP_V_O_SLA_6B3_1_DES"; 
_u pushBack  0;
_p pushBack  110;

_i pushBack  "CUP_Vest_RUS_6B45_Sh117_BeigeDigital"; 
_u pushBack  0;
_p pushBack  110;

//v1-2

_i pushBack  "CUP_Vest_RUS_6B45_Sh117_VOG_BeigeDigital"; 
_u pushBack  1;
_p pushBack  110;

_i pushBack  "cwr3_o_vest_6b2_mg"; 
_u pushBack  1;
_p pushBack  110;

_i pushBack  "CUP_V_O_TK_Vest_1"; 
_u pushBack  1;
_p pushBack  110;

_i pushBack  "CUP_V_O_TK_Vest_2"; 
_u pushBack  1;
_p pushBack  110;

_i pushBack  "cwr3_o_vest_6b2_ak74"; 
_u pushBack  1;
_p pushBack  110;

_i pushBack  "cwr3_o_vest_6b2_chicom_light_ak74"; 
_u pushBack  1;
_p pushBack  110;

//v3

_i pushBack  "CUP_Vest_RUS_6B45_Sh117_PKP_BeigeDigital"; 
_u pushBack  3;
_p pushBack  110;

_i pushBack  "cwr3_o_vest_6b2_gl"; 
_u pushBack  3;
_p pushBack  110;


//less armor vests

_i pushBack  "cwr3_o_vest_6b2"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "cwr3_o_vest_6b3"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "cwr3_o_vest_6b2_ak74"; 
_u pushBack  0;
_p pushBack  80;

_i pushBack  "cwr3_o_vest_6b2_medic"; 
_u pushBack  0;
_p pushBack  80;

_i pushBack  "V_LIB_SOV_IShBrVestMG"; 
_u pushBack  0;
_p pushBack  90;

//same armor, camo

_i pushBack  "CUP_V_O_SLA_6B3_1_URB"; 
_u pushBack  0;
_p pushBack  110;

_i pushBack  "CUP_V_O_SLA_6B3_1_WDL"; 
_u pushBack  0;
_p pushBack  110;

_i pushBack  "CUP_Vest_RUS_6B45_Sh117"; 
_u pushBack  0;
_p pushBack  110;

//max armor vest

_i pushBack  "rhs_6b23_digi_rifleman"; 
_u pushBack  2;
_p pushBack  325;


_i pushBack  "V_PlateCarrierIAGL_oli"; 
_u pushBack  3;
_p pushBack  410;

_i pushBack  "rhs_6b13_EMR_6sh92"; 
_u pushBack  3;
_p pushBack  420;

//HELMET
_i pushBack  "CUP_H_RUS_6B47_v2_GogglesUp_BeigeDigital"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "CUP_H_SLA_Helmet_DES"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "H_LIB_SOV_RA_Helmet"; 
_u pushBack  0;
_p pushBack  50;

//h1-2

_i pushBack  "CUP_H_RUS_6B47_v2_GogglesClosed_BeigeDigital"; 
_u pushBack  1;
_p pushBack  50;

_i pushBack  "cwr3_o_headgear_ssh68"; 
_u pushBack  1;
_p pushBack  50;

_i pushBack  "CUP_H_TK_Helmet"; 
_u pushBack  1;
_p pushBack  50;

//h3

_i pushBack  "CUP_H_RUS_6B47_v2_GogglesDown_BeigeDigital"; 
_u pushBack  3;
_p pushBack  50;

//h4-5

_i pushBack  "CUP_H_RUS_6B47_v2_BeigeDigital"; 
_u pushBack  4;
_p pushBack  50;

_i pushBack  "rhs_6b28_ess_bala"; 
_u pushBack  4;
_p pushBack  50;

//WEAPON


//wrest
_i pushBack  "LIB_PPSh41_m"; 
_u pushBack  0;
_p pushBack  20;

_i pushBack  "LIB_M9130PU"; 
_u pushBack  0;
_p pushBack  40;

_i pushBack  "LIB_M9130"; 
_u pushBack  0;
_p pushBack  30;

_i pushBack  "LIB_SVT_40"; 
_u pushBack  0;
_p pushBack  43;

_i pushBack  "LIB_DP28"; 
_u pushBack  0;
_p pushBack  365;

_i pushBack  "LIB_DT"; 
_u pushBack  0;
_p pushBack  380;

_i pushBack  "uns_ithaca37_grip"; 
_u pushBack  0;
_p pushBack  20;

_i pushBack  "uns_pm63"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "LIB_PTRD"; 
_u pushBack  0;
_p pushBack  115;

//wcommon
_i pushBack  "CUP_arifle_AK74"; 
_u pushBack  0;
_p pushBack  120;

_i pushBack  "rhs_weap_ak74n"; 
_u pushBack  0;
_p pushBack  140;


_i pushBack  "CUP_arifle_AK74M"; 
_u pushBack  0;
_p pushBack  140;

_i pushBack  "CUP_arifle_RPK74M"; 
_u pushBack  0;
_p pushBack  150;

_i pushBack  "CUP_arifle_AKS74U"; 
_u pushBack  0;
_p pushBack  150;
//w1-2

//_i pushBack  "CUP_arifle_AK105_1p63"; 
//_u pushBack  1;
//_p pushBack  120;

_i pushBack  "CUP_arifle_AK105"; 
_u pushBack  1;
_p pushBack  120;

_i pushBack  "CUP_arifle_AK74M_GL"; 
_u pushBack  1;
_p pushBack  140;

_i pushBack  "CUP_lmg_PKMN"; 
_u pushBack  1;
_p pushBack  150;

_i pushBack  "CUP_lmg_Pecheneg"; 
_u pushBack  2;
_p pushBack  150;

_i pushBack  "CUP_arifle_FNFAL"; 
_u pushBack  2;
_p pushBack  140;



//w3

//_i pushBack  "CUP_arifle_FNFAL_ANPVS4"; 
//_u pushBack  3;
//_p pushBack  120;

_i pushBack  "CUP_glaunch_6G30"; 
_u pushBack  3;
_p pushBack  140;



_i pushBack  "CUP_srifle_SVD"; 
_u pushBack  3;
_p pushBack  140;

//_i pushBack  "CUP_srifle_SVD_pso"; 
//_u pushBack  3;
//_p pushBack  150;

_i pushBack  "CUP_srifle_SVD_des"; 
_u pushBack  3;
_p pushBack  140;

_i pushBack  "CUP_arifle_AS_VAL"; 
_u pushBack  3;
_p pushBack  150;

//w4-5



//_i pushBack  "CUP_arifle_AKS74_Goshawk"; 
//_u pushBack  4;
//_p pushBack  150;

//WAMMO
_i pushBack  "CUP_30Rnd_545x39_AK74M_M"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhs_30Rnd_545x39_7N22_desert_AK"; 
_u pushBack  2;
_p pushBack  30;


_i pushBack  "CUP_30Rnd_545x39_AK_M"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"; 
_u pushBack  0;
_p pushBack  22;

_i pushBack  "rhs_45Rnd_545X39_7N22_AK"; 
_u pushBack  2;
_p pushBack  44;

_i pushBack  "CUP_60Rnd_545x39_AK74M_M"; 
_u pushBack  0;
_p pushBack  29;

_i pushBack  "rhs_60Rnd_545X39_7N22_AK"; 
_u pushBack  2;
_p pushBack  58;

_i pushBack  "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"; 
_u pushBack  0;
_p pushBack  36;

//wammo 1-2


_i pushBack  "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"; 
_u pushBack  1;
_p pushBack  15;

_i pushBack  "CUP_1Rnd_HE_GP25_M"; 
_u pushBack  1;
_p pushBack  15;

_i pushBack  "CUP_1Rnd_SMOKE_GP25_M"; 
_u pushBack  1;
_p pushBack  3;

_i pushBack  "CUP_1Rnd_SmokeRed_GP25_M"; 
_u pushBack  1;
_p pushBack  3;

_i pushBack  "CUP_IlumFlareWhite_GP25_M"; 
_u pushBack  1;
_p pushBack  2;

_i pushBack  "CUP_IlumFlareRed_GP25_M"; 
_u pushBack  1;
_p pushBack  2;

_i pushBack  "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"; 
_u pushBack  1;
_p pushBack  50;

_i pushBack  "CUP_20Rnd_762x51_FNFAL_M"; 
_u pushBack  1;
_p pushBack  20;

//wammo3

_i pushBack  "CUP_6Rnd_HE_GP25_M"; 
_u pushBack  3;
_p pushBack  90;

_i pushBack  "CUP_10Rnd_762x54_SVD_M"; 
_u pushBack  3;
_p pushBack  10;

_i pushBack  "CUP_20Rnd_9x39_SP5_VSS_M"; 
_u pushBack  3;
_p pushBack  30;

//wammo4-5

_i pushBack  "rhs_30Rnd_545x39_7N10_AK"; 
_u pushBack  4;
_p pushBack  15;

_i pushBack  "CUP_srifle_ksvk_PSO3"; 
_u pushBack  4;
_p pushBack  15;

_i pushBack  "CUP_5Rnd_127x108_KSVK_M"; 
_u pushBack  4;
_p pushBack  15;


//wammorest

_i pushBack  "LIB_71Rnd_762x25"; 
_u pushBack  0;
_p pushBack  7;

_i pushBack  "LIB_71Rnd_762x25_t"; 
_u pushBack  0;
_p pushBack  7;

_i pushBack  "LIB_71Rnd_762x25_t2"; 
_u pushBack  0;
_p pushBack  7;

_i pushBack  "LIB_71Rnd_762x25_ap"; 
_u pushBack  0;
_p pushBack  7;


_i pushBack  "LIB_5Rnd_762x54"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "LIB_5Rnd_762x54_t46"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "LIB_5Rnd_762x54_t30"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "LIB_5Rnd_762x54_D"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "LIB_5Rnd_762x54_b30"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "LIB_1Rnd_G_DYAKONOV"; 
_u pushBack  0;
_p pushBack  5;


_i pushBack  "LIB_10Rnd_762x54"; 
_u pushBack  0;
_p pushBack  7;

_i pushBack  "LIB_10Rnd_762x54_t46"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "LIB_10Rnd_762x54_t30"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "LIB_10Rnd_762x54_t462"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "LIB_10Rnd_762x54_t302"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "LIB_10Rnd_762x54_d"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "LIB_10Rnd_762x54_b30"; 
_u pushBack  0;
_p pushBack  15;


_i pushBack  "LIB_47Rnd_762x54"; 
_u pushBack  0;
_p pushBack  70;

_i pushBack  "LIB_47Rnd_762x54d"; 
_u pushBack  0;
_p pushBack  70;


_i pushBack  "LIB_63Rnd_762x54"; 
_u pushBack  0;
_p pushBack  94;

_i pushBack  "LIB_63Rnd_762x54d"; 
_u pushBack  0;
_p pushBack  94;


_i pushBack  "uns_12gaugemag_4"; 
_u pushBack  0;
_p pushBack  4;

_i pushBack  "uns_12gaugemag_4f"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "uns_25Rnd_pm"; 
_u pushBack  0;
_p pushBack  9;

_i pushBack  "LIB_1Rnd_145x114"; 
_u pushBack  0;
_p pushBack  10;


//WGADGET
//aim
_i pushBack  "rhs_acc_ekp8_02"; 
_u pushBack  1;
_p pushBack  17;

_i pushBack  "CUP_optic_Kobra"; 
_u pushBack  1;
_p pushBack  15;

_i pushBack  "rhs_acc_pkas"; 
_u pushBack  1;
_p pushBack  18;

_i pushBack  "rhs_acc_nita"; 
_u pushBack  1;
_p pushBack  20;

_i pushBack  "CUP_optic_PechenegScope"; 
_u pushBack  0;
_p pushBack  22;

_i pushBack  "CUP_optic_1p63"; 
_u pushBack  0;
_p pushBack  25;

_i pushBack  "rhs_acc_ekp1"; 
_u pushBack  0;
_p pushBack  12;

_i pushBack  "rhs_acc_okp7_dovetail"; 
_u pushBack  0;
_p pushBack  10;
//other

_i pushBack  "LIB_ACC_M1891_Bayo"; 
_u pushBack  0;
_p pushBack  12;

_i pushBack  "LIB_ACC_GL_DYAKONOV_Empty"; 
_u pushBack  0;
_p pushBack  15;





//wgadget1-2

_i pushBack  "CUP_optic_PSO_1"; 
_u pushBack  2;
_p pushBack  22;

_i pushBack  "CUP_muzzle_PB6P9"; 
_u pushBack  1;
_p pushBack  25;



//wgadget3

_i pushBack  "CUP_optic_AN_PVS_4"; 
_u pushBack  3;
_p pushBack  12;

_i pushBack  "CUP_optic_NSPU"; 
_u pushBack  3;
_p pushBack  15;

_i pushBack  "CUP_SVD_camo_d"; 
_u pushBack  3;
_p pushBack  15;

//wgadget4-5

_i pushBack  "CUP_optic_PGO7V3"; 
_u pushBack  4;
_p pushBack  12;

_i pushBack  "CUP_optic_PSO_3"; 
_u pushBack  4;
_p pushBack  15;



//LAUNCHER

_i pushBack  "CUP_launch_RPG18"; 
_u pushBack  0;
_p pushBack  200;

//launcher 1-2

_i pushBack  "CUP_launch_RPG7V"; 
_u pushBack  2;
_p pushBack  340;

//launcher3

_i pushBack  "CUP_launch_RPG7V_PGO7V2"; 
_u pushBack  3;
_p pushBack  350;

_i pushBack  "CUP_launch_9K32Strela"; 
_u pushBack  3;
_p pushBack  320;

_i pushBack  "CUP_launch_RPG26"; 
_u pushBack  3;
_p pushBack  240;

//launcher4-5

_i pushBack  "rhs_weap_igla"; 
_u pushBack  4;
_p pushBack  240;

_i pushBack  "CUP_launch_RPG7V_PGO7V3"; 
_u pushBack  4;
_p pushBack  240;

_i pushBack  "CUP_launch_Metis"; 
_u pushBack  5;
_p pushBack  240;

_i pushBack  "cwr3_launch_at4"; 
_u pushBack  4;
_p pushBack  240;



//launcherrest
_i pushBack  "LIB_PzFaust_30m"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "LIB_PzFaust_60m"; 
_u pushBack  0;
_p pushBack  90;

_i pushBack  "LIB_RPzB"; 
_u pushBack  0;
_p pushBack  550;




//LAMMO

_i pushBack  "LIB_1Rnd_RPzB"; 
_u pushBack  0;
_p pushBack  250;

//lammo 1-2

_i pushBack  "CUP_PG7VL_M"; 
_u pushBack  2;
_p pushBack  270;


//lammo3

_i pushBack  "CUP_Strela_2_M"; 
_u pushBack  3;
_p pushBack  70;

_i pushBack  "CUP_RPG26_M"; 
_u pushBack  3;
_p pushBack  70;

//lammo4-5

_i pushBack  "rhs_mag_9k38_rocket"; 
_u pushBack  4;
_p pushBack  70;

_i pushBack  "CUP_AT13_M"; 
_u pushBack  5;
_p pushBack  70;

_i pushBack  "CUP_PG7VR_M"; 
_u pushBack  4;
_p pushBack  70;

_i pushBack  "cwr3_at4_heat_m"; 
_u pushBack  4;
_p pushBack  70;

//HGUN
_i pushBack  "hgun_Rook40_F"; 
_u pushBack  0;
_p pushBack  38;

//hgun3

_i pushBack  "CUP_hgun_Makarov"; 
_u pushBack  0;
_p pushBack  12;

_i pushBack  "CUP_hgun_PB6P9_snds"; 
_u pushBack  0;
_p pushBack  18;

//hgunrest
_i pushBack  "uns_pm63p"; 
_u pushBack  0;
_p pushBack  25;

_i pushBack  "LIB_TT33"; 
_u pushBack  0;
_p pushBack  15;

_i pushBack  "LIB_FLARE_PISTOL"; 
_u pushBack  0;
_p pushBack  35;

//HAMMO
_i pushBack  "16Rnd_9x21_Mag"; 
_u pushBack  0;
_p pushBack  16;

//hammo3

_i pushBack  "CUP_8Rnd_9x18_Makarov_M"; 
_u pushBack  3;
_p pushBack  4;

_i pushBack  "CUP_8Rnd_9x18_MakarovSD_M"; 
_u pushBack  3;
_p pushBack  4;

//hammorest
_i pushBack  "LIB_8Rnd_762x25"; 
_u pushBack  0;
_p pushBack  1;




//THROW
_i pushBack  "CUP_HandGrenade_RGD5"; 
_u pushBack  0;
_p pushBack  24;

_i pushBack  "LIB_Rg42"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "LIB_Rpg6"; 
_u pushBack  0;
_p pushBack  65;

//trow4-5

_i pushBack  "rhs_mag_rgn"; 
_u pushBack  4;
_p pushBack  65;

//PUT

//HEADGEAR AND BINO
_i pushBack  "CUP_NVG_HMNVS_Hide"; 
_u pushBack  0;
_p pushBack  135;

_i pushBack  "LIB_Binocular_SU"; 
_u pushBack  0;
_p pushBack  85;


//FACEWEAR

_i pushBack  "CUP_FR_NeckScarf"; 
_u pushBack  0;
_p pushBack  15;



[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf";

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 