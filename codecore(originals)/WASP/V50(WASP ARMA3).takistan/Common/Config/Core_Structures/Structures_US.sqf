Private ['_c','_count','_d','_dir','_dis','_n','_s','_side','_t','_v'];

_side = _this;

/* Root Definition */
_MHQ = 'CUP_B_LAV25_HQ_desert_USMC';
_HQ = "M1130_HQ_unfolded_Base_EP1";
_BAR = "US_WarfareBBarracks_Base_EP1";
_LVF = "US_WarfareBLightFactory_base_EP1";
_CC = "US_WarfareBUAVterminal_Base_EP1";
_HEAVY = "US_WarfareBHeavyFactory_Base_EP1";
_AIR = "US_WarfareBAircraftFactory_Base_EP1";
_SP = "US_WarfareBVehicleServicePoint_Base_EP1";
_AAR = "US_WarfareBAntiAirRadar_Base_EP1";
_ARR = "US_WarfareBArtilleryRadar_Base_EP1";

/* Construction Crates */
missionNamespace setVariable [Format["WFBE_%1CONSTRUCTIONSITE", _side], 'US_WarfareBContructionSite_EP1'];

/* Structures */
_v			= ["Headquarters"];
_n			= [_HQ];
_d			= [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c			= [missionNamespace getVariable "WFBE_C_STRUCTURES_HQ_COST_DEPLOY"];
_t			= [if (WF_Debug) then {1} else {30}];
_s			= ["HQSite"];
_dis		= [15];
_dir		= [0];

_v pushBack "Barracks";
_n pushBack _BAR;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 200;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 25;
_dir pushBack 90;

_v pushBack "Light";
_n pushBack _LVF;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 600;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 45;
_dir pushBack 90;

_v pushBack "CommandCenter";
_n pushBack _CC;
_d pushBack (localize "STR_WF_CommandCenter");
_c pushBack 1200;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 20;
_dir pushBack 90;

_v pushBack "Heavy";
_n pushBack _HEAVY;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 2800;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 45;
_dir pushBack 90;

_v pushBack "Aircraft";
_n pushBack _AIR;
_d pushBack (localize "STR_WF_AircraftFactory");
_c pushBack 4400;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 55;
_dir pushBack 90;

_v pushBack "ServicePoint";
_n pushBack _SP;
_d pushBack (localize "STR_WF_MAIN_ServicePoint");
_c pushBack 700;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "SmallSite";
_dis pushBack 21;
_dir pushBack 90;


_v pushBack "AARadar";
_n pushBack _AAR;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 3200;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 21;
_dir pushBack 90;

_v pushBack "ArtyRadar";
_n pushBack _ARR;
_d pushBack (getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName"));
_c pushBack 2500;
_t pushBack (if (WF_Debug) then {1} else {60});
_s pushBack "MediumSite";
_dis pushBack 21;
_dir pushBack 90;


for [{_count = count _v - 1},{_count >= 0},{_count = _count - 1}] do {
	missionNamespace setVariable [Format["WFBE_%1%2TYPE",_side,_v select _count],_count];
};

{
	missionNamespace setVariable [Format ["%1%2",_side, _x select 0], _x select 1];
} forEach [["HQ",_HQ],["BAR",_BAR],["LVF",_LVF],["CC",_CC],["HEAVY",_HEAVY],["SP",_SP],["AAR",_AAR],["ARR",_ARR]];

missionNamespace setVariable [Format["WFBE_%1MHQNAME", _side], _MHQ];
missionNamespace setVariable [Format["WFBE_%1STRUCTURES", _side], _v];
missionNamespace setVariable [Format["WFBE_%1STRUCTURENAMES", _side], _n];
missionNamespace setVariable [Format["WFBE_%1STRUCTUREDESCRIPTIONS", _side], _d];
missionNamespace setVariable [Format["WFBE_%1STRUCTURECOSTS", _side], _c];
missionNamespace setVariable [Format["WFBE_%1STRUCTURETIMES", _side], _t];
missionNamespace setVariable [Format["WFBE_%1STRUCTUREDISTANCES", _side], _dis];
missionNamespace setVariable [Format["WFBE_%1STRUCTUREDIRECTIONS", _side], _dir];
missionNamespace setVariable [Format["WFBE_%1STRUCTURESCRIPTS", _side], _s];

/* Defenses */

// static defence
_n =         ["CUP_B_M252_USMC"];
_n pushBack "RHS_M119_WD";
_n pushBack "RHS_Stinger_AA_pod_WD";
_n pushBack "RHS_M2StaticMG_WD";
_n pushBack "RHS_M2StaticMG_MiniTripod_WD";
_n pushBack "CUP_B_TOW_TriPod_US";
_n pushBack "RHS_MK19_TriPod_WD";
_n pushBack "B_SAM_System_02_F";
//_n pushBack "CUP_B_RBS70_ACR";

// static walls
_n pushBack "Base_WarfareBBarrier10xTall";
_n pushBack "Base_WarfareBBarrier5x";
_n pushBack "Base_WarfareBBarrier10x";
_n pushBack "Land_HBarrier_large";
_n pushBack "Land_HBarrier5";
_n pushBack "Land_HBarrier3";
_n pushBack "Land_fort_bagfence_corner";
_n pushBack "Land_fort_bagfence_round";
_n pushBack "Land_fort_bagfence_long";
_n pushBack "Concrete_Wall_EP1";
_n pushBack "zed_desert";

// static fortification
_n pushBack "Land_CamoNet_NATO_EP1";
_n pushBack "Land_CamoNetVar_NATO_EP1";
_n pushBack "Land_CamoNetB_NATO_EP1";
_n pushBack "Land_Ind_IlluminantTower";
_n pushBack "Land_fort_rampart_EP1";
_n pushBack "Land_fort_artillery_nest_EP1";
_n pushBack "Hhedgehog_concrete";
_n pushBack "Hhedgehog_concreteBig";
_n pushBack "Hedgehog";
_n pushBack "Fort_RazorWire";
_n pushBack "Wire";
_n pushBack "Fort_Nest";

// static ammo
_n pushBack "rhsusf_mags_crate";
_n pushBack "rhsusf_gear_crate";
_n pushBack "rhsusf_launcher_crate";
_n pushBack "rhsusf_spec_weapons_crate";
_n pushBack "rhsusf_weapon_crate";
_n pushBack "TK_GUE_WarfareBVehicleServicePoint_Base_EP1";


/* Class used for AI, AI will attempt to build those */
missionNamespace setVariable [Format["WFBE_%1DEFENSES_MG", _side], ['RHS_M2StaticMG_D']];
missionNamespace setVariable [Format["WFBE_%1DEFENSES_GL", _side], ['RHS_MK19_TriPod_D']];
missionNamespace setVariable [Format["WFBE_%1DEFENSES_AAPOD", _side], ['RHS_Stinger_AA_pod_D']];
missionNamespace setVariable [Format["WFBE_%1DEFENSES_ATPOD", _side], ['CUP_B_TOW_TriPod_US']];
missionNamespace setVariable [Format["WFBE_%1DEFENSES_CANNON", _side], ['RHS_M119_WD']];
missionNamespace setVariable [Format["WFBE_%1DEFENSES_MASH", _side], ['MASH']];
missionNamespace setVariable [Format["WFBE_%1DEFENSES_MORTAR", _side], ['CUP_B_M252_USMC']];

missionNamespace setVariable [Format["WFBE_%1DEFENSENAMES", _side], _n];
