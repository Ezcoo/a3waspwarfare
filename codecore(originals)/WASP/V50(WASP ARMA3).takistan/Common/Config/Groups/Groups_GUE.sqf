/*
	Groups (Used in towns).
*/

Private ["_faction","_k","_l","_side","_u"];
_l = [];//--- Unit list
_k = [];//--- Type used by AI.

_side = "GUER";
_faction = "GUE";

_k pushBack "Squad";
_u		= ["CUP_I_TK_GUE_Commander"];
_u pushBack "CUP_I_TK_GUE_Guerilla_Medic";
_u pushBack "CUP_I_TK_GUE_Soldier_GL";
_u pushBack "CUP_I_TK_GUE_Soldier_AR";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";
_l pushBack _u;

_k pushBack "Squad_Advanced";
_u		= ["CUP_I_TK_GUE_Soldier_TL"];
_u pushBack "CUP_I_PMC_Soldier_MG";
_u pushBack "CUP_I_PMC_Soldier_GL";
_u pushBack "CUP_I_PMC_Soldier_GL";
_u pushBack "CUP_I_TK_GUE_Soldier_HAT";
_u pushBack "CUP_I_PMC_Soldier";
_l pushBack _u;

_k pushBack "Team";
_u		= ["CUP_I_TK_GUE_Soldier_TL"];
_u pushBack "CUP_I_TK_GUE_Demo";
_u pushBack "CUP_I_TK_GUE_Soldier";
_u pushBack "CUP_I_TK_GUE_Guerilla_Medic";
_u pushBack "CUP_I_TK_GUE_Soldier_AA";
_u pushBack "CUP_I_TK_GUE_Soldier_AA";
_l pushBack _u;

_k pushBack "Team_MG";
_u =      ["CUP_I_PMC_Soldier_MG_PKM"];
_u pushBack "CUP_I_TK_GUE_Soldier_MG";
_u pushBack "CUP_I_TK_GUE_Soldier_MG";
_l pushBack _u;


_k pushBack "Team_AT";
_u =      ["CUP_I_TK_GUE_Soldier_HAT"];
_u pushBack "CUP_I_TK_GUE_Soldier_AT";
_u pushBack "CUP_I_PMC_Soldier_AT";
_u pushBack "CUP_I_PMC_Soldier_AT";
_l pushBack _u;

_k pushBack "Team_AA";
_u		= ["rhsgref_nat_rifleman_AA"];
_u pushBack "rhsgref_nat_rifleman_AA";
_u pushBack "rhsgref_nat_rifleman_AA";
_l pushBack _u;

_k pushBack "Team_Sniper";
_u		= ["CUP_I_PMC_Sniper_KSVK"];
_u pushBack "CUP_I_TK_GUE_Sniper";
_u pushBack "CUP_I_TK_GUE_Sniper";
_l pushBack _u;

_k pushBack "Motorized";
_u =      ["rhsgref_nat_uaz_dshkm"];
_u pushBack "rhsgref_nat_uaz_ags";
_l pushBack _u;

_k pushBack "Motorized";
_u =      ["rhsgref_nat_uaz_spg9"];
_u pushBack "CUP_I_Datsun_PK_TK";
_l pushBack _u;

_k pushBack "Motorized";
_u =      ["rhsgref_nat_uaz_ags"];
_u pushBack "CUP_I_SUV_Armored_ION";
_l pushBack _u;

_k pushBack "AA_Light";
_u		= ["rhsgref_cdf_gaz66_zu23"];
_u pushBack "rhsgref_cdf_gaz66_zu23";
_l pushBack _u;

_k pushBack "AA_Heavy";
_u		= ["rhsgref_cdf_ural_Zu23"];
_u pushBack "rhsgref_cdf_zsu234";
_l pushBack _u;

_k pushBack "Mechanized";
_u		= ["rhsgref_BRDM2"];
_u pushBack "rhsgref_cdf_btr60";
_l pushBack _u;

_k pushBack "Mechanized_Heavy";
_u =      ["rhsgref_BRDM2_ATGM"];
_u pushBack "rhsgref_cdf_btr60";
_l pushBack _u;

_k pushBack "Armored_Light";
_u		= ["rhsgref_cdf_bmp1"];
_u pushBack "rhsgref_cdf_bmp2e";
_l pushBack _u;

_k pushBack "Armored_Heavy";
_u		= ["rhsgref_cdf_t72ba_tv"];
_u pushBack "rhsgref_cdf_t72ba_tv";

_l pushBack _u;

[_k,_l,_side,_faction] Call Compile preprocessFile "Common\Config\Config_Groups.sqf";