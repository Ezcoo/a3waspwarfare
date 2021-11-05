Private ['_resTeamCost','_resTeamTemplates','_resTeamTypes','_d','_f','_get','_p','_u'];
/* RES TEAM TEMPLATES */
/* GUE*/
_resTeamTemplates = [];
_resTeamTypes = []; //--- 0 Inf, 2 Light, 3 Armor, 4 Air

_d		= ["CUP_I_TK_GUE_Commander"];
_u		= ["CUP_I_TK_GUE_Soldier_GL"];
_u pushBack "CUP_I_TK_GUE_Soldier_MG";
_u pushBack "CUP_I_TK_GUE_Soldier_AR";
_u pushBack "CUP_I_TK_GUE_Guerilla_Medic";
_u pushBack "CUP_I_TK_GUE_Sniper";
_u pushBack "CUP_I_TK_GUE_Soldier_AA";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";

_resTeamTemplates pushBack _u;
_resTeamTypes pushBack 0;

_d		= ["CUP_I_TK_GUE_Commander"];
_u		= ["CUP_I_TK_GUE_Soldier_GL"];
_u pushBack "CUP_I_TK_GUE_Soldier_MG";
_u pushBack "CUP_I_TK_GUE_Soldier_AR";
_u pushBack "CUP_I_TK_GUE_Guerilla_Medic";
_u pushBack "CUP_I_TK_GUE_Sniper";
_u pushBack "CUP_I_TK_GUE_Soldier_AA";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";

_resTeamTemplates pushBack _u;
_resTeamTypes pushBack 0;

_d		= ["CUP_I_TK_GUE_Commander"];
_u		= ["CUP_I_TK_GUE_Soldier_GL"];
_u pushBack "CUP_I_TK_GUE_Soldier_MG";
_u pushBack "CUP_I_TK_GUE_Soldier_AR";
_u pushBack "CUP_I_TK_GUE_Guerilla_Medic";
_u pushBack "CUP_I_TK_GUE_Sniper";
_u pushBack "CUP_I_TK_GUE_Soldier_AA";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";
_u pushBack "CUP_I_TK_GUE_Soldier_AT";

_resTeamTemplates pushBack _u;
_resTeamTypes pushBack 0;

_d		= ["Infantry - Weapon Squad"];
_u		= ["CUP_I_PMC_Bodyguard_AA12"];
_u pushBack "CUP_I_PMC_Soldier_MG";
_u pushBack "CUP_I_PMC_Soldier_MG_PKM";
_u pushBack "CUP_I_PMC_Medic";
_u pushBack "CUP_I_PMC_Sniper_KSVK";
_u pushBack "CUP_I_PMC_Soldier_AA";
_u pushBack "CUP_I_PMC_Soldier_AT";
_u pushBack "CUP_I_PMC_Soldier_AT";

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 0;

_d		= ["Motorized - Light DSHKM Patrol"];
_u		= ["rhsgref_nat_uaz_dshkm"];
_resTeamTemplates pushBack _u;
_resTeamTypes pushback 2;

_d		= ["Motorized - Light AGS Patrol"];
_u		= ["rhsgref_nat_uaz_ags"];
_resTeamTemplates pushBack _u;
_resTeamTypes pushback 2;

_d		= ["Motorized - Light PK Patrol"];
_u		= ["CUP_I_Datsun_PK_TK"];

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 2;

_d		= ["Motorized - Light APC Patrol"];
_u		= ["rhsgref_cdf_btr60"];

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 2;

_d		= ["Motorized - BRDM"];
_u		= ["rhsgref_BRDM2"];

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 2;

_d		= ["Motorized - BRDM ATGM"];
_u		= ["rhsgref_BRDM2_ATGM"];

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 2;

_d		= ["Mechanized - BMP 1"];
_u		= ["rhsgref_cdf_bmp1"];
_u		pushBack "rhsgref_cdf_bmp1";

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 3;

_d		= ["Mechanized - BMP 2"];
_u		= ["rhsgref_cdf_bmp2e"];
_u		pushBack "rhsgref_cdf_bmp2e";

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 3;

_d		= ["Mechanized AA - Shilka"];
_u		= ["rhsgref_cdf_zsu234"];
_u		pushBack "rhsgref_cdf_zsu234";

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 3;

_d		= ["Heavy Armor - T-72"];
_u		= ["rhsgref_cdf_t72ba_tv"];
_u		pushBack "rhsgref_cdf_t72ba_tv";

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 3;

_d		= ["Light Air patrol - KA60"];
_u		= ["CUP_I_Ka60_GL_Blk_ION"];

_resTeamTemplates pushBack _u;
_resTeamTypes pushback 4;

_d		= ["Light Air patrol - AH6J"];
_u		= ["CUP_I_AH6J_RACS"];
_resTeamTemplates pushBack _u;
_resTeamTypes pushback 4;

missionNamespace setVariable ['CTI_GUERRESTEAMTEMPLATES',_resTeamTemplates];
missionNamespace setVariable ['CTI_GUERRESTEAMTYPES',_resTeamTypes];

missionNamespace setVariable ['CTI_GUERRESCREW','CUP_I_TK_GUE_Mechanic'];
missionNamespace setVariable ['CTI_GUERRESSOLDIER','CUP_I_TK_GUE_Soldier'];
missionNamespace setVariable ['CTI_GUERRESPILOT','CUP_I_TK_GUE_Mechanic'];