with missionNamespace do {
	WEST_TOWNS_FLAG_TEXTURE = "\A3\Data_F\Flags\Flag_blue_CO.paa";

//--------------------------------------------------------------------------------------------
//--- Town Occupation Factions
//--------------------------------------------------------------------------------------------

//--- BASE LIST --- ALL USABLE VARIABLES MUST BE DEFINED HERE -- This can also be used as a template for creating new factions
//--- DO NOT TOUCH THIS LIST - This is the pure vanilla fallback - unless you adding new base variables
//--- Infantry
WEST_SOLDIER = "B_Soldier_F";
WEST_SOLDIER_AA = "B_soldier_AA_F";
WEST_SOLDIER_AR = "B_Soldier_AR_F";
WEST_SOLDIER_AT = "B_Soldier_LAT_F";
WEST_SOLDIER_CREW = "B_crew_F";
WEST_SOLDIER_LAT = "B_Soldier_LAT2_F";
WEST_SOLDIER_HAT = "B_Soldier_AT_F";
WEST_SOLDIER_ENGINEER = "B_engineer_F";
WEST_SOLDIER_EXP = "B_Soldier_exp_F";
WEST_SOLDIER_GL = "B_Soldier_GL_F";
WEST_SOLDIER_MEDIC = "B_medic_F";
WEST_SOLDIER_MG = "B_HeavyGunner_F";
WEST_SOLDIER_PILOT = "B_helipilot_F";
WEST_SOLDIER_SNIPER = "B_ghillie_sard_F";
WEST_SOLDIER_MARKSMAN = "B_soldier_M_F";
WEST_SOLDIER_TEAMLEADER = "B_Soldier_TL_F";
WEST_SOLDIER_SQUADLEADER = "B_Soldier_SL_F";
//--- Infantry (Urban)
WEST_SOLDIER_U = "B_Soldier_F";
WEST_SOLDIER_AA_U = "B_soldier_AA_F";
WEST_SOLDIER_AR_U = "B_Soldier_AR_F";
WEST_SOLDIER_AT_U = "B_Soldier_LAT_F";
WEST_SOLDIER_CREW_U = "B_crew_F";
WEST_SOLDIER_LAT_U = "B_Soldier_LAT_F";
WEST_SOLDIER_HAT_U = "B_Soldier_AT_F";
WEST_SOLDIER_ENGINEER_U = "B_engineer_F";
WEST_SOLDIER_EXP_U = "B_Soldier_exp_F";
WEST_SOLDIER_GL_U = "B_Soldier_GL_F";
WEST_SOLDIER_MEDIC_U = "B_medic_F";
WEST_SOLDIER_MG_U = "B_HeavyGunner_F";
WEST_SOLDIER_PILOT_U = "B_helipilot_F";
WEST_SOLDIER_SNIPER_U = "B_sniper_F";
WEST_SOLDIER_MARKSMAN_U = "B_soldier_M_F";
WEST_SOLDIER_TEAMLEADER_U = "B_Soldier_TL_F";
WEST_SOLDIER_SQUADLEADER_U = "B_Soldier_SL_F";
//--- Naval Units
WEST_SOLDIER_NAVAL_INFANTRY = "B_diver_F";
WEST_SOLDIER_NAVAL_SQUADLEADER = "B_diver_TL_F";
//--- Light Vehicles
WEST_VEHICLE_LIGHT1 = "B_G_Offroad_01_armed_F";
WEST_VEHICLE_LIGHT2 = "B_LSV_01_armed_F";
WEST_VEHICLE_LIGHT3 = "B_MRAP_01_hmg_F";
WEST_VEHICLE_LIGHT4 = "B_MRAP_01_gmg_F";
WEST_VEHICLE_LIGHT5 = "B_MRAP_01_gmg_F";
WEST_VEHICLE_LIGHT6 = "B_LSV_01_AT_FF";
WEST_VEHICLE_LIGHT7 = "B_MRAP_01_gmg_F";
//--- APCs
WEST_VEHICLE_APC1 = "B_APC_Tracked_01_rcws_F";
WEST_VEHICLE_APC2 = "B_APC_Wheeled_01_cannon_F";
WEST_VEHICLE_APC3 = "B_AFV_Wheeled_01_up_cannon_F";
//--- Tanks
WEST_VEHICLE_ARMORED1 = "B_MBT_01_cannon_F";	
WEST_VEHICLE_ARMORED2 = "B_MBT_01_TUSK_F";
WEST_VEHICLE_ARMORED3 = "CUP_B_Challenger2_NATO";
//--- AA Vehicles
WEST_VEHICLE_AA1 = "B_APC_Tracked_01_AA_F";
WEST_VEHICLE_AA2 = "B_APC_Tracked_01_AA_F";
WEST_VEHICLE_AA3 = "B_APC_Tracked_01_AA_F";
//--- Air
WEST_AIR_HELI1 = "B_Heli_Light_01_armed_F";
WEST_AIR_HELI2 = "B_Heli_Transport_01_F";
WEST_AIR_HELI_ATTACK = "B_Heli_Attack_01_F";
WEST_AIR_AA = "B_Plane_CAS_01_F";
WEST_AIR_CAS = "B_Plane_CAS_01_F";
//--- Boats
WEST_NAVAL_ASSAULT_BOAT1 = "B_Boat_Armed_01_minigun_F";
WEST_NAVAL_ASSAULT_BOAT2 = "B_Boat_Armed_01_minigun_F";
WEST_NAVAL_MEDIUM_ASSAULT_BOAT = "B_Boat_Armed_01_minigun_F";
WEST_NAVAL_LARGE_ASSAULT_BOAT = "B_Boat_Armed_01_minigun_F";
WEST_NAVAL_CAPITAL_ASSAULT_BOAT = "B_Boat_Armed_01_minigun_F";
//--- Town Statics
WEST_TOWN_MG = "B_HMG_01_High_F";
WEST_TOWN_GL = "B_GMG_01_high_F";
WEST_TOWN_AT = "B_static_AT_F";
WEST_TOWN_AA = "B_static_AA_F";
WEST_TOWN_MORTAR = "B_Mortar_01_F";
WEST_TOWN_ZSU = "B_static_AA_F";
WEST_TOWN_D30 = "B_static_AT_F";
WEST_TOWN_SPG = "B_static_AT_F";
WEST_TOWN_DSHKM = "B_HMG_01_High_F";
WEST_TOWN_MG50 = "B_HMG_01_High_F";
WEST_TOWN_AGS = "B_GMG_01_high_F";
WEST_TOWN_COAST = "B_static_AT_F";
WEST_TOWN_CRAM = "B_static_AA_F";
//--- Town Statics Compositions
WEST_TOWN_MG_COMP = [];
WEST_TOWN_GL_COMP = [];
WEST_TOWN_AT_COMP = [];
WEST_TOWN_SPG_COMP = [];
WEST_TOWN_DSHKM_COMP = [];
WEST_TOWN_MG50_COMP = [];
//--- END DO NOT TOUCH THIS LIST

//--------------------------------------------------------------------------------------------
//--- UNIVERSAL TOWN OCCUPATION VARIABLES --- Used on all factions unless overridden
//--------------------------------------------------------------------------------------------

//--Load Vanilla
if (CTI_VANILLA_ADDON > 0) then {
	//Univeral Vanilla Comps
	WEST_TOWN_MG_COMP = [{
		_t_center = _this select 0;
		_t_direction = _this select 1;
		
		_t_defenses = [];
		_t_composition = [];
		
		_t_pos = [_t_center, 5, _t_direction] call CTI_CO_FNC_GetPositionFrom;
		_object = createVehicle ["Land_BagBunker_Small_F", _t_pos, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object enableSimulationGlobal false;
		_t_composition pushBack _object;
		
		_object = createVehicle ["B_HMG_01_High_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];
	WEST_TOWN_GL_COMP = [{
		_t_center = _this select 0;
		_t_direction = _this select 1;
		
		_t_defenses = [];
		_t_composition = [];
		
		_t_pos = [_t_center, 5, _t_direction] call CTI_CO_FNC_GetPositionFrom;
		_object = createVehicle ["Land_BagBunker_Small_F", _t_pos, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object enableSimulationGlobal false;
		_t_composition pushBack _object;
		
		_object = createVehicle ["B_GMG_01_high_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];	
	WEST_TOWN_AT_COMP = [{
		_t_center = _this select 0;
		_t_direction = _this select 1;
		
		_t_defenses = [];
		_t_composition = [];
		
		_t_pos = [_t_center, 5, _t_direction] call CTI_CO_FNC_GetPositionFrom;
		_object = createVehicle ["Land_BagBunker_Small_F", _t_pos, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object enableSimulationGlobal false;
		_t_composition pushBack _object;
		
		_object = createVehicle ["B_static_AT_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];	
	WEST_TOWN_SPG_COMP = WEST_TOWN_AT_COMP; //fallback for vanilla
	WEST_TOWN_DSHKM_COMP = WEST_TOWN_MG_COMP; //fallback for vanilla
	WEST_TOWN_MG50_COMP = WEST_TOWN_MG_COMP; //fallback for vanilla
};

//--Load Heli Mod
if (CTI_HELI_ADDON > 0) then {

};
//--- Load Marksmen Mod
if (CTI_MARKSMEN_ADDON > 0) then {

};
//--- Load APEX Mod
if (CTI_APEX_ADDON > 0) then {

};
//--- Load JETS Mod
if (CTI_JETS_ADDON > 0) then {

};
//--- Load Laws Of War Mod
if (CTI_LAWSOFWAR_ADDON > 0) then {

};
//--- Load TANKS Mod
if (CTI_TANKS_ADDON > 0) then {

};
//--- Load GLOBAL MOBILIZATION Mod
if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

};
//--- Load CONTACT Mod
if (CTI_CONTACT_ADDON > 0) then {

};
//--- Load CUP Mod
if (CTI_CUP_WEAPONS_ADDON > 0) then {
	WEST_TOWN_ZSU = "CUP_B_ZU23_CDF";
	WEST_TOWN_D30 = "OFPS_I_D30_GND";
	WEST_TOWN_SPG = "CUP_B_SPG9_CDF";
	WEST_TOWN_DSHKM = "CUP_I_DSHKM_TK_GUE";
	WEST_TOWN_MG50 = "CUP_I_M2StaticMG_RACS";
	WEST_TOWN_CRAM = "CUP_WV_B_CRAM";
	WEST_TOWN_MK29 = "CUP_WV_B_SS_Launcher";
	WEST_TOWN_MK49 = "CUP_WV_B_RAM_Launcher";
	//COMPS
	WEST_TOWN_MG50_COMP = [{
		_t_center = _this select 0;
		_t_direction = _this select 1;
		
		_t_defenses = [];
		_t_composition = [];
		
		_t_pos = [_t_center, 5, _t_direction] call CTI_CO_FNC_GetPositionFrom;
		_object = createVehicle ["Land_BagBunker_Small_F", _t_pos, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object enableSimulationGlobal false;
		_t_composition pushBack _object;
		
		_object = createVehicle ["CUP_I_M2StaticMG_RACS", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];

	WEST_TOWN_SPG_COMP = [{
		_t_center = _this select 0;
		_t_direction = _this select 1;
		
		_t_defenses = [];
		_t_composition = [];
		
		_t_pos = [_t_center, 5, _t_direction] call CTI_CO_FNC_GetPositionFrom;
		_object = createVehicle ["Land_BagBunker_Small_F", _t_pos, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object enableSimulationGlobal false;
		_t_composition pushBack _object;
		
		_object = createVehicle ["CUP_B_SPG9_CDF", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];

	WEST_TOWN_DSHKM_COMP = [{
		_t_center = _this select 0;
		_t_direction = _this select 1;
		
		_t_defenses = [];
		_t_composition = [];
		
		_t_pos = [_t_center, 5, _t_direction] call CTI_CO_FNC_GetPositionFrom;
		_object = createVehicle ["Land_BagBunker_Small_F", _t_pos, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object enableSimulationGlobal false;
		_t_composition pushBack _object;
		
		_object = createVehicle ["CUP_I_DSHKM_TK_GUE", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];
};
//--- CUP UNITS
if (CTI_CUP_VEHICLES_ADDON > 0) then {

};
//--- Load RHS Mod
if (CTI_RHS_AFRF_ADDON > 0) then {

};
if (CTI_RHS_USAF_ADDON > 0) then {

};
//--- Load RHS Loadout Ammo
if (CTI_RHS_AFRF_ADDON > 0) then {

};
//--- OFPS Units Mod
if (CTI_OFPS_UNITS_ADDON > 0) then {
	WEST_TOWN_AT = "ofps_B_Van_static_AT_F";
	WEST_TOWN_AA = "ofps_B_Van_static_AA_F";
	WEST_TOWN_COAST = "OFPS_CENTURION_B_COASTAL";
};
//--- OFPS RHS Mod
if (CTI_OFPS_RHS_ADDON > 0) then {

};
//--- OFPS CUP Mod
if (CTI_OFPS_CUP_ADDON > 0) then {

};
//--- SFP Mod
if (CTI_SFP_ADDON > 0) then {
	WEST_TOWN_COAST = "sfp_75mm_m57";
};
//--- OFPS SFP Mod
if (CTI_OFPS_SFP_ADDON > 0) then {

};
//--- 2035 Russia
if (CTI_RUSSIA_2035_ADDON > 0 ) then {

};
//--- HAFM UNITS
if (CTI_HAFM_ADDON > 0) then {

};
//--- HAFM SUBS UNITS
if (CTI_HAFM_SUBS_ADDON > 0) then {

};
//--- OFPS HAFM UNITS
if (CTI_OFPS_HAFM_ADDON > 0) then {

};
//--- Unsung
if (CTI_UNSUNG_ADDON > 0 ) then {

};
//--- IFA3
if (CTI_IFA3_ADDON > 0 ) then {

};

//--------------------------------------------------------------------------------------------
//--- VANILLA TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_WEST isEqualTo 0) then { 

	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//--- LOADS ALL DEFAULTS FROM ABOVE -- only add vanilla faction specific overrides as neeeded here
	};

	//--- PUT ANY MOD RELATED OVERRIDES BELOW IN PROPER LOCATIONS

	//--Load Heli Mod
	if (CTI_HELI_ADDON > 0) then {

	};
	//--- Load Marksmen Mod
	if (CTI_MARKSMEN_ADDON > 0) then {

	};
	//--- Load APEX Mod
	if (CTI_APEX_ADDON > 0) then {

	};
	//--- Load JETS Mod
	if (CTI_JETS_ADDON > 0) then {

	};
	//--- Load Laws Of War Mod
	if (CTI_LAWSOFWAR_ADDON > 0) then {

	};
	//--- Load TANKS Mod
	if (CTI_TANKS_ADDON > 0) then {

	};
	//--- Load GLOBAL MOBILIZATION Mod
	if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

	};	
	//--- Load CONTACT Mod
	if (CTI_CONTACT_ADDON > 0) then {

	};
	//--- Load CUP Mod
	if (CTI_CUP_WEAPONS_ADDON > 0) then {

	};
	//--- CUP UNITS
	if (CTI_CUP_VEHICLES_ADDON > 0) then {
		WEST_VEHICLE_ARMORED3 = "CUP_B_Challenger2_NATO";
	};
	//--- Load RHS Mod
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	if (CTI_RHS_USAF_ADDON > 0) then {

	};
	//--- Load RHS Loadout Ammo
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	//--- OFPS Units Mod
	if (CTI_OFPS_UNITS_ADDON > 0) then {

	};
	//--- OFPS RHS Mod
	if (CTI_OFPS_RHS_ADDON > 0) then {

	};
	//--- OFPS CUP Mod
	if (CTI_OFPS_CUP_ADDON > 0) then {

	};
	//--- SFP Mod
	if (CTI_SFP_ADDON > 0) then {

	};
	//--- OFPS SFP Mod
	if (CTI_OFPS_SFP_ADDON > 0) then {

	};
	//--- 2035 Russia
	if (CTI_RUSSIA_2035_ADDON > 0 ) then {

	};
	//--- HAFM UNITS
	if (CTI_HAFM_ADDON > 0) then {

	};
	//--- HAFM SUBS UNITS
	if (CTI_HAFM_SUBS_ADDON > 0) then {

	};
	//--- OFPS HAFM UNITS
	if (CTI_OFPS_HAFM_ADDON > 0) then {

	};
	//--- Unsung
	if (CTI_UNSUNG_ADDON > 0 ) then {

	};
	//--- IFA3
	if (CTI_IFA3_ADDON > 0 ) then {

	};
}; 


//--------------------------------------------------------------------------------------------
//--- PACIFIC TOWN OCCUPATION - tanoa forces
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_WEST isEqualTo 1) then { 

	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
		//--- Infantry
		WEST_SOLDIER = "B_T_Soldier_F";
		WEST_SOLDIER_AA = "B_T_Soldier_AA_F";
		WEST_SOLDIER_AR = "B_T_Soldier_AR_F";
		WEST_SOLDIER_AT = "B_T_Soldier_LAT_F";
		WEST_SOLDIER_CREW = "B_T_Crew_F";
		WEST_SOLDIER_LAT = "B_T_Soldier_LAT_F";
		WEST_SOLDIER_HAT = "B_T_Soldier_AT_F";
		WEST_SOLDIER_ENGINEER = "B_T_Engineer_F";
		WEST_SOLDIER_EXP = "B_T_Soldier_Exp_F";
		WEST_SOLDIER_GL = "B_T_Soldier_GL_F";
		WEST_SOLDIER_MEDIC = "B_T_Medic_F";
		WEST_SOLDIER_MG = "B_HeavyGunner_F";
		WEST_SOLDIER_PILOT = "B_T_Helipilot_F";
		WEST_SOLDIER_SNIPER = "B_T_Sniper_F";
		WEST_SOLDIER_MARKSMAN = "B_T_soldier_M_F";
		WEST_SOLDIER_TEAMLEADER = "B_T_Soldier_TL_F";
		WEST_SOLDIER_SQUADLEADER = "B_T_Soldier_SL_F";
		//--- Naval Units
		WEST_SOLDIER_NAVAL_INFANTRY = "B_T_Diver_F";
		WEST_SOLDIER_NAVAL_SQUADLEADER = "B_T_Diver_TL_F";
		//--- Light Vehicles
		WEST_VEHICLE_LIGHT1 = "B_T_LSV_01_armed_F";
		WEST_VEHICLE_LIGHT2 = "B_T_MRAP_01_hmg_F";
		WEST_VEHICLE_LIGHT3 = "B_T_MRAP_01_hmg_F";
		WEST_VEHICLE_LIGHT4 = "B_T_MRAP_01_gmg_F";
		WEST_VEHICLE_LIGHT5 = "B_T_LSV_01_AT_F";
		WEST_VEHICLE_LIGHT6 = "B_T_MRAP_01_gmg_F";
		WEST_VEHICLE_LIGHT7 = "B_T_LSV_01_AT_F";
		//--- APCs
		WEST_VEHICLE_APC1 = "B_T_APC_Tracked_01_rcws_F";
		WEST_VEHICLE_APC2 = "B_T_APC_Wheeled_01_cannon_F";
		WEST_VEHICLE_APC3 = "B_T_AFV_Wheeled_01_up_cannon_F";
		//--- Tanks
		WEST_VEHICLE_ARMORED1 = "B_T_MBT_01_cannon_F";	
		WEST_VEHICLE_ARMORED2 = "B_T_MBT_01_TUSK_F";
		WEST_VEHICLE_ARMORED3 = "B_T_MBT_01_TUSK_F";
		//--- AA Vehicles
		WEST_VEHICLE_AA1 = "B_T_APC_Tracked_01_AA_F";
		WEST_VEHICLE_AA2 = "B_T_APC_Tracked_01_AA_F";
		WEST_VEHICLE_AA3 = "B_T_APC_Tracked_01_AA_F";
		//--- Air
		WEST_AIR_HELI1 = "B_Heli_Light_01_armed_F"; //pawnee
		WEST_AIR_HELI2 = "B_Heli_Transport_01_F"; //ghosthawk
		WEST_AIR_HELI_ATTACK = "B_Heli_Attack_01_F";
		WEST_AIR_AA = "";
		WEST_AIR_CAS = "B_Plane_CAS_01_F";
		//--- Boats
		WEST_NAVAL_ASSAULT_BOAT1 = "B_T_Boat_Armed_01_minigun_F";
		WEST_NAVAL_ASSAULT_BOAT2 = "B_T_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_B";
		//WEST_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_B";
		//WEST_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_MEKO_TN";

	};

	//--- PUT ANY MOD RELATED OVERRIDES BELOW IN PROPER LOCATIONS

	//--Load Heli Mod
	if (CTI_HELI_ADDON > 0) then {

	};
	//--- Load Marksmen Mod
	if (CTI_MARKSMEN_ADDON > 0) then {

	};
	//--- Load APEX Mod
	if (CTI_APEX_ADDON > 0) then {

	};
	//--- Load JETS Mod
	if (CTI_JETS_ADDON > 0) then {

	};
	//--- Load Laws Of War Mod
	if (CTI_LAWSOFWAR_ADDON > 0) then {

	};
	//--- Load TANKS Mod
	if (CTI_TANKS_ADDON > 0) then {

	};
	//--- Load GLOBAL MOBILIZATION Mod
	if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

	};	
	//--- Load CONTACT Mod
	if (CTI_CONTACT_ADDON > 0) then {

	};
	//--- Load CUP Mod
	if (CTI_CUP_WEAPONS_ADDON > 0) then {

	};
	//--- CUP UNITS
	if (CTI_CUP_VEHICLES_ADDON > 0) then {
		//--- Light Vehicles
		WEST_VEHICLE_LIGHT2 = "CUP_B_HMMWV_MK19_NATO_T";
		WEST_VEHICLE_LIGHT7 = "CUP_B_M1167_NATO_T";
		//--- Tanks
		WEST_VEHICLE_ARMORED3 = "CUP_B_M1A1_NATO_T";
		//--- AA Vehicles
		WEST_VEHICLE_AA1 = "CUP_B_HMMV_Avenger_NATO_T";
		WEST_VEHICLE_AA2 = "CUP_B_M6LineBacker_NATO_T";
	};
	//--- Load RHS Mod
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	if (CTI_RHS_USAF_ADDON > 0) then {

	};
	//--- Load RHS Loadout Ammo
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	//--- OFPS Units Mod
	if (CTI_OFPS_UNITS_ADDON > 0) then {

	};
	//--- OFPS RHS Mod
	if (CTI_OFPS_RHS_ADDON > 0) then {

	};
	//--- OFPS CUP Mod
	if (CTI_OFPS_CUP_ADDON > 0) then {

	};
	//--- SFP Mod
	if (CTI_SFP_ADDON > 0) then {

	};
	//--- OFPS SFP Mod
	if (CTI_OFPS_SFP_ADDON > 0) then {

	};
	//--- 2035 Russia
	if (CTI_RUSSIA_2035_ADDON > 0 ) then {

	};
	//--- HAFM UNITS
	if (CTI_HAFM_ADDON > 0) then {
		WEST_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_MEKO_TN";
	};
	//--- HAFM SUBS UNITS
	if (CTI_HAFM_SUBS_ADDON > 0) then {

	};
	//--- OFPS HAFM UNITS
	if (CTI_OFPS_HAFM_ADDON > 0) then {
		WEST_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_B";
		WEST_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_B";
	};
	//--- Unsung
	if (CTI_UNSUNG_ADDON > 0 ) then {

	};
	//--- IFA3
	if (CTI_IFA3_ADDON > 0 ) then {

	};
};

//--------------------------------------------------------------------------------------------
//--- CUP - US Army TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_WEST isEqualTo 2) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
	};
	//--Load Heli Mod
	if (CTI_HELI_ADDON > 0) then {

	};
	//--- Load Marksmen Mod
	if (CTI_MARKSMEN_ADDON > 0) then {

	};
	//--- Load APEX Mod
	if (CTI_APEX_ADDON > 0) then {

	};
	//--- Load JETS Mod
	if (CTI_JETS_ADDON > 0) then {

	};
	//--- Load Laws Of War Mod
	if (CTI_LAWSOFWAR_ADDON > 0) then {

	};
	//--- Load TANKS Mod
	if (CTI_TANKS_ADDON > 0) then {

	};
	//--- Load GLOBAL MOBILIZATION Mod
	if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

	};	
	//--- Load CONTACT Mod
	if (CTI_CONTACT_ADDON > 0) then {

	};
	//--- Load CUP Mod
	if (CTI_CUP_WEAPONS_ADDON > 0) then {

	};
	//--- CUP UNITS
	if (CTI_CUP_VEHICLES_ADDON > 0) then {
		//--- Infantry
		WEST_SOLDIER = "CUP_B_US_Soldier";
		WEST_SOLDIER_AA = "CUP_B_US_Soldier_AA";
		WEST_SOLDIER_AR = "CUP_B_US_Soldier_AR";
		WEST_SOLDIER_AT = "CUP_B_US_Soldier_AT";
		WEST_SOLDIER_CREW = "CUP_B_US_Crew";
		WEST_SOLDIER_LAT = "CUP_B_US_Soldier_LAT";
		WEST_SOLDIER_HAT = "CUP_B_US_Soldier_HAT";
		WEST_SOLDIER_ENGINEER = "CUP_B_US_Soldier_Engineer_EOD";
		WEST_SOLDIER_EXP = "CUP_B_US_Soldier_Engineer_Sapper";
		WEST_SOLDIER_GL = "CUP_B_US_Soldier_GL";
		WEST_SOLDIER_MEDIC = "CUP_B_US_Medic";
		WEST_SOLDIER_MG = "CUP_B_US_Soldier_MG";
		WEST_SOLDIER_PILOT = "CUP_B_US_Pilot";
		WEST_SOLDIER_SNIPER = "CUP_B_US_Sniper_M107";
		WEST_SOLDIER_MARKSMAN = "CUP_B_US_Soldier_Marksman";
		WEST_SOLDIER_TEAMLEADER = "CUP_B_US_Soldier_TL";
		WEST_SOLDIER_SQUADLEADER = "CUP_B_US_Soldier_SL";
		//--- Naval Units
		//WEST_SOLDIER_NAVAL_INFANTRY = "B_diver_F";
		//WEST_SOLDIER_NAVAL_SQUADLEADER = "B_diver_TL_F";
		//--- Light Vehicles
		WEST_VEHICLE_LIGHT1 = "CUP_B_M1151_Deploy_USA";
		WEST_VEHICLE_LIGHT2 = "CUP_B_Jackal2_L2A1_GB_D";
		WEST_VEHICLE_LIGHT3 = "CUP_RG31_M2";
		WEST_VEHICLE_LIGHT4 = "CUP_B_Dingo_GL_CZ_Wdl";
		WEST_VEHICLE_LIGHT5 = "CUP_B_Ridgback_GMG_GB_D";
		WEST_VEHICLE_LIGHT6 = "CUP_B_M1126_ICV_MK19_Desert";
		WEST_VEHICLE_LIGHT7 = "CUP_B_LAV25M240_USMC";
		//--- APCs
		WEST_VEHICLE_APC1 = "CUP_B_MCV80_GB_D_SLAT";
		WEST_VEHICLE_APC2 = "CUP_B_FV510_GB_D_SLAT";
		WEST_VEHICLE_APC3 = "CUP_B_M2A3Bradley_USA_D";
		//--- Tanks
		WEST_VEHICLE_ARMORED1 = "CUP_B_M1A1_Woodland_US_Army";	
		WEST_VEHICLE_ARMORED2 = "CUP_B_M1A2_TUSK_MG_US_Army";
		WEST_VEHICLE_ARMORED3 = "CUP_B_M1A2_TUSK_MG_US_Army";
		//--- AA Vehicles
		WEST_VEHICLE_AA1 = "CUP_B_HMMWV_Avenger_USMC";
		WEST_VEHICLE_AA2 = "CUP_B_M6LineBacker_USA_D";
		WEST_VEHICLE_AA3 = "CUP_B_M163_USA";
		//--- Air
		WEST_AIR_HELI1 = "CUP_B_UH1D_GER_KSK_Des";
		//WEST_AIR_HELI2 = "";
		//WEST_AIR_HELI_ATTACK = "";
		WEST_AIR_AA = "CUP_B_F35B_AA_USMC";
		WEST_AIR_CAS = "CUP_B_F35B_LGB_USMC";
		//--- Boats
		//WEST_NAVAL_ASSAULT_BOAT1 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_ASSAULT_BOAT2 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_B";
		//WEST_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_B";
		//WEST_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_MEKO_TN";
	};
	//--- Load RHS Mod
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	if (CTI_RHS_USAF_ADDON > 0) then {

	};
	//--- Load RHS Loadout Ammo
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	//--- OFPS Units Mod
	if (CTI_OFPS_UNITS_ADDON > 0) then {

	};
	//--- OFPS RHS Mod
	if (CTI_OFPS_RHS_ADDON > 0) then {

	};
	//--- OFPS CUP Mod
	if (CTI_OFPS_CUP_ADDON > 0) then {

	};
	//--- SFP Mod
	if (CTI_SFP_ADDON > 0) then {

	};
	//--- OFPS SFP Mod
	if (CTI_OFPS_SFP_ADDON > 0) then {

	};
	//--- 2035 Russia
	if (CTI_RUSSIA_2035_ADDON > 0 ) then {

	};
	//--- HAFM UNITS
	if (CTI_HAFM_ADDON > 0) then {

	};
	//--- HAFM SUBS UNITS
	if (CTI_HAFM_SUBS_ADDON > 0) then {

	};
	//--- OFPS HAFM UNITS
	if (CTI_OFPS_HAFM_ADDON > 0) then {

	};
	//--- Unsung
	if (CTI_UNSUNG_ADDON > 0 ) then {

	};
	//--- IFA3
	if (CTI_IFA3_ADDON > 0 ) then {

	};
};

//--------------------------------------------------------------------------------------------
//--- RHS US ARMY ARID
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_WEST isEqualTo 3) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
	};
	//--Load Heli Mod
	if (CTI_HELI_ADDON > 0) then {

	};
	//--- Load Marksmen Mod
	if (CTI_MARKSMEN_ADDON > 0) then {

	};
	//--- Load APEX Mod
	if (CTI_APEX_ADDON > 0) then {

	};
	//--- Load JETS Mod
	if (CTI_JETS_ADDON > 0) then {

	};
	//--- Load Laws Of War Mod
	if (CTI_LAWSOFWAR_ADDON > 0) then {

	};
	//--- Load TANKS Mod
	if (CTI_TANKS_ADDON > 0) then {

	};
	//--- Load GLOBAL MOBILIZATION Mod
	if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

	};	
	//--- Load CONTACT Mod
	if (CTI_CONTACT_ADDON > 0) then {

	};
	//--- Load CUP Mod
	if (CTI_CUP_WEAPONS_ADDON > 0) then {

	};
	//--- CUP UNITS
	if (CTI_CUP_VEHICLES_ADDON > 0) then {

	};
	//--- Load RHS Mod
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	if (CTI_RHS_USAF_ADDON > 0) then {
		//--- Infantry
		WEST_SOLDIER = "rhsusf_army_ocp_rifleman";
		WEST_SOLDIER_AA = "rhsusf_army_ocp_aa";
		WEST_SOLDIER_AR = "rhsusf_army_ocp_autorifleman";
		WEST_SOLDIER_AT = "rhsusf_army_ocp_riflemanat";
		WEST_SOLDIER_CREW = "rhsusf_army_ocp_combatcrewman";
		WEST_SOLDIER_LAT = "rhsusf_army_ocp_riflemanat";
		WEST_SOLDIER_HAT = "rhsusf_usmc_marpat_d_javelin";
		WEST_SOLDIER_ENGINEER = "rhsusf_army_ocp_engineer";
		WEST_SOLDIER_EXP = "rhsusf_army_ocp_explosives";
		WEST_SOLDIER_GL = "rhsusf_army_ocp_grenadier";
		WEST_SOLDIER_MEDIC = "rhsusf_army_ocp_medic";
		WEST_SOLDIER_MG = "rhsusf_army_ocp_machinegunner";
		WEST_SOLDIER_PILOT = "rhsusf_army_ocp_helipilot";
		WEST_SOLDIER_SNIPER = "rhsusf_army_ocp_sniper";
		WEST_SOLDIER_MARKSMAN = "rhsusf_army_ocp_sniper";
		WEST_SOLDIER_TEAMLEADER = "rhsusf_army_ocp_teamleader";
		WEST_SOLDIER_SQUADLEADER = "rhsusf_army_ocp_squadleader";
		//--- Naval Units
		//WEST_SOLDIER_NAVAL_INFANTRY = "B_diver_F";
		//WEST_SOLDIER_NAVAL_SQUADLEADER = "B_diver_TL_F";
		//--- Light Vehicles
		WEST_VEHICLE_LIGHT1 = "rhsusf_m1025_d";
		WEST_VEHICLE_LIGHT2 = "rhsusf_m1025_d_mk19";
		WEST_VEHICLE_LIGHT3 = "rhsusf_rg33_m2_usmc_d";
		WEST_VEHICLE_LIGHT4 = "rhsusf_M1232_M2_usarmy_d";
		WEST_VEHICLE_LIGHT5 = "rhsusf_M1232_Mk19_usarmy_d";
		WEST_VEHICLE_LIGHT6 = "rhsusf_M1117_D";
		WEST_VEHICLE_LIGHT7 = "rhsusf_M1117_D";
		//--- APCs
		WEST_VEHICLE_APC1 = "rhs_m2a2";
		WEST_VEHICLE_APC2 = "rhs_m2a2";
		WEST_VEHICLE_APC3 = "rhs_m2a3_buskiii";
		//--- Tanks
		WEST_VEHICLE_ARMORED1 = "rhsusf_m1a1fep_d";	
		WEST_VEHICLE_ARMORED2 = "rhsusf_m1a2sep1d_usarmy";
		WEST_VEHICLE_ARMORED3 = "rhsusf_m1a2sep1tuskiid_usarmy";
		//--- AA Vehicles
		WEST_VEHICLE_AA1 = "rhs_m2a2";
		WEST_VEHICLE_AA2 = "rhs_m6";
		WEST_VEHICLE_AA3 = "rhs_m6";
		//--- Air
		WEST_AIR_HELI1 = "RHS_MELB_AH6M_M"; //pawnee
		WEST_AIR_HELI2 = "RHS_UH60M"; //ghosthawk
		WEST_AIR_HELI_ATTACK = "RHS_AH64D";
		//WEST_AIR_AA = "";
		WEST_AIR_CAS = "RHS_A10";
		//--- Boats
		//WEST_NAVAL_ASSAULT_BOAT1 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_ASSAULT_BOAT2 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_B";
		//WEST_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_B";
		//WEST_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_MEKO_TN";
	};
	//--- Load RHS Loadout Ammo
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	//--- OFPS Units Mod
	if (CTI_OFPS_UNITS_ADDON > 0) then {

	};
	//--- OFPS RHS Mod
	if (CTI_OFPS_RHS_ADDON > 0) then {

	};
	//--- OFPS CUP Mod
	if (CTI_OFPS_CUP_ADDON > 0) then {

	};
	//--- SFP Mod
	if (CTI_SFP_ADDON > 0) then {

	};
	//--- OFPS SFP Mod
	if (CTI_OFPS_SFP_ADDON > 0) then {

	};
	//--- 2035 Russia
	if (CTI_RUSSIA_2035_ADDON > 0 ) then {

	};
	//--- HAFM UNITS
	if (CTI_HAFM_ADDON > 0) then {

	};
	//--- HAFM SUBS UNITS
	if (CTI_HAFM_SUBS_ADDON > 0) then {

	};
	//--- OFPS HAFM UNITS
	if (CTI_OFPS_HAFM_ADDON > 0) then {

	};
	//--- Unsung
	if (CTI_UNSUNG_ADDON > 0 ) then {

	};
	//--- IFA3
	if (CTI_IFA3_ADDON > 0 ) then {

	};
};

//--------------------------------------------------------------------------------------------
//--- CUP - US Army (snow) TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_WEST isEqualTo 4) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
	};
	//--Load Heli Mod
	if (CTI_HELI_ADDON > 0) then {

	};
	//--- Load Marksmen Mod
	if (CTI_MARKSMEN_ADDON > 0) then {

	};
	//--- Load APEX Mod
	if (CTI_APEX_ADDON > 0) then {

	};
	//--- Load JETS Mod
	if (CTI_JETS_ADDON > 0) then {

	};
	//--- Load Laws Of War Mod
	if (CTI_LAWSOFWAR_ADDON > 0) then {

	};
	//--- Load TANKS Mod
	if (CTI_TANKS_ADDON > 0) then {

	};
	//--- Load GLOBAL MOBILIZATION Mod
	if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

	};	
	//--- Load CONTACT Mod
	if (CTI_CONTACT_ADDON > 0) then {

	};
	//--- Load CUP Mod
	if (CTI_CUP_WEAPONS_ADDON > 0) then {

	};
	//--- CUP UNITS
	if (CTI_CUP_VEHICLES_ADDON > 0) then {
		//--- Infantry
		WEST_SOLDIER = "CUP_B_US_Soldier";
		WEST_SOLDIER_AA = "CUP_B_US_Soldier_AA";
		WEST_SOLDIER_AR = "CUP_B_US_Soldier_AR";
		WEST_SOLDIER_AT = "CUP_B_US_Soldier_AT";
		WEST_SOLDIER_CREW = "CUP_B_US_Crew";
		WEST_SOLDIER_LAT = "CUP_B_US_Soldier_LAT";
		WEST_SOLDIER_HAT = "CUP_B_US_Soldier_HAT";
		WEST_SOLDIER_ENGINEER = "CUP_B_US_Soldier_Engineer_EOD";
		WEST_SOLDIER_EXP = "CUP_B_US_Soldier_Engineer_Sapper";
		WEST_SOLDIER_GL = "CUP_B_US_Soldier_GL";
		WEST_SOLDIER_MEDIC = "CUP_B_US_Medic";
		WEST_SOLDIER_MG = "CUP_B_US_Soldier_MG";
		WEST_SOLDIER_PILOT = "CUP_B_US_Pilot";
		WEST_SOLDIER_SNIPER = "CUP_B_US_Sniper_M107";
		WEST_SOLDIER_MARKSMAN = "CUP_B_US_Soldier_Marksman";
		WEST_SOLDIER_TEAMLEADER = "CUP_B_US_Soldier_TL";
		WEST_SOLDIER_SQUADLEADER = "CUP_B_US_Soldier_SL";
		//--- Naval Units
		//WEST_SOLDIER_NAVAL_INFANTRY = "B_diver_F";
		//WEST_SOLDIER_NAVAL_SQUADLEADER = "B_diver_TL_F";
		//--- Light Vehicles
		WEST_VEHICLE_LIGHT1 = "CUP_B_M1151_Deploy_USA";
		WEST_VEHICLE_LIGHT2 = "CUP_B_Jackal2_L2A1_GB_D";
		WEST_VEHICLE_LIGHT3 = "CUP_RG31_M2";
		WEST_VEHICLE_LIGHT4 = "CUP_B_Dingo_GL_CZ_Wdl";
		WEST_VEHICLE_LIGHT5 = "CUP_B_M1165_GMV_WDL_USA";
		WEST_VEHICLE_LIGHT6 = "CUP_B_M1167_WDL_USA";
		WEST_VEHICLE_LIGHT7 = "CUP_B_LAV25M240_USMC";
		//--- APCs
		WEST_VEHICLE_APC1 = "CUP_B_MCV80_GB_D_SLAT";
		WEST_VEHICLE_APC2 = "CUP_B_FV510_GB_D_SLAT";
		WEST_VEHICLE_APC3 = "CUP_B_M1128_MGS_Woodland_Slat";
		//--- Tanks
		WEST_VEHICLE_ARMORED1 = "CUP_B_Challenger2_Snow_BAF";	
		WEST_VEHICLE_ARMORED2 = "CUP_B_Challenger2_Snow_BAF";
		WEST_VEHICLE_ARMORED3 = "CUP_B_M1A2_TUSK_MG_US_Army";
		//--- AA Vehicles
		WEST_VEHICLE_AA1 = "CUP_B_HMMWV_Avenger_USMC";
		WEST_VEHICLE_AA2 = "CUP_B_M6LineBacker_USA_D";
		WEST_VEHICLE_AA3 = "CUP_B_M163_USA";
		//--- Air
		WEST_AIR_HELI1 = "CUP_B_UH1D_GER_KSK_Des";
		//WEST_AIR_HELI2 = "";
		//WEST_AIR_HELI_ATTACK = "";
		WEST_AIR_AA = "CUP_B_F35B_AA_USMC";
		WEST_AIR_CAS = "CUP_B_F35B_LGB_USMC";
		//--- Boats
		//WEST_NAVAL_ASSAULT_BOAT1 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_ASSAULT_BOAT2 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_B";
		//WEST_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_B";
		//WEST_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_MEKO_TN";
	};
	//--- Load RHS Mod
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	if (CTI_RHS_USAF_ADDON > 0) then {

	};
	//--- Load RHS Loadout Ammo
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	//--- OFPS Units Mod
	if (CTI_OFPS_UNITS_ADDON > 0) then {

	};
	//--- OFPS RHS Mod
	if (CTI_OFPS_RHS_ADDON > 0) then {

	};
	//--- OFPS CUP Mod
	if (CTI_OFPS_CUP_ADDON > 0) then {
	
	};
	//--- SFP Mod
	if (CTI_SFP_ADDON > 0) then {

	};
	//--- OFPS SFP Mod
	if (CTI_OFPS_SFP_ADDON > 0) then {

	};
	//--- 2035 Russia
	if (CTI_RUSSIA_2035_ADDON > 0 ) then {

	};
	//--- HAFM UNITS
	if (CTI_HAFM_ADDON > 0) then {

	};
	//--- HAFM SUBS UNITS
	if (CTI_HAFM_SUBS_ADDON > 0) then {

	};
	//--- OFPS HAFM UNITS
	if (CTI_OFPS_HAFM_ADDON > 0) then {

	};
	//--- Unsung
	if (CTI_UNSUNG_ADDON > 0 ) then {

	};
	//--- IFA3
	if (CTI_IFA3_ADDON > 0 ) then {

	};
};
//--------------------------------------------------------------------------------------------
//--- SFP- (snow) TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_WEST isEqualTo 5) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
	};
	//--Load Heli Mod
	if (CTI_HELI_ADDON > 0) then {

	};
	//--- Load Marksmen Mod
	if (CTI_MARKSMEN_ADDON > 0) then {

	};
	//--- Load APEX Mod
	if (CTI_APEX_ADDON > 0) then {

	};
	//--- Load JETS Mod
	if (CTI_JETS_ADDON > 0) then {

	};
	//--- Load Laws Of War Mod
	if (CTI_LAWSOFWAR_ADDON > 0) then {

	};
	//--- Load TANKS Mod
	if (CTI_TANKS_ADDON > 0) then {

	};
	//--- Load GLOBAL MOBILIZATION Mod
	if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

	};	
	//--- Load CONTACT Mod
	if (CTI_CONTACT_ADDON > 0) then {

	};
	//--- Load CUP Mod
	if (CTI_CUP_WEAPONS_ADDON > 0) then {

	};
	//--- CUP UNITS
	if (CTI_CUP_VEHICLES_ADDON > 0) then {
	
	};
	//--- Load RHS Mod
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	if (CTI_RHS_USAF_ADDON > 0) then {

	};
	//--- Load RHS Loadout Ammo
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	//--- OFPS Units Mod
	if (CTI_OFPS_UNITS_ADDON > 0) then {

	};
	//--- OFPS RHS Mod
	if (CTI_OFPS_RHS_ADDON > 0) then {

	};
	//--- OFPS CUP Mod
	if (CTI_OFPS_CUP_ADDON > 0) then {
		//--- Light Vehicles
		WEST_VEHICLE_LIGHT5 = "OFPS_S_M1126_HMG";
		WEST_VEHICLE_LIGHT6 = "OFPS_S_M1126_GMG";
		//--- APCs
		WEST_VEHICLE_APC3 = "OFPS_S_M2";
		//--- Tanks
		WEST_VEHICLE_ARMORED1 = "OFPS_S_M1A1";
	};
	//--- SFP Mod
	if (CTI_SFP_ADDON > 0) then {

	};
	//--- OFPS SFP Mod
	if (CTI_OFPS_SFP_ADDON > 0) then {
	//--- Infantry
		WEST_SOLDIER = "sfp_m90s_rifleman_ak5";
		WEST_SOLDIER_AA = "B-soldier_AA_F";
		WEST_SOLDIER_AR = "sfp_m90s_automaticrifleman_ksp90";
		WEST_SOLDIER_AT = "sfp_m90s_at_specialist_grg86";
		WEST_SOLDIER_CREW = "sfp_m90s_crew";
		WEST_SOLDIER_LAT = "sfp_m90s_at_specialist_pskott86";
		WEST_SOLDIER_HAT = "sfp_m90s_at_specialist_grg86";
		WEST_SOLDIER_ENGINEER = "sfp_m90s_engineer";
		WEST_SOLDIER_EXP = "sfp_m90s_explosive_specialist";
		WEST_SOLDIER_GL = "sfp_m90s_gr";
		WEST_SOLDIER_MEDIC = "sfp_m90s_medic";
		WEST_SOLDIER_MG = "afp_m90s_machinegunner_ksp58";
		WEST_SOLDIER_PILOT = "sfp_m90s_pilot";
		WEST_SOLDIER_SNIPER = "sfp_m90s_sniper";
		WEST_SOLDIER_MARKSMAN = "sfp_m90s_sniper";
		WEST_SOLDIER_TEAMLEADER = "sfp_m90s_teamleader";
		WEST_SOLDIER_SQUADLEADER = "sfp_m90s_squadleader";
		//--- Naval Units
		//WEST_SOLDIER_NAVAL_INFANTRY = "B_diver_F";
		//WEST_SOLDIER_NAVAL_SQUADLEADER = "B_diver_TL_F";
		//--- Light Vehicles
		WEST_VEHICLE_LIGHT1 = "sfp_81_tgb1111";
		WEST_VEHICLE_LIGHT2 = "sfp_tgb1111_sog_rbs56";
		WEST_VEHICLE_LIGHT3 = "OFPS_S_M1126_GMG";
		WEST_VEHICLE_LIGHT4 = "OFPS_S_M1126_HMG";
		//WEST_VEHICLE_LIGHT5 = "OFPS_S_M1126_HMG";
		//WEST_VEHICLE_LIGHT6 = "OFPS_S_M1126_GMG";
		WEST_VEHICLE_LIGHT7 = "CUP_B_LAV25M240_USMC";
		//--- APCs
		WEST_VEHICLE_APC1 = "sfp_lvkv90c_snow";
		WEST_VEHICLE_APC2 = "sfp_lvkv90c_snow";
		//WEST_VEHICLE_APC3 = "sfp_strf90c_snow";
		//--- Tanks
		//WEST_VEHICLE_ARMORED1 = "sfp_strv122_snow";	
		WEST_VEHICLE_ARMORED2 = "CUP_B_Challenger2_Snow_BAF";
		WEST_VEHICLE_ARMORED3 = "sfp_strv122_snow";
		//--- AA Vehicles
		WEST_VEHICLE_AA1 = "CUP_B_HMMWV_Avenger_USMC";
		WEST_VEHICLE_AA2 = "B-B_APC_Tracked_01_AA_F";
		WEST_VEHICLE_AA3 = "B-B_APC_Tracked_01_AA_F";
		//--- Air
		WEST_AIR_HELI1 = "CUP_B_UH1D_GER_KSK_Des";
		//WEST_AIR_HELI2 = "";
		//WEST_AIR_HELI_ATTACK = "";
		WEST_AIR_AA = "CUP_B_F35B_AA_USMC";
		WEST_AIR_CAS = "CUP_B_F35B_LGB_USMC";
		//--- Boats
		//WEST_NAVAL_ASSAULT_BOAT1 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_ASSAULT_BOAT2 = "B_Boat_Armed_01_minigun_F";
		//WEST_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_B";
		//WEST_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_B";
		//WEST_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_MEKO_TN";
	};
	//--- 2035 Russia
	if (CTI_RUSSIA_2035_ADDON > 0 ) then {

	};
	//--- HAFM UNITS
	if (CTI_HAFM_ADDON > 0) then {

	};
	//--- HAFM SUBS UNITS
	if (CTI_HAFM_SUBS_ADDON > 0) then {

	};
	//--- OFPS HAFM UNITS
	if (CTI_OFPS_HAFM_ADDON > 0) then {

	};
	//--- Unsung
	if (CTI_UNSUNG_ADDON > 0 ) then {

	};
	//--- IFA3
	if (CTI_IFA3_ADDON > 0 ) then {

	};
};
//--------------------------------------------------------------------------------------------
//--- IFA3 - Germany
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_WEST isEqualTo 6) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
	};
	//--Load Heli Mod
	if (CTI_HELI_ADDON > 0) then {

	};
	//--- Load Marksmen Mod
	if (CTI_MARKSMEN_ADDON > 0) then {

	};
	//--- Load APEX Mod
	if (CTI_APEX_ADDON > 0) then {

	};
	//--- Load JETS Mod
	if (CTI_JETS_ADDON > 0) then {

	};
	//--- Load Laws Of War Mod
	if (CTI_LAWSOFWAR_ADDON > 0) then {

	};
	//--- Load TANKS Mod
	if (CTI_TANKS_ADDON > 0) then {

	};
	//--- Load GLOBAL MOBILIZATION Mod
	if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

	};	
	//--- Load CONTACT Mod
	if (CTI_CONTACT_ADDON > 0) then {

	};
	//--- Load CUP Mod
	if (CTI_CUP_WEAPONS_ADDON > 0) then {

	};
	//--- CUP UNITS
	if (CTI_CUP_VEHICLES_ADDON > 0) then {
	
	};
	//--- Load RHS Mod
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	if (CTI_RHS_USAF_ADDON > 0) then {

	};
	//--- Load RHS Loadout Ammo
	if (CTI_RHS_AFRF_ADDON > 0) then {

	};
	//--- OFPS Units Mod
	if (CTI_OFPS_UNITS_ADDON > 0) then {

	};
	//--- OFPS RHS Mod
	if (CTI_OFPS_RHS_ADDON > 0) then {

	};
	//--- OFPS CUP Mod
	if (CTI_OFPS_CUP_ADDON > 0) then {

	};
	//--- SFP Mod
	if (CTI_SFP_ADDON > 0) then {

	};
	//--- OFPS SFP Mod
	if (CTI_OFPS_SFP_ADDON > 0) then {

	};
	//--- 2035 Russia
	if (CTI_RUSSIA_2035_ADDON > 0 ) then {

	};
	//--- HAFM UNITS
	if (CTI_HAFM_ADDON > 0) then {

	};
	//--- HAFM SUBS UNITS
	if (CTI_HAFM_SUBS_ADDON > 0) then {

	};
	//--- OFPS HAFM UNITS
	if (CTI_OFPS_HAFM_ADDON > 0) then {

	};
	//--- Unsung
	if (CTI_UNSUNG_ADDON > 0 ) then {

	};
	//--- IFA3
	if (CTI_IFA3_ADDON > 0 ) then {
	//--- Infantry
		WEST_SOLDIER = "LIB_GER_Soldier2";
		WEST_SOLDIER_AA = "LNRD_Luftwaffe_LAT_rifleman";
		WEST_SOLDIER_AR = "LIB_GER_stggunner";
		WEST_SOLDIER_AT = "LIB_GER_AT_soldier";
		WEST_SOLDIER_CREW = "LIB_GER_tank_crew";
		WEST_SOLDIER_LAT = "LIB_GER_LAT_rifleman";
		WEST_SOLDIER_HAT = "LNRD_Luftwaffe_AT_soldier";
		WEST_SOLDIER_ENGINEER = "LIB_GER_sapper";
		WEST_SOLDIER_EXP = "LNRD_Luftwaffe_AT_granadier";
		WEST_SOLDIER_GL = "LIB_GER_ober_granadier";
		WEST_SOLDIER_MEDIC = "LIB_GER_medic";
		WEST_SOLDIER_MG = "LIB_GER_mggunner2";
		WEST_SOLDIER_PILOT = "LIB_GER_pilot";
		WEST_SOLDIER_SNIPER = "LIB_GER_scout_sniper";
		WEST_SOLDIER_MARKSMAN = "LRND_Luftwaffe_sniper";
		WEST_SOLDIER_TEAMLEADER = "LIB_GER_unterofficer";
		WEST_SOLDIER_SQUADLEADER = "LIB_GER_ober_lieutenant";
	//--- Naval Units
		WEST_SOLDIER_NAVAL_INFANTRY = "LIB_GER_ober_rifleman";
		WEST_SOLDIER_NAVAL_SQUADLEADER = "LRND_Luftwaffe_ober_rifleman";
	//--- Light Vehicles
		WEST_VEHICLE_LIGHT1 = "LIB_Kfz1_MG42";
		WEST_VEHICLE_LIGHT2 = "LIB_SdKfz251_FFV";
		WEST_VEHICLE_LIGHT3 = "LIB_SdKfz251";
		WEST_VEHICLE_LIGHT4 = "LIB_OpelBlitz_Open_Y_Camo";
		WEST_VEHICLE_LIGHT5 = "LIB_SdKfz_7";
		WEST_VEHICLE_LIGHT6 = "LIB_Kfz1_MG42_camo";
		WEST_VEHICLE_LIGHT7 = "LIB_Kfz1_MG42_sernyt";
	//--- APCs
		WEST_VEHICLE_APC1 = "LIB_SdKfz222_gelbbraun";
		WEST_VEHICLE_APC2 = "LIB_SdKfz234_2";
		WEST_VEHICLE_APC3 = "LIB_SdKfz234_4";
	//--- Tanks
		WEST_VEHICLE_ARMORED1 = "LIB_DAK_PzKpfwIV_H";	
		WEST_VEHICLE_ARMORED2 = "LIB_StuG_III_G";
		WEST_VEHICLE_ARMORED3 = "LIB_PzKpfwV";
	//--- AA Vehicles
		WEST_VEHICLE_AA1 = "LIB_FlakPanzerIV_Wirbelwind";
		WEST_VEHICLE_AA2 = "LIB_SdKfz_7_AA";
		//WEST_VEHICLE_AA3 = "B_T_APC_Tracked_01_AA_F";
	//--- Air
		//WEST_AIR_HELI1 = "B_Heli_Light_01_armed_F"; //pawnee
		//WEST_AIR_HELI2 = "B_Heli_Transport_01_F"; //ghosthawk
		//WEST_AIR_HELI_ATTACK = "B_Heli_Attack_01_F";
		//WEST_AIR_AA = "";
		//WEST_AIR_CAS = "B_Plane_CAS_01_F";
	//--- Boats
		WEST_NAVAL_ASSAULT_BOAT1 = "LIB_UK_LCI";
		WEST_NAVAL_ASSAULT_BOAT2 = "LIB_LCM3_Armed";
	};
};
//--------------------------------------------------------------------------------------------
//--- Town Teams Templates
//--------------------------------------------------------------------------------------------
/*
//--- Town statics usage
Place VR marker = VR_GroundIcon_01_F
inside init place | this setVariable ["cti_static_defense", [TOWNVAR,"Default"]]; //tp use static pools
inside init place | this setVariable ["cti_static_defense", [TOWNVAR,["TOWN_MG"]]; //to set specific
inside init place | this setVariable ["cti_static_defense", [TOWNVAR,["TOWN_MG","TOWN_GL"]]; //to set specific

--- Options for static types
"Default" = WEST_TOWNS_STATICS_CORE
"Comps" = WEST_TOWNS_STATICS_COMPS
"Infantry" = WEST_TOWNS_STATICS_INFANTRY
"Vehicle" = WEST_TOWNS_STATICS_VEHICLE
"Air" = WEST_TOWNS_STATICS_AIR
"All" = WEST_TOWNS_STATICS_ALL
No value defaults to = WEST_TOWNS_STATICS_CORE

See below for pools
*/

//--- Statics Groups
WEST_TOWNS_STATICS_ALL = [WEST_TOWN_MG,WEST_TOWN_GL,WEST_TOWN_AT,WEST_TOWN_AA,WEST_TOWN_ZSU,WEST_TOWN_D30,WEST_TOWN_SPG,WEST_TOWN_DSHKM,WEST_TOWN_MG50,WEST_TOWN_AGS,WEST_TOWN_COAST];
WEST_TOWNS_STATICS_CORE = [WEST_TOWN_MG,WEST_TOWN_GL,WEST_TOWN_AT];
WEST_TOWNS_STATICS_COMPS = WEST_TOWN_MG_COMP + WEST_TOWN_GL_COMP + WEST_TOWN_AT_COMP + WEST_TOWN_SPG_COMP + WEST_TOWN_DSHKM_COMP + WEST_TOWN_MG50_COMP;
WEST_TOWNS_STATICS_INFANTRY = [WEST_TOWN_MG,WEST_TOWN_GL,WEST_TOWN_DSHKM,WEST_TOWN_MG50,WEST_TOWN_AGS];
WEST_TOWNS_STATICS_VEHICLE = [WEST_TOWN_AT,WEST_TOWN_D30,WEST_TOWN_SPG];
WEST_TOWNS_STATICS_AIR = [WEST_TOWN_AA,WEST_TOWN_ZSU];

//--- Infantry Squads
WEST_TOWNS_SQUAD_RIFLEMEN1 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_AR, WEST_SOLDIER_MARKSMAN, WEST_SOLDIER, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_RIFLEMEN2 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_AR, WEST_SOLDIER_MG, WEST_SOLDIER_EXP, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_RIFLEMEN3 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_AR, WEST_SOLDIER_MG, WEST_SOLDIER_GL, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_SNIPER = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_SNIPER, WEST_SOLDIER_SNIPER, WEST_SOLDIER_SNIPER, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_AT1 = [WEST_SOLDIER_SQUADLEADER, WEST_SOLDIER_LAT, WEST_SOLDIER_LAT, WEST_SOLDIER_LAT, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_AT2 = [WEST_SOLDIER_TEAMLEADER, WEST_SOLDIER_HAT, WEST_SOLDIER_HAT, WEST_SOLDIER_HAT, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_AA = [WEST_SOLDIER_TEAMLEADER, WEST_SOLDIER_AA, WEST_SOLDIER_MEDIC];
//Urban
WEST_TOWNS_SQUAD_RIFLEMEN1_U = [WEST_SOLDIER_SQUADLEADER_U, WEST_SOLDIER_AR_U, WEST_SOLDIER_MARKSMAN_U, WEST_SOLDIER_U, WEST_SOLDIER_MEDIC_U];
WEST_TOWNS_SQUAD_RIFLEMEN2_U = [WEST_SOLDIER_SQUADLEADER_U, WEST_SOLDIER_AR_U, WEST_SOLDIER_MG_U, WEST_SOLDIER_EXP_U, WEST_SOLDIER_MEDIC_U];
WEST_TOWNS_SQUAD_RIFLEMEN3_U = [WEST_SOLDIER_SQUADLEADER_U, WEST_SOLDIER_AR_U, WEST_SOLDIER_MG_U, WEST_SOLDIER_GL_U, WEST_SOLDIER_MEDIC_U];
WEST_TOWNS_SQUAD_SNIPER_U = [WEST_SOLDIER_TEAMLEADER_U, WEST_SOLDIER_SNIPER_U, WEST_SOLDIER_SNIPER_U, WEST_SOLDIER_SNIPER_U, WEST_SOLDIER_MEDIC_U];
WEST_TOWNS_SQUAD_AT1_U = [WEST_SOLDIER_SQUADLEADER_U, WEST_SOLDIER_LAT_U, WEST_SOLDIER_LAT_U, WEST_SOLDIER_LAT_U, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_AT2_U = [WEST_SOLDIER_TEAMLEADER_U, WEST_SOLDIER_HAT_U, WEST_SOLDIER_HAT_U, WEST_SOLDIER_HAT_U, WEST_SOLDIER_MEDIC];
WEST_TOWNS_SQUAD_AA_U = [WEST_SOLDIER_TEAMLEADER_U, WEST_SOLDIER_AA_U, WEST_SOLDIER_MEDIC];
//Naval
WEST_TOWNS_SQUAD_NAVAL1 = [WEST_SOLDIER_NAVAL_SQUADLEADER, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY];
WEST_TOWNS_SQUAD_NAVAL2 = [WEST_SOLDIER_NAVAL_SQUADLEADER, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_NAVAL_INFANTRY, WEST_SOLDIER_HAT, WEST_SOLDIER_AA];
WEST_TOWNS_SQUAD_NAVAL3 = [WEST_SOLDIER_NAVAL_SQUADLEADER,  WEST_SOLDIER_HAT, WEST_SOLDIER_HAT, WEST_SOLDIER_AA, WEST_SOLDIER_AA];

//--- Vehicle Squads
WEST_TOWNS_SQUAD_LIGHT1 = [WEST_VEHICLE_LIGHT1];
WEST_TOWNS_SQUAD_LIGHT2 = [WEST_VEHICLE_LIGHT2];
WEST_TOWNS_SQUAD_LIGHT3 = [WEST_VEHICLE_LIGHT3];
WEST_TOWNS_SQUAD_LIGHT4 = [WEST_VEHICLE_LIGHT4];
WEST_TOWNS_SQUAD_LIGHT5 = [WEST_VEHICLE_LIGHT5];
WEST_TOWNS_SQUAD_LIGHT6 = [WEST_VEHICLE_LIGHT6];
WEST_TOWNS_SQUAD_LIGHT7 = [WEST_VEHICLE_LIGHT7];
WEST_TOWNS_SQUAD_APC1 = [WEST_VEHICLE_APC1];
WEST_TOWNS_SQUAD_APC2 = [WEST_VEHICLE_APC2];
WEST_TOWNS_SQUAD_APC3 = [WEST_VEHICLE_APC3];
WEST_TOWNS_SQUAD_ARMORED1 = [WEST_VEHICLE_ARMORED1];
WEST_TOWNS_SQUAD_ARMORED2 = [WEST_VEHICLE_ARMORED2];
WEST_TOWNS_SQUAD_ARMORED3 = [WEST_VEHICLE_ARMORED3];
WEST_TOWNS_SQUAD_VEHICLE_AA1 = [WEST_VEHICLE_AA1];
WEST_TOWNS_SQUAD_VEHICLE_AA2 = [WEST_VEHICLE_AA2];
WEST_TOWNS_SQUAD_VEHICLE_AA3 = [WEST_VEHICLE_AA3];
WEST_TOWNS_SQUAD_ASSAULT_BOAT1 = [WEST_NAVAL_ASSAULT_BOAT1];
WEST_TOWNS_SQUAD_ASSAULT_BOAT2 = [WEST_NAVAL_ASSAULT_BOAT2];
WEST_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT = [WEST_NAVAL_MEDIUM_ASSAULT_BOAT];
WEST_TOWNS_SQUAD_LARGE_ASSAULT_BOAT = [WEST_NAVAL_LARGE_ASSAULT_BOAT];
WEST_TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT = [WEST_NAVAL_CAPITAL_ASSAULT_BOAT];
//--- Mixed Squads
WEST_TOWNS_SQUAD_LIGHT1_MIXED = WEST_TOWNS_SQUAD_LIGHT1 + WEST_TOWNS_SQUAD_AT1;
WEST_TOWNS_SQUAD_LIGHT2_MIXED = WEST_TOWNS_SQUAD_LIGHT2 + WEST_TOWNS_SQUAD_AT1;
WEST_TOWNS_SQUAD_LIGHT3_MIXED = WEST_TOWNS_SQUAD_LIGHT3 + WEST_TOWNS_SQUAD_AT1;
WEST_TOWNS_SQUAD_LIGHT4_MIXED = WEST_TOWNS_SQUAD_LIGHT4 + WEST_TOWNS_SQUAD_AT1;
WEST_TOWNS_SQUAD_LIGHT5_MIXED = WEST_TOWNS_SQUAD_LIGHT5 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_LIGHT6_MIXED = WEST_TOWNS_SQUAD_LIGHT6 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_LIGHT7_MIXED = WEST_TOWNS_SQUAD_LIGHT7 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_APC1_MIXED = WEST_TOWNS_SQUAD_APC1 + WEST_TOWNS_SQUAD_AT1;
WEST_TOWNS_SQUAD_APC2_MIXED = WEST_TOWNS_SQUAD_APC2 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_APC3_MIXED = WEST_TOWNS_SQUAD_APC3 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_ARMORED1_MIXED = WEST_TOWNS_SQUAD_ARMORED1 + WEST_TOWNS_SQUAD_AT1;
WEST_TOWNS_SQUAD_ARMORED2_MIXED = WEST_TOWNS_SQUAD_ARMORED2 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_ARMORED3_MIXED = WEST_TOWNS_SQUAD_ARMORED3 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_VEHICLE_AA1_MIXED = WEST_TOWNS_SQUAD_VEHICLE_AA1 + WEST_TOWNS_SQUAD_AT1;
WEST_TOWNS_SQUAD_VEHICLE_AA2_MIXED = WEST_TOWNS_SQUAD_VEHICLE_AA2 + WEST_TOWNS_SQUAD_AT2;
WEST_TOWNS_SQUAD_VEHICLE_AA3_MIXED = WEST_TOWNS_SQUAD_VEHICLE_AA3 + WEST_TOWNS_SQUAD_AT2;
//--- Zombie Squads
//WEST_TOWNS_SQUAD_ZOMBIE1 = ["RyanZombieB_Soldier_02_fmedium"];
//WEST_TOWNS_SQUAD_ZOMBIE2 = ["RyanZombieB_Soldier_02_f"];
//WEST_TOWNS_SQUAD_ZOMBIE3 = ["RyanZombieboss15"];
WEST_TOWNS_SQUAD_ZOMBIE1 = ["Zombie_Villager_1_F"];
WEST_TOWNS_SQUAD_ZOMBIE2 = ["Zombie_Citizen_1_F"];
WEST_TOWNS_SQUAD_ZOMBIE3 = ["Zombie_Priest_1_F"];
};