Private ["_side"];

_side = _this;

missionNamespace setVariable [Format["cti_C_UPGRADES_%1_ENABLED", _side], [
	true, //--- Barracks
	true, //--- Light
	true, //--- Heavy
	true, //--- Air
	true, //--- Paratroopers
	if (isNil{missionNamespace getVariable Format["cti_%1UAV", _side]}) then {false} else {true}, //--- UAV
	true, //--- Supply
	true, //--- Respawn Range
	if ((missionNamespace getVariable "cti_C_ARTILLERY") > 0) then {true} else {false}, //--- Artillery Time
	if ((missionNamespace getVariable "cti_C_MODULE_cti_ICBM") > 0) then {true} else {false}, //--- ICBM
	true, //--- Gear
	true, //--- Build Ammo
	if ((missionNamespace getVariable "cti_C_MODULE_cti_EASA") > 0) then {true} else {false}, //--- EASA
	true, //--- Supply Paradrop
	if ((missionNamespace getVariable "cti_C_ARTILLERY") > 0) then {true} else {false} //--- Artillery Ammo
]];

missionNamespace setVariable [Format["cti_C_UPGRADES_%1_COSTS", _side], [
	[[540,0],[1350,0],[2070,0]], //--- Barracks
	[[320,0],[720,0],[1600,0],[3200,0],[5080,0]], //--- Light
	[[1200,0],[3200,0],[8000,0],[10600,0]], //--- Heavy
	[[1200,0],[4000,0],[9200,0],[10500,0],[17600,0]], //--- Air
	[[1500,0],[2500,0],[3500,0]], //--- Paratroopers
	[[2000,0]], //--- UAV
	[[2700,0],[4800,0],[6000,0]], //--- Supply
	[[500,0],[1500,0]], //--- Respawn Range
	[[2000,0],[2500,0],[3500,0]], //--- Artillery Time
	[[50000,250000]], //--- ICBM
	[[250,0],[650,0],[1200,0],[2100,0],[2400,0]], //--- Gear
	[[750,0]], //--- Build Ammo
	[[4000,0]], //--- EASA
	[[2000,0]], //--- Supply Paradrop
	[[2500,0],[3500,0],[4500,0]] //--- Artillery Ammo
]];

missionNamespace setVariable [Format["cti_C_UPGRADES_%1_LEVELS", _side], [
	3, //--- Barracks
	5, //--- Light
	4, //--- Heavy
	5, //--- Air
	3, //--- Paratroopers
	1, //--- UAV
	3, //--- Supply
	2, //--- Respawn Range
	3, //--- Artillery Time
	1, //--- ICBM
	5, //--- Gear
	1, //--- Build Ammo
	1, //--- EASA
	1, //--- Supply Paradrop
	3 //--- Artillery Ammo
]];

missionNamespace setVariable [Format["cti_C_UPGRADES_%1_LINKS", _side], [
	[[cti_UP_GEAR,2],[cti_UP_GEAR,3],[cti_UP_GEAR,5]], //--- Barracks
	[[],[],[],[],[]], //--- Light
	[[],[],[],[]], //--- Heavy
	[[],[],[],[],[]], //--- Air
	[
		[[cti_UP_BARRACKS,1],[cti_UP_AIR,1],[cti_UP_GEAR,1]],
		[[cti_UP_BARRACKS,2],[cti_UP_AIR,2],[cti_UP_GEAR,2]],
		[[cti_UP_BARRACKS,3],[cti_UP_AIR,3],[cti_UP_GEAR,3]]
	], //--- Paratroopers
	[[cti_UP_AIR,2]], //--- UAV
	[[],[],[]], //--- Supply
	[[cti_UP_LIGHT,1],[],[]], //--- Respawn Range
    [
		[[cti_UP_BARRACKS,1],[cti_UP_LIGHT,1]],
		[[cti_UP_BARRACKS,2],[cti_UP_LIGHT,2]],
		[[cti_UP_BARRACKS,3],[cti_UP_LIGHT,3]]
	], //--- Artillery Time
	[[cti_UP_AIR,3]], //--- ICBM
	[[],[],[],[],[]], //--- Gear
	[[cti_UP_GEAR,2]], //--- Build Ammo
	[[cti_UP_AIR,1]], //--- EASA
	[[]], //--- Supply Paradrop
	[
		[[cti_UP_GEAR,1],[cti_UP_HEAVY,1]],
		[[cti_UP_GEAR,2],[cti_UP_HEAVY,2]],
		[[cti_UP_GEAR,3],[cti_UP_HEAVY,3]]
	] //--- Artillery Ammo
]];

missionNamespace setVariable [Format["cti_C_UPGRADES_%1_TIMES", _side], [
	[30,60,90], //--- Barracks
	[40,70,100,100,100], //--- Light
	[50,80,100,100], //--- Heavy
	[60,80,100,100,100], //--- Air
	[35,55,75], //--- Paratroopers
	[60], //--- UAV
	[60,80,120], //--- Supply
	[30,60,90], //--- Respawn Range
	[40,80,120], //--- Artillery Time
	[300], //--- ICBM
	[25,50,75,100,125], //--- Gear
	[40], //--- Build Ammo
	[90], //--- EASA
	[50], //--- Supply Paradrop
	[60,120,180] //--- Artillery Ammo
]];

//--- Check potential missing definition.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Upgrades\Check_Upgrades.sqf";