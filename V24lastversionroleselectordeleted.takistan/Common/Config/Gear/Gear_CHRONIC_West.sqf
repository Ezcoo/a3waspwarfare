private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];


//CORE GEAR (UNITBASED MINIMUM)
//--LEVEL 0-- (include armor vests)

//UNIFORM

_i pushBack  "U_LIB_US_NAC_Uniform"; 
_u pushBack  0;
_p pushBack  90;

_i pushBack  "CUP_U_B_USMC_FROG2_DMARPAT"; 
_u pushBack  0;
_p pushBack  90;

_i pushBack  "cwr3_b_uniform_m81_woodland"; 
_u pushBack  0;
_p pushBack  90;


//BACKPACK

_i pushBack  "B_LIB_US_M36"; 
_u pushBack  0;
_p pushBack  10;

_i pushBack  "CUP_B_AssaultPack_Coyote"; 
_u pushBack  0;
_p pushBack  14;

_i pushBack  "CUP_B_AssaultPack_ACU"; 
_u pushBack  0;
_p pushBack  14;






//VEST

//less armor

_i pushBack  "V_LIB_US_Assault_Vest_Light"; 
_u pushBack  0;
_p pushBack  70;

_i pushBack  "uns_simc_flak_M56_bandoleer"; 
_u pushBack  0;
_p pushBack  80;

_i pushBack  "uns_simc_flak_55_mk2_bandoleer_belt_open"; 
_u pushBack  0;
_p pushBack  90;

//unit based standard, camo


_i pushBack  "cwr3_b_vest_pasgt_alice_woodland"; 
_u pushBack  0;
_p pushBack  100;

_i pushBack  "cwr3_b_vest_pasgt_alice_6color_desert"; 
_u pushBack  0;
_p pushBack  100;

_i pushBack  "CUP_V_B_Eagle_SPC_Rifleman"; 
_u pushBack  0;
_p pushBack  110;

_i pushBack  "CUP_V_B_IOTV_UCP_MG_USArmy"; 
_u pushBack  0;
_p pushBack  110;

_i pushBack  "CUP_V_B_IOTV_OEFCP_MG_USArmy"; 
_u pushBack  0;
_p pushBack  110;

_i pushBack  "CUP_V_B_IOTV_OEFCP_MG_USArmy"; 
_u pushBack  0;
_p pushBack  110;

_i pushBack  "CUP_V_B_Interceptor_Grenadier_M81"; 
_u pushBack  0;
_p pushBack  110;

//max armor vest

_i pushBack  "V_PlateCarrierGL_mtp"; 
_u pushBack  3;
_p pushBack  450;



//HELMET

_i pushBack  "H_LIB_US_Helmet"; 
_u pushBack  0;
_p pushBack  40;

_i pushBack  "H_LIB_US_Helmet_Med"; 
_u pushBack  0;
_p pushBack  40;

_i pushBack  "CUP_H_USMC_LWH_NVGMOUNT_DES"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "cwr3_b_headgear_pasgt_m81_woodland"; 
_u pushBack  0;
_p pushBack  50;



//WEAPON

_i pushBack  "uns_mat49"; 
_u pushBack  0;
_p pushBack  18;

_i pushBack  "rhsusf_acc_rotex_mp7";
_u pushBack  3;
_p pushBack  80;

_i pushBack  "LIB_M1928_Thompson"; 
_u pushBack  0;
_p pushBack  25;

_i pushBack  "uns_model12"; 
_u pushBack  0;
_p pushBack  25;

_i pushBack  "LIB_M1_Garand_M7"; 
_u pushBack  0;
_p pushBack  30;

_i pushBack  "uns_m2carbine_gl"; 
_u pushBack  0;
_p pushBack  30;

_i pushBack  "LIB_M1903A4_Springfield"; 
_u pushBack  0;
_p pushBack  50;

//---------------
_i pushBack  "LIB_M1918A2_BAR"; 
_u pushBack  0;
_p pushBack  180;

_i pushBack  "LIB_Bren_Mk2"; 
_u pushBack  0;
_p pushBack  190;

_i pushBack  "LIB_M1919A4"; 
_u pushBack  0;
_p pushBack  400;

_i pushBack "CUP_sgun_AA12";
_u pushBack 3;
_p pushBack 200;

_i pushBack  "rhs_weap_M590_8RD";
_u pushBack  0;
_p pushBack  80;

_i pushBack  "cwr3_arifle_m16a1e1_lsw";
_u pushBack  0;
_p pushBack  110;

_i pushBack "CUP_arifle_M16A2";
_u pushBack 1;
_p pushBack 130;

_i pushBack  "rhs_weap_m16a4_carryhandle_pmag";
_u pushBack  1;
_p pushBack  150;

_i pushBack  "CUP_arifle_AK101";
_u pushBack  1;
_p pushBack  170;



_i pushBack  "rhs_weap_m4a1_carryhandle_pmag";
_u pushBack  2;
_p pushBack  190;

_i pushBack  "rhs_weap_m4a1_carryhandle_m203";
_u pushBack  2;
_p pushBack  200;

_i pushBack "CUP_arifle_G36C_holo_snds";
_u pushBack 2;
_p pushBack 450;


_i pushBack "CUP_lmg_Mk48_des";
_u pushBack 4;
_p pushBack 600;

_i pushBack "rhs_weap_mk17_STD";
_u pushBack 3;
_p pushBack 600;


//rhscup sniper

_i pushBack  "rhs_weap_m24sws_blk";
_u pushBack  1;
_p pushBack  250;

_i pushBack "CUP_srifle_M14";
_u pushBack 3;
_p pushBack 300;

_i pushBack  "rhs_weap_m14ebrri";
_u pushBack  3;
_p pushBack  390;

_i pushBack "CUP_srifle_M110";
_u pushBack 4;
_p pushBack 500;

_i pushBack  "rhs_weap_M107_d";
_u pushBack  4;
_p pushBack  1350;

_i pushBack  "rhs_weap_m32";
_u pushBack  2;
_p pushBack  400;


//WAMMO


_i pushBack  "CUP_30Rnd_556x45_AK";
_u pushBack  1;
_p pushBack  15;


_i pushBack "CUP_20Rnd_556x45_Stanag";
_u pushBack 0;
_p pushBack 15; 


_i pushBack "30Rnd_556x45_Stanag";
_u pushBack 1;
_p pushBack 50;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Red";
_u pushBack 1;
_p pushBack 50;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Green";
_u pushBack 0;
_p pushBack 20;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Yellow";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_556x45_G36";
_u pushBack 1;
_p pushBack 50;

_i pushBack "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
_u pushBack 1;
_p pushBack 50;

_i pushBack "CUP_30Rnd_TE1_Green_Tracer_556x45_G36";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36";
_u pushBack 0;
_p pushBack 20;
 
_i pushBack "CUP_100Rnd_556x45_BetaCMag";
_u pushBack 1;
_p pushBack 150;

_i pushBack "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";
_u pushBack 1;
_p pushBack 150;

_i pushBack "CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_100Rnd_TE4_Green_Tracer_556x45_M249";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_u pushBack 1;
_p pushBack 150;




_i pushBack  "rhssaf_30Rnd_556x45_EPR_G36";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "30Rnd_556x45_Stanag";
_u pushBack  1;
_p pushBack  15;

_i pushBack  "30Rnd_556x45_Stanag_Tracer_Red";
_u pushBack  1;
_p pushBack  15;

_i pushBack  "30Rnd_556x45_Stanag_Tracer_Green";
_u pushBack  1;
_p pushBack  15;

_i pushBack  "30Rnd_556x45_Stanag_Tracer_Yellow";
_u pushBack  1;
_p pushBack  15;






_i pushBack  "CUP_50Rnd_762x51_B_SCAR";
_u pushBack  4;
_p pushBack  50;

_i pushBack  "CUP_50Rnd_TE1_Red_Tracer_762x51_SCAR";
_u pushBack  4;
_p pushBack  50;

_i pushBack  "rhs_mag_20Rnd_SCAR_762x51_m80_ball";
_u pushBack  2;
_p pushBack  30;

_i pushBack  "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
_u pushBack  3;
_p pushBack  35;

_i pushBack  "rhs_mag_20Rnd_SCAR_762x51_m80a1_epr";
_u pushBack  3;
_p pushBack  32;




_i pushBack  "rhsusf_mag_10Rnd_STD_50BMG_M33";
_u pushBack  4;
_p pushBack  150;

_i pushBack  "rhsusf_mag_10Rnd_STD_50BMG_mk211";
_u pushBack  4;
_p pushBack  150;

_i pushBack  "rhsusf_20Rnd_762x51_m118_special_Mag";
_u pushBack  2;
_p pushBack  30;

_i pushBack  "rhsusf_20Rnd_762x51_m993_Mag";
_u pushBack  2;
_p pushBack  25;

_i pushBack  "rhsusf_20Rnd_762x51_m62_Mag";
_u pushBack  2;
_p pushBack  25;

_i pushBack  "rhsusf_5Rnd_300winmag_xm2010";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_5Rnd_762x51_m118_special_Mag";
_u pushBack  2;
_p pushBack  20;

_i pushBack  "rhsusf_5Rnd_762x51_m993_Mag";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhsusf_5Rnd_762x51_m62_Mag";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhsusf_50Rnd_762x51";
_u pushBack  2;
_p pushBack  45;

_i pushBack  "rhsusf_50Rnd_762x51_m61_ap";
_u pushBack  2;
_p pushBack  45;

_i pushBack  "rhsusf_50Rnd_762x51_m62_tracer";
_u pushBack  2;
_p pushBack  45;

_i pushBack  "rhsusf_50Rnd_762x51_m80a1epr";
_u pushBack  2;
_p pushBack  45;

_i pushBack  "rhsusf_50Rnd_762x51_m82_blank";
_u pushBack  2;
_p pushBack  45;

_i pushBack  "rhsusf_100Rnd_762x51";
_u pushBack  3;
_p pushBack  90;

_i pushBack  "rhsusf_100Rnd_762x51_m61_ap";
_u pushBack  3;
_p pushBack  90;

_i pushBack  "rhsusf_100Rnd_762x51_m62_tracer";
_u pushBack  3;
_p pushBack  90;

_i pushBack  "rhsusf_100Rnd_762x51_m80a1epr";
_u pushBack  3;
_p pushBack  90;

_i pushBack  "rhsusf_100Rnd_762x51_m82_blank";
_u pushBack  3;
_p pushBack  90;

_i pushBack "CUP_20Rnd_762x51_DMR";
_u pushBack 3;
_p pushBack 150;

_i pushBack "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR";
_u pushBack 0;
_p pushBack 40;
 
_i pushBack "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR";
_u pushBack 3;
_p pushBack 150;

_i pushBack "CUP_20Rnd_TE1_Green_Tracer_762x51_DMR";
_u pushBack 3;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_White_Tracer_762x51_DMR";
_u pushBack 3;
_p pushBack 40;

_i pushBack "CUP_20Rnd_762x51_B_M110";
_u pushBack 3;
_p pushBack 150;

_i pushBack "CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110";
_u pushBack 3;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_Red_Tracer_762x51_M110";
_u pushBack 3;
_p pushBack 150;

_i pushBack "CUP_20Rnd_TE1_Green_Tracer_762x51_M110";
_u pushBack 3;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_White_Tracer_762x51_M110";
_u pushBack 3;
_p pushBack 40;

_i pushBack  "rhsusf_50Rnd_762x51_m993";
_u pushBack  2;
_p pushBack  45;

_i pushBack  "rhsusf_100Rnd_762x51_m993";
_u pushBack  3;
_p pushBack  90;



_i pushBack "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M";
_u pushBack 3;
_p pushBack 250;

_i pushBack "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_u pushBack 3;
_p pushBack 250;

_i pushBack "CUP_100Rnd_TE4_White_Tracer_762x51_M240_M";
_u pushBack 3;
_p pushBack 250;


_i pushBack  "rhsusf_mag_6Rnd_M441_HE";
_u pushBack  4;
_p pushBack  60;

_i pushBack  "rhsusf_mag_6Rnd_M433_HEDP";
_u pushBack  4;
_p pushBack  60;

_i pushBack  "rhsusf_mag_6Rnd_M397_HET";
_u pushBack  2;
_p pushBack  60;

_i pushBack  "rhsusf_mag_6Rnd_M576_Buckshot";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_m4009";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_M585_white";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_m661_green";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_m662_red";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_M713_red";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_M714_white";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_M715_green";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_mag_6Rnd_M716_yellow";
_u pushBack  0;
_p pushBack  15;

_i pushBack  "rhsusf_10Rnd_762x51_m118_special_Mag";
_u pushBack  2;
_p pushBack  25;

_i pushBack  "rhsusf_10Rnd_762x51_m993_Mag";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhsusf_10Rnd_762x51_m62_Mag";
_u pushBack  2;
_p pushBack  15;

_i pushBack  "rhsusf_8Rnd_00Buck";
_u pushBack  0;
_p pushBack  10;

_i pushBack  "rhsusf_8rnd_doomsday_buck";
_u pushBack  0;
_p pushBack  10;

_i pushBack  "rhsusf_8Rnd_Slug";
_u pushBack  0;
_p pushBack  10;

_i pushBack  "rhsusf_8Rnd_HE";
_u pushBack  4;
_p pushBack  40;

_i pushBack  "rhsusf_8Rnd_FRAG";
_u pushBack  4;
_p pushBack  40;

_i pushBack "CUP_20Rnd_B_AA12_Pellets";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_20Rnd_B_AA12_74Slug";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_20Rnd_B_AA12_HE";
_u pushBack 2;
_p pushBack 50;

_i pushBack  "rhsusf_5Rnd_00Buck";
_u pushBack  0;
_p pushBack  8;

_i pushBack  "rhsusf_5rnd_doomsday_buck";
_u pushBack  0;
_p pushBack  8;

_i pushBack  "rhsusf_5Rnd_Slug";
_u pushBack  0;
_p pushBack  8;

_i pushBack  "rhsusf_5Rnd_HE";
_u pushBack  4;
_p pushBack  15;

_i pushBack  "rhsusf_5Rnd_FRAG";
_u pushBack  4;
_p pushBack  15;

_i pushBack  "rhsusf_mag_40Rnd_46x30_FMJ";
_u pushBack  0;
_p pushBack  20;

_i pushBack  "rhsusf_mag_40Rnd_46x30_JHP";
_u pushBack  0;
_p pushBack  20;

_i pushBack  "rhsusf_mag_40Rnd_46x30_AP";
_u pushBack  2;
_p pushBack  20;

_i pushBack  "rhs_fgm148_magazine_AT";
_u pushBack  5;
_p pushBack  1600;





_i pushBack  "LIB_50Rnd_45ACP"; 
_u pushBack  0;
_p pushBack  4;

_i pushBack  "LIB_30Rnd_45ACP"; 
_u pushBack  0;
_p pushBack  3;

_i pushBack  "LIB_30Rnd_45ACP_t"; 
_u pushBack  0;
_p pushBack  3;



_i pushBack  "LIB_5Rnd_762x63"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "LIB_5Rnd_762x63_t"; 
_u pushBack  0;
_p pushBack  5;

_i pushBack  "LIB_5Rnd_762x63_M1"; 
_u pushBack  0;
_p pushBack  5;



_i pushBack  "LIB_8Rnd_762x63"; 
_u pushBack  0;
_p pushBack  8;

_i pushBack  "LIB_8Rnd_762x63_t"; 
_u pushBack  0;
_p pushBack  8;

_i pushBack  "LIB_8Rnd_762x63_M1"; 
_u pushBack  0;
_p pushBack  8;

_i pushBack  "LIB_1Rnd_G_M9A1"; 
_u pushBack  0;
_p pushBack  18;

_i pushBack  "LIB_1Rnd_G_Mk2"; 
_u pushBack  0;
_p pushBack  26;


_i pushBack  "LIB_50Rnd_762x63"; 
_u pushBack  0;
_p pushBack  48;

_i pushBack  "LIB_50Rnd_762x63_M1"; 
_u pushBack  0;
_p pushBack  48;


_i pushBack  "LIB_20Rnd_762x63"; 
_u pushBack  0;
_p pushBack  19;

_i pushBack  "LIB_20Rnd_762x63_M1"; 
_u pushBack  0;
_p pushBack  19;


_i pushBack  "LIB_30Rnd_770x56"; 
_u pushBack  0;
_p pushBack  21;

_i pushBack  "LIB_30Rnd_770x56_MKVIII"; 
_u pushBack  0;
_p pushBack  21;


_i pushBack  "uns_m2carbinemag"; 
_u pushBack  0;
_p pushBack  3;

_i pushBack  "uns_m2carbinemag_T"; 
_u pushBack  0;
_p pushBack  3;

_i pushBack  "uns_m2carbinemag_NT"; 
_u pushBack  0;
_p pushBack  3;

_i pushBack  "Uns_1Rnd_22mm_M1a2_FRAG"; 
_u pushBack  0;
_p pushBack  19;

_i pushBack  "uns_1Rnd_22mm_lume"; 
_u pushBack  0;
_p pushBack  9;

_i pushBack  "Uns_1Rnd_22mm_smoke"; 
_u pushBack  0;
_p pushBack  10;



_i pushBack  "uns_mat49_20_mag"; 
_u pushBack  0;
_p pushBack  2;

_i pushBack  "uns_mat49mag"; 
_u pushBack  0;
_p pushBack  3;

_i pushBack  "uns_mat49mag_T"; 
_u pushBack  0;
_p pushBack  3;

_i pushBack  "uns_mat49mag_NT"; 
_u pushBack  0;
_p pushBack  3;


_i pushBack  "uns_12gaugemag_6"; 
_u pushBack  0;
_p pushBack  6;

_i pushBack  "uns_12gaugemag_6f"; 
_u pushBack  0;
_p pushBack  7;

//WGADGET


_i pushBack  "LIB_ACC_M1_Bayo"; 
_u pushBack  0;
_p pushBack  12;

_i pushBack  "LIB_ACC_GL_M7"; 
_u pushBack  0;
_p pushBack  16;

_i pushBack  "CUP_acc_ANPEQ_15_Black"; 
_u pushBack  0;
_p pushBack  22;

_i pushBack  "CUP_optic_CompM2_low"; 
_u pushBack  0;
_p pushBack  35;


//LAUNCHER

_i pushBack  "cwr3_launch_m72a3"; 
_u pushBack  0;
_p pushBack  160;

_i pushBack  "LIB_M1A1_Bazooka"; 
_u pushBack  0;
_p pushBack  560;



_i pushBack  "CUP_launch_M72A6"; 
_u pushBack  1;
_p pushBack  280;

_i pushBack  "uns_m20_bazooka"; 
_u pushBack  1;
_p pushBack  680;


_i pushBack  "uns_m72"; 
_u pushBack  2;
_p pushBack  380;

_i pushBack  "cwr3_launch_m67_rcl"; 
_u pushBack  2;
_p pushBack  785;




_i pushBack  "cwr3_redeye_m"; 
_u pushBack  4;
_p pushBack  460;


_i pushBack  "rhs_weap_fim92";
_u pushBack  5;
_p pushBack  800;

//LAMMO

_i pushBack  "LIB_1Rnd_60mm_M6"; 
_u pushBack  0;
_p pushBack  290;


_i pushBack  "uns_M28A2_mag"; 
_u pushBack  1;
_p pushBack  320;


_i pushBack  "uns_M30_smoke_mag"; 
_u pushBack  2;
_p pushBack  270;


_i pushBack  "cwr3_m67_rcl_heat_m"; 
_u pushBack  2;
_p pushBack  340;



_i pushBack  "rhs_fim92_mag"; 
_u pushBack  5;
_p pushBack  290;





//HGUN
_i pushBack  "CUP_hgun_M9"; 
_u pushBack  0;
_p pushBack  37;

_i pushBack  "LIB_Webley_Flare"; 
_u pushBack  0;
_p pushBack  32;

_i pushBack  "uns_mat49p"; 
_u pushBack  0;
_p pushBack  18;

_i pushBack  "uns_m79p"; 
_u pushBack  1;
_p pushBack  38;



//HAMMO
_i pushBack  "CUP_15Rnd_9x19_M9"; 
_u pushBack  0;
_p pushBack  15;


_i pushBack  "Uns_1Rnd_HE_M381"; 
_u pushBack  0;
_p pushBack  10;

_i pushBack  "Uns_1Rnd_HE_M406"; 
_u pushBack  0;
_p pushBack  12;

_i pushBack  "uns_1Rnd_AB_M397"; 
_u pushBack  0;
_p pushBack  15;

//THROW
_i pushBack  "CUP_HandGrenade_M67"; 
_u pushBack  0;
_p pushBack  24;

_i pushBack  "LIB_F1"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "LIB_Pwm"; 
_u pushBack  0;
_p pushBack  65;


//PUT

//HEADGEAR
_i pushBack  "CUP_NVG_PVS14_Hide"; 
_u pushBack  0;
_p pushBack  135;

//-----------------------------------------------------------------------


//--LEVEL 1--





//UNIFORM

_i pushBack  "CUP_U_B_USMC_MCCUU_des_gloves"; 
_u pushBack  1;
_p pushBack  90;

_i pushBack  "cwr3_b_uniform_m81_woodland_rangers"; 
_u pushBack  1;
_p pushBack  90;

_i pushBack  "CUP_U_B_USMC_MCCUU_des_roll"; 
_u pushBack  1;
_p pushBack  90;

//BACKPACK

//VEST
_i pushBack  "cwr3_b_vest_alice"; 
_u pushBack  1;
_p pushBack  100;

_i pushBack  "cwr3_b_vest_alice_mg"; 
_u pushBack  1;
_p pushBack  100;

_i pushBack  "CUP_V_B_Eagle_SPC_Corpsman"; 
_u pushBack  1;
_p pushBack  110;

_i pushBack  "CUP_V_B_Eagle_SPC_AT"; 
_u pushBack  1;
_p pushBack  110;

_i pushBack  "CUP_V_B_Eagle_SPC_GL"; 
_u pushBack  1;
_p pushBack  120;

//HELMET



_i pushBack  "CUP_H_LWHv2_MARPAT_des_NVG_gog_cov2"; 
_u pushBack  1;
_p pushBack  50;

_i pushBack  "CUP_H_LWHv2_MARPAT_des_cov_fr"; 
_u pushBack  1;
_p pushBack  50;

_i pushBack  "CUP_H_LWHv2_MARPAT_des_comms_cov_fr"; 
_u pushBack  1;
_p pushBack  50;

//camo

_i pushBack  "cwr3_b_headgear_pasgt_dcu"; 
_u pushBack  0;
_p pushBack  50;

_i pushBack  "cwr3_b_headgear_pasgt_desert_6color"; 
_u pushBack  0;
_p pushBack  50;


//WEAPON



_i pushBack  "cwr3_arifle_xms"; 
_u pushBack  1;
_p pushBack  170;

_i pushBack  "CUP_lmg_M60"; 
_u pushBack  1;
_p pushBack  340;

//WAMMO

_i pushBack  "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"; 
_u pushBack  1;
_p pushBack  75;

//WGADGET



_i pushBack  "cwr3_optic_xms_cross"; 
_u pushBack  1;
_p pushBack  32;



//LAUNCHER




//LAMMO

//HGUN
_i pushBack  "CUP_hgun_MicroUzi"; 
_u pushBack  1;
_p pushBack  25;

_i pushBack  "CUP_hgun_Mac10"; 
_u pushBack  1;
_p pushBack  31;


//HAMMO
_i pushBack  "CUP_30Rnd_9x19_UZI"; 
_u pushBack  1;
_p pushBack  3;

_i pushBack  "CUP_30Rnd_45ACP_MAC10_M"; 
_u pushBack  1;
_p pushBack  3;

_i pushBack  "CUP_30Rnd_45ACP_Yellow_Tracer_MAC10_M"; 
_u pushBack  1;
_p pushBack  3;

_i pushBack  "CUP_30Rnd_45ACP_Green_Tracer_MAC10_M"; 
_u pushBack  1;
_p pushBack  3;



//THROW
//PUT

//optic

_i pushBack  "rhsusf_ANPVS_14";
_u pushBack  3;
_p pushBack  400;

_i pushBack  "rhsusf_ANPVS_15";
_u pushBack  1;
_p pushBack  200;

_i pushBack  "Leupold_Mk4";
_u pushBack  0;
_p pushBack  50;


_i pushBack  "rhs_optic_maaws";
_u pushBack  3;
_p pushBack  150;

_i pushBack  "rhsusf_acc_eotech_552";
_u pushBack  3;
_p pushBack  150;

_i pushBack  "rhsusf_acc_ACOG";
_u pushBack  3;
_p pushBack  150;

_i pushBack  "rhsusf_acc_ACOG_RMR";
_u pushBack  3;
_p pushBack  170;

_i pushBack  "rhs_acc_at4_handler";
_u pushBack  0;
_p pushBack  110;

_i pushBack  "rhsusf_acc_anpeq15side";
_u pushBack  2;
_p pushBack  120;

_i pushBack  "rhsusf_acc_omega9k";
_u pushBack  3;
_p pushBack  100;

_i pushBack  "rhsusf_acc_g33_t1";
_u pushBack  3;
_p pushBack  200;

_i pushBack  "rhsusf_acc_g33_xps3";
_u pushBack  3;
_p pushBack  200;

_i pushBack  "rhsusf_acc_wmx";
_u pushBack  2;
_p pushBack  120;

_i pushBack  "rhsusf_acc_m952v";
_u pushBack  2;
_p pushBack  100;

_i pushBack  "rhsusf_acc_anpeq15a";
_u pushBack  1;
_p pushBack  110;

_i pushBack  "rhsusf_acc_anpeq15_wmx_light_h";
_u pushBack  2;
_p pushBack  130;

_i pushBack  "rhsusf_acc_leupoldmk4_2";
_u pushBack  4;
_p pushBack  220;

_i pushBack  "rhsusf_acc_premier";
_u pushBack  4;
_p pushBack  300;

_i pushBack  "rhsusf_acc_premier_anpvs27";
_u pushBack  4;
_p pushBack  420;

_i pushBack  "rhsusf_acc_m8541";
_u pushBack  2;
_p pushBack  280;

_i pushBack  "rhsusf_acc_m8541_low_wd";
_u pushBack  2;
_p pushBack  280;

_i pushBack  "rhsusf_acc_eotech";
_u pushBack  2;
_p pushBack  120;

_i pushBack  "rhsusf_acc_eotech_552_d";
_u pushBack  2;
_p pushBack  120;

_i pushBack  "rhsusf_acc_eotech_xps3";
_u pushBack  2;
_p pushBack  120;

_i pushBack  "rhsusf_acc_compm4";
_u pushBack  1;
_p pushBack  120;

_i pushBack  "rhsusf_acc_acog3_usmc_3d";
_u pushBack  3;
_p pushBack  160;

_i pushBack  "rhsusf_acc_acog_rmr_3d";
_u pushBack  3;
_p pushBack  160;

_i pushBack  "rhsusf_acc_acog_anpvs27";
_u pushBack  4;
_p pushBack  450;

_i pushBack  "rhsusf_acc_elcan";
_u pushBack  2;
_p pushBack  150;

_i pushBack  "rhsusf_acc_elcan_3d";
_u pushBack  2;
_p pushBack  150;

_i pushBack  "optic_tws";
_u pushBack  4;
_p pushBack  350;

_i pushBack  "optic_tws_mg";
_u pushBack  4;
_p pushBack  350;

_i pushBack  "optic_Hamr";
_u pushBack  3;
_p pushBack  250;

_i pushBack  "rhsusf_acc_specterdr";
_u pushBack  2;
_p pushBack  250;

_i pushBack  "rhsusf_acc_specterdr_3d";
_u pushBack  2;
_p pushBack  250;

_i pushBack  "rhsusf_acc_specterdr_a";
_u pushBack  2;
_p pushBack  250;

_i pushBack  "rhsusf_acc_specterdr_a_3d";
_u pushBack  2;
_p pushBack  250;

_i pushBack  "rhsusf_acc_specterdr_pvs27";
_u pushBack  4;
_p pushBack  450;

_i pushBack  "rhsusf_acc_specterdr_od";
_u pushBack  3;
_p pushBack  250;

_i pushBack  "rhsusf_acc_specterdr_od_3d";
_u pushBack  3;
_p pushBack  250;

_i pushBack  "rhsusf_acc_anpvs27";
_u pushBack  4;
_p pushBack  250;

_i pushBack  "rhsusf_acc_anpas13gv1";
_u pushBack  5;
_p pushBack  700;

_i pushBack  "rhsusf_acc_m2a1";
_u pushBack  2;
_p pushBack  120;

_i pushBack  "rhsusf_acc_acog_mdo";
_u pushBack  3;
_p pushBack  180;

_i pushBack  "rhsusf_acc_harris_bipod";
_u pushBack  3;
_p pushBack  200;

_i pushBack  "rhsusf_mine_m14_mag";
_u pushBack  2;
_p pushBack  150;

_i pushBack  "rhs_mine_tm62m_mag";
_u pushBack  2;
_p pushBack  400;

_i pushBack  "rhsusf_m112_mag";
_u pushBack  1;
_p pushBack  250;

_i pushBack  "rhsusf_m112x4_mag";
_u pushBack  4;
_p pushBack  650;

_i pushBack  "rhsusf_acc_M2010S";
_u pushBack  4;
_p pushBack  120;

_i pushBack  "rhsusf_acc_sr25S";
_u pushBack  3;
_p pushBack  80;

_i pushBack  "rhsusf_acc_nt4_black";
_u pushBack  3;
_p pushBack  200;

_i pushBack  "rhsusf_acc_nt4_tan";
_u pushBack  3;
_p pushBack  200;

_i pushBack  "rhsusf_acc_rotex_mp7";
_u pushBack  3;
_p pushBack  80;

_i pushBack  "rhsusf_acc_rotex_mp7_desert";
_u pushBack  3;
_p pushBack  80;

_i pushBack  "rhsusf_acc_rotex_mp7_winter";
_u pushBack  3;
_p pushBack  80;

_i pushBack  "rhsusf_acc_rotex_mp7_aor1";
_u pushBack  3;
_p pushBack  80;

_i pushBack  "rhsusf_acc_rotex5_grey";
_u pushBack  3;
_p pushBack  150;

_i pushBack  "rhsusf_acc_rotex5_tan";
_u pushBack  3;
_p pushBack  150;

_i pushBack  "rhsusf_acc_sf3p556";
_u pushBack  2;
_p pushBack  50;

_i pushBack  "rhsusf_acc_sfmb556";
_u pushBack  2;
_p pushBack  50;

_i pushBack  "rhs_weap_optic_smaw";
_u pushBack  3;
_p pushBack  270;

_i pushBack  "CUP_optic_PSO_1"; 
_u pushBack  2;
_p pushBack  22;




[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf";

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 