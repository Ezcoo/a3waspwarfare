Private ["_side"];

_side = "WEST";

//--- Generic.
missionNamespace setVariable [Format["WFBE_%1CREW", _side], 'CUP_B_USMC_Soldier_FROG_DES'];
missionNamespace setVariable [Format["WFBE_%1PILOT", _side], 'CUP_B_USMC_Soldier_FROG_DES'];
missionNamespace setVariable [Format["WFBE_%1SOLDIER", _side], 'CUP_B_USMC_Soldier_FROG_DES'];

//--- Flag texture.
missionNamespace setVariable [Format["WFBE_%1FLAG", _side], '\Ca\ca_e\Data\flag_us_co.paa'];

missionNamespace setVariable [Format["WFBE_%1AMBULANCES", _side], ['LIB_OpelBlitz_Ambulance','LIB_US_Willys_MB_Ambulance','CUP_B_HMMWV_Ambulance_USA','CUP_B_M1133_MEV_Desert','uns_M577_amb','CUP_B_UH1Y_MEV_USMC','cwr3_b_uh60_mev']];
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCKS", _side], ['CUP_B_MTVR_Repair_USA']];
missionNamespace setVariable [Format["WFBE_%1SALVAGETRUCK", _side], ['cwr3_b_m939_open']];
missionNamespace setVariable [Format["WFBE_%1SUPPLYTRUCKS", _side], []];
missionNamespace setVariable [Format["WFBE_%1UAV", _side], 'CUP_B_USMC_DYN_MQ9'];

//--- Radio Announcers.
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers", _side], ['WFHQ_EN0_EP1','WFHQ_EN1_EP1','WFHQ_EN2_EP1','WFHQ_EN4_EP1','WFHQ_EN5_EP1']];
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers_Config", _side], 'RadioProtocol_EP1_EN'];

//--- Paratroopers.
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL1", _side],['CUP_B_USMC_Sniper_M40A3_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Soldier_AR_des','CUP_B_USMC_Engineer_des','CUP_B_USMC_Medic_des']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL2", _side],['CUP_B_USMC_Sniper_M40A3_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Soldier_AR_des','CUP_B_USMC_Engineer_des','CUP_B_USMC_Medic_des','CUP_B_USMC_Soldier_AT_des','CUP_B_USMC_Soldier_AA_des','CUP_B_USMC_Spotter_des']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL3", _side],['CUP_B_USMC_Sniper_M40A3_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Soldier_AR_des','CUP_B_USMC_Engineer_des','CUP_B_USMC_Medic_des','CUP_B_USMC_Soldier_AT_des','CUP_B_USMC_Soldier_AA_des','CUP_B_USMC_Spotter_des','CUP_B_BAF_Soldier_RiflemanAT_DDPM','CUP_B_USMC_Soldier_HAT_des','CUP_B_BAF_Sniper_AS50_TWS_DDPM']];

missionNamespace setVariable [Format["WFBE_%1PARACARGO", _side], 'CUP_B_C130J_USMC'];//--- Paratroopers, Vehicle.
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCK", _side], 'CUP_B_MTVR_Repair_USA'];//--- Repair Truck model.
missionNamespace setVariable [Format["WFBE_%1STARTINGVEHICLES", _side], ['LIB_OpelBlitz_Ambulance','cwr3_b_m939_open']];//--- Starting Vehicles.
missionNamespace setVariable [Format["WFBE_%1PARAAMMO", _side], ['rhsusf_mags_crate','rhsusf_gear_crate','rhsusf_launcher_crate']];//--- Supply Paradropping, Dropped Ammunition.
missionNamespace setVariable [Format["WFBE_%1PARAVEHICARGO", _side], 'CUP_B_MTVR_Repair_USA'];//--- Supply Paradropping, Dropped Vehicle.
missionNamespace setVariable [Format["WFBE_%1PARAVEHI", _side], 'CUP_B_UH60M_FFV_US'];//--- Supply Paradropping, Vehicle
missionNamespace setVariable [Format["WFBE_%1PARACHUTE", _side], 'O_Parachute_02_F'];//--- Supply Paradropping, Parachute Model.

//--- Base Patrols.
if ((missionNamespace getVariable "WFBE_C_BASE_PATROLS_INFANTRY") > 0) then {
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_0", _side],['CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_FROG_DES']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_1", _side],['CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Medic_des','CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_AR_des','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Engineer_des']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_2", _side],['CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Soldier_AR_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Sniper_M40A3_des']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_3", _side],['CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_AA_des','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Soldier_HAT_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_AT_des']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_4", _side],['CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_AA_des','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Soldier_HAT_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_AT_des']];
};
//--- Server only.

if (isServer) then {
	//--- Patrols.
	missionNamespace setVariable [Format["WFBE_%1_PATROL_LIGHT", _side], [
		['CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Sniper_M40A3_des','CUP_B_USMC_Medic_des'],
		['CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_AR_des','CUP_B_USMC_Soldier_AT_des','CUP_B_GER_Soldier_AT','CUP_B_USMC_Soldier_AR_des'],
		['CUP_B_M1151_M2_USA','CUP_B_M1151_Mk19_USA']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_MEDIUM", _side], [
		['CUP_B_M1130_CV_M2_Desert','CUP_B_M1130_CV_M2_Desert'],
		['CUP_B_M1130_CV_M2_Desert','CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_AT_des','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Soldier_AT_des'],
		['CUP_B_M2Bradley_USA_D','CUP_B_USMC_Soldier_AA_des','CUP_B_USMC_Soldier_AA_des','CUP_B_USMC_Medic_des']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_HEAVY", _side], [
		['CUP_B_M2Bradley_USA_D','CUP_B_M2Bradley_USA_D'],
		['CUP_B_M1A1_DES_US_Army','CUP_B_M1A1_DES_US_Army'],
		['CUP_B_M2Bradley_USA_D','CUP_B_M2Bradley_USA_D','CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Soldier_MG_des','CUP_B_USMC_Sniper_M40A3_des','CUP_B_USMC_Medic_des','CUP_B_USMC_Soldier_HAT_des','CUP_B_USMC_Soldier_HAT_des','CUP_B_USMC_Soldier_AR_des'],
		['CUP_B_M1130_CV_M2_Desert','CUP_B_USMC_Soldier_FROG_DES','CUP_B_USMC_Medic_des','CUP_B_USMC_Soldier_LAT_des','CUP_B_USMC_Soldier_AR_des','CUP_B_USMC_Soldier_AR_des']
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
