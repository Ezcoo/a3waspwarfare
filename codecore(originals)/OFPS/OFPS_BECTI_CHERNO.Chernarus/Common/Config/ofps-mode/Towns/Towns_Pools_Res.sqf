//Towns Squad Pooling
//--- Pool data: [<GROUP>, <PRESENCE>, {<SPAWN PROBABILITY>}], nesting is possible to narrow down some choices

with missionNamespace do {

//--- NORMAL TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_GUER_POOL_1 = [
		["GUER_TOWNS_SQUAD_RIFLEMEN1", 4, 80],
		["GUER_TOWNS_SQUAD_AT1", 1, 30],			
		[
			["GUER_TOWNS_SQUAD_LIGHT1_MIXED", 1, 60],
			["GUER_TOWNS_SQUAD_LIGHT2_MIXED", 1, 50]
		]
	];
	//Towns 50-60
	TOWNS_GUER_POOL_2 = [
		["GUER_TOWNS_SQUAD_RIFLEMEN1", 4, 85],
		["GUER_TOWNS_SQUAD_SNIPER", 2, 50],
		["GUER_TOWNS_SQUAD_AT1", 2, 40],				
		[
			["GUER_TOWNS_SQUAD_LIGHT2_MIXED", 1, 70],
			["GUER_TOWNS_SQUAD_LIGHT3_MIXED", 1, 60],
			["GUER_TOWNS_SQUAD_LIGHT4_MIXED", 1, 50]
		],
		[
			["GUER_TOWNS_SQUAD_APC1_MIXED", 1, 80],
			["GUER_TOWNS_SQUAD_APC2_MIXED", 1, 50]
		]
	];
	//Towns 60-80
	TOWNS_GUER_POOL_3 = [
		[
			["GUER_TOWNS_SQUAD_RIFLEMEN3", 5, 80], 
			["GUER_TOWNS_SQUAD_SNIPER", 2, 50], 
			["GUER_TOWNS_SQUAD_AT2", 3, 50],
			["GUER_TOWNS_SQUAD_AA", 1, 40]
		],
		[
			["GUER_TOWNS_SQUAD_LIGHT3_MIXED", 1, 50],
			["GUER_TOWNS_SQUAD_LIGHT4_MIXED", 1, 60],
			["GUER_TOWNS_SQUAD_LIGHT5_MIXED", 1, 70]
		],
		[
			["GUER_TOWNS_SQUAD_APC1_MIXED", 1, 50],
			["GUER_TOWNS_SQUAD_APC2_MIXED", 1, 80]
		],
		[
			["GUER_TOWNS_SQUAD_VEHICLE_AA1_MIXED", 1, 20]
		]
	];
	//Towns 80-100
	TOWNS_GUER_POOL_4 = [
		[
			["GUER_TOWNS_SQUAD_RIFLEMEN3", 6, 80],
			["GUER_TOWNS_SQUAD_SNIPER", 2, 10], 
			["GUER_TOWNS_SQUAD_AT2", 3, 75], 
			["GUER_TOWNS_SQUAD_AA", 2, 60]
		],
		[
			["GUER_TOWNS_SQUAD_LIGHT4_MIXED", 1, 30],
			["GUER_TOWNS_SQUAD_LIGHT5_MIXED", 1, 40],
			["GUER_TOWNS_SQUAD_LIGHT6_MIXED", 1, 50]
		],
		[
			["GUER_TOWNS_SQUAD_APC2_MIXED", 1, 50],
			["GUER_TOWNS_SQUAD_APC3_MIXED", 1, 60]
		],
		[
			["GUER_TOWNS_SQUAD_ARMORED1_MIXED", 1, 10],
			["GUER_TOWNS_SQUAD_ARMORED2_MIXED", 1, 20]
		],
		[
			["GUER_TOWNS_SQUAD_VEHICLE_AA1_MIXED", 1, 50],
			["GUER_TOWNS_SQUAD_VEHICLE_AA2_MIXED", 1, 20]
		]
	];
	//Towns 100-120
	TOWNS_GUER_POOL_5 = [
		[
			["GUER_TOWNS_SQUAD_RIFLEMEN3", 10, 80],
			["GUER_TOWNS_SQUAD_SNIPER", 2, 60], 
			["GUER_TOWNS_SQUAD_AT2", 3, 75], 
			["GUER_TOWNS_SQUAD_AA", 2, 70]
		],
		[
			["GUER_TOWNS_SQUAD_LIGHT5_MIXED", 1, 30],
			["GUER_TOWNS_SQUAD_LIGHT6_MIXED", 1, 25],
			["GUER_TOWNS_SQUAD_LIGHT7_MIXED", 1, 20]
		],
		[
			["GUER_TOWNS_SQUAD_APC2_MIXED", 1, 30],
			["GUER_TOWNS_SQUAD_APC3_MIXED", 1, 40]
		],
		[
			["GUER_TOWNS_SQUAD_ARMORED2_MIXED", 1, 30],
			["GUER_TOWNS_SQUAD_ARMORED3_MIXED", 1, 40]
		],
		[
			["GUER_TOWNS_SQUAD_VEHICLE_AA2_MIXED", 1, 30],
			["GUER_TOWNS_SQUAD_VEHICLE_AA3_MIXED", 1, 40]
		]
	];
	//Towns > 120
	TOWNS_GUER_POOL_6 = [
		[
			["GUER_TOWNS_SQUAD_RIFLEMEN3", 12, 80],
			["GUER_TOWNS_SQUAD_SNIPER", 3, 50], 
			["GUER_TOWNS_SQUAD_AT2", 5, 75], 
			["GUER_TOWNS_SQUAD_AA", 3, 80]
		],
		[
			["GUER_TOWNS_SQUAD_LIGHT6_MIXED", 1, 40],
			["GUER_TOWNS_SQUAD_LIGHT7_MIXED", 1, 50]
		],
		[
			["GUER_TOWNS_SQUAD_APC2_MIXED", 1, 40],
			["GUER_TOWNS_SQUAD_APC3_MIXED", 1, 50]
		],
		[
			["GUER_TOWNS_SQUAD_ARMORED2_MIXED", 1, 40],
			["GUER_TOWNS_SQUAD_ARMORED3_MIXED", 1, 50]
		],
		[
			["GUER_TOWNS_SQUAD_VEHICLE_AA2_MIXED", 1, 30],
			["GUER_TOWNS_SQUAD_VEHICLE_AA3_MIXED", 1, 40]
		]
	];

//--- INFANTRY ONLY TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_GUER_INF_POOL_1 = [
		["GUER_TOWNS_SQUAD_RIFLEMEN1", 1, 99],
		["GUER_TOWNS_SQUAD_AT1", 1, 99]
	];
	//Towns 50-60
	TOWNS_GUER_INF_POOL_2 = [
		[	
			["GUER_TOWNS_SQUAD_RIFLEMEN1", 1, 50],
			["GUER_TOWNS_SQUAD_SNIPER", 1, 50], 
			["GUER_TOWNS_SQUAD_AT1", 4, 75], 
			["GUER_TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns 60-80
	TOWNS_GUER_INF_POOL_3 = [
		[	
			["GUER_TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["GUER_TOWNS_SQUAD_SNIPER", 1, 50], 
			["GUER_TOWNS_SQUAD_AT1", 4, 75], 
			["GUER_TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns 80-100
	TOWNS_GUER_INF_POOL_4 = [
		[	
			["GUER_TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["GUER_TOWNS_SQUAD_SNIPER", 1, 50], 
			["GUER_TOWNS_SQUAD_AT1", 4, 75], 
			["GUER_TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns 100-120
	TOWNS_GUER_INF_POOL_5 = [
		[	
			["GUER_TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["GUER_TOWNS_SQUAD_SNIPER", 1, 50], 
			["GUER_TOWNS_SQUAD_AT1", 4, 75], 
			["GUER_TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns > 120
	TOWNS_GUER_INF_POOL_6 = [
		[	
			["GUER_TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["GUER_TOWNS_SQUAD_SNIPER", 1, 50], 
			["GUER_TOWNS_SQUAD_AT1", 4, 75], 
			["GUER_TOWNS_SQUAD_AA", 4, 65]
		]
	];	

//--- NAVAL TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_GUER_NAVAL_POOL_1 = [
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT1", 1, 99],
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT2", 1, 30]
	];
	//Towns 50-60
	TOWNS_GUER_NAVAL_POOL_2 = [
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT1", 2, 99],
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT2", 1, 60],
		["GUER_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 50],
		["GUER_TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 30],
		["GUER_TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 10],
		["GUER_TOWNS_SQUAD_SUBMARINE", 1, 10]
	];
	//Towns 60-80
	TOWNS_GUER_NAVAL_POOL_3 = [
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT1", 2, 99],
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT2", 1, 70],
		["GUER_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 60],
		["GUER_TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 40],
		["GUER_TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 15],
		["GUER_TOWNS_SQUAD_SUBMARINE", 1, 15]
	];
	//Towns 80-100
	TOWNS_GUER_NAVAL_POOL_4 = [
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT1", 2, 90],
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT2", 1, 80],
		["GUER_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 75],
		["GUER_TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 50],
		["GUER_TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 25],
		["GUER_TOWNS_SQUAD_SUBMARINE", 1, 25]
	];
	//Towns 100-120
	TOWNS_GUER_NAVAL_POOL_5 = [
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT1", 3, 99],
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT2", 2, 80],
		["GUER_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 90],
		["GUER_TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 55],
		["GUER_TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 35],
		["GUER_TOWNS_SQUAD_SUBMARINE", 1, 35]
	];
	//Towns > 120
	TOWNS_GUER_NAVAL_POOL_6 = [
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT1", 4, 90],
		["GUER_TOWNS_SQUAD_ASSAULT_BOAT2", 2, 90],
		["GUER_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 3, 90],
		["GUER_TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 2, 55],
		["GUER_TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 45],
		["GUER_TOWNS_SQUAD_SUBMARINE", 1, 45]
	];

//--- ZOMBIE TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_GUER_ZOM_POOL_1 = [
		["GUER_TOWNS_SQUAD_ZOMBIE1", 6, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 2, 99]
	];
	//Towns 50-60
	TOWNS_GUER_ZOM_POOL_2 = [
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99]
	];
	//Towns 60-80
	TOWNS_GUER_ZOM_POOL_3 = [
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99]
	];
	//Towns 80-100
	TOWNS_GUER_ZOM_POOL_4 = [
		["GUER_TOWNS_SQUAD_ZOMBIE1", 2, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 6, 99]
	];
	//Towns 100-120
	TOWNS_GUER_ZOM_POOL_5 = [
		["GUER_TOWNS_SQUAD_ZOMBIE1", 2, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 8, 99]
	];
	//Towns > 120
	TOWNS_GUER_ZOM_POOL_6 = [
		["GUER_TOWNS_SQUAD_ZOMBIE1", 2, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 4, 99],
		["GUER_TOWNS_SQUAD_ZOMBIE1", 8, 99]
	];	
};