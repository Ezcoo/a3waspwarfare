Private ['_side','_u'];

_side = _this;
_restriction_air = missionNamespace getVariable "cti_C_UNITS_RESTRICT_AIR";

_u = ['CUP_I_TK_GUE_Commander'];
_u pushBack 'CUP_I_TK_GUE_Soldier';
_u pushBack 'CUP_I_TK_GUE_Demo';
_u pushBack 'CUP_I_TK_GUE_Guerilla_Medic';
_u pushBack 'CUP_I_TK_GUE_Soldier_AT';
_u pushBack 'CUP_I_TK_GUE_Sniper';
_u pushBack 'CUP_I_TK_GUE_Soldier_AK_47S';
_u pushBack 'CUP_I_TK_GUE_Soldier_GL';
_u pushBack 'CUP_I_TK_GUE_Mechanic';
_u pushBack 'CUP_I_TK_GUE_Soldier_MG';
_u pushBack 'CUP_I_TK_GUE_Soldier_AAT';
_u pushBack 'CUP_I_TK_GUE_Soldier_TL';
_u pushBack 'CUP_I_TK_GUE_Guerilla_Enfield';
_u pushBack 'CUP_I_TK_GUE_Soldier_AA';
_u pushBack 'CUP_I_TK_GUE_Soldier_AR';
_u pushBack 'CUP_I_TK_GUE_Soldier_M16A2';
_u pushBack 'CUP_I_TK_GUE_Soldier_HAT';
_u pushBack 'CUP_I_PMC_Bodyguard_AA12';
_u pushBack 'CUP_I_PMC_Sniper';
_u pushBack 'CUP_I_PMC_Medic';
_u pushBack 'CUP_I_PMC_Soldier_MG';
_u pushBack 'CUP_I_PMC_Soldier_MG_PKM';
_u pushBack 'CUP_I_PMC_Soldier_AT';
_u pushBack 'CUP_I_PMC_Engineer';
_u pushBack 'CUP_I_PMC_Soldier';
_u pushBack 'CUP_I_PMC_Soldier_GL';
_u pushBack 'CUP_I_PMC_Sniper_KSVK';
_u pushBack 'CUP_I_PMC_Soldier_AA';

missionNamespace setVariable [Format ["cti_%1BARRACKSUNITS", _side], _u];
if (local player) then {['BARRACKS', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['CUP_I_Hilux_igla_TK'];
_u pushBack 'CUP_I_SUV_Armored_ION';
_u pushBack 'CUP_I_Datsun_PK_TK';
_u pushBack 'CUP_I_Hilux_metis_TK';
_u pushBack 'CUP_I_BTR40_MG_TKG';
_u pushBack 'CUP_I_Hilux_armored_AGS30_TK';
_u pushBack 'CUP_I_Hilux_armored_DSHKM_TK';
_u pushBack 'CUP_I_Hilux_armored_SPG9_TK';
_u pushBack 'CUP_I_Hilux_armored_zu23_TK';
_u pushBack 'CUP_O_M113_TKA';
_u pushBack 'CUP_I_BRDM2_TK_Gue';
_u pushBack 'CUP_I_BRDM2_ATGM_TK_Gue';
_u pushBack 'CUP_I_Ural_ZU23_TK_Gue';
_u pushBack 'LIB_SdKfz_7_AA';

_u pushBack 'CUP_I_V3S_Repair_TKG';
_u pushBack 'CUP_I_BRDM2_NAPA';

missionNamespace setVariable [Format ["cti_%1LIGHTUNITS", _side], _u];
if (local player) then {['LIGHT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['LIB_FlakPanzerIV_Wirbelwind'];
_u pushBack 'CUP_I_BMP1_TK_GUE';
_u pushBack 'CUP_I_T34_TK_GUE';
_u pushBack 'LIB_T34_76_captured';
_u pushBack 'CUP_I_T55_TK_GUE';
_u pushBack 'LIB_PzKpfwV';
_u pushBack 'LIB_PzKpfwVI_B';
_u pushBack 'LIB_PzKpfwIV_H';
_u pushBack 'LIB_PzKpfwVI_E_1';
_u pushBack 'CUP_I_BMP2_AMB_NAPA';

missionNamespace setVariable [Format ["cti_%1HEAVYUNITS", _side], _u];
if (local player) then {['HEAVY', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['cwr3_i_mi8_amt'];

missionNamespace setVariable [Format ["cti_%1AIRCRAFTUNITS", _side], _u];
if (local player) then {['AIRCRAFT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = [];

missionNamespace setVariable [Format ["cti_%1AIRPORTUNITS", _side], _u];
if (local player) then {['AIRPORT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ["C_Quadbike_01_F"];
_u pushBack "CUP_C_Octavia_CIV";
_u pushBack "CUP_C_Golf4_yellow_Civ";
_u pushBack "CUP_C_Golf4_black_Civ";
_u pushBack "CUP_C_Ural_Civ_01";
_u pushBack "CUP_C_Ural_Civ_02";
_u pushBack "CUP_C_Ural_Open_Civ_01";
if ((missionNamespace getVariable "cti_C_UNITS_TOWN_PURCHASE") > 0) then {
	_u pushBack (missionNamespace getVariable "cti_GUERSOLDIER");
};

missionNamespace setVariable [Format ["cti_%1DEPOTUNITS", _side], _u];
if (local player) then {['DEPOT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};