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
_u		= ["CUP_I_TK_GUE_Soldier_AA"];
_u pushBack "CUP_I_TK_GUE_Soldier_AA";
_u pushBack "CUP_I_TK_GUE_Soldier_AA";
_l pushBack _u;

_k pushBack "Team_Sniper";
_u		= ["CUP_I_PMC_Sniper_KSVK"];
_u pushBack "CUP_I_TK_GUE_Sniper";
_u pushBack "CUP_I_TK_GUE_Sniper";
_l pushBack _u;

_k pushBack "Motorized";
_u =      [selectRandom["CUP_I_Hilux_armored_AGS30_TK","CUP_I_Hilux_armored_DSHKM_TK","CUP_I_Hilux_armored_SPG9_TK"]];
_u pushBack "CUP_I_BTR40_MG_TKG";
_l pushBack _u;

_k pushBack "Motorized";
_u =      [selectRandom["CUP_I_Hilux_armored_AGS30_TK","CUP_I_Hilux_armored_DSHKM_TK","CUP_I_Hilux_armored_SPG9_TK"]];
_u pushBack "CUP_I_Datsun_PK_TK";
_l pushBack _u;

_k pushBack "Motorized";
_u =      [selectRandom["CUP_I_Hilux_armored_AGS30_TK","CUP_I_Hilux_armored_DSHKM_TK","CUP_I_Hilux_armored_SPG9_TK"]];
_u pushBack "CUP_I_SUV_Armored_ION";
_l pushBack _u;

_k pushBack "AA_Light";
_u		= [selectRandom["CUP_I_Ural_ZU23_TK_Gue","LIB_SdKfz_7_AA"]];
_u pushBack "CUP_I_Hilux_igla_TK";
_l pushBack _u;

_k pushBack "AA_Heavy";
_u		= [selectRandom["LIB_FlakPanzerIV_Wirbelwind","LIB_SdKfz_7_AA"]];
_u pushBack "CUP_I_Hilux_igla_TK";
_l pushBack _u;

_k pushBack "Mechanized";
_u		= ["CUP_O_M113_TKA"];
_u pushBack "CUP_I_BRDM2_TK_Gue";
_l pushBack _u;

_k pushBack "Mechanized_Heavy";
_u =      ["CUP_I_BRDM2_ATGM_TK_Gue"];
_u pushBack "CUP_I_BRDM2_TK_Gue";
_l pushBack _u;

_k pushBack "Armored_Light";
_u		= [selectRandom["CUP_I_BMP1_TK_GUE","CUP_I_T34_TK_GUE","LIB_T34_76_captured"]];
_u pushBack "CUP_I_T55_TK_GUE";
_l pushBack _u;

_k pushBack "Armored_Heavy";
_u		= [selectRandom["LIB_PzKpfwV","LIB_PzKpfwIV_H","LIB_PzKpfwVI_E_1"]];
_u pushBack "LIB_PzKpfwVI_B";

_l pushBack _u;

[_k,_l,_side,_faction] Call Compile preprocessFile "Common\Config\Config_Groups.sqf";