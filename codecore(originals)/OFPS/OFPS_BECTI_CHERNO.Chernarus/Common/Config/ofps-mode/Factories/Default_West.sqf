private ["_side", "_u"];
_side = _this;

missionNamespace setVariable [format["CTI_%1_Speakers", _side], ["Male01ENG", "Male02ENG", "Male03ENG", "Male04ENG", "Male05ENG", "Male06ENG", "Male07ENG", "Male08ENG", "Male09ENG", "Male10ENG", "Male11ENG", "Male12ENG"]];
missionNamespace setVariable [format["CTI_%1_Speakers_Low", _side], ["CUP_D_Male02_EN", "CUP_D_Male03_EN", "CUP_D_Male04_EN", "CUP_D_Male05_EN", "CUP_D_Female01_EN"]];
missionNamespace setVariable [format["CTI_%1_Speakers_CTI", _side], ["CUP_D_Male02_EN", "CUP_D_Male03_EN", "CUP_D_Male04_EN", "CUP_D_Male05_EN", "CUP_D_Female01_EN"]];
switch (CTI_FACTION_WEST) do {
	case 0: { //NATO Vanilla (arid)
		//Set MHQ
		missionNamespace setVariable [format["CTI_%1_HQ", _side], "B_APC_Wheeled_01_cannon_F"];
		//Set Infantry
		missionNamespace setVariable [format["CTI_%1_Speakers", _side], ["Male01ENG", "Male02ENG", "Male03ENG", "Male04ENG", "Male05ENG", "Male06ENG", "Male07ENG", "Male08ENG", "Male09ENG", "Male10ENG", "Male11ENG", "Male12ENG"]];
		missionNamespace setVariable [format["CTI_%1_Commander", _side], "B_officer_F"];
		missionNamespace setVariable [format["CTI_%1_Worker", _side], "B_Soldier_F"];
		missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_F"];
		missionNamespace setVariable [format["CTI_%1_Soldier", _side], "B_Soldier_F"];
		missionNamespace setVariable [format["CTI_%1_Soldier_Low", _side], "B_Soldier_F"];
		missionNamespace setVariable [format["CTI_%1_Crew", _side], "B_crew_F"];
		missionNamespace setVariable [format["CTI_%1_Crew_Low", _side], "B_crew_F"];
		missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_Pilot_F"];
		missionNamespace setVariable [format["CTI_%1_Helipilot", _side], "B_Helipilot_F"];
		//missionNamespace setVariable [format["CTI_%1_Helicrew", _side], "B_helicrew_F"];
		missionNamespace setVariable [format["CTI_%1_Static", _side], "B_Soldier_F"];
		// Set crewmen backpack (To hold a repair kit)
		missionNamespace setVariable [format["CTI_%1_Crewbag", _side], "B_LegStrapBag_coyote_F"];
		//--- AI/Players Loadouts, to prevent any bisteries, DO NOT give them a pistol.
		missionNamespace setVariable ["CTI_AI_WEST_DEFAULT_GEAR", [
		[["smg_01_f",["","","optic_aco_grn",""],["30rnd_45acp_mag_smg_01"]],["",["","","",""],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01"]],["",[]],["b_assaultpack_cbr",["30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","firstaidkit","firstaidkit","handgrenade","handgrenade","handgrenade","handgrenade"]]],["","g_combat"],[["","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];

		//Set starting vehicles
		missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
			["B_Truck_01_medical_F", [
				["Toolkit", 1],
				["firstaidkit", 20],
				["arifle_mx_gl_f", 2], 
				["30Rnd_65x39_caseless_mag", 50],
				["arifle_MXM_F", 1],
				["launch_NLAW_F", 5], 
				["NLAW_F", 20],
				["HandGrenade", 20],
				["30Rnd_556x45_Stanag", 15],
				["30Rnd_65x39_caseless_mag_Tracer", 6],
				["3rnd_he_grenade_shell", 8],
				["firstaidkit", 20],
				["optic_ACO_grn", 3],
				["acc_flashlight", 10]

			]],
			["B_MRAP_01_hmg_F", [
				["Toolkit", 1],
				["firstaidkit", 10],
				["launch_NLAW_F", 5], 
				["acc_flashlight", 10],
				["NLAW_F", 20]
			]]
		]];
	};
	case 1: { //NATO Pacific APEX (woodland)
		
		//Set MHQ
		missionNamespace setVariable [format["CTI_%1_HQ", _side], "B_T_APC_Wheeled_01_cannon_F"];
		//Set Infantry
		missionNamespace setVariable [format["CTI_%1_Speakers_Low", _side], ["CUP_D_Male01_EN", "CUP_D_Male02_EN", "CUP_D_Male03_EN", "CUP_D_Male04_EN", "CUP_D_Male05_EN", "CUP_D_Female01_EN"]];
		missionNamespace setVariable [format["CTI_%1_Speakers_CTI", _side], ["CUP_D_Male01_EN", "CUP_D_Male02_EN", "CUP_D_Male03_EN", "CUP_D_Male04_EN", "CUP_D_Male05_EN", "CUP_D_Female01_EN"]];
		missionNamespace setVariable [format["CTI_%1_Speakers", _side], ["Male01ENG", "Male02ENG", "Male03ENG", "Male04ENG", "Male05ENG", "Male06ENG", "Male07ENG", "Male08ENG", "Male09ENG", "Male10ENG", "Male11ENG", "Male12ENG", "Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB", "Male05ENGB"]];
		missionNamespace setVariable [format["CTI_%1_Commander", _side], "B_T_Officer_F"];
		missionNamespace setVariable [format["CTI_%1_Worker", _side], "B_T_Soldier_F"];
		missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_T_Diver_F"];
		missionNamespace setVariable [format["CTI_%1_Soldier", _side], "B_T_Soldier_F"];
		missionNamespace setVariable [format["CTI_%1_Soldier_Low", _side], "B_T_Soldier_F"];
		missionNamespace setVariable [format["CTI_%1_Crew", _side], "B_T_Crew_F"];
		missionNamespace setVariable [format["CTI_%1_Crew_Low", _side], "B_T_Crew_F"];
		missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_T_Pilot_F"];
		missionNamespace setVariable [format["CTI_%1_Helipilot", _side], "B_T_Helipilot_F"];
		//missionNamespace setVariable [format["CTI_%1_Helicrew", _side], "B_T_Helicrew_F"];
		missionNamespace setVariable [format["CTI_%1_Static", _side], "B_T_Soldier_F"];
		// Set crewmen backpack (To hold a repair kit)
		missionNamespace setVariable [format["CTI_%1_Crewbag", _side], "B_LegStrapBag_olive_F"];
		//--- AI/Players Loadouts, to prevent any bisteries, DO NOT give them a pistol.
		missionNamespace setVariable ["CTI_AI_WEST_DEFAULT_GEAR", [
		[["smg_01_f",["","","optic_aco_grn",""],["30rnd_45acp_mag_smg_01"]],["",["","","",""],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["U_B_T_Soldier_F",["30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01"]],["",[]],["B_AssaultPack_tna_F",["30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","firstaidkit","firstaidkit","handgrenade","handgrenade","handgrenade","handgrenade"]]],["","g_combat"],[["","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
		//Set starting vehicles
		missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
			["B_T_Truck_01_medical_F", [
				["Toolkit", 1],
				["firstaidkit", 20],
				["arifle_MX_GL_khk_F", 2], 
				["30Rnd_65x39_caseless_mag", 50],
				["arifle_MXM_khk_F", 1],
				["launch_NLAW_F", 5], 
				["NLAW_F", 20],
				["HandGrenade", 20],
				["30Rnd_556x45_Stanag", 15],
				["30Rnd_65x39_caseless_mag_Tracer", 6],
				["3rnd_he_grenade_shell", 8],
				["firstaidkit", 20],
				["optic_ACO_grn", 3],
				["acc_flashlight", 10]
			]],
			["B_T_MRAP_01_hmg_F", [
				["Toolkit", 1],
				["firstaidkit", 10],
				["launch_NLAW_F", 5], 
				["acc_flashlight", 10],
				["NLAW_F", 20]
			]]
		]];
	};
	case 2: { //USMC CUP (Arid)
		//Set MHQ
		missionNamespace setVariable [format["CTI_%1_HQ", _side], "CUP_B_LAV25_HQ_USMC"];
		//Set Infantry
		missionNamespace setVariable [format["CTI_%1_Commander", _side], "CUP_B_USMC_Officer"];
		missionNamespace setVariable [format["CTI_%1_Worker", _side], "CUP_B_USMC_Soldier"];
		missionNamespace setVariable [format["CTI_%1_Diver", _side], "CUP_B_USMC_Soldier"];
		missionNamespace setVariable [format["CTI_%1_Soldier", _side], "CUP_B_USMC_Soldier"];
		missionNamespace setVariable [format["CTI_%1_Crew", _side], "CUP_B_USMC_Crew"];
		missionNamespace setVariable [format["CTI_%1_Pilot", _side], "CUP_B_USMC_Pilot"];
		missionNamespace setVariable [format["CTI_%1_Helipilot", _side], "CUP_B_USMC_Pilot"];
		//missionNamespace setVariable [format["CTI_%1_Helicrew", _side], "CUP_B_USMC_Pilot"];
		missionNamespace setVariable [format["CTI_%1_Static", _side], "B_Soldier_lite_F"];
		// Set crewmen backpack (To hold a repair kit)
		missionNamespace setVariable [format["CTI_%1_Crewbag", _side], "B_LegStrapBag_coyote_F"];
		//--- AI/Players Loadouts, to prevent any bisteries, DO NOT give them a pistol.
		missionNamespace setVariable ["CTI_AI_WEST_DEFAULT_GEAR", [
		[["CUP_smg_MP5A5_Flashlight",["","","CUP_optic_MicroT1",""],["CUP_30Rnd_9x19_MP5"]],["",["","","",""],[""]],["CUP_hgun_M9",["","","",""],["CUP_15Rnd_9x19_M9"]]],
		[["CUP_U_B_USMC_MARPAT_WDL_RolledUp",["firstaidkit","firstaidkit","CUP_30Rnd_9x19_MP5","CUP_30Rnd_9x19_MP5","CUP_30Rnd_9x19_MP5","CUP_30Rnd_9x19_MP5"]],["",[""]],["CUP_B_AssaultPack_ACU",["CUP_HandGrenade_M67","CUP_HandGrenade_M67","CUP_30Rnd_9x19_MP5","CUP_30Rnd_9x19_MP5","CUP_30Rnd_9x19_MP5","CUP_30Rnd_9x19_MP5"]]],
		["",""],[["","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
		//Set starting vehicles
		missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
			["CUP_B_HMMWV_Ambulance_USMC", [
				["CUP_launch_M136", 10],
				["CUP_8Rnd_B_Beneli_74Slug", 20],
				["CUP_8Rnd_B_Beneli_74Pellets", 20],
				["CUP_sgun_M1014", 10],
				["CUP_30Rnd_9x19_MP5", 20],
				["firstaidkit", 20],
				["Toolkit", 1]
			]],
			["CUP_B_M113_USA", [
				["CUP_launch_M72A6_Special", 15],
				["CUP_30Rnd_556x45_Stanag", 10],
				["CUP_20Rnd_556x45_Stanag", 20],
				["CUP_arifle_M16A2", 5],
				["CUP_srifle_M24_wdl", 5],
				["CUP_5Rnd_762x51_M24", 15],
				["CUP_30Rnd_9x19_MP5", 20],
				["acc_flashlight", 10],
				["CUP_HandGrenade_M67", 10],
				["Toolkit", 1]
			]],
			["CUP_B_HMMWV_SOV_USA", [
				["CUP_launch_M136", 10], 
				["CUP_8Rnd_B_Beneli_74Slug", 20],
				["CUP_8Rnd_B_Beneli_74Pellets", 20],
				["CUP_sgun_M1014", 10],
				["CUP_HandGrenade_M67", 10],
				["CUP_30Rnd_9x19_MP5", 20],
				["acc_flashlight", 20],
				["Toolkit", 1]
			]],
			["CUP_B_HMMWV_M1114_USMC", [
				["CUP_launch_M72A6_Special", 15],
				["CUP_8Rnd_B_Beneli_74Slug", 20],
				["CUP_8Rnd_B_Beneli_74Pellets", 20],
				["CUP_sgun_M1014", 10],
				["CUP_lmg_M60E4_norail", 2],
				["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 8],
				["CUP_30Rnd_9x19_MP5", 20],
				["acc_flashlight", 10],
				["CUP_HandGrenade_M67", 10],
				["Toolkit", 1]
			]]
		]];
	};
	case 3: { //USAF RHS (Arid)
		//Set MHQ
		missionNamespace setVariable [format["CTI_%1_HQ", _side], "B_APC_Wheeled_01_cannon_F"];
		//Set Infantry
		missionNamespace setVariable [format["CTI_%1_Commander", _side], "rhsusf_army_ocp_squadleader"];
		missionNamespace setVariable [format["CTI_%1_Worker", _side], "rhsusf_army_ocp_rifleman_m16"];
		missionNamespace setVariable [format["CTI_%1_Diver", _side], "rhsusf_army_ocp_rifleman_m16"];
		missionNamespace setVariable [format["CTI_%1_Soldier", _side], "rhsusf_army_ocp_rifleman_m16"];
		missionNamespace setVariable [format["CTI_%1_Crew", _side], "rhsusf_army_ocp_combatcrewman"];
		missionNamespace setVariable [format["CTI_%1_Pilot", _side], "rhsusf_army_ocp_helipilot"];
		missionNamespace setVariable [format["CTI_%1_Helipilot", _side], "rhsusf_army_ocp_helipilot"];
		//missionNamespace setVariable [format["CTI_%1_Helicrew", _side], "rhsusf_army_ocp_helipilot"];
		missionNamespace setVariable [format["CTI_%1_Static", _side], "rhsusf_army_ocp_rifleman_m16"];
		// Set crewmen backpack (To hold a repair kit)
		missionNamespace setVariable [format["CTI_%1_Crewbag", _side], "B_LegStrapBag_coyote_F"];
		//--- AI/Players Loadouts, to prevent any bisteries, DO NOT give them a pistol.
		missionNamespace setVariable ["CTI_AI_WEST_DEFAULT_GEAR", [
		[["smg_05_f",["","acc_flashlight","optic_aco_grn",""],["30rnd_9x21_mag_smg_02"]],["rhs_weap_m72a7",["","","",""],[]],["rhsusf_weap_m9",["","","",""],["rhsusf_mag_15rnd_9x19_jhp"]]],[["u_b_combatuniform_mcam_vest",["30rnd_9x21_mag_smg_02","30rnd_9x21_mag_smg_02","30rnd_9x21_mag_smg_02","30rnd_9x21_mag_smg_02"]],["",[]],["b_assaultpack_mcamo",["30rnd_9x21_mag_smg_02","30rnd_9x21_mag_smg_02","30rnd_9x21_mag_smg_02","30rnd_9x21_mag_smg_02","rhs_mag_m67","rhs_mag_m67","rhs_mag_m67","rhs_mag_m67","rhs_mag_m67","firstaidkit","firstaidkit"]]],["h_milcap_mcamo",""],[["","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
		//Set starting vehicles
		missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
			["rhsusf_M1083A1P2_B_M2_d_Medical_fmtv_usarmy", [
				["rhs_weap_m72a7", 10], 
				["30rnd_9x21_mag_smg_02", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]],
			["rhsusf_M1117_D", [
				["rhs_weap_m72a7", 10], 
				["30rnd_9x21_mag_smg_02", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]],
			["rhsusf_rg33_usmc_d", [
				["rhs_weap_m72a7", 10], 
				["30rnd_9x21_mag_smg_02", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]],
			["rhsusf_M1237_M2_usarmy_wd", [
				["rhs_weap_m72a7", 10], 
				["30rnd_9x21_mag_smg_02", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]]
			//,	["B_Heli_Transport_01_F", []]
		]];
	};
	case 4: { //Cold War

	};
	case 5: { //Unsung

	};
	case 6: { //IFA3

	};
};