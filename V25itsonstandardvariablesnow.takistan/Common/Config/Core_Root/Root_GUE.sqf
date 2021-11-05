Private ["_side"];

_side = "GUER";

//--- Generic.
missionNamespace setVariable [Format["CTI_%1CREW", _side], 'CUP_I_TK_GUE_Mechanic'];
missionNamespace setVariable [Format["CTI_%1PILOT", _side], 'CUP_I_TK_GUE_Mechanic'];
missionNamespace setVariable [Format["CTI_%1SOLDIER", _side], 'CUP_I_TK_GUE_Soldier'];

//--- Flag texture.
missionNamespace setVariable [Format["CTI_%1FLAG", _side], '\ca\data\Flag_napa_co.paa'];

missionNamespace setVariable [Format["CTI_%1AMBULANCES", _side], ['CUP_I_BMP2_AMB_NAPA']];
missionNamespace setVariable [Format["CTI_%1REPAIRTRUCKS", _side], ['CUP_I_V3S_Repair_TKG']];

//--- Radio Announcers.
missionNamespace setVariable [Format ["CTI_%1_RadioAnnouncers", _side], ['WFHQ_CZ0','WFHQ_CZ1','WFHQ_CZ2']];
missionNamespace setVariable [Format ["CTI_%1_RadioAnnouncers_Config", _side], 'RadioProtocolCZ'];

//--- Paratroopers.
missionNamespace setVariable [Format["CTI_%1PARACHUTELEVEL1", _side],['rhsgref_nat_rifleman_aks74','rhsgref_nat_grenadier_rpg','rhsgref_nat_rifleman','rhsgref_nat_rifleman_akms','CUP_I_GUE_Soldier_AR','CUP_I_GUE_Medic']];
missionNamespace setVariable [Format["CTI_%1PARACHUTELEVEL2", _side],['rhsgref_nat_rifleman_aks74','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg','rhsgref_nat_specialist_aa','CUP_I_GUE_Soldier_MG','CUP_I_GUE_Medic','rhsgref_nat_scout','CUP_I_GUE_Sniper']];
missionNamespace setVariable [Format["CTI_%1PARACHUTELEVEL3", _side],['rhsgref_nat_rifleman_aks74','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg','rhsgref_nat_specialist_aa','rhsgref_nat_specialist_aa','CUP_I_GUE_Soldier_AR','CUP_I_GUE_Medic','rhsgref_nat_scout','rhsgref_nat_grenadier_rpg','CUP_I_GUE_Sniper']];

missionNamespace setVariable [Format["CTI_%1PARACARGO", _side], 'rhsgref_ins_g_mi8amt'];	//--- Paratroopers, Vehicle.
missionNamespace setVariable [Format["CTI_%1REPAIRTRUCK", _side], 'CUP_I_V3S_Repair_TKG'];//--- Repair Truck model.
missionNamespace setVariable [Format["CTI_%1STARTINGVEHICLES", _side], ['CUP_I_BMP2_AMB_NAPA']];//--- Starting Vehicles.
missionNamespace setVariable [Format["CTI_%1PARAAMMO", _side], []];//--- Supply Paradropping, Dropped Ammunition.
missionNamespace setVariable [Format["CTI_%1PARAVEHICARGO", _side], 'CUP_I_BRDM2_NAPA'];//--- Supply Paradropping, Dropped Vehicle.
missionNamespace setVariable [Format["CTI_%1PARAVEHI", _side], 'rhsgref_ins_g_mi8amt'];//--- Supply Paradropping, Vehicle
missionNamespace setVariable [Format["CTI_%1PARACHUTE", _side], 'ParachuteC'];//--- Supply Paradropping, Parachute Model.

//--- Server only.
if (isServer) then {
	//--- Patrols.
	missionNamespace setVariable [Format["CTI_%1_PATROL_LIGHT", _side], [
		['CUP_I_TK_GUE_Soldier_TL','CUP_I_TK_GUE_Soldier_GL','CUP_I_TK_GUE_Soldier_MG','CUP_I_TK_GUE_Soldier_AT'], 
		['CUP_I_TK_GUE_Commander','CUP_I_TK_GUE_Demo','CUP_I_TK_GUE_Soldier','CUP_I_TK_GUE_Guerilla_Medic','CUP_I_TK_GUE_Soldier_AR']
	]];

	missionNamespace setVariable [Format["CTI_%1_PATROL_MEDIUM", _side], [
		['CUP_I_TK_GUE_Soldier_TL','CUP_I_TK_GUE_Soldier_GL','CUP_I_TK_GUE_Soldier_MG','CUP_I_TK_GUE_Soldier_AT']
	]];

	missionNamespace setVariable [Format["CTI_%1_PATROL_HEAVY", _side], [
		['CUP_I_TK_GUE_Sniper','CUP_I_TK_GUE_Sniper','CUP_I_TK_GUE_Sniper']
	]];
};

//--- Client only.
if (local player) then {
	//--- Default Faction (Buy Menu), this is the faction name defined in core_xxx.sqf files.
	missionNamespace setVariable [Format["CTI_%1DEFAULTFACTION", _side], 'Guerilla'];
};

//--- Artillery.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Artillery\Artillery_GUE.sqf";
//--- Units.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Units\Units_GUE.sqf";
//--- Structures.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Structures\Structures_GUE.sqf";
//--- Upgrades.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Upgrades\Upgrades_GUE.sqf";