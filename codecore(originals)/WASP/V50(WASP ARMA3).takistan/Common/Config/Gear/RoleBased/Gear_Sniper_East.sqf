private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

// East sniper special gear list
_i pushBack  "rhs_weap_vss";
_u pushBack  2;
_p pushBack  240;

_i pushBack  "rhs_weap_vss_grip";
_u pushBack  3;
_p pushBack  245;

_i pushBack  "rhs_weap_svds";
_u pushBack  3;
_p pushBack  260;

_i pushBack  "rhs_weap_svdp";
_u pushBack  3;
_p pushBack  260;

_i pushBack  "rhs_weap_svdp_npz";
_u pushBack  4;
_p pushBack  300;

_i pushBack  "rhs_weap_svds_npz";
_u pushBack  4;
_p pushBack  300;

_i pushBack  "rhs_weap_t5000";
_u pushBack  3;
_p pushBack  350;

_i pushBack  "rhs_weap_m82a1";
_u pushBack  4;
_p pushBack  550;

_i pushBack "CUP_srifle_CZ550";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_srifle_CZ750";
_u pushBack 3;
_p pushBack 500;

_i pushBack "CUP_srifle_ksvk_PSO3";
_u pushBack 4;
_p pushBack 650;

_i pushBack  "U_O_FullGhillie_ard";
_u pushBack  2;
_p pushBack  200;

_i pushBack  "U_O_FullGhillie_sard";
_u pushBack  2;
_p pushBack  200;

_i pushBack  "U_O_FullGhillie_lsh";
_u pushBack  2;
_p pushBack  200;

_i pushBack  "CUP_U_O_RUS_Ghillie";
_u pushBack  2;
_p pushBack  190;

_i pushBack  "rhs_acc_pso1m2";
_u pushBack  3;
_p pushBack  120;

_i pushBack  "rhs_acc_dh520x56";
_u pushBack  4;
_p pushBack  200;

_i pushBack  "item_optic_LRPS";
_u pushBack  3;
_p pushBack  200;

_i pushBack  "Item_optic_DMS";
_u pushBack  3;
_p pushBack  180;

_i pushBack  "rhs_acc_tgpv";
_u pushBack  3;
_p pushBack  250;

_i pushBack  "rhs_acc_tgpv2";
_u pushBack  3;
_p pushBack  270;

_i pushBack  "rhs_acc_harris_swivel";
_u pushBack  3;
_p pushBack  200;

[_faction, _i, _u, _p, WSW_SNIPER] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Role_Config_Set.sqf";

// todo: verify useful reasons to keep here code lines below
_t = [];

[_faction, _t, WSW_SNIPER] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Role_Template_Set.sqf";