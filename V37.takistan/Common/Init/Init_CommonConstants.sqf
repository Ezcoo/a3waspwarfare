//--- DO NOT CHANGE.
WESTID = 0;
EASTID = 1;
RESISTANCEID = 2;
//--- DO NOT CHANGE.
QUERYUNITLABEL = 0;
QUERYUNITPICTURE = 1;
QUERYUNITPRICE = 2;
QUERYUNITTIME = 3;
QUERYUNITCREW = 4;
QUERYUNITUPGRADE = 5;
QUERYUNITFACTORY = 6;
QUERYUNITSKILL = 7;
QUERYUNITFACTION = 8;
QUERYUNITTURRETS = 9;
//--- DO NOT CHANGE.
QUERYGEARLABEL = 0;
QUERYGEARPICTURE = 1;
QUERYGEARCLASS = 2;
QUERYGEARTYPE = 3;
QUERYGEARCOST = 4;
QUERYGEARUPGRADE = 5;
QUERYGEARALLOWED = 6;
QUERYGEARHANDGUNPOOL = 7;
QUERYGEARMAGAZINES = 8;
QUERYGEARSPACE = 9;
QUERYGEARALLOWTWO = 10;

//--- Side Statics.
WFBE_C_WEST_ID = 0;
WFBE_C_EAST_ID = 1;
WFBE_C_GUER_ID = 2;
WFBE_C_CIV_ID = 3;
WFBE_C_UNKNOWN_ID = 4;

//--- Role names
WSW_SNIPER         = "Sniper";
WSW_SOLDIER        = "Soldier";
WSW_ENGINEER       = "Engineer";
WSW_SPECOPS        = "SpecOps";
WSW_ARTY_OPERATOR  = "Arty Operator";
WSW_UAV_OPERATOR  = "UAV Operator";

//--Required addons list here. Push addon class name from config.bin in array--
WFBE_REQ_ADDONS = 	[	//["@Bornholm", ["Bornholm"]], 
						//["@AdWasp", ["wasp_vehicle_fix"]], 
						["@CBA_A3", ["cba_xeh", "cba_help"]], 
						["@Enhanced Movement", ["BaBe_core"]], 
						//["@Napf Island V1.2", ["Napf"]], 
						//["@Tembelan Island", ["A3_Map_Tembelan"]],
						["@CUP Terrains - Core", ["CUP_Core", "CUP_Terrains_Plants"]],
						["@CUP Terrains - Maps", ["CUP_Takistan_Data", "CUP_Bohemia_Data", "CUP_Chernarus_Data"]],
						["@CUP Units", ["CUP_Creatures_People_Civil_Chernarus", "CUP_Creatures_People_Core"]],
						["@CUP Vehicles", ["CUP_AirVehicles_Core", "CUP_TrackedVehicles_Core"]],
						["@CUP Weapons", ["CUP_BaseData", "CUP_Weapons_AK"]],
						//["@Fallujah V1.2", ["fallujah_v1_0"]],
						["@RHSAFRF", ["rhs_btr70", "rhs_c_t72"]],
						//["@RHSGREF", ["rhsgref_c_air"]],
						//["@RHSSAF", ["rhssaf_m_weapon_m70c", "rhssaf_main"]],
						["@RHSUSAF", ["rhsusf_cars", "rhsusf_c_mtvr"]]
				];

//--- construction object arrays
WFBE_SMALL_SITE_1_OBJECTS = [
                                //[_siteName,[0,0,-0.000230789],359.997,1,0],
                                ["Paleta2",[0.416992,-5.62012,-0.305746],0.0130822,1,0],
                                ["Land_Barrel_sand",[-5.59448,3.26929,6.29425e-005],359.997,1,0],
                                ["Paleta1",[-2.62976,-6.04736,5.53131e-005],0.0130822,1,0],
                                ["Barrel4",[6.63696,0.694336,0.000753403],359.991,1,0],
                                ["Land_Ind_BoardsPack2",[6.41797,-2.52051,0.000915527],270,1,0],
                                ["Land_Barrel_sand",[-6.73267,2.06372,6.10352e-005],359.997,1,0],
                                ["Barrel5",[7.19604,2.8855,0.00028801],0.0135841,1,0],
                                ["Barrel1",[6.08984,5.5415,0.00028801],0.0135841,1,0],
                                ["Land_Barrel_sand",[-7.13452,4.40747,6.29425e-005],359.997,1,0],
                                ["RoadBarrier_long",[0.221924,-8.58496,0.00206566],0.0130822,1,0],
                                ["Land_Barrel_sand",[-8.27271,2.80054,6.10352e-005],359.997,1,0],
                                ["Barrels",[-7.91895,-4.09668,0.00037384],0.0128253,1,0],
                                ["Land_Ind_BoardsPack1",[6.40332,-7.16162,0.000520706],0.0130822,1,0],
                                ["Land_Ind_BoardsPack1",[-6.18384,-8.09961,0.000535965],50.0093,1,0],
                                ["RoadCone",[-10.4381,-8.94336,0.000131607],0.0119093,1,0],
                                ["RoadCone",[11.1655,-8.79932,0.00034523],359.991,1,0],
                                ["RoadCone",[-10.5692,12.6655,0.000509262],359.948,1,0],
                                ["RoadCone",[11.0276,12.3904,0.000509262],359.948,1,0]
                           ];

WFBE_SMALL_SITE_2_OBJECTS = [
                                ["Land_WoodenRamp",[-2.45703,-0.593262,0.357508],270,1,0],
                                ["Land_WoodenRamp",[-2.5083,1.3811,0.357508],270,1,0],
                                //[_siteName,[4.6333,0.338135,0.00393867],90,1,0],
                                ["Land_Dirthump02",[-0.587891,8.57935,0.00207901],359.967,1,0],
                                ["Land_Dirthump01",[-3.97363,-8.49219,-4.57764e-005],29.9804,1,0],
                                ["Land_WoodenRamp",[8.8335,-0.125977,0.403545],90,1,0]
                            ];

WFBE_MEDIUM_SITE_1_OBJECTS = [
                                 //[_siteName,[0,0,0.00242043],359.958,1,0],
                                 ["Paleta2",[0.430908,-5.60693,-0.30535],359.945,1,0],
                                 ["Paleta1",[-2.62598,-6.0437,0.000275612],359.951,1,0],
                                 ["Land_Ind_BoardsPack1",[-0.82251,-9.15479,0.00291061],49.9467,1,0],
                                 ["Land_Fire_barrel",[-10.1826,0.356689,7.62939e-005],0.00146227,1,0],
                                 ["Land_Fire_barrel",[-10.7854,-1.97974,0.000187874],359.987,1,0],
                                 ["Paleta1",[-9.7251,5.53955,0.000106812],359.976,1,0],
                                 ["Land_obstacle_prone",[1.88354,11.1238,-0.487763],95.0061,1,0],
                                 ["Land_Fire_barrel",[-11.053,-4.12183,0.00019455],359.987,1,0],
                                 ["Land_Ind_BoardsPack1",[-6.6582,-10.0774,0.0021534],324.956,1,0],
                                 ["Land_Ind_BoardsPack1",[9.50244,-7.4668,0.00151634],270,1,0],
                                 ["Land_obstacle_prone",[12.0264,4.19629,-0.534346],359.98,1,0],
                                 ["Land_Fire_barrel",[-12.3416,-1.57056,7.43866e-005],0.00146227,1,0],
                                 ["Misc_palletsfoiled",[-12.5134,0.682861,0.000136375],0.00146227,1,0],
                                 ["Barrel1",[1.63794,-12.8806,-0.000716209],359.92,1,0],
                                 ["Land_Fire_barrel",[-11.5149,-6.25757,0.00084877],359.938,1,0],
                                 ["Land_Fire_barrel",[-12.7363,-3.63184,0.000207901],359.938,1,0],
                                 ["Land_Ind_BoardsPack1",[-4.74194,-12.4204,0.00105476],49.9807,1,0],
                                 ["Barrel4",[14.1938,0.500732,0.000412941],359.98,1,0],
                                 ["Land_Fire_barrel",[-13.0708,-5.9082,0.000863075],359.938,1,0],
                                 ["Barrel5",[14.7661,-1.11182,0.000411987],359.98,1,0],
                                 ["Land_Ind_BoardsPack1",[9.42847,-11.5142,0.00151634],359.964,1,0],
                                 ["Barrel1",[14.7314,2.21338,0.000409126],359.98,1,0],
                                 ["Paleta2",[12.0034,9.8418,-0.305568],0.0412118,1,0],
                                 ["Barrels",[-12.2202,-13.7024,0.000279427],359.984,1,0],
                                 ["Barrels",[-12.1877,15.0469,0.000328064],359.969,1,0],
                                 ["Barrels",[14.5701,-13.311,0.000322342],359.995,1,0],
                                 ["Barrels",[14.6084,14.6824,0.000889778],359.994,1,0]
                            ];
WFBE_MEDIUM_SITE_2_OBJECTS = [
                                 //[_siteName,[2.52539,-0.0065918,-0.000685692],359.928,1,0],
                                 ["Land_WoodenRamp",[-2.27954,-0.582764,0.377601],270,1,0],
                                 ["Land_WoodenRamp",[0.94751,-4.2085,0.388518],179.986,1,0],
                                 //[_siteName,[2.60547,6.20386,-0.000685692],359.928,1,0],
                                 ["Land_Dirthump01",[-8.63159,8.021,-0.00167847],29.985,1,0]
                             ];

WFBE_MEDIUM_SITE_3_OBJECTS = [
                               ["Land_Misc_Scaffolding",[5.67456,2.39307,0.0763969],179.92,1,0],
                               ["Land_obstacle_prone",[10.0811,4.63477,-0.127748],359.961,1,0],
                               ["Land_Dirthump02",[-8.63159,8.021,0.000141144],29.9958,1,0],
                               ["Land_Ind_BoardsPack1",[13.3027,-7.63159,0.00639725],359.838,1,0],
                               ["Land_Ind_BoardsPack1",[-9.70117,-12.4263,0.00152397],324.976,1,0],
                               ["Land_Ind_BoardsPack1",[-7.78491,-14.7693,0.00152779],49.9774,1,0],
                               ["Misc_palletsfoiled",[11.4519,12.5623,0.00311279],359.877,1,0],
                               ["Land_Ind_BoardsPack1",[13.4668,-11.5061,0.00515175],359.942,1,0],
                               ["Barrels",[-12.1465,-13.7354,0.000406265],359.958,1,0]
                           ];

//--- Common Upgrades, each number match the upgrades arrays.
WFBE_UP_BARRACKS = 0;
WFBE_UP_LIGHT = 1;
WFBE_UP_HEAVY = 2;
WFBE_UP_AIR = 3;
WFBE_UP_PARATROOPERS = 4;
WFBE_UP_UAV = 5;
WFBE_UP_SUPPLYRATE = 6;
WFBE_UP_RESPAWNRANGE = 7;
WFBE_UP_ARTYTIMEOUT = 8;
WFBE_UP_ICBM = 9;
WFBE_UP_GEAR = 10;
WFBE_UP_AMMOCOIN = 11;
WFBE_UP_EASA = 12;
WFBE_UP_SUPPLYPARADROP = 13;
WFBE_UP_ARTYAMMO = 14;

/*
	### Working with the missionNamespace ###
	 * The With command allows us to swap the Global variable Namespace.
	 * It prevents the typical long variable declaration (missionNamespace setVariable...).

	In the declaration below, the parameters are first (they are checked with the isNil command).
	The isNil check prevent us from overriding MP parameters.
*/
with missionNamespace do {
//---- Admins UID
	WFBE_RESERVEDUIDS = ["76561198058092022","76561198086269246"]; //Admin UIDS 

//--- AI.
	if (isNil "WFBE_C_AI_COMMANDER_ENABLED") then {WFBE_C_AI_COMMANDER_ENABLED = 1;}; //--- Enable or disable the AI Commanders.
	WFBE_C_AI_COMMANDER_MOVE_INTERVALS = 3600;
	WFBE_C_AI_DELEGATION_FPS_INTERVAL = 60 * 3; //--- A client send it's FPS average each x seconds to the server.
	WFBE_C_AI_DELEGATION_FPS_MIN = 25; //--- A client can handle groups if it's FPS average is above x.
	WFBE_C_AI_DELEGATION_GROUPS_MAX = 1; //--- A client max have up to x groups managed on his computer (high values may makes lag, be careful).
	WFBE_C_AI_PATROL_RANGE = 400;
	WFBE_C_AI_TOWN_ATTACK_HOPS_WP = 4; //--- AI may use up to x WP to attack a town.
	
//--- Artillery.
	if (isNil "WFBE_C_ARTILLERY") then {WFBE_C_ARTILLERY = 1;}; //--- Enable or disable Artillery fire missions (0: Disabled, 1: Short, 2: Medium, 3: Long).
	WFBE_C_ARTILLERY_AMMO_RANGE_LASER = 175; //--- Artillery laser rounds detection range (Per Shell).
	WFBE_C_ARTILLERY_AMMO_RANGE_SADARM = 200; //--- Artillery SADARM rounds operative range (Per Shell).
	WFBE_C_ARTILLERY_AREA_MAX = 300; //---  Maximum spread area of artillery support.
	WFBE_C_ARTILLERY_INTERVALS = [400, 350, 300, 250]; //--- Delay between each fire mission for each upgrades.
	if (isNil "WFBE_C_ARTILLERY") then {WFBE_C_ARTILLERY = 2;};

	//--- Base
	if (isNil "WFBE_C_BASE_AREA") then {WFBE_C_BASE_AREA = 2;}; //--- Force the bases to be grouped by areas.
	if (isNil "WFBE_C_BASE_RES") then {WFBE_C_BASE_RES = 0;}; //--- RES Parameters (0 Disabled, 1 West, 2 East, 3 both).
	if (isNil "WFBE_C_BASE_DEFENSE_MAX_AI") then {WFBE_C_BASE_DEFENSE_MAX_AI = 20;}; //--- Maximum AIs that will be able to man defense within the barracks area.
	if (isNil "WFBE_C_BASE_DEFENSE_MANNING_RANGE") then {WFBE_C_BASE_DEFENSE_MANNING_RANGE = 250;}; //--- Within x meters, defenses may be manned.
	if (isNil "WFBE_C_BASE_PATROLS_INFANTRY") then {WFBE_C_BASE_PATROLS_INFANTRY = 1;}; //--- Enable AI Squad patrol in base from Barracks.
	if (isNil "WFBE_C_BASE_START_TOWN") then {WFBE_C_BASE_START_TOWN = 1;}; //--- Remove the spawn locations which are too far away from the towns.
	if (isNil "WFBE_C_BASE_STARTING_DISTANCE") then {WFBE_C_BASE_STARTING_DISTANCE = 7500;}; //--- Sides need at last xkm of distance between them.
	if (isNil "WFBE_C_BASE_STARTING_MODE") then {WFBE_C_BASE_STARTING_MODE = 2;}; //--- Starting Locations Mode: 0 = WN|ES; 1 = WS|EN; 2 = Random;
	WFBE_C_BASE_AREA_RANGE = 250; //--- A base area has a range of x meters.
	WFBE_C_BASE_HQ_BUILD_RANGE = 120; //--- HQ Build range.
	WFBE_C_BASE_AV_STRUCTURES = 260; //--- Base available structures.
	WFBE_C_BASE_PROTECTION_RANGE = 800;  //--- Base protection range.
	WFBE_C_BASE_HQ_REPAIR_PRICE = 25000; //--- HQ Repair price.
    WFBE_C_BASE_HQ_REPAIR_PRICE_CASH = 250000; //--- HQ Repair price with cash.
//--- Camps.
	WFBE_C_CAMPS_CAPTURE_BOUNTY = 500; //--- Bounty received by player whenever he capture a camp.
	WFBE_C_CAMPS_CAPTURE_RATE = 20;
	WFBE_C_CAMPS_CAPTURE_RATE_MAX = 25;
	WFBE_C_CAMPS_RANGE = 10;
	WFBE_C_CAMPS_RANGE_PLAYERS = 5;
	WFBE_C_CAMPS_REPAIR_DELAY = 20;
	WFBE_C_CAMPS_REPAIR_PRICE = 500;
	WFBE_C_CAMPS_REPAIR_RANGE = 15;

//--- Economy.
	if (isNil "WFBE_C_ECONOMY_FUNDS_START_WEST") then {WFBE_C_ECONOMY_FUNDS_START_WEST = if (WF_Debug) then {900000} else {800};};
	if (isNil "WFBE_C_ECONOMY_FUNDS_START_EAST") then {WFBE_C_ECONOMY_FUNDS_START_EAST = if (WF_Debug) then {900000} else {800};};
	if (isNil "WFBE_C_ECONOMY_FUNDS_START_GUER") then {WFBE_C_ECONOMY_FUNDS_START_GUER = if (WF_Debug) then {900000} else {800};};
	if (isNil "WFBE_C_ECONOMY_INCOME_INTERVAL") then {WFBE_C_ECONOMY_INCOME_INTERVAL = 60;}; //--- Income Interval (Delay between each paycheck).
	if (isNil "WFBE_C_ECONOMY_SUPPLY_START_WEST") then {WFBE_C_ECONOMY_SUPPLY_START_WEST = if (WF_Debug) then {900000} else {1200};};
	if (isNil "WFBE_C_ECONOMY_SUPPLY_START_EAST") then {WFBE_C_ECONOMY_SUPPLY_START_EAST = if (WF_Debug) then {900000} else {1200};};
	if (isNil "WFBE_C_ECONOMY_SUPPLY_START_GUER") then {WFBE_C_ECONOMY_SUPPLY_START_GUER = if (WF_Debug) then {900000} else {1200};};
	if (isNil "WFBE_C_MAX_ECONOMY_SUPPLY_LIMIT") then {WFBE_C_MAX_ECONOMY_SUPPLY_LIMIT = 60000;};
	if (isNil "WFBE_C_ECONOMY_SUPPLY_SYSTEM") then {WFBE_C_ECONOMY_SUPPLY_SYSTEM = 1;}; //--- Supply System (0: Trucks, 1: Automatic with time).
	if (isNil "WFBE_C_ECONOMY_INCOME_COEF") then {WFBE_C_ECONOMY_INCOME_COEF = 55;}; //--- Town Multiplicator Coefficient (SV * x).
	WFBE_C_ECONOMY_INCOME_COEF = WFBE_C_ECONOMY_INCOME_COEF / 10; //--Trick for Parameters.hpp, it can not store float numbers (55 == 5.5)--
	
	WFBE_C_ECONOMY_INCOME_DIVIDED = 2; //--- Prevent commander from being a millionaire, and add the rest to the players pool.
	WFBE_C_ECONOMY_INCOME_PERCENT_MAX = 100; //--- Commander may set income up to x%.
	WFBE_C_ECONOMY_SUPPLY_TIME_INCREASE_DELAY = 60; //--- Increase SV delay.
	WFBE_C_ECONOMY_SUPPLY_MAX_TEAM_LIMIT = 50000;

//--- Environment.
	if (isNil "WFBE_C_OBJECT_MAX_VIEW") then {WFBE_C_OBJECT_MAX_VIEW = 5000;}; //--- Max object distance.
	if (isNil "WFBE_C_ENVIRONMENT_MAX_VIEW") then {WFBE_C_ENVIRONMENT_MAX_VIEW = 5000;}; //--- Max view distance.
	if (isNil "WFBE_C_ENVIRONMENT_MAX_CLUTTER") then {WFBE_C_ENVIRONMENT_MAX_CLUTTER = 35;}; //--- Max Terrain grid.
	if (isNil "WFBE_C_ENVIRONMENT_STARTING_HOUR") then {WFBE_C_ENVIRONMENT_STARTING_HOUR = 9;}; //--- Starting Hour of the day.
	if (isNil "WFBE_C_ENVIRONMENT_STARTING_MONTH") then {WFBE_C_ENVIRONMENT_STARTING_MONTH = 6;}; //--- Starting Month of the year.
	if (isNil "WFBE_C_ENVIRONMENT_WEATHER_SAND") then {WFBE_C_ENVIRONMENT_WEATHER_SAND = 0;}; //--- sand storms
	if (isNil "WFBE_C_ENVIRONMENT_WEATHER_SNOWSTORM") then {WFBE_C_ENVIRONMENT_WEATHER_SNOWSTORM = 0;}; //--- snow storms	
	if (isNil "WFBE_C_ENVIRONMENT_WEATHER_SNOWFLAKES") then {WFBE_C_ENVIRONMENT_WEATHER_SNOWFLAKES = 0;}; //--- snow storms	
	if (isNil "WFBE_C_ENVIRONMENT_WEATHER_OVERCAST") then {WFBE_C_ENVIRONMENT_WEATHER_OVERCAST = 30;}; //--- weather conditions
	if (isNil "WFBE_C_ENVIRONMENT_WEATHER_FOG") then {WFBE_C_ENVIRONMENT_WEATHER_FOG = 0;}; //--- fog conditions
	if (isNil "WFBE_C_ENVIRONMENT_WEATHER_WIND") then {WFBE_C_ENVIRONMENT_WEATHER_WIND = 30;}; //--- wind conditions
	if (isNil "WFBE_C_ENVIRONMENT_WEATHER_WAVES") then {WFBE_C_ENVIRONMENT_WEATHER_WAVES = 0;}; //--- waves on sea conditions
	WFBE_C_ENVIRONMENT_WEATHER_TRANSITION = 1800; //--- Weather Transition period, change weather overcast each x seconds (longer is more realistic).

//--- Gameplay.
	if (isNil "WFBE_C_GAMEPLAY_BOUNDARIES_ENABLED") then {WFBE_C_GAMEPLAY_BOUNDARIES_ENABLED = 1;}; //--- Enable the map boundaries if defined.
	if (isNil "WFBE_C_GAMEPLAY_FATIGUE_ENABLED") then {WFBE_C_GAMEPLAY_FATIGUE_ENABLED = 0;}; //--- Disable the fatigue system for default.
	if (isNil "WFBE_C_GAMEPLAY_UPGRADES_CLEARANCE") then {WFBE_C_GAMEPLAY_UPGRADES_CLEARANCE = 0;}; //--- Upgrade clearance (on start), 0: Disabled, 1: West, 2: East, 3: Res, 4: West + East, 5: West + Res, 6: East + Res, 7: All.
	if (isNil "WFBE_C_GAMEPLAY_VICTORY_CONDITION") then {WFBE_C_GAMEPLAY_VICTORY_CONDITION = 2;}; //--- Victory Condition (0: Annihilation, 1: Assassination, 2: Supremacy, 3: Towns).
	if (isNil "WFBE_C_GAMEPLAY_MISSILES_RANGE") then {WFBE_C_GAMEPLAY_MISSILES_RANGE = 3500;}; //--- missile range limit
	WFBE_C_GAMEPLAY_VOTE_TIME = if (WF_Debug) then {4} else {40};	
	if (isNil "WFBE_DEBUG_DISABLE_TOWN_INIT") then {WFBE_DEBUG_DISABLE_TOWN_INIT = 0;};

//--- Modules.
	if (isNil "WFBE_C_MODULE_WFBE_EASA") then {WFBE_C_MODULE_WFBE_EASA = 1;}; //--- Enable the Exchangeable Armament System for Aircraft.
	if (isNil "WFBE_C_MODULE_WFBE_ICBM") then {WFBE_C_MODULE_WFBE_ICBM = 1;}; //--- Enable the Intercontinental Ballistic Missile call for the commander.
	if (isNil "WFBE_C_INCOME_TIME_OF_ICBM") then {WFBE_C_INCOME_TIME_OF_ICBM = 180;}; //--- Default value for income time of ICBM if it did not get.

//--- Players.
	if (isNil "WFBE_C_PLAYERS_AI_MAX") then {WFBE_C_PLAYERS_AI_MAX = 10;}; //--- Max AI allowed on each player groups.
	WFBE_C_PLAYERS_BOUNTY_CAPTURE = 2000;
	WFBE_C_PLAYERS_BOUNTY_CAPTURE_ASSIST = 2000;
	WFBE_C_PLAYERS_BOUNTY_CAPTURE_MISSION = 2000;
	WFBE_C_PLAYERS_BOUNTY_CAPTURE_MISSION_ASSIST = 2000;
	WFBE_C_PLAYERS_COMMANDER_BOUNTY_CAPTURE_COEF = 60;
	WFBE_C_PLAYERS_COMMANDER_SCORE_BUILD = 2;
	WFBE_C_PLAYERS_COMMANDER_SCORE_CAPTURE = 5;
	WFBE_C_PLAYERS_COMMANDER_SCORE_UPGRADE = 2;
	WFBE_C_PLAYERS_GEAR_SELL_COEF = 0.6; //--- Sell price of the gear: item price * x (800 * 0.2 = 400)
	WFBE_C_PLAYERS_GEAR_VEHICLE_RANGE = 50; //--- Possible to buy gear in vehicle if that one is within that range.
	WFBE_C_PLAYERS_HALO_HEIGHT = 200; //--- Distance above which units are able to perform an HALO jump.
	WFBE_C_PLAYERS_MARKER_DEAD_DELAY = 60; //--- Time that a marker remain on a dead unit.
	WFBE_C_PLAYERS_MARKER_TOWN_RANGE = 0.05; //--- A town marker is updated (SV) on map if a unit is within the range (town range * coef).
	WFBE_C_PLAYERS_OFFMAP_TIMEOUT = 50; //--- Player may remain x second outside of the map before being killed.
	WFBE_C_PLAYERS_PENALTY_TEAMKILL = 1000; //--- Teamkill penalty.
	WFBE_C_PLAYERS_SCORE_CAPTURE = 10;
	WFBE_C_PLAYERS_SCORE_CAPTURE_ASSIST = 5;
	WFBE_C_PLAYERS_SCORE_CAPTURE_CAMP = 2;
	WFBE_C_PLAYERS_SCORE_DELIVERY = 3;
	WFBE_C_PLAYERS_SKILL_SOLDIER_UNITS_MAX = 6; //--- Skill (Soldiers), have more units than the others.
	WFBE_C_PLAYERS_SQUADS_MAX_PLAYERS = 4; //--- One player squad may contain up to x players.
	WFBE_C_PLAYERS_SQUADS_REQUEST_TIMEOUT = 100; //--- Time delay after which an unanswered request "fades".
	WFBE_C_PLAYERS_SQUADS_REQUEST_DELAY = 120; //--- Time delay between each potential squad hops.
	WFBE_C_PLAYERS_SUPPORT_PARATROOPERS_DELAY = 1200; //--- Paratroopers Call Interval.
	WFBE_C_PLAYERS_UAV_SPOTTING_DELAY = 20; //--- Interval between each uav spotting routine.
	WFBE_C_PLAYERS_UAV_SPOTTING_DETECTION = 0.21; //--- UAV will reveal each targets that it knows about this value (0-4)
	WFBE_C_PLAYERS_UAV_SPOTTING_RANGE = 1100; //--- Max Range of the UAV spotting.

//--- Respawn.
	if (isNil "WFBE_C_RESPAWN_CAMPS_MODE") then {WFBE_C_RESPAWN_CAMPS_MODE = 2;}; //--- Respawn Camps (0: Disabled, 1: Classic [from town center], 2: Enhanced [from nearby camps]).
	if (isNil "WFBE_C_RESPAWN_CAMPS_RANGE") then {WFBE_C_RESPAWN_CAMPS_RANGE = 550;}; //--- How far a player need to be from a town to spawn at camps.
	if (isNil "WFBE_C_RESPAWN_CAMPS_RULE_MODE") then {WFBE_C_RESPAWN_CAMPS_RULE_MODE = 2;}; //--- Respawn Camps Rule (0: Disabled, 1: West | East, 2: West | East | Resistance).
	if (isNil "WFBE_C_RESPAWN_DELAY") then {WFBE_C_RESPAWN_DELAY = 10;}; //--- Respawn Delay (Players/AI).
	if (WF_Debug) then {WFBE_C_RESPAWN_DELAY = 1;};
	if (isNil "WFBE_C_RESPAWN_MOBILE") then {WFBE_C_RESPAWN_MOBILE = 2;}; //--- Allow mobile respawn (0: Disabled, 1: Enabled, 2: Enabled but default gear).
	if (isNil "WFBE_C_RESPAWN_PENALTY") then {WFBE_C_RESPAWN_PENALTY = 4;}; //--- Respawn Penalty (0: None, 1: Remove All, 2: Pay full gear price, 3: Pay 1/2 gear price, 4: pay 1/4 gear price, 5: Charge on Mobile).
	WFBE_C_RESPAWN_CAMPS_SAFE_RADIUS = 50;
	WFBE_C_RESPAWN_RANGE_LEADER = 50;
	WFBE_C_RESPAWN_RANGES = [250, 350, 500];

//--- Structures.
	if (isNil "WFBE_C_STRUCTURES_COLLIDING") then {WFBE_C_STRUCTURES_COLLIDING = 1;};
	if (isNil "WFBE_C_STRUCTURES_CONSTRUCTION_MODE") then {WFBE_C_STRUCTURES_CONSTRUCTION_MODE = 0;}; //--- Structures construction mode (0: Time).
	if (isNil "WFBE_C_STRUCTURES_HQ_COST_DEPLOY") then {WFBE_C_STRUCTURES_HQ_COST_DEPLOY = 100;}; //--- HQ Deploy / Mobilize Price.
	if (isNil "WFBE_C_STRUCTURES_HQ_RANGE_DEPLOYED") then {WFBE_C_STRUCTURES_HQ_RANGE_DEPLOYED = 200;}; //--- HQ Deploy / Mobilize Price.
	if (isNil "WFBE_C_STRUCTURES_MAX") then {WFBE_C_STRUCTURES_MAX = 3;};
	WFBE_C_STRUCTURES_ANTIAIRRADAR_DETECTION = 100;
	WFBE_C_STRUCTURES_ANTIARTYRADAR_DETECTION = 5500;
	WFBE_C_STRUCTURES_BUILDING_DEGRADATION = 1; //--- Degredation of the building in time during a repair phase (over 100).
	WFBE_C_STRUCTURES_COMMANDCENTER_RANGE = 5500; //--- Command Center Range.
	WFBE_C_STRUCTURES_DAMAGES_REDUCTION = 4; //--- Building Damage Reduction (Current damage given / x, 1 = normal).
	WFBE_C_STRUCTURES_RUINS = "Land_Mil_Barracks_i_ruins_EP1"; //--- Ruins model.
	WFBE_C_STRUCTURES_SALE_DELAY = 50; //--- Building is sold after x seconds.
	WFBE_C_STRUCTURES_SALE_PERCENT = 50; //--- When a structure is sold, x% of supply goes back to the side.
	WFBE_C_STRUCTURES_SERVICE_POINT_RANGE = 50;
	WFBE_C_BASE_COIN_DISTANCE_MIN = 100;
	WFBE_C_BASE_COIN_GRADIENT_MAX = 4;


//--- Towns.
	if (isNil "WFBE_C_TOWNS_AMOUNT") then {WFBE_C_TOWNS_AMOUNT = 7;}; //--- Amount of towns (0: Very small, 1: Small, 2: Medium, 3: Large, 4: Full).
	if (isNil "WFBE_C_TOWNS_BUILD_PROTECTION_RANGE") then {WFBE_C_TOWNS_BUILD_PROTECTION_RANGE = 450;}; //--- Prevent construction in towns within that radius.
	if (isNil "WFBE_C_TOWNS_AI_SPAWN_RANGE") then {WFBE_C_TOWNS_AI_SPAWN_RANGE = 1000;};
	if (isNil "WFBE_C_TOWNS_CAPTURE_MODE") then {WFBE_C_TOWNS_CAPTURE_MODE = 2;}; //--- Town capture mode (0: Normal, 1: Threshold, 2: All Camps).
	if (isNil "WFBE_C_TOWNS_DEFENDER") then {WFBE_C_TOWNS_DEFENDER = 2;}; //--- Town defender Difficulty (0: Disabled, 1: Light, 2: Medium, 3: Hard, 4: Insane).
	if (isNil "WFBE_C_TOWNS_OCCUPATION") then {WFBE_C_TOWNS_OCCUPATION = 2;}; //--- Town occupation Difficulty (0: Disabled, 1: Light, 2: Medium, 3: Hard, 4: Insane).
	if (isNil "WFBE_C_TOWNS_GEAR") then {WFBE_C_TOWNS_GEAR = 1;}; //--- Buy Gear From (0: None, 1: Camps, 2: Depot, 3: Camps & Depot).
	if (isNil "WFBE_C_TOWNS_REINFORCEMENT_DEFENDER") then {WFBE_C_TOWNS_REINFORCEMENT_DEFENDER = 0;}; //--- Enable towns defender reinforcement.
	if (isNil "WFBE_C_TOWNS_REINFORCEMENT_OCCUPATION") then {WFBE_C_TOWNS_REINFORCEMENT_OCCUPATION = 0;}; //--- Enable towns occupation reinforcement.
	if (isNil "WFBE_C_TOWNS_STARTING_MODE") then {WFBE_C_TOWNS_STARTING_MODE = 0;}; //--- Town starting mode (0: Resistance, 1: 50% blu, 50% red, 2: Nearby Towns, 3: Random).
	if (isNil "WFBE_C_TOWNS_VEHICLES_LOCK_DEFENDER") then {WFBE_C_TOWNS_VEHICLES_LOCK_DEFENDER = 1;}; //--- Lock the vehicles of the defender side.
	WFBE_C_TOWNS_CAPTURE_ASSIST = 400;
	WFBE_C_TOWNS_CAPTURE_RANGE = 40;
	WFBE_C_TOWNS_CAPTURE_RATE = 0.4;
	WFBE_C_TOWNS_CAPTURE_THRESHOLD_RANGE = 140;
	WFBE_C_TOWNS_DEFENSE_RANGE = 30;
	WFBE_C_TOWNS_DETECTION_RANGE_ACTIVE_COEF = 1; //--- Town activation range once active (town range * coef)
	WFBE_C_TOWNS_DETECTION_RANGE_COEF = 1; //--- Town activation range while idling (town range * coef)
	WFBE_C_TOWNS_DETECTION_RANGE_AIR = 50; //--- Detect Air if > x
	WFBE_C_TOWNS_PATROL_HOPS = 5; //--- Amount of Waypoints given to the AI Patrol in towns (Higher is wider).
	WFBE_C_TOWNS_PATROL_RANGE = 500;
	WFBE_C_TOWNS_PURCHASE_RANGE = 60;
	WFBE_C_TOWNS_SUPPLY_LEVELS_TIME = [1, 2, 3, 4, 5];
	WFBE_C_TOWNS_UNITS_INACTIVE = 90; //--- Remove units in town if no enemies are to be found within that time.
	WFBE_C_TOWNS_UNITS_SPAWN_CAPTURE_DELAY = 1200; //--- If x seconds has elapsed since a town last capture, units may spawn again during that town capture.
	WFBE_C_TOWNS_UNITS_WAYPOINTS = 9;

//--- Units.
	if (isNil "WFBE_C_UNITS_BALANCING") then {WFBE_C_UNITS_BALANCING = 1;}; //--- Enable Units weaponry balancing.
	if (isNil "WFBE_C_UNITS_CLEAN_TIMEOUT") then {WFBE_C_UNITS_CLEAN_TIMEOUT = 60;}; //--- Lifespan of a dead body.
	if (isNil "WFBE_C_UNITS_EMPTY_TIMEOUT") then {WFBE_C_UNITS_EMPTY_TIMEOUT = 1200;}; //--- Lifespan of an empty vehicle.
		WFBE_C_UNITS_BODIES_TIMEOUT = 120;
	if (isNil "WFBE_C_UNITS_KAMOV_DISABLED") then {WFBE_C_UNITS_KAMOV_DISABLED = 0;}; //--- Enable Kamov.
	if (isNil "WFBE_C_UNITS_PRICING") then {WFBE_C_UNITS_PRICING = 0;}; //--- Price Focus. (0: Default, 1: Infantry, 2: Tanks, 3: Air).
	if (isNil "WFBE_C_UNITS_TOWN_PURCHASE") then {WFBE_C_UNITS_TOWN_PURCHASE = 1;}; //--- Allow AIs to be bought from depots.
	if (isNil "WFBE_C_UNITS_TRACK_INFANTRY") then {WFBE_C_UNITS_TRACK_INFANTRY = 1;}; //--- Track units on map (infantry).
	if (isNil "WFBE_C_UNITS_TRACK_LEADERS") then {WFBE_C_UNITS_TRACK_LEADERS = 1;}; //--- Track playable Team Leaders on map (infantry).
	WFBE_C_UNITS_BOUNTY_COEF = 1; //--- Bounty is the unit price * coef.
	WFBE_C_UNITS_BOUNTY_ASSISTANCE_COEF = 0.5; //--- Bounty assistance is the unit price * coef * assist coef.
	WFBE_C_UNITS_COUNTERMEASURE_PLANES = 64;
	WFBE_C_UNITS_COUNTERMEASURE_CHOPPERS = 32;
	WFBE_C_UNITS_CREW_COST = 120;
	WFBE_C_UNITS_PURCHASE_RANGE = 150;
	WFBE_C_UNITS_PURCHASE_GEAR_RANGE = 150;
	WFBE_C_UNITS_PURCHASE_GEAR_MOBILE_RANGE = 5;
	WFBE_C_UNITS_PURCHASE_GEAR_MOBILE_AI_RANGE = 45;
	WFBE_C_UNITS_PURCHASE_HANGAR_RANGE = 50;
	WFBE_C_UNITS_REPAIR_TRUCK_RANGE = 40;
	WFBE_C_UNITS_SALVAGER_SCAVENGE_RANGE = 60;
	WFBE_C_UNITS_SALVAGER_SCAVENGE_RATIO = 60; //--- Salvager Sell %.
	WFBE_C_UNITS_SKILL_DEFAULT = .7;
	WFBE_C_UNITS_SUPPORT_RANGE = 70; //--- Action range for repair/rearm/refuel.
	WFBE_C_UNITS_SUPPORT_HEAL_PRICE = 125;
	WFBE_C_UNITS_SUPPORT_HEAL_TIME = 10;
	WFBE_C_UNITS_SUPPORT_REARM_PRICE = 14;
	WFBE_C_UNITS_SUPPORT_REARM_TIME = 20;
	WFBE_C_UNITS_SUPPORT_REFUEL_PRICE = 16;
	WFBE_C_UNITS_SUPPORT_REFUEL_TIME = 10;
	WFBE_C_UNITS_SUPPORT_REPAIR_PRICE = 2;
	WFBE_C_UNITS_SUPPORT_REPAIR_TIME = 20;
	WFBE_C_GARBAGE_OBJECTS = ['Land_HBarrier_large','Land_HBarrier5','Land_GarbageWashingMachine_F','Land_GarbageBags_F',
	                            'Land_Garbage_square5_F','Land_BagFence_End_F','Land_Wreck_Skodovka_F','Land_GarbagePallet_F',
	                                'Land_Wreck_BMP2_F','Land_HelipadCircle_F', 'Land_HBarrier_1_F', 'Land_HBarrier_5_F', 'Land_HBarrier_3_F',
	                                    'Land_fort_bagfence_long','Land_fort_bagfence_round','Land_HBarrier1','Land_HBarrier3',
	                                        'Land_BagFence_Long_F','Land_BagFence_Round_F',''];
	WFBE_C_STATIC_DEFENCE_FOR_COMPOSITIONS = ['CUP_I_DSHKM_TK_GUE','CUP_I_2b14_82mm_TK_GUE'];
	WFBE_C_UNITS_TO_BALANCE = ['RHS_AH64D', 'RHS_AH64D_AA', 'RHS_AH64D_CS', 'RHS_Ka52_UPK23_vvsc', 'RHS_Ka52_vvsc', 'CUP_B_AH1Z_Dynamic_USMC', 'RHS_M6','RHS_M6_wd','RHS_M2A2','RHS_M2A2_BUSKI','RHS_M2A3','RHS_M2A3_BUSKI','RHS_M2A3_BUSKIII','RHS_M2A2_wd','RHS_M2A2_BUSKI_wd','RHS_M2A3_wd','RHS_M2A3_BUSKI_wd','RHS_M2A3_BUSKIII_wd'];
	
	WFBE_C_INFANTRY_TO_REQUIP = [
	 
	 ['CUP_O_RU_Soldier_Lite_Ratnik_BeigeDigital', ['CUP_arifle_AK105', 'CUP_LRTV'], ['CUP_30Rnd_545x39_AK74M_M x6', 'CUP_HandGrenade_RGD5 x1', 'SmokeShell x1', 'Laserbatteries x1']]
		
		
		];





	WFBE_C_COMBAT_JETS_WITH_BOMBS = ['CUP_O_SU34_RU', 'CUP_B_AV8B_DYN_USMC', 'CUP_B_A10_DYN_USA', 'CUP_O_Su25_Dyn_TKA', 'rhs_mig29s_vmf',
        'CUP_O_L39_TK','RHS_T50_vvs_generic_ext','CUP_B_L39_CZ','CUP_B_F35B_BAF','CUP_B_F35B_Stealth_BAF','rhsusf_f22'];

    WFBE_C_BOMBS_TO_DISABLE_AUTOGUIDE = ["CUP_FAB250","CUP_Mk_82","CUP_Bo_GBU12_LGB","CUP_Bo_KAB250_LGB","CUP_Triple_Bomb_Rack_Dummy",
                                                            "CUP_Dual_Bomb_Rack_Dummy"];

    WFBE_C_ADV_AIR_DEFENCE = ["uns_sa2_static_NVA", "B_SAM_System_02_F"];
    WFBE_CENTURION_RELOAD_TIME = 10;
		
	//--Parameters: 1 - pylon num, 2 - ammo class name, 3 - pylot direction, 4 - turret num, 5 - count--
	//--ATTENTION: In case when "count" parameter has been set, the first parameter must be a number!--
	WFBE_C_AIR_VEHICLE_TO_REQUIP = [		
		['AH-1Z (Multirole)', [[1, "CUP_PylonPod_1Rnd_AIM_9L_Sidewinder_M", true, [0]],
		                            [2, "CUP_PylonPod_19Rnd_Rocket_FFAR_M", false, [1]],
		                            [3, "rhs_mag_AGM114L_4", true, [0], 4],
		                            [4, "rhs_mag_AGM114L_4", true, [0], 4],
		                            [2, "CUP_PylonPod_19Rnd_Rocket_FFAR_M", false, [1]],
		                            [6, "CUP_PylonPod_1Rnd_AIM_9L_Sidewinder_M", true, [0]]]
		],
		/*['AH-1Z (Land support)', [[1, "", true, [0]],
		                            [2, "CUP_PylonPod_19Rnd_Rocket_FFAR_M", false, [1]],
		                            [3, "rhs_mag_AGM114L_4", true, [0], 4],
		                            [4, "rhs_mag_AGM114L_4", true, [0], 4],
		                            [2, "CUP_PylonPod_19Rnd_Rocket_FFAR_M", false, [1]],
		                            [6, "", true, [0]]]
		],*/
		['RHS_AH64D_CS', 			[["pylon2","rhs_mag_AGM114L_4",true,[0]],
									["pylon5","rhs_mag_AGM114L_4",true,[0]]]		                            
		],
		['RHS_AH64D_AA', 			[["pylon4","rhs_mag_AGM114L_4",true,[0]]]],
		['RHS_AH64D', 			[["pylon4","rhs_mag_AGM114L_4",true,[0]],
								 ["pylonTip1","CUP_PylonPod_1Rnd_AIM_120_AMRAAM_M",true,[0]],
								 ["pylonTip6","CUP_PylonPod_1Rnd_AIM_120_AMRAAM_M",true,[0]]
								]
		],
		['CUP_O_SU34_RU',			[["pylons1","CUP_PylonPod_1Rnd_R73_Vympel",true,[]],
									["pylons12","CUP_PylonPod_1Rnd_R73_Vympel",true,[]]]
		],
		['CUP_B_AV8B_DYN_USMC',		[["RightWingOut","CUP_PylonPod_1Rnd_AIM_120_AMRAAM_M",true,[]],
									["RightWingMid","CUP_PylonPod_19Rnd_CRV7_HE_plane_M",true,[]],
									["LeftWingOut","CUP_PylonPod_1Rnd_AIM_120_AMRAAM_M",true,[]],
									["LeftWingMid","CUP_PylonPod_19Rnd_CRV7_HE_plane_M",true,[]]]
		],
		['CUP_B_GR9_DYN_GB',		[["Center","CUP_PylonPod_19Rnd_CRV7_HE_plane_M",true,[]]]
		],
		['CUP_B_A10_DYN_USA',		[[1,"CUP_PylonPod_1Rnd_AIM_120_AMRAAM_M",true,[], 2],
									 [11,"",true,[]]]
		],
		['RHS_MELB_AH6M',		[["pylon4","rhs_mag_M229_7",true,[]],
								["pylon1","rhs_mag_M229_7",true,[]],
								["pylon2","",true,[]],
								["pylon3","",true,[]]]
		],
		['CUP_O_Mi24_V_Dynamic_RU',		[["pylons1","CUP_PylonPod_2Rnd_AT6_M",true,[0]],
										["pylons6","CUP_PylonPod_2Rnd_AT6_M",true,[0]],
										["pylons5","CUP_PylonPod_2Rnd_AT6_M",true,[0]],
										["pylons2","CUP_PylonPod_2Rnd_AT6_M",true,[0]]]
		],
		['CUP_O_Mi24_P_Dynamic_RU',		[["pylons3","CUP_PylonPod_20Rnd_S8N_CCIP_M",true,[]],
										["pylons4","CUP_PylonPod_20Rnd_S8N_CCIP_M",true,[]],
										["pylons6","CUP_PylonPod_2Rnd_AT6_M",true,[0]],
										["pylons1","CUP_PylonPod_2Rnd_AT6_M",true,[0]]]
		]
	];

	WFBE_ADV_ARTILLERY = ['RHS_BM21_MSV_01', 'rhs_2s3_tv', 'CUP_B_M270_HE_USA','rhsusf_m109d_usarmy', 'CUP_B_M270_HE_USMC',
	                          'rhsusf_m109_usarmy','RHS_BM21_MSV_01','rhs_2s3_tv'];
	WFBE_ADV_ARTY_DISCOUNT = 0.3; // 30% discount on arty installations
	WFBE_ADV_UAV_DISCOUNT = 0.3; // 30% discount on UAV in tactical menu

	//--- Units Factions.
	if (isNil "WFBE_C_UNITS_FACTION_EAST") then {WFBE_C_UNITS_FACTION_EAST = 0;}; //--- East Faction.
	if (isNil "WFBE_C_UNITS_FACTION_GUER") then {WFBE_C_UNITS_FACTION_GUER = 0;}; //--- Guerilla Faction.
	if (isNil "WFBE_C_UNITS_FACTION_WEST") then {WFBE_C_UNITS_FACTION_WEST = 0;}; //--- West Faction.
	WFBE_C_UNITS_FACTIONS_EAST = ['RU']; //--- East Factions.
	WFBE_C_UNITS_FACTIONS_GUER = ['GUE']; //--- Guerilla Factions.
	WFBE_C_UNITS_FACTIONS_WEST = ['US']; //--- West Factions.


//--- Victory.
	WFBE_C_VICTORY_THREEWAY = 0; //--- Victory Condition (0: Side a vs Side b [supremacy] minus defender).
	WFBE_C_VICTORY_THREEWAY_LOCATION_SWAP = 300; //--- When the defender loose depending on victory conditions, startup locations become available for respawn with a rotation (to prevent spawn camping).

//--- Overall mission coloration.
if (side player == west) then{
	missionNamespace setVariable ["WFBE_C_WEST_COLOR", "ColorGreen"];
	missionNamespace setVariable ["WFBE_C_EAST_COLOR", "ColorRed"];
	missionNamespace setVariable ["WFBE_C_GUER_COLOR", "ColorBlue"];
	missionNamespace setVariable ["WFBE_C_CIV_COLOR", "ColorYellow"];
	missionNamespace setVariable ["WFBE_C_UNKNOWN_COLOR", "ColorBlue"];
}else{
	missionNamespace setVariable ["WFBE_C_WEST_COLOR", "ColorRed"];
	missionNamespace setVariable ["WFBE_C_EAST_COLOR", "ColorGreen"];
	missionNamespace setVariable ["WFBE_C_GUER_COLOR", "ColorBlue"];
	missionNamespace setVariable ["WFBE_C_CIV_COLOR", "ColorYellow"];
	missionNamespace setVariable ["WFBE_C_UNKNOWN_COLOR", "ColorBlue"];
};

	/* Special Variables, Those are used after the typical declaration above. */

//--- Build area (Radius/Height).
	WFBE_C_BASE_COIN_AREA_HQ_DEPLOYED = [WFBE_C_STRUCTURES_HQ_RANGE_DEPLOYED, 25];
	WFBE_C_BASE_COIN_AREA_HQ_UNDEPLOYED = [WFBE_C_STRUCTURES_HQ_RANGE_DEPLOYED / 2, 25];
	WFBE_C_BASE_COIN_AREA_REPAIR = [45, 10];

//--- Max structures.
	if (isNil 'WFBE_C_STRUCTURES_MAX_BARRACKS') then {WFBE_C_STRUCTURES_MAX_BARRACKS = WFBE_C_STRUCTURES_MAX;};
	if (isNil 'WFBE_C_STRUCTURES_MAX_LIGHT') then {WFBE_C_STRUCTURES_MAX_LIGHT = WFBE_C_STRUCTURES_MAX;};
	if (isNil 'WFBE_C_STRUCTURES_MAX_COMMANDCENTER') then {WFBE_C_STRUCTURES_MAX_COMMANDCENTER = WFBE_C_STRUCTURES_MAX;};
	if (isNil 'WFBE_C_STRUCTURES_MAX_HEAVY') then {WFBE_C_STRUCTURES_MAX_HEAVY = WFBE_C_STRUCTURES_MAX;};
	if (isNil 'WFBE_C_STRUCTURES_MAX_AIRCRAFT') then {WFBE_C_STRUCTURES_MAX_AIRCRAFT = WFBE_C_STRUCTURES_MAX;};
	if (isNil 'WFBE_C_STRUCTURES_MAX_SERVICEPOINT') then {WFBE_C_STRUCTURES_MAX_SERVICEPOINT = WFBE_C_STRUCTURES_MAX * 2;};
	if (isNil 'WFBE_C_STRUCTURES_MAX_TENTS') then {WFBE_C_STRUCTURES_MAX_TENTS = 3;};

//--- Apply a towns unit coeficient.
	WFBE_C_TOWNS_UNITS_COEF = switch (WFBE_C_TOWNS_OCCUPATION) do {case 1: {1}; case 2: {1.5}; case 3: {2}; case 4: {2.5}; default {1}};
	WFBE_C_TOWNS_UNITS_DEFENDER_COEF = switch (WFBE_C_TOWNS_DEFENDER) do {case 1: {1}; case 2: {1.5}; case 3: {2}; case 4: {2.5}; default {1}};
	WFBE_C_TOWNS_ALL_SIDES = [west, east, resistance, sideEnemy];
};

["INITIALIZATION", "Init_CommonConstants.sqf: Constants are defined."] Call WFBE_CO_FNC_LogContent;