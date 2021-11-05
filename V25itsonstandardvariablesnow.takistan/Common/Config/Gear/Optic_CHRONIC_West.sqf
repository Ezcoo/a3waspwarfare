private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

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