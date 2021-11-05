Private ["_side"];

_side = "WEST";

//--- Generic.
missionNamespace setVariable [Format["WFBE_%1CREW", _side], 'rhsusf_army_ucp_crewman'];
missionNamespace setVariable [Format["WFBE_%1PILOT", _side], 'rhsusf_airforce_pilot'];
missionNamespace setVariable [Format["WFBE_%1SOLDIER", _side], 'rhsusf_army_ucp_rifleman'];

//--- Flag texture.
missionNamespace setVariable [Format["WFBE_%1FLAG", _side], '\Ca\ca_e\Data\flag_us_co.paa'];

missionNamespace setVariable [Format["WFBE_%1AMBULANCES", _side], ['rhsusf_m113_usarmy_medical','RHS_UH60M_MEV2','RHS_UH60M_MEV','CUP_B_HMMWV_Ambulance_USA']];
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCKS", _side], ['rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d','rhsusf_M977A4_REPAIR_BKIT_usarmy_d','rhsusf_M977A4_REPAIR_usarmy_d']];
missionNamespace setVariable [Format["WFBE_%1SALVAGETRUCK", _side], ['rhsusf_M977A4_usarmy_d']];
missionNamespace setVariable [Format["WFBE_%1SUPPLYTRUCKS", _side], []];
missionNamespace setVariable [Format["WFBE_%1UAV", _side], 'CUP_B_USMC_MQ9'];

//--- Radio Announcers.
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers", _side], ['WFHQ_EN0_EP1','WFHQ_EN1_EP1','WFHQ_EN2_EP1','WFHQ_EN4_EP1','WFHQ_EN5_EP1']];
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers_Config", _side], 'RadioProtocol_EP1_EN'];

//--- Paratroopers.
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL1", _side],['rhsusf_army_ucp_arb_squadleader','rhsusf_army_ucp_arb_riflemanat','rhsusf_army_ucp_arb_marksman','rhsusf_army_ucp_arb_medic','rhsusf_army_ucp_arb_autorifleman','rhsusf_army_ucp_arb_grenadier']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL2", _side],['rhsusf_usmc_recon_marpat_d_teamleader','rhsusf_usmc_recon_marpat_d_riflemanat_at','rhsusf_usmc_recon_marpat_d_rifleman','rhsusf_usmc_recon_marpat_d_marksman','rhsusf_usmc_recon_marpat_d_grenadier_m32','rhsusf_usmc_recon_marpat_d_sniper_m107','rhsusf_usmc_recon_marpat_d_rifleman','rhsusf_usmc_recon_marpat_d_rifleman_at_lite','rhsusf_usmc_recon_marpat_d_autorifleman']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL3", _side],['rhsusf_usmc_recon_marpat_d__officer','rhsusf_usmc_recon_marpat_d_marksman_fast','rhsusf_usmc_recon_marpat_d_rifleman_at_fast','rhsusf_usmc_recon_marpat_d_rifleman_at_light','rhsusf_usmc_recon_marpat_d_teamleader','rhsusf_usmc_recon_marpat_d_marksman_lite','rhsusf_usmc_recon_marpat_d_machinegunner_m249','rhsusf_usmc_recon_marpat_d_autorifleman','rhsusf_usmc_recon_marpat_d_grenafier_m32','rhsusf_usmc_recon_marpat_d_sniper_m107','rhsusf_usmc_recon_marpat_d_rifleman','rhsusf_usmc_recon_marpat_d_rifleman_at']];

missionNamespace setVariable [Format["WFBE_%1PARACARGO", _side], 'CUP_B_C47_USA'];//--- Paratroopers, Vehicle.
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCK", _side], 'rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d'];//--- Repair Truck model.
missionNamespace setVariable [Format["WFBE_%1STARTINGVEHICLES", _side], ['CUP_B_HMMWV_Ambulance_USA','rhsusf_M1078A1P2_B_d_open_fmtv_usarmy']];//--- Starting Vehicles.
missionNamespace setVariable [Format["WFBE_%1PARAAMMO", _side], ['rhsusf_mags_crate','rhsusf_gear_crate','rhsusf_launcher_crate']];//--- Supply Paradropping, Dropped Ammunition.
missionNamespace setVariable [Format["WFBE_%1PARAVEHICARGO", _side], 'rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d'];//--- Supply Paradropping, Dropped Vehicle.
missionNamespace setVariable [Format["WFBE_%1PARAVEHI", _side], 'rhsusf_CH53E_USMC'];//--- Supply Paradropping, Vehicle
missionNamespace setVariable [Format["WFBE_%1PARACHUTE", _side], 'O_Parachute_02_F'];//--- Supply Paradropping, Parachute Model.

//--- Base Patrols.
if ((missionNamespace getVariable "WFBE_C_BASE_PATROLS_INFANTRY") > 0) then {
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_0", _side],['rhsusf_army_ucp_squadleader','rhsusf_army_ucp_rifleman_m4','rhsusf_army_ucp_rifleman_m4','rhsusf_army_ucp_grenadier','rhsusf_army_ucp_grenadier','rhsusf_army_ucp_rifleman_m16']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_1", _side],['rhsusf_army_ucp_squadleader','rhsusf_army_ucp_medic','rhsusf_army_ucp_rifleman_m4','rhsusf_army_ucp_autoriflemana','rhsusf_army_ucp_machinegunnera','rhsusf_army_ucp_engineer']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_2", _side],['rhsusf_army_ucp_squadleader','rhsusf_army_ucp_rifleman_m4','rhsusf_army_ucp_machinegunnera','rhsusf_army_ucp_arb_riflemanat','rhsusf_army_ucp_riflemanat','rhsusf_army_ucp_sniper']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_3", _side],['rhsusf_army_ucp_squadleader','rhsusf_army_ucp_aa','rhsusf_army_ucp_machinegunnera','rhsusf_army_ucp_javelin','rhsusf_army_ucp_arb_riflemanat','rhsusf_army_ucp_grenadier']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_4", _side],['rhsusf_army_ucp_squadleader','rhsusf_army_ucp_aa','rhsusf_army_ucp_machinegunnera','rhsusf_army_ucp_javelin','rhsusf_army_ucp_arb_riflemanat','rhsusf_army_ucp_grenadier']];
};
//--- Server only.

if (isServer) then {
	//--- Patrols.
	missionNamespace setVariable [Format["WFBE_%1_PATROL_LIGHT", _side], [
		['rhsusf_army_ucp_arb_teamleader','rhsusf_army_ucp_machinegunner','rhsusf_socom_marsoc_sniper','rhsusf_army_ucp_arb_medic'],
		['rhsusf_army_ucp_arb_teamleader','rhsusf_army_ucp_arb_autorifleman','rhsusf_army_ucp_grenadier','rhsusf_usmc_marpat_d_smaw','rhsusf_army_ucp_arb_rifleman'],
		['rhsusf_M1237_M2_usarmy_d','rhsusf_M1237_MK19_usarmy_d']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_MEDIUM", _side], [
		['rhsusf_M1117_D','rhsusf_M1117_D'],
		['rhsusf_M1237_M2_usarmy_d','rhsusf_army_ocp_arb_teamleader','rhsusf_usmc_marpat_d_smaw','rhsusf_army_ocp_machinegunner','rhsusf_usmc_marpat_d_smaw'],
		['RHS_M2A2_BUSK','rhsusf_army_ocp_aa','rhsusf_army_ocp_aa','rhsusf_army_ocp_arb_medic']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_HEAVY", _side], [
		['RHS_M2A2_BUSK','RHS_M2A2_BUSK'],
		['rhsusf_m1a1aimd_usarmy','rhsusf_m1a1aimd_usarmy'],
		['RHS_M2A2_BUSK','RHS_M2A2_BUSK','rhsusf_army_ocp_arb_teamleader','rhsusf_army_ocp_machinegunner','rhsusf_usmc_marpat_d_marksman','rhsusf_army_ocp_arb_medic','rhsusf_army_ocp_javelin','rhsusf_army_ocp_javelin','rhsusf_army_ocp_arb_rifleman'],
		['rhsusf_M1117_D','rhsusf_army_ocp_arb_teamleader','rhsusf_army_ocp_arb_medic','rhsusf_army_ocp_grenadier','rhsusf_army_ocp_arb_rifleman','rhsusf_army_ocp_arb_autorifleman']
	]];
};

//--- Client only.
if (local player) then {
	//--- Default Faction (Buy Menu), this is the faction name defined in core_xxx.sqf files.
	missionNamespace setVariable [Format["WFBE_%1DEFAULTFACTION", _side], 'US'];

	//if ((missionNamespace getVariable "WFBE_C_MODULE_BIS_BAF") > 0) then {(_side) Call Compile preprocessFileLineNumbers "Common\Config\Loadout\Loadout_BAF.sqf"};
};

//--- Artillery.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Artillery\Artillery_US.sqf";
//--- Units.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Units\Units_US.sqf";
//--- Structures.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Structures\Structures_US.sqf";
//--- Upgrades.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Upgrades\Upgrades_US.sqf";



//Engineer
missionNamespace setVariable ["WFBE_WEST_DefaultGearEngineer", [
	[
		["CUP_arifle_MG36_camo",["","","",""],["CUP_100Rnd_556x45_BetaCMag"]],
		["",["","","",""],[""]],
		["rhsusf_weap_glock17g4",["","","",""],["rhsusf_mag_17Rnd_9x19_JHP"]]
	],
	
	[
		["rhs_uniform_FROG01_d",["CUP_100Rnd_556x45_BetaCMag","CUP_100Rnd_556x45_BetaCMag","CUP_100Rnd_556x45_BetaCMag"]],
		["V_HarnessO_brn",["rhs_mag_m67","rhs_mag_m67","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhs_mag_m67","rhs_mag_m67"]],
		["rhsusf_assault_eagleaiii_coy",["FirstAidKit"]]],
		["rhs_booniehat2_marpatd",""],
		[["","Leupold_Mk4"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// Sniper
missionNamespace setVariable ["WFBE_WEST_DefaultGearSpot", [
	[
		["rhs_weap_m24sws_blk",["","","rhsusf_acc_m8541_low",""],["rhsusf_5Rnd_762x51_m118_special_Mag"]],
		["",["","","",""],[""]],
		["rhsusf_weap_glock17g4",["","","",""],["rhsusf_mag_17Rnd_9x19_JHP"]]
	],
	
	[
		["CUP_U_B_BAF_DDPM_Ghillie",["rhsusf_5Rnd_762x51_m118_special_Mag","rhsusf_5Rnd_762x51_m118_special_Mag","rhsusf_5Rnd_762x51_m118_special_Mag","rhsusf_5Rnd_762x51_m118_special_Mag"]],
		["V_HarnessO_brn",["rhsusf_5Rnd_762x51_m118_special_Mag","rhsusf_5Rnd_762x51_m118_special_Mag","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhs_mag_m67","rhs_mag_m67"]],
		["",["FirstAidKit"]]],
		["H_Bandanna_sand",""],
		[["","Leupold_Mk4"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// Soldier
missionNamespace setVariable ["WFBE_WEST_DefaultGearSoldier", [
	[
		["rhs_weap_m16a4_carryhandle_M203",["","","",""],["rhs_mag_30Rnd_556x45_Mk318_Stanag"]],
		["rhs_weap_M136",["","","",""],[""]],
		["rhsusf_weap_glock17g4",["","","",""],["rhsusf_mag_17Rnd_9x19_JHP"]]
	],
	
	[
		["rhs_uniform_FROG01_d",["rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]],
		["V_HarnessO_brn",["rhs_mag_M441_HE","rhs_mag_M441_HE","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhs_mag_m67","rhs_mag_m67"]],
		["rhsusf_assault_eagleaiii_coy",["FirstAidKit"]]],
		["rhs_booniehat2_marpatd",""],
		[["","Leupold_Mk4"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// Lock MAN
missionNamespace setVariable ["WFBE_WEST_DefaultGearLock", [
	[
		["rhs_weap_m4_carryhandle_pmag",["rhsusf_acc_nt4_black","","",""],["rhs_mag_30Rnd_556x45_Mk318_Stanag"]],
		["rhs_weap_M136",["","","",""],[""]],
		["rhsusf_weap_glock17g4",["rhsusf_acc_omega9k","","",""],["rhsusf_mag_17Rnd_9x19_JHP"]]
	],
	
	[
		["rhs_uniform_FROG01_d",["rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]],
		["V_HarnessO_brn",["rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhs_mag_m67","rhs_mag_m67"]],
		["rhsusf_assault_eagleaiii_coy",["FirstAidKit"]]],
		["rhs_booniehat2_marpatd",""],
		[["","Leupold_Mk4"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// UAVOperator
missionNamespace setVariable ["WFBE_WEST_DefaultGearUAVOperator", [
	[
		["rhs_weap_g36c",["rhsusf_acc_nt4_black","","",""],["rhssaf_30Rnd_556x45_EPR_G36"]],
		["rhs_weap_M136",["","","",""],[""]],
		["rhsusf_weap_glock17g4",["","","",""],["rhsusf_mag_17Rnd_9x19_JHP"]]
	],

	[
		["rhs_uniform_FROG01_d",["rhssaf_30Rnd_556x45_EPR_G36","rhssaf_30Rnd_556x45_EPR_G36","rhssaf_30Rnd_556x45_EPR_G36","rhssaf_30Rnd_556x45_EPR_G36"]],
		["V_HarnessO_brn",["rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhs_mag_m67","rhs_mag_m67"]],
		["rhsusf_assault_eagleaiii_coy",["FirstAidKit"]]],
		["rhs_booniehat2_marpatd",""],
		[["","Leupold_Mk4"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// ArtOperator
missionNamespace setVariable ["WFBE_WEST_DefaultGearArtOperator", [
	[
		["rhs_weap_m16a4",["","","rhsusf_acc_ACOG_RMR",""],["rhs_mag_30Rnd_556x45_Mk318_Stanag"]],
		["rhs_weap_M136_hedp",["","","",""],[""]],
		["rhsusf_weap_glock17g4",["","","",""],["rhsusf_mag_17Rnd_9x19_JHP"]]
	],

	[
		["rhs_uniform_FROG01_d",["rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]],
		["V_HarnessO_brn",["rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_JHP","rhs_mag_m67","rhs_mag_m67"]],
		["rhsusf_assault_eagleaiii_coy",["FirstAidKit"]]],
		["rhs_booniehat2_marpatd",""],
		[["","Rangefinder"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];
