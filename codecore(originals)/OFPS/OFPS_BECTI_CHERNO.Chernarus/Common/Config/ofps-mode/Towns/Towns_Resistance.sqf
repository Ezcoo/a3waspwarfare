with missionNamespace do {
	GUER_TOWNS_FLAG_TEXTURE = "\A3\Data_F\Flags\Flag_green_CO.paa";
	
	// Default Voices
	CTI_GUER_Speakers = ["Male01GRE", "Male02GRE", "Male03GRE", "Male04GRE", "Male05GRE"];

//--------------------------------------------------------------------------------------------
//--- Town Occupation Factions
//--------------------------------------------------------------------------------------------

//--- BASE LIST --- ALL USABLE VARIABLES MUST BE DEFINED HERE -- This can also be used as a template for creating new factions
//--- DO NOT TOUCH THIS LIST - This is the pure vanilla fallback - unless you adding new base variables
//--- Infantry
GUER_SOLDIER = "I_soldier_F";
GUER_SOLDIER_AA = "I_Soldier_AA_F";
GUER_SOLDIER_AR = "I_Soldier_AR_F";
GUER_SOLDIER_AT = "I_Soldier_LAT_F";
GUER_SOLDIER_CREW = "I_crew_F";
GUER_SOLDIER_LAT = "I_Soldier_LAT2_F";
GUER_SOLDIER_HAT = "I_Soldier_AT_F";
GUER_SOLDIER_ENGINEER = "I_engineer_F";
GUER_SOLDIER_EXP = "I_Soldier_exp_F";
GUER_SOLDIER_GL = "I_Soldier_GL_F";
GUER_SOLDIER_MEDIC = "I_medic_F";
GUER_SOLDIER_MG = "I_Soldier_AR_F";
GUER_SOLDIER_PILOT = "I_pilot_F";
GUER_SOLDIER_SNIPER = "I_Sniper_F";
GUER_SOLDIER_MARKSMAN = "I_Soldier_M_F";
GUER_SOLDIER_TEAMLEADER = "I_Soldier_TL_F";
GUER_SOLDIER_SQUADLEADER = "I_Soldier_SL_F";
//--- Infantry (Urban)
GUER_SOLDIER_U = "I_soldier_F";
GUER_SOLDIER_AA_U = "I_Soldier_AA_F";
GUER_SOLDIER_AR_U = "I_Soldier_AR_F";
GUER_SOLDIER_AT_U = "I_Soldier_LAT_F";
GUER_SOLDIER_CREW_U = "I_crew_F";
GUER_SOLDIER_LAT_U = "I_Soldier_LAT2_F";
GUER_SOLDIER_HAT_U = "I_Soldier_AT_F";
GUER_SOLDIER_ENGINEER_U = "I_engineer_F";
GUER_SOLDIER_EXP_U = "I_Soldier_exp_F";
GUER_SOLDIER_GL_U = "I_Soldier_GL_F";
GUER_SOLDIER_MEDIC_U = "I_medic_F";
GUER_SOLDIER_MG_U = "I_Soldier_AR_F";
GUER_SOLDIER_PILOT_U = "I_pilot_F";
GUER_SOLDIER_SNIPER_U = "I_Sniper_F";
GUER_SOLDIER_MARKSMAN_U = "I_Soldier_M_F";
GUER_SOLDIER_TEAMLEADER_U = "I_Soldier_TL_F";
GUER_SOLDIER_SQUADLEADER_U = "I_Soldier_SL_F";
//--- Naval Infantry
GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
//--- Light Vehicles
GUER_VEHICLE_LIGHT1 = "I_G_Offroad_01_armed_F";
GUER_VEHICLE_LIGHT2 = "I_G_Offroad_01_armed_F";
GUER_VEHICLE_LIGHT3 = "I_MRAP_03_hmg_F";
GUER_VEHICLE_LIGHT4 = "I_LT_01_AT_F";
GUER_VEHICLE_LIGHT5 = "I_MRAP_03_gmg_F";
GUER_VEHICLE_LIGHT6 = "I_MRAP_03_gmg_F";
GUER_VEHICLE_LIGHT7 = "I_LT_01_cannon_F";
//--- APCs
GUER_VEHICLE_APC1 = "I_APC_Wheeled_03_cannon_F";
GUER_VEHICLE_APC2 = "I_APC_tracked_03_cannon_F";
GUER_VEHICLE_APC3 = "I_APC_tracked_03_cannon_F";
//--- Tanks
GUER_VEHICLE_ARMORED1 = "I_APC_tracked_03_cannon_F";	
GUER_VEHICLE_ARMORED2 = "I_MBT_03_cannon_F";
GUER_VEHICLE_ARMORED3 = "I_MBT_03_cannon_F";
//--- AA Vehicles
GUER_VEHICLE_AA1 = "I_LT_01_AA_F";
GUER_VEHICLE_AA2 = "I_LT_01_AA_F";
GUER_VEHICLE_AA3 = "I_LT_01_AA_F";
//--- Air
GUER_AIR_HELI1 = "I_Heli_light_03_dynamicLoadout_F";
GUER_AIR_HELI2 = "I_Heli_light_03_dynamicLoadout_F";
GUER_AIR_AA = "I_Plane_Fighter_03_AA_F";
GUER_AIR_CAS = "I_Plane_Fighter_03_dynamicLoadout_F";
//--- Boats
GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "I_Boat_Armed_01_minigun_F";
GUER_NAVAL_LARGE_ASSAULT_BOAT = "I_Boat_Armed_01_minigun_F";
GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "I_Boat_Armed_01_minigun_F";
GUER_NAVAL_SUBMARINE = "I_Boat_Armed_01_minigun_F";
//--- Town Statics
GUER_TOWN_MG = "I_HMG_01_high_F";
GUER_TOWN_GL = "I_GMG_01_high_F";
GUER_TOWN_AT = "I_static_AT_F";
GUER_TOWN_AA = "I_static_AA_F";
GUER_TOWN_MORTAR = "I_static_AA_F";
GUER_TOWN_ZSU = "I_static_AA_F";
GUER_TOWN_D30 = "I_static_AT_F";
GUER_TOWN_SPG = "I_static_AT_F";
GUER_TOWN_DSHKM = "I_HMG_01_high_F";
GUER_TOWN_MG50 = "I_HMG_01_high_F";
GUER_TOWN_AGS = "I_GMG_01_high_F";
GUER_TOWN_COAST = "I_static_AT_F";
GUER_TOWN_CRAM = "I_static_AA_F";
//--- Town Statics Compositions
GUER_TOWN_MG_COMP = [];
GUER_TOWN_GL_COMP = [];
GUER_TOWN_AT_COMP = [];
GUER_TOWN_SPG_COMP = [];
GUER_TOWN_DSHKM_COMP = [];
GUER_TOWN_MG50_COMP = [];

//--- END DO NOT TOUCH THIS LIST

//--------------------------------------------------------------------------------------------
//--- UNIVERSAL TOWN OCCUPATION VARIABLES --- Used on all factions unless overridden
//--------------------------------------------------------------------------------------------

//--Load Vanilla
if (CTI_VANILLA_ADDON > 0 ) then {
	GUER_TOWN_MG_COMP = [{
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
		
		_object = createVehicle ["I_HMG_01_high_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];
	GUER_TOWN_GL_COMP = [{
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
		
		_object = createVehicle ["I_GMG_01_high_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];
	GUER_TOWN_AT_COMP = [{
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
		
		_object = createVehicle ["I_static_AT_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];	
	GUER_TOWN_SPG_COMP = GUER_TOWN_AT_COMP; //fallback for vanilla
	GUER_TOWN_DSHKM_COMP = GUER_TOWN_MG_COMP; //fallback for vanilla
	GUER_TOWN_MG50_COMP = GUER_TOWN_MG_COMP; //fallback for vanilla
};
//--Load Heli Units
if (CTI_HELI_ADDON > 0) then {

};
//--- Load Marksmen Units
if (CTI_MARKSMEN_ADDON > 0) then {

};
//--- Load APEX Units
if (CTI_APEX_ADDON > 0) then {

};
//--- Load JETS Units
if (CTI_JETS_ADDON > 0) then {

};
//--- Load Laws Of War Units
if (CTI_LAWSOFWAR_ADDON > 0) then {

};
//--- Load TANKS Units
if (CTI_TANKS_ADDON > 0) then {

};
//--- Load GLOBAL MOBILIZATION Mod
if (CTI_GLOBAL_MOBILIZATION_ADDON > 0) then {

};
//--- Load CONTACT Mod
if (CTI_CONTACT_ADDON > 0) then {

};
//--- Load CUP Units
if (CTI_CUP_WEAPONS_ADDON > 0) then {
	GUER_TOWN_SPG = "CUP_I_SPG9_TK_GUE";
	GUER_TOWN_ZSU = "CUP_I_ZU23_TK_GUE";
	GUER_TOWN_MOR = "CUP_I_2b14_82mm_TK_GUE";
	GUER_TOWN_DSHKM = "CUP_I_DSHKM_TK_GUE";
	GUER_TOWN_AGS = "CUP_I_AGS_TK_GUE";
	GUER_TOWN_CRAM = "CUP_I_ZU23_TK_GUE";
	GUER_TOWN_MK29 = "CUP_I_ZU23_TK_GUE";
	GUER_TOWN_MK49 = "CUP_I_ZU23_TK_GUE";
	GUER_TOWN_MG50 = "CUP_I_M2StaticMG_RACS";
	GUER_TOWN_MG50 = [{
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
	GUER_TOWN_DSHKM = [{
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
	GUER_TOWN_SPG = [{
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
		
		_object = createVehicle ["CUP_I_SPG9_TK_GUE", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}];
};
//--- Load RHS Units
if (CTI_RHS_AFRF_ADDON > 0) then {

};
if (CTI_RHS_USAF_ADDON > 0) then {

};
//--- Load RHS Loadout Ammo
if (CTI_RHS_AFRF_ADDON > 0) then {

};
//--- OFPS Units
if (CTI_OFPS_UNITS_ADDON > 0) then {

};
//--- OFPS RHS Units
if (CTI_OFPS_RHS_ADDON > 0) then {

};
//--- OFPS CUP Units
if (CTI_OFPS_CUP_ADDON > 0) then {
	GUER_TOWN_D30 = "OFPS_I_D30_GND";
};
//--- SFP Units
if (CTI_SFP_ADDON > 0) then {
	GUER_TOWN_COAST = "sfp_75mm_m57";	
};
//--- OFPS SFP Units
if (CTI_OFPS_SFP_ADDON > 0) then {

};
//--- 2035 Russia
if (CTI_RUSSIA_2035_ADDON > 0 ) then {

};
//--- HAFM UNITS
if (CTI_HAFM_ADDON > 0) then {
	GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_BUYAN_I";
};
//--- HAFM SUBS UNITS
if (CTI_HAFM_SUBS_ADDON > 0) then {

};
//--- OFPS HAFM UNITS
if (CTI_OFPS_HAFM_ADDON > 0) then {
	GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_I";
	GUER_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_I";
};
//--- Unsung
if (CTI_UNSUNG_ADDON > 0 ) then {

};
//--- IFA3
if (CTI_IFA3_ADDON > 0 ) then {

};

//--------------------------------------------------------------------------------------------
//--- VANILLA - AAF TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 0) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
		//--- Infantry
		GUER_SOLDIER = "I_soldier_F";
		GUER_SOLDIER_AA = "I_Soldier_AA_F";
		GUER_SOLDIER_AR = "I_Soldier_AR_F";
		GUER_SOLDIER_AT = "I_Soldier_LAT_F";
		GUER_SOLDIER_CREW = "I_crew_F";
		GUER_SOLDIER_LAT = "I_Soldier_LAT2_F";
		GUER_SOLDIER_HAT = "I_Soldier_AT_F";
		GUER_SOLDIER_ENGINEER = "I_engineer_F";
		GUER_SOLDIER_EXP = "I_Soldier_exp_F";
		GUER_SOLDIER_GL = "I_Soldier_GL_F";
		GUER_SOLDIER_MEDIC = "I_medic_F";
		GUER_SOLDIER_MG = "I_Soldier_AR_F";
		GUER_SOLDIER_PILOT = "I_pilot_F";
		GUER_SOLDIER_SNIPER = "I_Sniper_F";
		GUER_SOLDIER_MARKSMAN = "I_Soldier_M_F";
		GUER_SOLDIER_TEAMLEADER = "I_Soldier_TL_F";
		GUER_SOLDIER_SQUADLEADER = "I_Soldier_SL_F";

		//--- Naval Infantry
		GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "I_G_Offroad_01_armed_F";
		GUER_VEHICLE_LIGHT2 = "I_G_Offroad_01_AT_F";
		GUER_VEHICLE_LIGHT3 = "I_MRAP_03_hmg_F";
		GUER_VEHICLE_LIGHT4 = "I_LT_01_AT_F";
		GUER_VEHICLE_LIGHT5 = "I_MRAP_03_gmg_F";
		GUER_VEHICLE_LIGHT6 = "I_MRAP_03_gmg_F";
		GUER_VEHICLE_LIGHT7 = "I_LT_01_cannon_F";
		//--- APCs
		GUER_VEHICLE_APC1 = "I_APC_Wheeled_03_cannon_F";
		GUER_VEHICLE_APC2 = "I_APC_tracked_03_cannon_F";
		GUER_VEHICLE_APC3 = "I_APC_tracked_03_cannon_F";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "I_MBT_03_cannon_F";	
		GUER_VEHICLE_ARMORED2 = "I_MBT_03_cannon_F";
		GUER_VEHICLE_ARMORED3 = "I_MBT_03_cannon_F";
		//--- AA Vehicles
		//GUER_VEHICLE_AA1 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA2 = "I_LT_01_AA_F";
		//GUER_VEHICLE_AA3 = "CUP_I_ZSU23_AAF";
		//--- Air
		GUER_AIR_HELI1 = "I_Heli_light_03_dynamicLoadout_F";
		//GUER_AIR_HELI2 = "CUP_I_AH1Z_Dynamic_AAF";
		GUER_AIR_AA = "I_Plane_Fighter_03_AA_F";
		GUER_AIR_CAS = "I_Plane_Fighter_03_dynamicLoadout_F";
		//--- Boats
		GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		GUER_NAVAL_ASSAULT_BOAT2 = "HAFM_CB90";
		GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "HAFM_GunBoat";
		GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_GunBoat";
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "HAFM_GunBoat";		
		GUER_NAVAL_SUBMARINE = "HAFM_GunBoat";
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
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_LR_SF_HMG_AAF";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA3 = "CUP_I_ZSU23_AAF";
		//--- Air
		GUER_AIR_HELI2 = "CUP_I_AH1Z_Dynamic_AAF";	
		//Ships
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "CUP_I_Frigate_AAF";
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
//--- VANILLA - FIA TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 1) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
		//--- Infantry
		GUER_SOLDIER = "I_G_Soldier_F";
		GUER_SOLDIER_AA = "I_Soldier_AA_F";
		GUER_SOLDIER_AR = "I_G_Soldier_AR_F";
		GUER_SOLDIER_AT = "I_Soldier_LAT_F";
		GUER_SOLDIER_CREW = "I_crew_F";
		GUER_SOLDIER_LAT = "I_G_Soldier_LAT2_F";
		GUER_SOLDIER_HAT = "I_Soldier_LAT_F";
		GUER_SOLDIER_ENGINEER = "I_G_engineer_F";
		GUER_SOLDIER_EXP = "I_G_Soldier_exp_F";
		GUER_SOLDIER_GL = "I_G_Soldier_GL_F";
		GUER_SOLDIER_MEDIC = "I_G_medic_F";
		GUER_SOLDIER_MG = "I_G_Soldier_AR_F";
		GUER_SOLDIER_PILOT = "I_G_officer_F";
		GUER_SOLDIER_SNIPER = "I_G_Soldier_M_F";
		GUER_SOLDIER_MARKSMAN = "I_G_Soldier_M_F";
		GUER_SOLDIER_TEAMLEADER = "I_G_Soldier_TL_F";
		GUER_SOLDIER_SQUADLEADER = "I_G_Soldier_SL_F";
		//--- Naval Infantry
		GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "I_G_Offroad_01_armed_F";
		GUER_VEHICLE_LIGHT2 = "I_G_Offroad_01_AT_F";
		GUER_VEHICLE_LIGHT3 = "I_MRAP_03_hmg_F";
		GUER_VEHICLE_LIGHT4 = "I_MRAP_03_gmg_F";
		GUER_VEHICLE_LIGHT5 = "I_MRAP_03_gmg_F";
		GUER_VEHICLE_LIGHT6 = "I_MRAP_03_gmg_F";
		GUER_VEHICLE_LIGHT7 = "I_MRAP_03_gmg_F";
		//--- APCs
		GUER_VEHICLE_APC1 = "I_APC_Wheeled_03_cannon_F";
		GUER_VEHICLE_APC2 = "I_APC_tracked_03_cannon_F";
		GUER_VEHICLE_APC3 = "I_APC_tracked_03_cannon_F";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "I_APC_tracked_03_cannon_F";	
		GUER_VEHICLE_ARMORED2 = "I_MBT_03_cannon_F";
		GUER_VEHICLE_ARMORED3 = "I_MBT_03_cannon_F";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "I_LT_01_AA_F";
		GUER_VEHICLE_AA2 = "I_LT_01_AA_F";
		GUER_VEHICLE_AA3 = "I_LT_01_AA_F";
		//--- Air
		GUER_AIR_HELI1 = "I_Heli_light_dynamicLoadout_F";
		//GUER_AIR_HELI2 = "CUP_I_Wildcat_Green_AAF";
		GUER_AIR_AA = "I_Plane_Fighter_03_AA_F";
		GUER_AIR_CAS = "I_Plane_Fighter_03_dynamicLoadout_F";
		//--- Boats
		GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		GUER_NAVAL_ASSAULT_BOAT2 = "HAFM_CB90";
		GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "HAFM_GunBoat";
		GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_GunBoat";
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "HAFM_GunBoat";	
		GUER_NAVAL_SUBMARINE = "HAFM_GunBoat";	
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
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA3 = "CUP_I_M163_AAF";
		//--- Air
		GUER_AIR_HELI2 = "CUP_I_Wildcat_Green_AAF";
		//Ships
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "CUP_I_Frigate_AAF";
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
//--- Syndikat TOWN OCCUPATION - Tanoa Forces
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 2) then { 
	//--Load Vanilla
	if (CTI_VANILLA_ADDON > 0) then {
		//-- Only add vanilla faction specific overrides as neeeded here
		//--- Infantry
		GUER_SOLDIER = "I_C_Soldier_Para_1_F";
		GUER_SOLDIER_AR = "I_C_Soldier_Bandit_3_F";
		GUER_SOLDIER_LAT = "I_C_Soldier_Bandit_2_F";
		GUER_SOLDIER_GL = "I_C_Soldier_Para_6_F";
		GUER_SOLDIER_MEDIC = "I_C_Soldier_Para_3_F";
		GUER_SOLDIER_AA = "I_C_Soldier_Bandit_5_F";
		GUER_SOLDIER_AT = "I_C_Soldier_Para_5_F";
		GUER_SOLDIER_CREW = "I_crew_F";
		GUER_SOLDIER_HAT = "I_C_Soldier_Para_5_F";
		GUER_SOLDIER_ENGINEER = "I_C_Soldier_Bandit_8_F";
		GUER_SOLDIER_EXP = "I_C_Soldier_Para_8_F";
		GUER_SOLDIER_MG = "I_C_Soldier_Para_4_F";
		GUER_SOLDIER_PILOT = "I_C_Pilot_F";
		GUER_SOLDIER_SNIPER = "I_C_Soldier_Para_1_F";
		GUER_SOLDIER_MARKSMAN = "I_C_Soldier_Para_2_F";
		GUER_SOLDIER_TEAMLEADER = "I_C_Soldier_Bandit_4_F";
		GUER_SOLDIER_SQUADLEADER = "I_C_Soldier_Para_2_F";
		//--- Naval Infantry
		GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_MTLB_pk_SYNDIKAT";
		GUER_VEHICLE_LIGHT2 = "I_C_Offroad_02_AT_F";
		GUER_VEHICLE_LIGHT3 = "I_C_Offroad_02_LMG_F";
		GUER_VEHICLE_LIGHT4 = "I_C_Offroad_02_AT_F";
		GUER_VEHICLE_LIGHT5 = "CUP_I_MTLB_pk_SYNDIKAT";
		GUER_VEHICLE_LIGHT6 = "I_MRAP_03_gmg_F";
		GUER_VEHICLE_LIGHT7 = "I_MRAP_03_gmg_F";
		//--- APCs
		GUER_VEHICLE_APC1 = "I_APC_Wheeled_03_cannon_F";
		GUER_VEHICLE_APC2 = "I_APC_tracked_03_cannon_F";
		GUER_VEHICLE_APC3 = "I_APC_tracked_03_cannon_F";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "I_APC_tracked_03_cannon_F";	
		GUER_VEHICLE_ARMORED2 = "I_MBT_03_cannon_F";
		GUER_VEHICLE_ARMORED3 = "I_MBT_03_cannon_F";
		//--- AA Vehicles
		//GUER_VEHICLE_AA1 = "CUP_I_M163_AAF";
		//GUER_VEHICLE_AA2 = "CUP_I_M163_AAF";
		//GUER_VEHICLE_AA3 = "CUP_I_M163_AAF";
		//--- Air
		GUER_AIR_HELI1 = "I_Heli_light_dynamicLoadout_F";
		//GUER_AIR_HELI2 = "CUP_I_Wildcat_Green_AAF";
		GUER_AIR_AA = "I_Plane_Fighter_03_AA_F";
		//GUER_AIR_CAS = "CUP_I_L39_AAF";
		//--- Boats
		//GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "HAFM_GunBoat";
		//GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_GunBoat";
		//GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "HAFM_GunBoat";		
		//GUER_NAVAL_SUBMARINE = "I_Boat_Armed_01_minigun_F";
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
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA2 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA3 = "CUP_I_M163_AAF";
		//--- Air
		GUER_AIR_HELI2 = "CUP_I_Wildcat_Green_AAF";
		GUER_AIR_CAS = "CUP_I_L39_AAF";
		//Ships
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "CUP_I_Frigate_AAF";
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
//--- CUP - ION PMC TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 3) then { 
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
		GUER_SOLDIER = "CUP_I_PMC_Soldier_M4A3";
		GUER_SOLDIER_AA = "CUP_I_PMC_Soldier_AA";
		GUER_SOLDIER_AR = "CUP_I_PMC_Soldier_MG";
		GUER_SOLDIER_AT = "CUP_I_PMC_Soldier_AT";
		GUER_SOLDIER_CREW = "CUP_I_PMC_Crew";
		GUER_SOLDIER_LAT = "CUP_I_PMC_Soldier_AT";
		GUER_SOLDIER_HAT = "CUP_I_PMC_Soldier_AT";
		GUER_SOLDIER_ENGINEER = "CUP_I_PMC_Engineer";
		GUER_SOLDIER_EXP = "CUP_I_PMC_Engineer";
		GUER_SOLDIER_GL = "CUP_I_PMC_Soldier_GL";
		GUER_SOLDIER_MEDIC = "CUP_I_PMC_Medic";
		GUER_SOLDIER_MG = "CUP_I_PMC_Soldier_MG_PKM";
		GUER_SOLDIER_PILOT = "CUP_I_PMC_Pilot";
		GUER_SOLDIER_SNIPER = "CUP_I_PMC_Sniper_KSVK";
		GUER_SOLDIER_MARKSMAN = "CUP_I_PMC_Sniper";
		GUER_SOLDIER_TEAMLEADER = "CUP_I_PMC_Soldier_TL";
		GUER_SOLDIER_SQUADLEADER = "CUP_I_PMC_Soldier_TL";
		//--- Naval Infantry
		//GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		//GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_SUV_Armored_ION";
		GUER_VEHICLE_LIGHT2 = "CUP_I_MATV_HMG_ION";
		GUER_VEHICLE_LIGHT3 = "CUP_I_BTR80_ION";
		GUER_VEHICLE_LIGHT4 = "CUP_I_FENNEK_HMG_ION";
		GUER_VEHICLE_LIGHT5 = "CUP_I_4WD_AT_ION";
		GUER_VEHICLE_LIGHT6 = "CUP_I_MATV_GMG_ION";
		GUER_VEHICLE_LIGHT7 = "CUP_I_LSV_02_AT_ION";
		//--- APCs
		GUER_VEHICLE_APC1 = "CUP_I_BTR80A_ION";
		GUER_VEHICLE_APC2 = "CUP_I_BTR80A_ION";
		GUER_VEHICLE_APC3 = "CUP_I_BTR80A_ION";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "CUP_I_BTR80A_ION";	
		GUER_VEHICLE_ARMORED2 = "CUP_I_T72_NAPA";
		GUER_VEHICLE_ARMORED3 = "CUP_I_T72_NAPA";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_Ural_ZU23_NAPA";
		GUER_VEHICLE_AA2 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA3 = "CUP_I_ZSU23_AAF";
		//--- Air
		GUER_AIR_HELI1 = "CUP_I_Ka60_GL_Bllk_ION";
		GUER_AIR_HELI2 = "CUP_I_Mi24_Mk4_ION";
		//GUER_AIR_AA = "";
		GUER_AIR_CAS = "CUP_I_SU34_AAF";
		//--- Boats
		//GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
		GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_I";
		GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_GunBoat";
			//Ships
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "HAFM_GunBoatF";
		GUER_NAVAL_SUBMARINE = "HAFM_GunBoat";
		
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
//--- CUP - NAPA Chernarus TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 4) then { 
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
		GUER_SOLDIER = "CUP_I_GUE_Soldier_AKM";
		GUER_SOLDIER_AA = "CUP_I_GUE_Soldier_AA";
		GUER_SOLDIER_AR = "CUP_I_GUE_Soldier_AR";
		GUER_SOLDIER_AT = "CUP_I_GUE_Soldier_AT";
		GUER_SOLDIER_CREW = "CUP_I_GUE_Crew";
		GUER_SOLDIER_LAT = "CUP_I_GUE_Soldier_AT";
		GUER_SOLDIER_HAT = "CUP_I_GUE_Soldier_AT";
		GUER_SOLDIER_ENGINEER = "CUP_I_GUE_Engineer";
		GUER_SOLDIER_EXP = "CUP_I_GUE_Saboteur";
		GUER_SOLDIER_GL = "CUP_I_GUE_Soldier_GL";
		GUER_SOLDIER_MEDIC = "CUP_I_GUE_Medic";
		GUER_SOLDIER_MG = "CUP_I_GUE_Soldier_MG";
		GUER_SOLDIER_PILOT = "CUP_I_GUE_Pilot";
		GUER_SOLDIER_SNIPER = "CUP_I_GUE_Sniper";
		GUER_SOLDIER_MARKSMAN = "CUP_I_GUE_Sniper";
		GUER_SOLDIER_TEAMLEADER = "CUP_I_GUE_Officer";
		GUER_SOLDIER_SQUADLEADER = "CUP_I_GUE_Commander";
		//--- Naval Infantry
		//GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		//GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_Datsun_PK_Random";
		GUER_VEHICLE_LIGHT2 = "CUP_I_LR_MG_AAF";
		GUER_VEHICLE_LIGHT3 = "CUP_I_BRDM2_NAPA";
		GUER_VEHICLE_LIGHT4 = "CUP_I_BRDM2_NAPA";
		GUER_VEHICLE_LIGHT5 = "CUP_I_MTLB_pk_NAPA";
		GUER_VEHICLE_LIGHT6 = "CUP_I_BRDM2_NAPA";
		GUER_VEHICLE_LIGHT7 = "CUP_I_BRDM2_ATGM_NAPA";
		//--- APCs
		GUER_VEHICLE_APC1 = "CUP_I_BMP2_NAPA";
		GUER_VEHICLE_APC2 = "CUP_I_BMP2_NAPA";
		GUER_VEHICLE_APC3 = "CUP_I_BMP2_NAPA";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "CUP_I_T34_NAPA";	
		GUER_VEHICLE_ARMORED2 = "CUP_I_T55_NAPA";
		GUER_VEHICLE_ARMORED3 = "CUP_I_T72_NAPA";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_Datsun_AA_Random";
		GUER_VEHICLE_AA2 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA3 = "CUP_I_ZSU23_AAF";
		//--- Air
		GUER_AIR_HELI1 = "CUP_I_Ka60_GL_Digi_AAF";
		GUER_AIR_HELI2 = "CUP_I_Mi24_D_Dynamic_AAF";
		//GUER_AIR_AA = "";
		GUER_AIR_CAS = "CUP_O_Su25_Dyn_RU";
		//--- Boats
		GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
		GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "HAFM_CB90";
		GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_CB90";
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_SUBMARINE = "I_Boat_Armed_01_minigun_F";
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
//--- CUP - NAPA Chernarus (2035) TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 9) then { 
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
		GUER_SOLDIER = "CUP_I_GUE_Soldier_AKM";
		GUER_SOLDIER_AA = "I_Soldier_AA_F";
		GUER_SOLDIER_AR = "CUP_I_GUE_Soldier_AR";
		GUER_SOLDIER_AT = "I_Soldier_LAT2_F";
		GUER_SOLDIER_CREW = "CUP_I_GUE_Crew";
		GUER_SOLDIER_LAT = "CUP_I_GUE_Soldier_AT";
		GUER_SOLDIER_HAT = "I_Soldier_AT_F";
		GUER_SOLDIER_ENGINEER = "CUP_I_GUE_Engineer";
		GUER_SOLDIER_EXP = "CUP_I_GUE_Saboteur";
		GUER_SOLDIER_GL = "CUP_I_GUE_Soldier_GL";
		GUER_SOLDIER_MEDIC = "CUP_I_GUE_Medic";
		GUER_SOLDIER_MG = "CUP_I_GUE_Soldier_MG";
		GUER_SOLDIER_PILOT = "CUP_I_GUE_Pilot";
		GUER_SOLDIER_SNIPER = "CUP_I_GUE_Sniper";
		GUER_SOLDIER_MARKSMAN = "CUP_I_GUE_Sniper";
		GUER_SOLDIER_TEAMLEADER = "I_Soldier_TL_F";
		GUER_SOLDIER_SQUADLEADER = "CUP_I_GUE_Commander";
		//--- Naval Infantry
		//GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		//GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_LR_MG_AAF";
		GUER_VEHICLE_LIGHT2 = "I_MRAP_03_hmg_F";
		GUER_VEHICLE_LIGHT3 = "I_MRAP_03_gmg_F";
		GUER_VEHICLE_LIGHT4 = "I_LT_01_cannon_F";
		GUER_VEHICLE_LIGHT5 = "I_LT_01_cannon_F";
		GUER_VEHICLE_LIGHT6 = "I_LT_01_AT_F";
		GUER_VEHICLE_LIGHT7 = "I_LT_01_AT_F";
		//--- APCs
		GUER_VEHICLE_APC1 = "CUP_I_BMP2_NAPA";
		GUER_VEHICLE_APC2 = "I_APC_tracked_03_cannon_F";
		GUER_VEHICLE_APC3 = "I_APC_tracked_03_cannon_F";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "CUP_I_T72_NAPA";	
		GUER_VEHICLE_ARMORED2 = "I_MBT_03_cannon_F";
		GUER_VEHICLE_ARMORED3 = "I_MBT_03_cannon_F";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_ZSU23_AAF";
		GUER_VEHICLE_AA2 = "I_LT_01_AA_F";
		GUER_VEHICLE_AA3 = "CUP_I_M163_AAF";
		//--- Air
		GUER_AIR_HELI1 = "CUP_I_Ka60_GL_Digi_AAF";
		GUER_AIR_HELI2 = "CUP_I_Mi24_D_Dynamic_AAF";
		//GUER_AIR_AA = "";
		GUER_AIR_CAS = "CUP_O_Su25_Dyn_RU";
		//--- Boats
		//GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_I";
		//GUER_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_I";
		//GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_GUNBOAT_I";
		//GUER_NAVAL_SUBMARINE = "OFPS_GUNBOAT_I";
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
//--- CUP - Royal Army Corp Of Sahrani TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 5) then { 
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
		GUER_SOLDIER = "CUP_I_RACS_Soldier_wdl";
		GUER_SOLDIER_AA = "CUP_I_RACS_Soldier_AA_wdl";
		GUER_SOLDIER_AR = "CUP_I_RACS_MMG_wdl";
		GUER_SOLDIER_AT = "CUP_I_RACS_Soldier_MAT_wdl";
		GUER_SOLDIER_CREW = "CUP_I_RACS_Crew";
		GUER_SOLDIER_LAT = "CUP_I_RACS_Soldier_LAT_wdl";
		GUER_SOLDIER_HAT = "CUP_I_RACS_Soldier_HAT_wdl";
		GUER_SOLDIER_ENGINEER = "CUP_I_RACS_Engineer_wdl";
		GUER_SOLDIER_EXP = "CUP_I_RACS_Engineer_wdl";
		GUER_SOLDIER_GL = "CUP_I_RACS_GL_wdl";
		GUER_SOLDIER_MEDIC = "CUP_I_RACS_Medic_wdl";
		GUER_SOLDIER_MG = "CUP_I_RACS_MMG_wdl";
		GUER_SOLDIER_PILOT = "CUP_I_RACS_Pilot";
		GUER_SOLDIER_SNIPER = "CUP_I_RACS_Sniper_wdl";
		GUER_SOLDIER_MARKSMAN = "CUP_I_RACS_M_wdl";
		GUER_SOLDIER_TEAMLEADER = "CUP_I_RACS_Officer_wdl";
		GUER_SOLDIER_SQUADLEADER = "CUP_I_RACS_SL_wdl";
		//--- Naval Infantry
		//GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		//GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_LR_MG_RACS";
		GUER_VEHICLE_LIGHT2 = "CUP_I_M113_RACS";
		GUER_VEHICLE_LIGHT3 = "CUP_I_M113_RACS";
		GUER_VEHICLE_LIGHT4 = "CUP_I_AAV_RACS";
		GUER_VEHICLE_LIGHT5 = "CUP_I_AAV_RACS";
		GUER_VEHICLE_LIGHT6 = "CUP_I_LAV25_RACS";
		GUER_VEHICLE_LIGHT7 = "CUP_I_LAV25M240_RACS";
		//--- APCs
		GUER_VEHICLE_APC1 = "CUP_I_LAV25M240_RACS";
		GUER_VEHICLE_APC2 = "CUP_I_LAV25M240_RACS";
    	GUER_VEHICLE_APC3 = "CUP_I_LAV25M240_RACS";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "CUP_I_M60A3_RACS";	
		GUER_VEHICLE_ARMORED2 = "CUP_I_M60A3_TTS_RACS";
		GUER_VEHICLE_ARMORED3 = "CUP_I_T72_RACS";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_M163_RACS";
		GUER_VEHICLE_AA2 = "CUP_I_M163_RACS";
		GUER_VEHICLE_AA3 = "CUP_I_M163_RACS";
		//--- Air
		GUER_AIR_HELI1 = "CUP_I_UH60L_RACS";
		GUER_AIR_HELI2 = "CUP_I_AH6J_RACS";
		//GUER_AIR_AA = "";
		GUER_AIR_CAS = "CUP_I_AV8B_DYN_AAF"; 
		//--- Boats
		GUER_NAVAL_ASSAULT_BOAT1 = "CUP_I_RHIB2Turret_RACS";
		GUER_NAVAL_ASSAULT_BOAT2 = "CUP_I_RHIB2Turret_RACS";
		GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "HAFM_CB90";
		GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_GunBoat";
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "CUP_I_Frigate_RACS";
		GUER_NAVAL_SUBMARINE = "HAFM_GunBoat";
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
//--- CUP - TAKISTANI MILITARY TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 6) then { 
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
		GUER_SOLDIER = "CUP_I_TK_GUE_Soldier";
		GUER_SOLDIER_AA = "CUP_I_TK_GUE_Soldier_AA";
		GUER_SOLDIER_AR = "CUP_I_TK_GUE_Soldier_AR";
		GUER_SOLDIER_AT = "CUP_I_TK_GUE_Soldier_AT";
		GUER_SOLDIER_CREW = "CUP_I_TK_GUE_Soldier_AK_47S";
		GUER_SOLDIER_LAT = "CUP_I_TK_GUE_Soldier_LAT";
		GUER_SOLDIER_HAT = "CUP_I_TK_GUE_Soldier_HAT";
		GUER_SOLDIER_ENGINEER = "CUP_I_TK_GUE_Mechanic";
		GUER_SOLDIER_EXP = "CUP_I_TK_GUE_Demo";
		GUER_SOLDIER_GL = "CUP_I_TK_GUE_Soldier_GL";
		GUER_SOLDIER_MEDIC = "CUP_I_TK_GUE_Guerilla_Medic";
		GUER_SOLDIER_MG = "CUP_I_TK_GUE_Soldier_MG";
		GUER_SOLDIER_PILOT = "CUP_I_TK_GUE_Soldier_AK_47S";
		GUER_SOLDIER_SNIPER = "CUP_I_TK_GUE_Sniper";
		GUER_SOLDIER_MARKSMAN = "CUP_I_TK_GUE_Guerilla_Enfield";
		GUER_SOLDIER_TEAMLEADER = "CUP_I_TK_GUE_Soldier_TL";
		GUER_SOLDIER_SQUADLEADER = "CUP_I_TK_GUE_Commander";
		//--- Naval Infantry
		//GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		//GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_Hilux_armored_DSHKM_TK";
		GUER_VEHICLE_LIGHT2 = "CUP_I_Hilux_armored_AGS30_TK";
		GUER_VEHICLE_LIGHT3 = "CUP_I_BRDM2_TK_Gue";
		GUER_VEHICLE_LIGHT4 = "CUP_I_BRDM2_TK_Gue";
		GUER_VEHICLE_LIGHT5 = "CUP_I_Hilux_armored_SPG9_TK";
		GUER_VEHICLE_LIGHT6 = "CUP_I_BRDM2_ATGM_TK_Gue";
		GUER_VEHICLE_LIGHT7 = "CUP_O_M113_TKA";
		//--- APCs
		GUER_VEHICLE_APC1 = "CUP_I_Hilux_armored_BMP1_TK";
		GUER_VEHICLE_APC2 = "CUP_I_BMP1_TK_GUE";
		GUER_VEHICLE_APC3 = "CUP_O_BMP2_TKA";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "CUP_I_T34_TK_GUE"; 
		GUER_VEHICLE_ARMORED2 = "CUP_I_T55_TK_GUE";
		GUER_VEHICLE_ARMORED3 = "CUP_O_T72_TKA";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_Hilux_armored_zu23_TK";
		GUER_VEHICLE_AA2 = "CUP_I_Hilux_armored_igla_TK";
		GUER_VEHICLE_AA3 = "CUP_O_ZSU23_TK";
		//--- Air
		GUER_AIR_HELI1 = "CUP_I_UH1H_TK_GUE";
		GUER_AIR_HELI2 = "CUP_O_Mi24_D_TK";
		//GUER_AIR_AA = "bwi_a3_at6b_4";
		//GUER_AIR_CAS = "bwi_a3_at6b_2";
		//--- Boats
		//GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_I";
		//GUER_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_I";
		//GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_BUYAN_I";
		//GUER_NAVAL_SUBMARINE = "I_Boat_Armed_01_minigun_F";
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
		//--- Air
		GUER_AIR_AA = "bwi_a3_at6b_4";
		GUER_AIR_CAS = "bwi_a3_at6b_2";
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
//--- RHS GREF RESISTANCE
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 7) then { 
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
	if (CTI_RHS_GREF_ADDON > 0) then {
		//--- Infantry
		/*GUER_SOLDIER = "rhsgref_cdf_reg_rifleman";
		GUER_SOLDIER_AA = "rhsgref_cdf_reg_specialist_aa";
		GUER_SOLDIER_AR = "rhsgref_cdf_reg_machinegunner";
		GUER_SOLDIER_AT = "rhsgref_cdf_reg_grenadier_rpg";
		GUER_SOLDIER_CREW = "rhsgref_cdf_reg_crew";
		GUER_SOLDIER_LAT = "rhsgref_cdf_reg_grenadier_rpg";
		GUER_SOLDIER_HAT = "rhsgref_cdf_reg_grenadier_rpg";
		GUER_SOLDIER_ENGINEER = "rhsgref_cdf_reg_engineer";
		GUER_SOLDIER_EXP = "rhsgref_cdf_reg_engineer";
		GUER_SOLDIER_GL = "rhsgref_cdf_reg_grenadier";
		GUER_SOLDIER_MEDIC = "rhsgref_cdf_reg_medic";
		GUER_SOLDIER_MG = "rhsgref_cdf_reg_machinegunner";
		GUER_SOLDIER_PILOT = "rhsgref_cdf_air_pilot";
		GUER_SOLDIER_SNIPER = "rhsgref_cdf_reg_marksman";
		GUER_SOLDIER_TEAMLEADER = "rhsgref_cdf_reg_squadleader";
		GUER_SOLDIER_SQUADLEADER = "rhsgref_cdf_reg_squadleader";*/
		GUER_SOLDIER = "rhsgref_nat_hunter";
		GUER_SOLDIER_AA = "rhsgref_nat_specialist_aa";
		GUER_SOLDIER_AR = "rhsgref_nat_machinegunner";
		GUER_SOLDIER_AT = "rhsgref_nat_grenadier_rpg";
		GUER_SOLDIER_CREW = "rhsgref_nat_crew";
		GUER_SOLDIER_LAT = "rhsgref_nat_grenadier_rpg";
		GUER_SOLDIER_HAT = "rhsgref_nat_grenadier_rpg";
		GUER_SOLDIER_ENGINEER = "rhsgref_nat_saboteur";
		GUER_SOLDIER_EXP = "rhsgref_nat_saboteur";
		GUER_SOLDIER_GL = "rhsgref_nat_grenadier";
		GUER_SOLDIER_MEDIC = "rhsgref_nat_medic";
		GUER_SOLDIER_MG = "rhsgref_nat_machinegunner";
		GUER_SOLDIER_PILOT = "rhsgref_cdf_air_pilot";
		GUER_SOLDIER_SNIPER = "rhsgref_nat_scout";
		GUER_SOLDIER_MARKSMAN = "rhsgref_nat_scout";
		GUER_SOLDIER_TEAMLEADER = "rhsgref_nat_commander";
		GUER_SOLDIER_SQUADLEADER = "rhsgref_nat_commander";
		//--- Naval Infantry
		//GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		//GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "rhsgref_nat_uaz_dshkm";
		GUER_VEHICLE_LIGHT2 = "rhsgref_nat_uaz_ags";
		GUER_VEHICLE_LIGHT3 = "rhsgref_nat_uaz_spg9";
		GUER_VEHICLE_LIGHT4 = "rhsgref_ins_g_btr60";
		GUER_VEHICLE_LIGHT5 = "rhsgref_BRDM2_ins_g";
		GUER_VEHICLE_LIGHT6 = "rhsgref_ins_g_ural_Zu23";
		GUER_VEHICLE_LIGHT7 = "rhsgref_ins_g_btr70";
		//--- APCs
		GUER_VEHICLE_APC1 = "rhsgref_ins_g_bmd1";
		GUER_VEHICLE_APC2 = "rhsgref_ins_g_bmd1p";
		GUER_VEHICLE_APC3 = "rhsgref_ins_g_bmd2";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "rhsgref_ins_g_t72ba";	
		GUER_VEHICLE_ARMORED2 = "rhsgref_ins_g_t72ba";
		GUER_VEHICLE_ARMORED3 = "rhsgref_ins_g_t72ba";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "rhsgref_ins_g_ural_Zu23";
		GUER_VEHICLE_AA2 = "rhsgref_ins_g_gaz66_zu23";
		GUER_VEHICLE_AA3 = "rhsgref_ins_g_zsu234";
		//--- Air
		GUER_AIR_HELI1 = "rhsgref_cdf_Mi24D";
		GUER_AIR_HELI2 = "rhsgref_cdf_reg_Mi17Sh_UPK";
		GUER_AIR_AA = "rhs_l159_CDF_CAP";
		GUER_AIR_CAS = "rhsgref_cdf_su25";
		//--- Boats
		//GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "OFPS_CB90_I";
		//GUER_NAVAL_LARGE_ASSAULT_BOAT = "OFPS_GUNBOAT_I";
		//GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "OFPS_HAFM_BUYAN_I";
		//GUER_NAVAL_SUBMARINE = "HAFM_214_IND";
		
		
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
//--- CUP - ION PMC (ARCTIC) TOWN OCCUPATION
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 8) then { 
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
		GUER_SOLDIER = "CUP_I_PMC_Winter_Soldier";
		GUER_SOLDIER_AA = "CUP_I_PMC_Winter_Soldier_AA";
		GUER_SOLDIER_AR = "CUP_I_PMC_Winter_Soldier_M4A3";
		GUER_SOLDIER_AT = "CUP_I_PMC_Winter_Soldier_AT";
		GUER_SOLDIER_CREW = "CUP_I_PMC_Winter_Crew";
		GUER_SOLDIER_LAT = "CUP_I_PMC_Winter_Soldier_AT";
		GUER_SOLDIER_HAT = "CUP_I_PMC_Winter_Soldier_AT";
		GUER_SOLDIER_ENGINEER = "CUP_I_PMC_Winter_Engineer";
		GUER_SOLDIER_EXP = "CUP_I_PMC_Winter_Engineer";
		GUER_SOLDIER_GL = "CUP_I_PMC_Winter_Soldier_GL";
		GUER_SOLDIER_MEDIC = "CUP_I_PMC_Winter_Medic";
		GUER_SOLDIER_MG = "CUP_I_PMC_Winter_Soldier_MG_PKM";
		GUER_SOLDIER_PILOT = "CUP_I_PMC_Winter_Pilot";
		GUER_SOLDIER_SNIPER = "CUP_I_PMC_Winter_Sniper_KSVK";
		GUER_SOLDIER_MARKSMAN = "CUP_I_PMC_Winter_Sniper";
		GUER_SOLDIER_TEAMLEADER = "CUP_I_PMC_Winter_Soldier_TL";
		GUER_SOLDIER_SQUADLEADER = "CUP_I_PMC_Winter_Soldier_TL";
		//--- Naval Infantry
		//GUER_SOLDIER_NAVAL_INFANTRY = "I_diver_F";
		//GUER_SOLDIER_NAVAL_SQUADLEADER = "I_diver_TL_F";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "CUP_I_SUV_Armored_ION";
		GUER_VEHICLE_LIGHT2 = "CUP_I_RG31_M2_W_GC_ION";
		GUER_VEHICLE_LIGHT3 = "CUP_I_BTR80_ION";
		GUER_VEHICLE_LIGHT4 = "CUP_I_FENNEK_HMG_ION";
		GUER_VEHICLE_LIGHT5 = "CUP_I_4WD_AT_ION";
		GUER_VEHICLE_LIGHT6 = "CUP_I_MATV_GMG_ION";
		GUER_VEHICLE_LIGHT7 = "CUP_I_LSV_02_AT_ION";
		//--- APCs
		GUER_VEHICLE_APC1 = "CUP_I_BTR80A_ION";
		GUER_VEHICLE_APC2 = "CUP_I_BTR80A_ION";
		GUER_VEHICLE_APC3 = "CUP_I_BTR80A_ION";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "CUP_I_T55_NAPA";	
		GUER_VEHICLE_ARMORED2 = "CUP_I_T72_NAPA";
		GUER_VEHICLE_ARMORED3 = "CUP_I_T72_NAPA";
		//--- AA Vehicles
		GUER_VEHICLE_AA1 = "CUP_I_Ural_ZU23_NAPA";
		GUER_VEHICLE_AA2 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA3 = "CUP_I_ZSU23_AAF";
		//--- Air
		GUER_AIR_HELI1 = "CUP_I_Ka60_GL_Bllk_ION";
		GUER_AIR_HELI2 = "CUP_I_Mi24_Mk4_ION";
		//GUER_AIR_AA = "";
		GUER_AIR_CAS = "CUP_I_SU34_AAF";
		//--- Boats
		//GUER_NAVAL_ASSAULT_BOAT1 = "I_Boat_Armed_01_minigun_F";
		//GUER_NAVAL_ASSAULT_BOAT2 = "I_Boat_Armed_01_minigun_F";
		GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "HAFM_CB90";
		GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_GunBoat";
		GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "HAFM_GunBoat";
		//GUER_NAVAL_SUBMARINE = "I_Boat_Armed_01_minigun_F";
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
//--- IFA3 - Americans and British 
//--------------------------------------------------------------------------------------------
if (CTI_TOWNS_OCCUPATION_RESISTANCE isEqualTo 10) then { 
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

		GUER_SOLDIER = "LIB_UK_rifleman";
		GUER_SOLDIER_AA = "LIB_US_Corporal";
		GUER_SOLDIER_AR = "LIB_US_Mgunner";
		GUER_SOLDIER_AT = "LIB_UK_AT_soldier";
		GUER_SOLDIER_CREW = "LIB_US_Tank_Sergeant";
		GUER_SOLDIER_LAT = "LIB_US_AT_soldier";
		GUER_SOLDIER_HAT = "LIB_UK_AT_soldier";
		GUER_SOLDIER_ENGINEER = "LIB_UK_Engineer";
		GUER_SOLDIER_EXP = "LIB_US_Engineer";
		GUER_SOLDIER_GL = "LIB_US_Granadier";
		GUER_SOLDIER_MEDIC = "LIB_US_Engineer";
		GUER_SOLDIER_MG = "LIB_UK_LanceCorporal";
		GUER_SOLDIER_PILOT = "LIB_US_Pilot";
		GUER_SOLDIER_SNIPER = "LIB_UK_Sniper";
		GUER_SOLDIER_MARKSMAN = "LIB_US_Sniper";
		GUER_SOLDIER_TEAMLEADER = "LIB_UK_Officer";
		GUER_SOLDIER_SQUADLEADER = "LIB_US_SMGunner";

		//--- Naval Infantry
		GUER_SOLDIER_NAVAL_INFANTRY = "LIB_US_Rifleman";
		GUER_SOLDIER_NAVAL_SQUADLEADER = "LIB_US_Second_Lieutenant";
		//--- Light Vehicles
		GUER_VEHICLE_LIGHT1 = "LIB_US_Willys_MB";
		GUER_VEHICLE_LIGHT2 = "LIB_UK_Willys_MB_Hood";
		GUER_VEHICLE_LIGHT3 = "LIB_UK_Willys_MB_M1919";
		GUER_VEHICLE_LIGHT4 = "LIB_US_GMC_Open";
		GUER_VEHICLE_LIGHT5 = "LIB_US_Willys_MB_M1919";
		GUER_VEHICLE_LIGHT6 = "LIB_M8_Greyhound";
		GUER_VEHICLE_LIGHT7 = "LIB_UK_M3_Halftrack";
		//--- APCs
		//--- APCs
		GUER_VEHICLE_APC1 = "LIB_UniversalCarrier";
		GUER_VEHICLE_APC2 = "LIB_US_Scout_M3";
		GUER_VEHICLE_APC3 = "LIB_Crusader_Mk3";
		//--- Tanks
		GUER_VEHICLE_ARMORED1 = "LIB_UK_Italy_M4A3_75";	
		GUER_VEHICLE_ARMORED2 = "LIB_UK_DR_M4A3_75";
		GUER_VEHICLE_ARMORED3 = "LIB_M4A3_76";
		//--- AA Vehicles
		//GUER_VEHICLE_AA1 = "CUP_I_M163_AAF";
		GUER_VEHICLE_AA2 = "LIB_Crusader_Mk1AA";
		//GUER_VEHICLE_AA3 = "CUP_I_ZSU23_AAF";
		//--- Air
		//GUER_AIR_HELI1 = "I_Heli_light_03_dynamicLoadout_F";
		//GUER_AIR_HELI2 = "CUP_I_AH1Z_Dynamic_AAF";
		//GUER_AIR_AA = "I_Plane_Fighter_03_AA_F";
		//GUER_AIR_CAS = "I_Plane_Fighter_03_dynamicLoadout_F";
		//--- Boats
		GUER_NAVAL_ASSAULT_BOAT1 = "LIB_LCM3_Armed";
		//GUER_NAVAL_ASSAULT_BOAT2 = "HAFM_CB90";
		GUER_NAVAL_MEDIUM_ASSAULT_BOAT = "LIB_LCI";
		//GUER_NAVAL_LARGE_ASSAULT_BOAT = "HAFM_GunBoat";
		//GUER_NAVAL_CAPITAL_ASSAULT_BOAT = "HAFM_GunBoat";		
		//GUER_NAVAL_SUBMARINE = "HAFM_GunBoat";

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
GUER_TOWNS_STATICS_ALL = [GUER_TOWN_MG,GUER_TOWN_GL,GUER_TOWN_AT,GUER_TOWN_AA,GUER_TOWN_ZSU,GUER_TOWN_D30,GUER_TOWN_SPG,GUER_TOWN_DSHKM,GUER_TOWN_MG50,GUER_TOWN_AGS,GUER_TOWN_COAST];
GUER_TOWNS_STATICS_CORE = [GUER_TOWN_MG,GUER_TOWN_GL,GUER_TOWN_AT];
GUER_TOWNS_STATICS_COMPS = GUER_TOWN_MG_COMP + GUER_TOWN_GL_COMP + GUER_TOWN_AT_COMP + GUER_TOWN_SPG_COMP + GUER_TOWN_DSHKM_COMP + GUER_TOWN_MG50_COMP;
GUER_TOWNS_STATICS_INFANTRY = [GUER_TOWN_MG,GUER_TOWN_GL,GUER_TOWN_DSHKM,GUER_TOWN_MG50,GUER_TOWN_AGS];
GUER_TOWNS_STATICS_VEHICLE = [GUER_TOWN_AT,GUER_TOWN_D30,GUER_TOWN_SPG];
GUER_TOWNS_STATICS_AIR = [GUER_TOWN_AA,GUER_TOWN_ZSU];

//--- Infantry Squads
GUER_TOWNS_SQUAD_RIFLEMEN1 = [GUER_SOLDIER_SQUADLEADER, GUER_SOLDIER_AR, GUER_SOLDIER_MARKSMAN, GUER_SOLDIER_MARKSMAN, GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_RIFLEMEN2 = [GUER_SOLDIER_TEAMLEADER, GUER_SOLDIER_AR, GUER_SOLDIER_MG, GUER_SOLDIER_MARKSMAN, GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_RIFLEMEN3 = [GUER_SOLDIER_TEAMLEADER, GUER_SOLDIER_AR, GUER_SOLDIER_MG, GUER_SOLDIER_GL, GUER_SOLDIER_MARKSMAN,GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_SNIPER = [GUER_SOLDIER_SQUADLEADER, GUER_SOLDIER_SNIPER, GUER_SOLDIER_SNIPER, GUER_SOLDIER_SNIPER, GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_AT1 = [GUER_SOLDIER_SQUADLEADER, GUER_SOLDIER_LAT, GUER_SOLDIER_LAT, GUER_SOLDIER_LAT, GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_AT2 = [GUER_SOLDIER_TEAMLEADER, GUER_SOLDIER_AT, GUER_SOLDIER_AT, GUER_SOLDIER_AT, GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_AA = [GUER_SOLDIER_SQUADLEADER, GUER_SOLDIER_AA, GUER_SOLDIER_MEDIC];
//Urban
GUER_TOWNS_SQUAD_RIFLEMEN1_U = [GUER_SOLDIER_SQUADLEADER_U, GUER_SOLDIER_AR_U, GUER_SOLDIER_MARKSMAN_U, GUER_SOLDIER_U, GUER_SOLDIER_MEDIC_U];
GUER_TOWNS_SQUAD_RIFLEMEN2_U = [GUER_SOLDIER_SQUADLEADER_U, GUER_SOLDIER_AR_U, GUER_SOLDIER_MG_U, GUER_SOLDIER_EXP_U, GUER_SOLDIER_MEDIC_U];
GUER_TOWNS_SQUAD_RIFLEMEN3_U = [GUER_SOLDIER_SQUADLEADER_U, GUER_SOLDIER_AR_U, GUER_SOLDIER_MG_U, GUER_SOLDIER_GL_U, GUER_SOLDIER_MEDIC_U];
GUER_TOWNS_SQUAD_SNIPER_U = [GUER_SOLDIER_TEAMLEADER_U, GUER_SOLDIER_SNIPER_U, GUER_SOLDIER_SNIPER_U, GUER_SOLDIER_SNIPER_U, GUER_SOLDIER_MEDIC_U];
GUER_TOWNS_SQUAD_AT1_U = [GUER_SOLDIER_SQUADLEADER_U, GUER_SOLDIER_LAT_U, GUER_SOLDIER_LAT_U, GUER_SOLDIER_AT_U, GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_AT2_U = [GUER_SOLDIER_TEAMLEADER_U, GUER_SOLDIER_HAT_U, GUER_SOLDIER_HAT_U, GUER_SOLDIER_HAT_U, GUER_SOLDIER_MEDIC];
GUER_TOWNS_SQUAD_AA_U = [GUER_SOLDIER_TEAMLEADER_U, GUER_SOLDIER_AA_U, GUER_SOLDIER_MEDIC];
//Naval
GUER_TOWNS_SQUAD_NAVAL1 = [GUER_SOLDIER_NAVAL_SQUADLEADER, GUER_SOLDIER_NAVAL_INFANTRY, GUER_SOLDIER_NAVAL_INFANTRY, GUER_SOLDIER_NAVAL_INFANTRY, GUER_SOLDIER_NAVAL_INFANTRY];
GUER_TOWNS_SQUAD_NAVAL2 = [GUER_SOLDIER_NAVAL_SQUADLEADER, GUER_SOLDIER_NAVAL_INFANTRY, GUER_SOLDIER_NAVAL_INFANTRY, GUER_SOLDIER_HAT, GUER_SOLDIER_AA];
GUER_TOWNS_SQUAD_NAVAL3 = [GUER_SOLDIER_NAVAL_SQUADLEADER,  GUER_SOLDIER_HAT, GUER_SOLDIER_HAT, GUER_SOLDIER_AA, GUER_SOLDIER_AA];

//--- Vehicle Squads
GUER_TOWNS_SQUAD_LIGHT1 = [GUER_VEHICLE_LIGHT1];
GUER_TOWNS_SQUAD_LIGHT2 = [GUER_VEHICLE_LIGHT2];
GUER_TOWNS_SQUAD_LIGHT3 = [GUER_VEHICLE_LIGHT3];
GUER_TOWNS_SQUAD_LIGHT4 = [GUER_VEHICLE_LIGHT4];
GUER_TOWNS_SQUAD_LIGHT5 = [GUER_VEHICLE_LIGHT5];
GUER_TOWNS_SQUAD_LIGHT6 = [GUER_VEHICLE_LIGHT6];
GUER_TOWNS_SQUAD_LIGHT7 = [GUER_VEHICLE_LIGHT7];
GUER_TOWNS_SQUAD_APC1 = [GUER_VEHICLE_APC1];
GUER_TOWNS_SQUAD_APC2 = [GUER_VEHICLE_APC2];
GUER_TOWNS_SQUAD_APC3 = [GUER_VEHICLE_APC3];
GUER_TOWNS_SQUAD_ARMORED1 = [GUER_VEHICLE_ARMORED1];
GUER_TOWNS_SQUAD_ARMORED2 = [GUER_VEHICLE_ARMORED2];
GUER_TOWNS_SQUAD_ARMORED3 = [GUER_VEHICLE_ARMORED3];
GUER_TOWNS_SQUAD_VEHICLE_AA1 = [GUER_VEHICLE_AA1];
GUER_TOWNS_SQUAD_VEHICLE_AA2 = [GUER_VEHICLE_AA2];
GUER_TOWNS_SQUAD_VEHICLE_AA3 = [GUER_VEHICLE_AA3];
GUER_TOWNS_SQUAD_ASSAULT_BOAT1 = [GUER_NAVAL_ASSAULT_BOAT1];
GUER_TOWNS_SQUAD_ASSAULT_BOAT2 = [GUER_NAVAL_ASSAULT_BOAT2];
GUER_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT = [GUER_NAVAL_MEDIUM_ASSAULT_BOAT];
GUER_TOWNS_SQUAD_LARGE_ASSAULT_BOAT = [GUER_NAVAL_LARGE_ASSAULT_BOAT];
GUER_TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT = [GUER_NAVAL_CAPITAL_ASSAULT_BOAT];
GUER_TOWNS_SQUAD_SUBMARINE = [GUER_NAVAL_SUBMARINE];
//--- Mixed Squads
GUER_TOWNS_SQUAD_LIGHT1_MIXED = GUER_TOWNS_SQUAD_LIGHT1 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_LIGHT2_MIXED = GUER_TOWNS_SQUAD_LIGHT2 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_LIGHT3_MIXED = GUER_TOWNS_SQUAD_LIGHT3 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_LIGHT4_MIXED = GUER_TOWNS_SQUAD_LIGHT4 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_LIGHT5_MIXED = GUER_TOWNS_SQUAD_LIGHT5 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_LIGHT6_MIXED = GUER_TOWNS_SQUAD_LIGHT6 + GUER_TOWNS_SQUAD_AT2;
GUER_TOWNS_SQUAD_LIGHT7_MIXED = GUER_TOWNS_SQUAD_LIGHT7 + GUER_TOWNS_SQUAD_AT2;
GUER_TOWNS_SQUAD_APC1_MIXED = GUER_TOWNS_SQUAD_APC1 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_APC2_MIXED = GUER_TOWNS_SQUAD_APC2 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_APC3_MIXED = GUER_TOWNS_SQUAD_APC3 + GUER_TOWNS_SQUAD_AT2;
GUER_TOWNS_SQUAD_ARMORED1_MIXED = GUER_TOWNS_SQUAD_ARMORED1 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_ARMORED2_MIXED = GUER_TOWNS_SQUAD_ARMORED2 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_ARMORED3_MIXED = GUER_TOWNS_SQUAD_ARMORED3 + GUER_TOWNS_SQUAD_AT2;
GUER_TOWNS_SQUAD_VEHICLE_AA1_MIXED = GUER_TOWNS_SQUAD_VEHICLE_AA1 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_VEHICLE_AA2_MIXED = GUER_TOWNS_SQUAD_VEHICLE_AA2 + GUER_TOWNS_SQUAD_AT1;
GUER_TOWNS_SQUAD_VEHICLE_AA3_MIXED = GUER_TOWNS_SQUAD_VEHICLE_AA3 + GUER_TOWNS_SQUAD_AT2;
//--- Zombie Squads
//GUER_TOWNS_SQUAD_ZOMBIE1 = ["RyanZombieB_Soldier_02_fmedium"];
//GUER_TOWNS_SQUAD_ZOMBIE2 = ["RyanZombieB_Soldier_02_f"];
//GUER_TOWNS_SQUAD_ZOMBIE3 = ["RyanZombieboss15"];
GUER_TOWNS_SQUAD_ZOMBIE1 = ["Zombie_Villager_1_F"];
GUER_TOWNS_SQUAD_ZOMBIE2 = ["Zombie_Citizen_1_F"];
GUER_TOWNS_SQUAD_ZOMBIE3 = ["Zombie_Priest_1_F"];
};
