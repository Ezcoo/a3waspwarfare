Private ["_side"];

_side = "EAST";

//--- Generic.
missionNamespace setVariable [Format["WFBE_%1CREW", _side], 'CUP_O_RU_Soldier_Ratnik_BeigeDigital'];
missionNamespace setVariable [Format["WFBE_%1PILOT", _side], 'CUP_O_RU_Soldier_Ratnik_BeigeDigital'];
missionNamespace setVariable [Format["WFBE_%1SOLDIER", _side], 'CUP_O_RU_Soldier_Ratnik_BeigeDigital'];

//--- Flag texture.
missionNamespace setVariable [Format["WFBE_%1FLAG", _side], '\Ca\Data\flag_rus_co.paa'];

missionNamespace setVariable [Format["WFBE_%1AMBULANCES", _side], ['LIB_Zis5V_Med','CUP_O_UAZ_AMB_RU','cwr3_o_uaz452_mev','CUP_O_GAZ_Vodnik_MedEvac_RU','uns_Type63_amb','CUP_O_Mi8_medevac_RU','CUP_B_Mi24_D_MEV_Dynamic_CDF']];
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCKS", _side], ['CUP_O_Kamaz_Repair_RU']];
missionNamespace setVariable [Format["WFBE_%1SALVAGETRUCK", _side], ['CUP_O_Kamaz_Open_RU']];
missionNamespace setVariable [Format["WFBE_%1SUPPLYTRUCKS", _side], []];
missionNamespace setVariable [Format["WFBE_%1UAV", _side], 'CUP_O_Pchela1T_RU'];

//--- Radio Announcers.
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers", _side], ['WFHQ_TK0_EP1','WFHQ_TK1_EP1','WFHQ_TK2_EP1','WFHQ_TK3_EP1','WFHQ_TK4_EP1']];
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers_Config", _side], 'RadioProtocol_EP1_TK'];

//--- Paratroopers.
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL1", _side],['CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital','CUP_O_sla_Soldier_LAT_desert','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Engineer_Ratnik_BeigeDigital','CUP_O_TK_Sniper']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL2", _side],['CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital','CUP_O_sla_Soldier_LAT_desert','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Engineer_Ratnik_BeigeDigital','CUP_O_TK_Sniper','CUP_O_TK_Soldier_AT','CUP_O_INS_Soldier_AA','CUP_O_TK_Spotter']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL3", _side],['CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital','CUP_O_sla_Soldier_LAT_desert','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Engineer_Ratnik_BeigeDigital','CUP_O_TK_Sniper','CUP_O_TK_Soldier_AT','CUP_O_INS_Soldier_AA','CUP_O_TK_Spotter','CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AA_Ratnik_BeigeDigital','CUP_O_RU_Soldier_HAT_Ratnik_BeigeDigital']];

missionNamespace setVariable [Format["WFBE_%1PARACARGO", _side], 'LIB_Li2'];//--- Paratroopers, Vehicle.
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCK", _side], 'CUP_O_Kamaz_Repair_RU'];//--- Repair Truck model.
missionNamespace setVariable [Format["WFBE_%1STARTINGVEHICLES", _side], ['LIB_Zis5V_Med','CUP_O_Kamaz_Open_RU']];//--- Starting Vehicles.
missionNamespace setVariable [Format["WFBE_%1PARAAMMO", _side], []];//--- Supply Paradropping, Dropped Ammunition.
missionNamespace setVariable [Format["WFBE_%1PARAVEHICARGO", _side], 'CUP_O_Kamaz_Repair_RU'];//--- Supply Paradropping, Dropped Vehicle.
missionNamespace setVariable [Format["WFBE_%1PARAVEHI", _side], 'CUP_O_Mi8AMT_RU'];//--- Supply Paradropping, Vehicle
missionNamespace setVariable [Format["WFBE_%1PARACHUTE", _side], 'O_Parachute_02_F'];//--- Supply Paradropping, Parachute Model.

//--- Server only.
if (isServer) then {
	//--- Patrols.
	missionNamespace setVariable [Format["WFBE_%1_PATROL_LIGHT", _side], [
		['CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_TK_Sniper','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital'],
		['CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_sla_Soldier_LAT_desert','CUP_O_RU_Soldier_Ratnik_BeigeDigital'],
		['CUP_O_UAZ_Open_CHDKZ','CUP_O_Ural_ZU23_RU']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_MEDIUM", _side], [
		['CUP_O_BRDM2_RUS','CUP_O_BRDM2_ATGM_RUS'],
		['uns_nvatruck_mg','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_TK_Soldier_AT','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_sla_Soldier_LAT_desert'],
		['CUP_O_BMP3_RU','CUP_O_RU_Soldier_AA_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AA_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_HEAVY", _side], [
		['CUP_O_T72_RU','CUP_O_BMP3_RU'],
		['CUP_O_BMP2_TKA','CUP_O_T72_RU'],
		['CUP_O_BMP3_RU','CUP_O_BMP3_RU','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_TK_Sniper','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital','CUP_O_TK_Soldier_AT','CUP_O_RU_Soldier_HAT_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital'],
		['CUP_O_BMP1P_TKA','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital']
	]];
};

//--- Base Patrols.
if ((missionNamespace getVariable "WFBE_C_BASE_PATROLS_INFANTRY") > 0) then {
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_0", _side],['CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_1", _side],['CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Engineer_Ratnik_BeigeDigital']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_2", _side],['CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_sla_Soldier_LAT_desert','CUP_O_sla_Soldier_LAT_desert','CUP_O_RU_Soldier_Ratnik_BeigeDigital']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_3", _side],['CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AA_Ratnik_BeigeDigital','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_TK_Soldier_AT','CUP_O_sla_Soldier_LAT_desert','CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital']];
	missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_4", _side],['CUP_O_RU_Soldier_Ratnik_BeigeDigital','CUP_O_RU_Soldier_AA_Ratnik_BeigeDigital','CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital','CUP_O_TK_Soldier_AT','CUP_O_sla_Soldier_LAT_desert','CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital']];
};

//--- Client only.
if (local player) then {
	//--- Default Faction (Buy Menu), this is the faction name defined in core_xxx.sqf files.
	missionNamespace setVariable [Format["WFBE_%1DEFAULTFACTION", _side], 'Takistani Army'];
};

//--- Artillery.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Artillery\Artillery_RU.sqf";
//--- Units.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Units\Units_RU.sqf";
//--- Structures.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Structures\Structures_RU.sqf";
//--- Upgrades.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Upgrades\Upgrades_RU.sqf";

//Engineer
missionNamespace setVariable ["WFBE_EAST_DefaultGearEngineer", [
	[
		["CUP_RPK_74",["rhs_acc_dtk","","",""],["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"]],
		["",["","","",""],[""]],
		["rhs_weap_pya",["","","",""],["rhs_mag_9x19_17"]]
	],
	
	[
		["rhs_uniform_m88_patchless",["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M","CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"]],
		["rhs_6sh92_vsr",["rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_rgd5","rhs_mag_rgd5"]],
		["rhs_sidor",["FirstAidKit","CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M","CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M","CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"]]],
		["rhs_fieldcap_khk",""],
		[["","binocular"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// Sniper
missionNamespace setVariable ["WFBE_EAST_DefaultGearSpot", [
	[
		["CUP_srifle_CZ550",["","","rhs_acc_dh520x56",""],["CUP_5x_22_LR_17_HMR_M"]],
		["",["","","",""],[""]],
		["rhs_weap_pya",["","","",""],["rhs_mag_9x19_17"]]
	],
	
	[
		["CUP_U_O_TK_Ghillie_Top",["CUP_5x_22_LR_17_HMR_M","CUP_5x_22_LR_17_HMR_M","CUP_5x_22_LR_17_HMR_M","CUP_5x_22_LR_17_HMR_M"]],
		["rhs_6sh92_vsr",["CUP_5x_22_LR_17_HMR_M","CUP_5x_22_LR_17_HMR_M","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_rgd5","rhs_mag_rgd5"]],
		["",["FirstAidKit"]]],
		["H_Bandanna_cbr",""],
		[["","binocular"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// Soldier
missionNamespace setVariable ["WFBE_EAST_DefaultGearSoldier", [
	[
		["rhs_weap_aks74_gp25",["rhs_acc_dtk","","",""],["rhs_30Rnd_545x39_AK"]],
		["rhs_weap_rpg26",["","","",""],["rhs_rpg26_mag"]],
		["rhs_weap_pya",["","","",""],["rhs_mag_9x19_17"]]
	],
	
	[
		["rhs_uniform_m88_patchless",["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"]],
		["rhs_6sh92_vsr",["rhs_VOG25","rhs_VOG25","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_rgd5","rhs_mag_rgd5"]],
		["rhs_sidor",["FirstAidKit"]]],
		["rhs_fieldcap_khk",""],
		[["","binocular"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// Lock MAN
missionNamespace setVariable ["WFBE_EAST_DefaultGearLock", [
	[
		["rhs_weap_akms",["rhs_acc_pbs1","","",""],["rhs_30Rnd_762x39mm_tracer"]],
		["rhs_weap_rpg26",["","","",""],["rhs_rpg26_mag"]],
		["rhs_weap_pb_6p9",["","","",""],["rhs_mag_9x18_8_57N181S"]]
	],
	
	[
		["rhs_uniform_m88_patchless",["rhs_30Rnd_762x39mm_tracer","rhs_30Rnd_762x39mm_tracer","rhs_30Rnd_762x39mm_tracer","rhs_30Rnd_762x39mm_tracer"]],
		["rhs_6sh92_vsr",["rhs_mag_9x18_8_57N181S","rhs_mag_9x18_8_57N181S","rhs_mag_9x18_8_57N181S","rhs_mag_9x18_8_57N181S","rhs_mag_rgd5","rhs_mag_rgd5"]],
		["rhs_sidor",["FirstAidKit"]]],
		["H_Bandanna_cbr",""],
		[["","binocular"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// UAVOperator
missionNamespace setVariable ["WFBE_EAST_DefaultGearUAVOperator", [
	[
		["rhs_weap_aks74un",["rhs_acc_pbs4","","rhs_acc_pkas",""],["rhs_30Rnd_545x39_AK"]],
		["rhs_weap_rpg26",["","","",""],[""]],
		["rhs_weap_pya",["","","",""],["rhs_mag_9x19_17"]]
	],

	[
		["rhs_uniform_m88_patchless",["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"]],
		["rhs_6sh92_vsr",["rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_rgd5","rhs_mag_rgd5"]],
		["rhs_sidor",["FirstAidKit"]]],
		["H_Bandanna_khk_hs",""],
		[["","binocular"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];

// ArtOperator
missionNamespace setVariable ["WFBE_EAST_DefaultGearArtOperator", [
	[
		["rhs_weap_aks74n",["rhs_acc_dtk","","rhs_acc_pso1m21",""],["rhs_30Rnd_545x39_AK"]],
		["rhs_weap_rshg2",["","","",""],[""]],
		["rhs_weap_pya",["","","",""],["rhs_mag_9x19_17"]]
	],

	[
		["rhs_uniform_m88_patchless",["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"]],
		["rhs_6sh92_vsr",["rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_9x19_17","rhs_mag_rgd5","rhs_mag_rgd5"]],
		["rhs_sidor",["FirstAidKit"]]],
		["rhs_fieldcap_khk",""],
		[["","Rangefinder"],["itemmap","","itemradio","itemcompass","itemwatch"]]
	]
];
