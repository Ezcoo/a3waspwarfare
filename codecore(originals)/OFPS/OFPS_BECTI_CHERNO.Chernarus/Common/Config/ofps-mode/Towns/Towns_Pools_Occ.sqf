//Towns Squad Pooling
//--- Pool data: [<GROUP>, <PRESENCE>, {<SPAWN PROBABILITY>}], nesting is possible to narrow down some choices

with missionNamespace do {

//--- NORMAL TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_OCC_POOL_1 = [
		["TOWNS_SQUAD_RIFLEMEN1", 3, 80],
		["TOWNS_SQUAD_AT1", 1, 50],			
		[
			["TOWNS_SQUAD_LIGHT1_MIXED", 2, 60],
			["TOWNS_SQUAD_LIGHT2_MIXED", 2, 50]
		]
	];
	//Towns 50-60
	TOWNS_OCC_POOL_2 = [
		["TOWNS_SQUAD_RIFLEMEN1", 4, 80],
		["TOWNS_SQUAD_SNIPER", 1, 20],
		["TOWNS_SQUAD_AT1", 2, 60],				
		[
			["TOWNS_SQUAD_LIGHT2_MIXED", 2, 30],
			["TOWNS_SQUAD_LIGHT3_MIXED", 2, 20],
			["TOWNS_SQUAD_LIGHT4_MIXED", 1, 10]
		],
		[
			["TOWNS_SQUAD_APC1_MIXED", 1, 30],
			["TOWNS_SQUAD_APC2_MIXED", 1, 20]
		]
	];
	//Towns 60-80
	TOWNS_OCC_POOL_3 = [
		[
			["TOWNS_SQUAD_RIFLEMEN3", 5, 80], 
			["TOWNS_SQUAD_SNIPER", 1, 20], 
			["TOWNS_SQUAD_AT2", 2, 60],
			["TOWNS_SQUAD_AA", 1, 65]
		],
		[
			["TOWNS_SQUAD_LIGHT3_MIXED", 1, 30],
			["TOWNS_SQUAD_LIGHT4_MIXED", 1, 20],
			["TOWNS_SQUAD_LIGHT5_MIXED", 1, 10]
		],
		[
			["TOWNS_SQUAD_APC1_MIXED", 1, 40],
			["TOWNS_SQUAD_APC2_MIXED", 1, 30]
		],
		[
			["TOWNS_SQUAD_VEHICLE_AA1_MIXED", 1, 20]
		]
	];
	//Towns 80-100
	TOWNS_OCC_POOL_4 = [
		[
			["TOWNS_SQUAD_RIFLEMEN3", 6, 80],
			["TOWNS_SQUAD_SNIPER", 1, 20], 
			["TOWNS_SQUAD_AT2", 3, 75], 
			["TOWNS_SQUAD_AA", 2, 65]
		],
		[
			["TOWNS_SQUAD_LIGHT4_MIXED", 1, 50],
			["TOWNS_SQUAD_LIGHT5_MIXED", 1, 40],
			["TOWNS_SQUAD_LIGHT6_MIXED", 1, 30]
		],
		[
			["TOWNS_SQUAD_APC2_MIXED", 1, 70],
			["TOWNS_SQUAD_APC3_MIXED", 1, 70]
		],
		[
			["TOWNS_SQUAD_ARMORED1_MIXED", 1, 20],
			["TOWNS_SQUAD_ARMORED2_MIXED", 1, 10]
		],
		[
			["TOWNS_SQUAD_VEHICLE_AA1_MIXED", 1, 50],
			["TOWNS_SQUAD_VEHICLE_AA2_MIXED", 1, 20]
		]
	];
	//Towns 100-120
	TOWNS_OCC_POOL_5 = [
		[
			["TOWNS_SQUAD_RIFLEMEN3", 7, 80],
			["TOWNS_SQUAD_SNIPER", 1, 30], 
			["TOWNS_SQUAD_AT2", 3, 60], 
			["TOWNS_SQUAD_AA", 3, 65]
		],
		[
			["TOWNS_SQUAD_LIGHT5_MIXED", 1, 20],
			["TOWNS_SQUAD_LIGHT6_MIXED", 1, 30],
			["TOWNS_SQUAD_LIGHT7", 1, 40]
		],
		[
			["TOWNS_SQUAD_APC2_MIXED", 1, 30],
			["TOWNS_SQUAD_APC3_MIXED", 1, 40]
		],
		[
			["TOWNS_SQUAD_APC2_MIXED", 1, 30],
			["TOWNS_SQUAD_APC3_MIXED", 1, 40]
		],
		[
			["TOWNS_SQUAD_ARMORED2_MIXED", 1, 30],
			["TOWNS_SQUAD_ARMORED3_MIXED", 1, 20]
		],
		[
			["TOWNS_SQUAD_VEHICLE_AA2_MIXED", 1, 40],
			["TOWNS_SQUAD_VEHICLE_AA3_MIXED", 1, 50]
		]
	];
	//Towns > 120
	TOWNS_OCC_POOL_6 = [
		[
			["TOWNS_SQUAD_RIFLEMEN3", 10, 80],
			["TOWNS_SQUAD_SNIPER", 2, 30], 
			["TOWNS_SQUAD_AT2", 4, 75], 
			["TOWNS_SQUAD_AA", 4, 65]
		],
		[
			["TOWNS_SQUAD_LIGHT6_MIXED", 1, 50],
			["TOWNS_SQUAD_LIGHT7", 1, 60]
		],
		[
			["TOWNS_SQUAD_APC2_MIXED", 1, 40],
			["TOWNS_SQUAD_APC3_MIXED", 1, 30]
		],
		[
			["TOWNS_SQUAD_ARMORED2_MIXED", 1, 30],
			["TOWNS_SQUAD_ARMORED3_MIXED", 1, 40]
		],
		[
			["TOWNS_SQUAD_VEHICLE_AA2_MIXED", 1, 40],
			["TOWNS_SQUAD_VEHICLE_AA3_MIXED", 1, 50]
		]
	];
//--- INFANTRY ONLY TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_OCC_INF_POOL_1 = [
		["TOWNS_SQUAD_RIFLEMEN1", 1, 99],
		["TOWNS_SQUAD_AT1", 1, 99]
	];
	//Towns 50-60
	TOWNS_OCC_INF_POOL_2 = [
		[	
			["TOWNS_SQUAD_RIFLEMEN1", 1, 50],
			["TOWNS_SQUAD_SNIPER", 1, 50], 
			["TOWNS_SQUAD_AT1", 4, 75], 
			["TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns 60-80
	TOWNS_OCC_INF_POOL_3 = [
		[	
			["TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["TOWNS_SQUAD_SNIPER", 1, 50], 
			["TOWNS_SQUAD_AT1", 4, 75], 
			["TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns 80-100
	TOWNS_OCC_INF_POOL_4 = [
		[	
			["TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["TOWNS_SQUAD_SNIPER", 1, 50], 
			["TOWNS_SQUAD_AT1", 4, 75], 
			["TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns 100-120
	TOWNS_OCC_INF_POOL_5 = [
		[	
			["TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["TOWNS_SQUAD_SNIPER", 1, 50], 
			["TOWNS_SQUAD_AT1", 4, 75], 
			["TOWNS_SQUAD_AA", 4, 65]
		]
	];
	//Towns > 120
	TOWNS_OCC_INF_POOL_6 = [
		[	
			["TOWNS_SQUAD_RIFLEMEN2", 1, 50],
			["TOWNS_SQUAD_SNIPER", 1, 50], 
			["TOWNS_SQUAD_AT1", 4, 75], 
			["TOWNS_SQUAD_AA", 4, 65]
		]
	];
//--- NAVAL TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_OCC_NAVAL_POOL_1 = [
				["TOWNS_SQUAD_ASSAULT_BOAT1", 1, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 1, 30]
	];
	//Towns 50-60
	TOWNS_OCC_NAVAL_POOL_2 = [

				["TOWNS_SQUAD_ASSAULT_BOAT1", 2, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 1, 60],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 1, 50],
				["TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 35],
				["TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 5]
	];
	//Towns 60-80
	TOWNS_OCC_NAVAL_POOL_3 = [
				["TOWNS_SQUAD_ASSAULT_BOAT1", 2, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 2, 70],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 1, 60],
				["TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 40],
				["TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 15]
	];
	//Towns 80-100
	TOWNS_OCC_NAVAL_POOL_4 = [
				["TOWNS_SQUAD_ASSAULT_BOAT1", 3, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 2, 70],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 70],
				["TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 45],
				["TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 25]
	];
	//Towns 100-120
	TOWNS_OCC_NAVAL_POOL_5 = [
				["TOWNS_SQUAD_ASSAULT_BOAT1", 4, 90],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 1, 80],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 80],
				["TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 50],
				["TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 35]
	];
	//Towns > 120
	TOWNS_OCC_NAVAL_POOL_6 = [
				["TOWNS_SQUAD_ASSAULT_BOAT1", 5, 90],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 2, 90],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 3, 90],
				["TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 2, 55],
				["TOWNS_SQUAD_CAPITAL_ASSAULT_BOAT", 1, 45]
	];
//--- ZOMBIE TOWNS ---------------------------------------------------	
	//Towns < 50
	TOWNS_OCC_ZOM_POOL_1 = [
					["TOWNS_SQUAD_ZOMBIE1", 6, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 2, 99]
	];
	//Towns 50-60
	TOWNS_OCC_ZOM_POOL_2 = [
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99]
	];
	//Towns 60-80
	TOWNS_OCC_ZOM_POOL_3 = [
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99]
	];
	//Towns 80-100
	TOWNS_OCC_ZOM_POOL_4 = [
					["TOWNS_SQUAD_ZOMBIE1", 2, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 6, 99]
	];
	//Towns 100-120
	TOWNS_OCC_ZOM_POOL_5 = [
					["TOWNS_SQUAD_ZOMBIE1", 2, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 8, 99]
	];
	//Towns > 120
	TOWNS_OCC_ZOM_POOL_6 = [
					["TOWNS_SQUAD_ZOMBIE1", 2, 99],
					["TOWNS_SQUAD_ZOMBIE1", 4, 99],
					["TOWNS_SQUAD_ZOMBIE1", 8, 99]
	];


//--- STATICS TOWNS ---------------------------------------------------

	//Towns < 50
	TOWNS_OCC_STATICS_POOL_1 = [
		["WEST_TOWNS_STATICS_ALL", 3, 80],
		["TOWNS_SQUAD_AT1", 1, 50],			
		[
			["TOWNS_SQUAD_LIGHT1_MIXED", 2, 60],
			["TOWNS_SQUAD_LIGHT2_MIXED", 2, 50]
		]
	];
	//Towns 50-60
	TOWNS_OCC_STATICS_POOL_2 = [

	];
	//Towns 60-80
	TOWNS_OCC_STATICS_POOL_3 = [

	];
	//Towns 80-100
	TOWNS_OCC_STATICS_POOL_4 = [

	];
	//Towns 100-120
	TOWNS_OCC_STATICS_POOL_5 = [

	];
	//Towns > 120
	TOWNS_OCC_STATICS_POOL_6 = [

	];
};