Private ['_side','_u'];

_side = _this;
_restriction_air = missionNamespace getVariable "WFBE_C_UNITS_RESTRICT_AIR";

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

missionNamespace setVariable [Format ["WFBE_%1BARRACKSUNITS", _side], _u];
if (local player) then {['BARRACKS', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['rhsgref_nat_uaz_ags'];
_u pushBack 'CUP_I_SUV_Armored_ION';
_u pushBack 'CUP_I_Datsun_PK_TK';
_u pushBack 'rhsgref_nat_uaz_dshkm';
_u pushBack 'rhsgref_nat_uaz_spg9';
_u pushBack 'rhsgref_BRDM2';
_u pushBack 'rhsgref_BRDM2_ATGM';
_u pushBack 'rhsgref_cdf_btr60';
_u pushBack 'rhsgref_cdf_gaz66_zu23';
_u pushBack 'rhsgref_cdf_ural_Zu23';

missionNamespace setVariable [Format ["WFBE_%1LIGHTUNITS", _side], _u];
if (local player) then {['LIGHT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['rhsgref_cdf_bmp1'];
_u pushBack 'rhsgref_cdf_bmp2e';
_u pushBack 'rhsgref_cdf_zsu234';
_u pushBack 'rhsgref_cdf_t72ba_tv';


missionNamespace setVariable [Format ["WFBE_%1HEAVYUNITS", _side], _u];
if (local player) then {['HEAVY', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['rhsgref_ins_g_mi8amt'];

missionNamespace setVariable [Format ["WFBE_%1AIRCRAFTUNITS", _side], _u];
if (local player) then {['AIRCRAFT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u = [];

missionNamespace setVariable [Format ["WFBE_%1AIRPORTUNITS", _side], _u];
if (local player) then {['AIRPORT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ["C_Quadbike_01_F"];
_u pushBack "CUP_C_Octavia_CIV";
_u pushBack "CUP_C_Golf4_yellow_Civ";
_u pushBack "CUP_C_Golf4_black_Civ";
_u pushBack "CUP_C_Ural_Civ_01";
_u pushBack "CUP_C_Ural_Civ_02";
_u pushBack "CUP_C_Ural_Open_Civ_01";
if ((missionNamespace getVariable "WFBE_C_UNITS_TOWN_PURCHASE") > 0) then {
	_u pushBack (missionNamespace getVariable "WFBE_GUERSOLDIER");
};

missionNamespace setVariable [Format ["WFBE_%1DEPOTUNITS", _side], _u];
if (local player) then {['DEPOT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};