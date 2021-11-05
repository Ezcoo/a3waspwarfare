/*//--------------------------------------------------------------------------------------------------------------
# HEADER #
Description:	This file presents classnames and their values to the mission.

//--------------------------------------------------------------------------------------------------------------*/
_side = _this;
_u = [];

//Sets Factory Types - used in win condition
missionNamespace setVariable [format["CTI_%1_Factories", _side], ["ControlCenter","Barracks","Light","Heavy","AirRotary","AirFixed","Ammo","Repair","Naval"]];

/*DOCUMENTATION----------------------------------------------------------------------------------------------------	

	/*Headers*/
		//DESCRIPTION:  Menu name and various
		//TYPE: Array
		//DEFAULT: []
		//FORMAT: [Factory Variable, Full Name, Map Name]
		//EXAMPLES:  [CTI_CONTROLCENTER, "Control Center", "CC"]

	/*Classes*/
		//DESCRIPTION:  
		//TYPE: Array
		//DEFAULT: []
		//FORMAT: [Factory Classname, Ruins Classname]
		//EXAMPLES: ["Land_Research_house_V1_F", "Land_Research_house_V1_ruins_F"]

	/*Prices*/
		//DESCRIPTION: Factory Price
		//TYPE: Integer
		//DEFAULT: 1000
		//FORMAT: price
		//EXAMPLES: 500

	/*Times*/
		//DESCRIPTION: Time to construct after placement
		//TYPE: Integer
		//DEFAULT: 30
		//FORMAT: time in seconds
		//EXAMPLES: 30

	/*MaxCount*/
		//DESCRIPTION: Max Factory Counts
		//TYPE: Integer
		//DEFAULT: 1
		//FORMAT: limit value
		//EXAMPLES: 
			// -1 : unlimited
			// 0 : none	
			// 2 : max of 2 factories

	/*Placement*/
		//DESCRIPTION: Spawn location relative to factory object
		//TYPE: Array
		//DEFAULT: [0,10]
		//FORMAT: [Spawn Marker Rotation, Distance from factory]
		//EXAMPLES: [90, 25]

	/*Specials*/
		//DESCRIPTION: Factory modifiers - damage modifiers
		//TYPE: Array
		//DEFAULT: []
		//FORMAT: [string tag, value]
		//EXAMPLES: 
			//[["DMG_Alternative"]] - DMG_Alternative: Need to be used in case of bisterious buildings usage 
				//		If a building is damaged, all the EH it had will bisteriously vanish... This "feature" will probably never get fixed so once again, we fix it ourself!
			//[["DMG_Alternative"], ["DMG_Reduce", 2]]- DMG_Reduce: Reduce the incoming damage on a building making it stronger if above 1.
			//[["DMG_Alternative"], ["DMG_Multiplier", 2]]- DMG_Multiplier: Incrases the incoming damage on the building making it weaker if above 1.

	/*Conditions*/
		//DESCRIPTION: Special Conditions - block/allow placement
		//TYPE: any
		//DEFAULT: (compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side])
		//FORMAT: any
		//EXAMPLES: 
			//(compile format["!(%1 call CTI_CO_FNC_IsHQDeployed) && (CTI_P_SideLogic getVariable ['cti_hq_ready', true])", _side]) - MHQ
			//(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]) - default only allow placement if mhq deployed
			//leave blank to allow placement anytime regardless of mhq status
	
	/*ResponBPos*/
		//DESCRIPTION:  Respawn postions on structure
		//TYPE: Integer
		//DEFAULT: 0
		//FORMAT:
		//EXAMPLES: //--- Set -1 for all positions, or list them as  [1, 3, 5]

//--------------------------------------------------------------------------------------------------------------*/

_u pushback [
	/*headers*/[CTI_HQ_DEPLOY, "Headquarters (Deploy)", "HQ"],
	/*classes*/["Land_Research_house_V1_F", "Land_Research_house_V1_ruins_F"],
	/*prices*/1000,
	/*times*/10,
	/*MaxCount*/-1,
	/*placements*/[180, 15, false],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["!(%1 call CTI_CO_FNC_IsHQDeployed) && (CTI_P_SideLogic getVariable ['cti_hq_ready', true])", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 	
	/*headers*/[CTI_CONTROLCENTER, "Control Center", "CC"],
	/*classes*/["Land_Research_HQ_F", "Land_Research_HQ_ruins_F", ["Land_Research_HQ_F"]],							  
	/*prices*/5000,
	/*times*/90,
	/*MaxCount*/1,
	/*placements*/[90, 25, false],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_BARRACKS, "Barracks", "Barracks"],
	/*classes*/["Land_Cargo_House_V1_F", "Land_Cargo_House_V1_ruins_F"],
	/*prices*/1000,
	/*times*/	30,
	/*MaxCount*/1,
	/*placements*/[180, 15],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_LIGHT, "Light Vehicle Factory", "Light"],
	/*classes*/["Land_Medevac_HQ_V1_F", "Land_Medevac_HQ_V1_ruins_F"],
	/*prices*/2000,
	/*times*/80,
	/*MaxCount*/1,
	/*placements*/[90, 25],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_HEAVY, "Heavy Vehicle Factory", "Heavy"],
	/*classes*/["Land_Cargo_HQ_V1_F", "Land_Cargo_HQ_V1_ruins_F"],
	/*prices*/4000,
	/*times*/120,
	/*MaxCount*/1,
	/*placements*/[90, 25],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_AIR_ROTARY, "Rotary Wing Aircraft Factory", "Air Rotary"],
	/*classes*/["Land_Airport_02_controlTower_F", "Land_Airport_Tower_ruins_F"],
	/*prices*/3000,
	/*times*/140,
	/*MaxCount*/1,
	/*placements*/[0, 40],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]], 
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_AIR_FIXED, "Fixed Wing Aircraft Factory", "Air Fixed"],
	/*classes*/["Land_Airport_Tower_F", "Land_Airport_Tower_ruins_F"],
	/*prices*/4000,
	/*times*/140,
	/*MaxCount*/1,
	/*placements*/[180, 40],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]], 
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_AMMO, "Ammo Depot", "Ammo"],
	/*classes*/["Land_Cargo_HQ_V2_F", "Land_Cargo_HQ_V2_ruins_F"],
	/*prices*/1000,
	/*times*/90,
	/*MaxCount*/1,
	/*placements*/[90, 25],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_REPAIR, "Repair Depot", "Repair"],
	/*classes*/["Land_Cargo_HQ_V3_F", "Land_Cargo_HQ_V3_ruins_F"],
	/*prices*/1000,
	/*times*/90,
	/*MaxCount*/1,
	/*placements*/[90, 25],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_NAVAL, "Naval Yard", "Naval"],
	/*classes*/["Land_Lighthouse_small_F", "Land_Lighthouse_small_ruins_F"],
	/*prices*/2000,
	/*times*/80,
	/*MaxCount*/1,
	/*placements*/[180, 60],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

switch (CTI_FACTION_DEFAULT_BASE) do {
	case 0: {//Vanilla
		_u pushback [ 
			/*headers*/[CTI_RADAR, "Air Radar", "Air Radar"],
			/*classes*/["Land_TTowerBig_1_F", "Land_TTowerBig_1_ruins_F"],
			/*prices*/1500,
			/*times*/60,
			/*MaxCount*/1,
			/*placements*/[180, 30, false],
			/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
			/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
			/*respawnBPos*/-1
		];
	};
	case 1: {//CUP
		_u pushback [ 
			/*headers*/[CTI_RADAR, "Air Radar", "Air Radar"],
			/*classes*/["GUE_WarfareBAntiAirRadar", "Land_TTowerBig_1_ruins_F"],
			/*prices*/1500,
			/*times*/60,
			/*MaxCount*/1,
			/*placements*/[180, 30, false],
			/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
			/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
			/*respawnBPos*/-1
		];
	};
	case 2: {//RHS
		_u pushback [ 
			/*headers*/[CTI_RADAR, "Air Radar", "Air Radar"],
			/*classes*/["rhs_p37", "Land_TTowerBig_1_ruins_F"],
			/*prices*/1500,
			/*times*/60,
			/*MaxCount*/1,
			/*placements*/[180, 30, false],
			/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
			/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
			/*respawnBPos*/-1
		];
	};
	case 3: {//Cold War
	};
	case 4: {//Unsung
	};	
	case 5: {//IFA3
	};
};

switch (CTI_FACTION_DEFAULT_BASE) do {
	case 0: {//Vanilla
		_u pushback [ 
			/*headers*/[CTI_RADAR_ART, "Artillery Radar", "Artillery Radar"],
			/*classes*/["Land_TTowerBig_2_F", "Land_TTowerBig_2_ruins_F"],
			/*prices*/1500,
			/*times*/60,
			/*MaxCount*/1,
			/*placements*/[180, 30, false],
			/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
			/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
			/*respawnBPos*/-1
		];
	};
	case 1: {//CUP
		_u pushback [ 
			/*headers*/[CTI_RADAR_ART, "Artillery Radar", "Artillery Radar"],
			/*classes*/["Gue_WarfareBArtilleryRadar", "Land_TTowerBig_2_ruins_F"],
			/*prices*/1500,
			/*times*/60,
			/*MaxCount*/1,
			/*placements*/[180, 30, false],
			/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
			/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
			/*respawnBPos*/-1
		];
	};
	case 2: {//RHS
		_u pushback [ 
			/*headers*/[CTI_RADAR_ART, "Artillery Radar", "Artillery Radar"],
			/*classes*/["rhs_prv13", "Land_TTowerBig_2_ruins_F"],
			/*prices*/1500,
			/*times*/60,
			/*MaxCount*/1,
			/*placements*/[180, 30, false],
			/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
			/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
			/*respawnBPos*/-1
		];
	};	
	case 3: {//Cold War
	};
	case 4: {//Unsung
	};	
	case 5: {//IFA3
	};
};


_u pushback [ 
	/*headers*/[CTI_SUPPLY_DEPOT, "Supply Depot", "Supply Depot"],
	/*classes*/["Land_dp_smallTank_F", "Land_dp_smallTank_ruins_F"],
	/*prices*/1000,
	/*times*/60,
	/*MaxCount*/1,
	/*placements*/[180, 15],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_SATELLITE, "Satellite Uplink", "Satellite Uplink"],
	/*classes*/["Land_Radar_Small_F", "Land_Radar_Small_ruins_F"],
	/*prices*/3000,
	/*times*/60,
	/*MaxCount*/1,
	/*placements*/[180, 15],
	/*specials*/[["DMG_Alternative"], ["DMG_Reduce", 1]],
	/*conditions*/(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]),
	/*respawnBPos*/-1
];

_u pushback [ 
	/*headers*/[CTI_HQ_MOBILIZE, "Headquarters (Mobilize)", "HQ"],
	/*classes*/[missionNamespace getVariable format["CTI_%1_HQ", _side], ""],
	/*prices*/500,
	/*times*/30,
	/*MaxCount*/-1,
	/*placements*/[0, 15, false],
	/*specials*/[],
	/*conditions*/(compile format["%1 call CTI_CO_FNC_IsHQDeployed && (CTI_P_SideLogic getVariable ['cti_hq_ready', true])", _side]),
	/*respawnBPos*/-1
];


[_side, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Base\Set_Structures.sqf";