//--- GAME STATICS ---//
//When adding steam uid's here, only need to add to highest level, ie if you dev, then you also admin and vp...or if you admin you also in vp level
CTI_VP_LIST_UID = [
	"76561193675353670" //Jaket
];
CTI_ADMIN_LIST_UID = [
	"76561198035032966", //Vaporite
	"76561198411897684", //Killyah
	"76561198020877622", //Nappa
	"76561198013571500", //Focke
	"76561197973985373" //Gravix
];
CTI_DEV_LIST_UID = [
	"76561197963729019", //Omon
	"76561198002521967", //Liveandletdie
	"76561197987488573", //Deadly
	"76561198007029852", //Apollo
	"76561197994945391", //Protoss
	"76561198030373186", //Tookatee
	"76561197964959253" //Kuriosly
];

//--- Base: Factories type
CTI_FACTORY_BARRACKS = 0;
CTI_FACTORY_LIGHT = 1;
CTI_FACTORY_HEAVY = 2;
CTI_FACTORY_AIR_ROTARY = 3;
CTI_FACTORY_AIR_FIXED = 4;
CTI_FACTORY_REPAIR = 5;
CTI_FACTORY_AMMO = 6;
CTI_FACTORY_NAVAL = 7;
CTI_FACTORY_DEPOT = 8;
CTI_FACTORY_RADAR = 9;
CTI_FACTORY_RADAR_ART = 10;
CTI_FACTORY_LARGE_FOB = 11;

CTI_PV_SERVER = 2;
CTI_PV_CLIENTS = [-2, 0] select (!isMultiplayer || CTI_IsHostedServer);

//--- Base: Structures variable names
CTI_BARRACKS = "Barracks";
CTI_LIGHT = "Light";
CTI_CONTROLCENTER = "ControlCenter";
CTI_HEAVY = "Heavy";
CTI_AIR_ROTARY = "AirRotary";
CTI_AIR_FIXED = "AirFixed";
CTI_REPAIR = "Repair";
CTI_AMMO = "Ammo";
CTI_NAVAL = "Naval";
CTI_DEPOT = "Depot";
CTI_DEPOT_NAVAL = "DepotNaval";
CTI_RADAR = "Radar";
CTI_RADAR_ART = "RadarArt";
CTI_HQ_DEPLOY = "HQDeployed";
CTI_HQ_MOBILIZE = "HQMobilized";
CTI_SUPPLY_DEPOT = "SupplyDepot";
CTI_SATELLITE = "Satellite";
CTI_FOB = "FOB";
CTI_LARGE_FOB = "LargeFOB";
CTI_AMMO_TRUCK = "AmmoTruck";//mobile gear check

CTI_FACTORIES = [CTI_BARRACKS, CTI_LIGHT, CTI_HEAVY, CTI_AIR_ROTARY, CTI_AIR_FIXED, CTI_REPAIR, CTI_AMMO, CTI_NAVAL];

//--- Game: Sides color
CTI_WEST_COLOR = "ColorBlue";
CTI_EAST_COLOR = "ColorRed";
CTI_RESISTANCE_COLOR = "ColorGreen";

//--- Base: Structures constants
CTI_STRUCTURE_LABELS = 0;
CTI_STRUCTURE_CLASSES = 1;
CTI_STRUCTURE_PRICE = 2;
CTI_STRUCTURE_TIME = 3;
CTI_STRUCTURE_MAX = 4;
CTI_STRUCTURE_PLACEMENT = 5;
CTI_STRUCTURE_SPECIALS = 6;
CTI_STRUCTURE_CONDITION = 7;
CTI_STRUCTURE_RESPAWNBPOS = 8;

//--- Base: Defenses constants
CTI_DEFENSE_ENABLED = 0;
CTI_DEFENSE_LABEL = 1;
CTI_DEFENSE_CLASS = 2;
CTI_DEFENSE_PRICE = 3;
CTI_DEFENSE_PLACEMENT = 4;
CTI_DEFENSE_CATEGORY = 5;
CTI_DEFENSE_COINMENU = 6;
CTI_DEFENSE_COINBLACKLIST = 7;
CTI_DEFENSE_UPGRADE = 8;
CTI_DEFENSE_MAXCOUNT = 9;
CTI_DEFENSE_COOLDOWN = 10;
CTI_DEFENSE_DISMANTLE = 11;
CTI_DEFENSE_SPECIALS = 12;
CTI_DEFENSE_MOD = 13;
CTI_DEFENSE_CONDITION = 14;

CTI_CAMP_RESPAWNBPOS = 0;

//--- Classes: Gear constants
CTI_GEAR_PROPERTIES = 0; //array of upgrade, price, name, location, enabled, mod
CTI_GEAR_TYPE = 1; //item type
CTI_GEAR_CONFIG = 2; //config type -- glasses, mags, weapons, etc..
CTI_GEAR_FILTERUI = 3; //Filter Type Tags
CTI_GEAR_FILTERCAMO = 4; //Filter Camo Tags

//--- UI: Gear tab constants
CTI_GEAR_TAB_PRIMARY = 0;
CTI_GEAR_TAB_SECONDARY = 1;
CTI_GEAR_TAB_HANDGUN = 2;
CTI_GEAR_TAB_ACCESSORIES = 3;
CTI_GEAR_TAB_AMMO = 4;
CTI_GEAR_TAB_MISC = 5;
CTI_GEAR_TAB_EQUIPMENT = 6;
CTI_GEAR_TAB_TEMPLATES = 7;

//--- Classes: Units constants
CTI_UNIT_ENABLED = 0;
CTI_UNIT_NAME = 1;
CTI_UNIT_CLASSNAME = 2;
CTI_UNIT_LABEL = 3;
CTI_UNIT_FACTORY = 4;
CTI_UNIT_UPGRADE = 5;
CTI_UNIT_PRICE = 6;
CTI_UNIT_TIME = 7;
CTI_UNIT_DISTANCE = 8;
CTI_UNIT_FILTERUI = 9;
CTI_UNIT_TYPE = 10;
CTI_UNIT_AMMO = 11;
CTI_UNIT_MAX = 12;
CTI_UNIT_MODIFIERS = 13;
CTI_UNIT_SCRIPT = 14;
CTI_UNIT_PICTURE = 15;
CTI_UNIT_TURRETS = 16;
CTI_UNIT_MOD = 17;

//--- Classes: AMMO constants
CTI_AMMO_ENABLED = 0;
CTI_AMMO_NAME = 1;
CTI_AMMO_TYPE = 2;
CTI_AMMO_CLASSNAME = 3;
CTI_AMMO_LOCATION = 4;
CTI_AMMO_UPGRADE = 5;
CTI_AMMO_PRICE = 6;
CTI_AMMO_TIME = 7;
CTI_AMMO_FILTERS = 8;

CTI_WEAPON_ENABLED = 0;
CTI_WEAPON_NAME = 1;
CTI_WEAPON_CLASSNAME = 2;
CTI_WEAPON_MAXMAGS = 3;

CTI_WEST_ID = 0;
CTI_EAST_ID = 1;
CTI_RESISTANCE_ID = 2;

CTI_SPECIAL_REPAIRTRUCK = 0;
CTI_SPECIAL_AMMOTRUCK = 1;
CTI_SPECIAL_MEDICALVEHICLE = 2;
CTI_SPECIAL_FUELTRUCK = 3;
CTI_SPECIAL_GEAR = 4;
CTI_SPECIAL_NUKETRUCK = 5;
CTI_SPECIAL_DEFENSETRUCK = 6;
CTI_SPECIAL_DEPLOYABLEFOB = 7;
CTI_SPECIAL_DEPLOYABLEFOBLARGE = 8;
CTI_SPECIAL_ECM = 9;

CTI_AI_COMMANDER_BUYTO_INFANTRY = 20;
CTI_AI_COMMANDER_BUYTO_LIGHT = 13;
CTI_AI_COMMANDER_BUYTO_HEAVY = 15;
CTI_AI_COMMANDER_BUYTO_AIR = 6;

CTI_AI_COMMANDER_TRANSFER_FUNDS_CHANCE = 50;

CTI_AI_COMMANDER_FUNDS_INFANTRY = 250;
CTI_AI_COMMANDER_FUNDS_LIGHT = 500;
CTI_AI_COMMANDER_FUNDS_HEAVY = 750;
CTI_AI_COMMANDER_FUNDS_AIR = 1000;

CTI_AI_COMMANDER_TEAMS_UPDATE_DELAY = 360;

// Constants for parsing grid numbers
CTI_GRID_0 = "zero";
CTI_GRID_1 = "one";
CTI_GRID_2 = "two";
CTI_GRID_3 = "three";
CTI_GRID_4 = "four";
CTI_GRID_5 = "five";
CTI_GRID_6 = "six";
CTI_GRID_7 = "seven";
CTI_GRID_8 = "eight";
CTI_GRID_9s = "nine";
//---  OFPS Core Pack Check
OFPS_Core_Loaded = false;
if ( isClass (configFile >> "CfgPatches" >> "ofps_Sound") ) then {OFPS_Core_Loaded = true;};

//---------------------------------------------------AI TEAMS------------------------------------------------------------//
/*
 * The AI Teams are lead by playable leaders which perform different tasks by themselves depending on the commander's orders.
 *
 * Those scripts are used by AI teams:
 * - Server\FSM\update_ai.fsm: This controls the AI Teams "flow"
 * - Server\Functions\FSM\Functions_FSM_UpdateAI.sqf: This contains the functions related to the FSM
 */

//--- AI Teams: Vehicles
CTI_AI_TEAMS_CARGO_VEHICLES_DISEMBARK_RANGE = 850; //--- AI will get out x meters before their target and will use transport which are x meters away from their objectives
CTI_AI_TEAMS_CARGO_VEHICLES_MATCH_RANGE = 550; //--- AI will use transports which objective are within x meters of theirs
CTI_AI_TEAMS_CARGO_VEHICLES_RANGE = 250; //--- AI will look for cargo-able vehicles within that range
CTI_AI_TEAMS_COMMAND_VEHICLES_RANGE = 300; //--- AI will look for commandable vehicles within that range
CTI_AI_TEAMS_FOOT_EMBARK_RANGE = 450; //--- AI leaders on foot will try to embark their team's vehicle within that range as driver

//--- AI Teams: Towns defense
CTI_AI_TEAMS_DEFEND_TOWNS = 1; //--- Static amount of AI which will perform a defensive duty (scales with slot count)
CTI_AI_TEAMS_DEFEND_TOWNS_WORTH = 50; //--- Defend towns which values are worth more than x

//--- AI Teams: Observation
CTI_AI_TEAMS_OBSERVATION_BASE_DELAY = 60; //--- Delay between reports from a same group about structures
CTI_AI_TEAMS_OBSERVATION_UNIT_DELAY = 60; //--- Delay between reports from a same group about units
CTI_AI_TEAMS_OBSERVATION_ACCURACY = 50; //--- Accuracy of an AI map reports
CTI_AI_TEAMS_OBSERVATION_MARKER_LIFESPAN = 120; //--- Time a reporting marker may remain

//--- AI Teams: Units
CTI_AI_TEAMS_UNITS_MIN = 4; //--- Amount of units an AI leader need to have to be able to perform it's duty (It will resupply @base if it's lower)
CTI_AI_TEAMS_UNITS_ON_DISCONNECT_MODE = 1; //--- (0: Remove units instantly, 1: remove units after CTI_AI_TEAMS_UNITS_DELETE_AFTER seconds, 2: don't remove units)
CTI_AI_TEAMS_UNITS_DELETE_AFTER = 300; //--- Deletes ai after x seconds (Only applies if CTI_AI_TEAMS_UNITS_ON_DISCONNECT_MODE = 1)

//-----------------------------------------------------------------------------------------------------------------------//
//----------------------------------------------------ToolKitRepairTimes-------------------------------------------------------------//
CTI_TOOLKIT_REPAIR_TIME_TANK = 45; //repair time for tracked vehicles in seconds
CTI_TOOLKIT_REPAIR_TIME_CAR = 20; // repair time for wheeled vehicles including apcs in seconds
CTI_TOOLKIT_REPAIR_TIME_AIR = 45; // repair time for aircraft in seconds
CTI_TOOLKIT_REPAIR_TIME_SHIP = 60; // repair time for ships in seconds
CTI_TOOLKIT_REPAIR_TIME_UNKNOWN = 20; //default repair time for a vehicle in seconds
CTI_TOOLKIT_HITPOINT_REPAIR_AMMOUNT = 0.4; // a number between 0-1. When a vehicle part is repaired, this is the max ammount of health that part has. "You gotta have logistics"

//----------------------------------------------------VehiclesWithLaserDesignators-------------------------------------------------------------//
CTI_LASERDES_VEHICLES_AIR = ["B_Plane_CAS_01_dynamicLoadout_F","OFPS_HELLCAT_O_DYNAMIC","B_UAV_02_dynamicLoadout_F", "B_T_UAV_03_dynamicLoadout_F", "B_T_VTOL_01_infantry_F", "B_T_VTOL_01_vehicle_F", "B_T_VTOL_01_armed_F", "B_Plane_Fighter_01_F", "B_Plane_Fighter_01_Stealth_F", "B_UAV_05_F", "O_Plane_CAS_02_dynamicLoadout_F", "O_UAV_02_dynamicLoadout_F", "O_T_UAV_04_CAS_F", "O_T_VTOL_02_infantry_dynamicLoadout_F", "O_T_VTOL_02_vehicle_dynamicLoadout_F", "O_Plane_Fighter_02_F", "O_Plane_Fighter_02_Stealth_F", "I_UAV_02_dynamicLoadout_F", "I_Plane_Fighter_04_F", "CUP_B_SU34_LGB_CDF", "CUP_B_SU34_AGM_CDF", "CUP_B_AH6J_Escort_USA", "CUP_B_AH6J_AT_USA", "CUP_B_AH6J_MP_USA", "CUP_B_AH6J_Escort19_USA", "CUP_B_MH6J_USA", "CUP_I_MH6J_RACS", "CUP_B_AH6X_USA", "CUP_B_AH1Z_USMC", "CUP_B_AH1Z_AT_USMC", "CUP_B_AH1Z_Escort_USMC", "CUP_B_AH1Z_7RndHydra_USMC", "CUP_B_AH1Z_14RndHydra_USMC", "CUP_B_AH1Z_NOAA_USMC", "CUP_B_AH64D_NO_USA", "CUP_B_AH64D_AT_USA", "CUP_B_AH64D_ES_USA", "CUP_B_AH64D_USA", "CUP_B_AH64D_MR_USA", "CUP_B_AH1_NO_BAF", "CUP_B_AH1_AT_BAF", "CUP_B_AH1_ES_BAF", "CUP_B_AH1_BAF", "CUP_B_AH1_MR_BAF", "CUP_B_AW159_Unarmed_GB", "CUP_B_AW159_Hellfire_GB", "CUP_B_AW159_Cannon_GB", "CUP_B_AW159_Hellfire_RN_Grey", "CUP_B_AW159_Cannon_RN_Grey", "CUP_B_Wildcat_Unarmed_RN_Blackcat", "CUP_B_AW159_Hellfire_RN_Blackcat", "CUP_B_AW159_Cannon_RN_Blackcat", "CUP_B_Mi24_D_CDF", "CUP_B_Mi35_CZ", "CUP_B_Mi35_CZ_Des", "CUP_B_Mi35_CZ_Ram", "CUP_B_Mi35_CZ_Tiger", "CUP_B_Mi35_CZ_Dark", "CUP_B_USMC_MQ9", "CUP_B_MV22_USMC", "CUP_B_MV22_VIV_USMC", "CUP_B_MV22_USMC_RAMPGUN", "CUP_B_Pchela1T_CDF", "CUP_B_CH53E_USMC", "CUP_B_CH53E_VIV_USMC", "CUP_B_CH53E_GER", "CUP_B_CH53E_VIV_GER", "CUP_B_Merlin_HC3_GB", "CUP_B_Merlin_HC3_VIV_GB", "CUP_B_Merlin_HC3A_GB", "CUP_B_Merlin_HC3_Armed_GB", "CUP_B_Merlin_HC3A_Armed_GB", "CUP_B_Merlin_HC4_GB", "CUP_B_UH1Y_UNA_USMC", "CUP_B_UH1Y_MEV_USMC", "CUP_B_UH1Y_GUNSHIP_USMC", "CUP_O_SU34_LGB_CSAT", "CUP_O_SU34_AGM_CSAT", "CUP_O_SU34_LGB_RU", "CUP_O_SU34_AGM_RU", "CUP_O_SU34_LGB_SLA", "CUP_O_SU34_AGM_SLA", "CUP_O_Mi24_P_RU", "CUP_O_Mi24_V_RU", "CUP_O_Mi24_V_RU", "CUP_O_Mi24_D_TK", "CUP_O_Pchela1T_RU", "CUP_B_USMC_DYN_MQ9", "CUP_O_Mi24_D_CSAT_T", "CUP_O_Mi24_P_CSAT_T", "CUP_O_Mi24_V_CSAT_T", "CUP_O_SU34_LGB_CSAT", "CUP_O_SU34_AGM_CSAT", "CUP_O_Mi24_Mk4_AT_CSAT_T", "CUP_O_Mi24_Mk4_FAB_CSAT_T", "CUP_O_Mi24_Mk4_S8_GSh_CSAT_T", "CUP_O_Ka50_DL_RU", "CUP_O_Ka50_DL_SLA", "B_UAV_01_F", "I_UAV_01_F","O_UAV_01_F", "C_IDAP_UAV_01_F","CUP_B_AV8B_MK82_USMC","CUP_B_AH1Z_NoWeapons_USMC","CUP_B_GR9_GBU12_GB","CUP_B_AV8B_DYN_USMC","CUP_B_F35B_CAS_USMC","CUP_B_F35B_Stealth_BAF","CUP_B_A10_CAS_USA","CUP_B_A10_AT_USA","CUP_B_A10_DYN_USA","CUP_B_MH60L_DAP_2x_Multi_US","CUP_B_MH60L_DAP_2x_US","CUP_B_MH60L_DAP_4x_US","CUP_B_MH60L_DAP_2x_Escort_US","CUP_O_Su25_RU_2","CUP_O_Su25_Dyn_SLA","CUP_O_Ka52_Grey_RU","CUP_O_Mi24_D_Dynamic_CSAT_T","CUP_O_Mi24_P_Dynamic_CSAT_T","CUP_O_Mi24_V_Dynamic_CSAT_T"];
CTI_LASERDES_VEHICLES_NONAIR = ["B_SDV_01_F", "O_SDV_01_F", "I_SDV_01_F", "CUP_B_M7Bradley_USA_D", "CUP_B_M7Bradley_USA_W", "OFPS_SDV_B", "OFPS_SDV_O", "OFPS_NEPTUN_B", "OFPS_NEPTUN_O", "B_Static_Designator_01_F", "O_Static_Designator_02_F"];
CTI_LASERDES_VEHICLES_ASSEMBLED = ["B_UAV_01_F", "I_UAV_01_F","O_UAV_01_F", "C_IDAP_UAV_01_F", "B_Static_Designator_01_F", "O_Static_Designator_02_F"];

//----------------------------------------------------ORDERS-------------------------------------------------------------//
/*
 * The orders determine the actions that AI Team Leaders will perform, they are executed in a different thread in order
 * to enhance the missions maker freedom (Delay, behaviour...).
 *
 * The main AI thread (the FSM) detect whether an order has changed thanks to a "seed" system, if the seed differ then a
 * new order was assigned. Some orders can be reloaded (when a unit dies or resume it's main task). Keep in mind that
 * some orders are not "real" orders since they only require one action like embark/disembark.
 *
 * New orders may be added below, still they need to be defined in both FSM within the "Duty" state
 *
 * - Client\FSM\update_orders.fsm: Controls the Player "flow".
 * - Client\Functions\FSM\Functions_FSM_UpdateOrders.sqf: Contains the functions related to the Player FSM
 * - Server\FSM\update_ai.fsm: Controls the AI Team Leader "flow".
 * - Server\Functions\FSM\Functions_FSM_UpdateAI.sqf: Contains the functions related to the AI Team Leader FSM
 */

//--- Orders: ID (Unique)
CTI_ORDER_TAKETOWNS = 0; //--- AI: Take any towns (trigger CTI_ORDER_TAKETOWN_AUTO)
CTI_ORDER_TAKETOWN = 1; //--- AI: Take the assigned town, don't change target
CTI_ORDER_TAKETOWN_AUTO = 2; //--- AI: Take the assigned town, change target if there's any closer
CTI_ORDER_TAKEHOLDTOWNS = 3; //--- AI: Take and Hold any towns (trigger CTI_ORDER_TAKETOWN_AUTO)
CTI_ORDER_TAKEHOLDTOWN = 4; //--- AI: Take and hold the assigned town, don't change target
CTI_ORDER_TAKEHOLDTOWN_AUTO = 5; //--- AI: Take and hold the assigned town, change target if there's any closer
CTI_ORDER_HOLDTOWNSBASES = 6; //--- AI: Determine any hold location (Can be towns/base)
CTI_ORDER_HOLDTOWNSBASE = 7; //--- AI: Permanently hold a location (Can be towns/base)
CTI_ORDER_SAD = 8; //--- AI: Search and destroy the enemy base
CTI_ORDER_MOVE = 9; //--- AI: Move to a position

//--- Orders: One-time orders (Doesn't count as a real order)
CTI_ORDER_EMBARKCOMMANDVEH = 10;
CTI_ORDER_DISEMBARKCOMMANDVEH = 11;
CTI_ORDER_EMBARKCARGOVEH = 12;
CTI_ORDER_DISEMBARKCARGOVEH = 13;

//--- Orders: list of orders which are only called once (one-time)
CTI_AI_ORDERS_ONETIMERS = [CTI_ORDER_EMBARKCOMMANDVEH, CTI_ORDER_DISEMBARKCOMMANDVEH, CTI_ORDER_EMBARKCARGOVEH, CTI_ORDER_DISEMBARKCARGOVEH];

//--- Orders: Parameters
CTI_AI_ORDER_HOLDTOWNSBASES_HOPS = 12; //--- Order: HOLD TOWNS BASE units may use up to x hops to patrol in town
CTI_AI_ORDER_HOLDTOWNSBASES_PATROL_RANGE = 240; //--- Order: HOLD TOWNS BASE units may patrol up to x meters
CTI_AI_ORDER_TAKEHOLDTOWNS_HOPS = 8; //--- Order: TAKE HOLD units may use up to x hops to patrol in town
CTI_AI_ORDER_TAKEHOLDTOWNS_PATROL_RANGE = 225; //--- Order: TAKE HOLD units may patrol up to x meters
CTI_AI_ORDER_TAKEHOLDTOWNS_TIME = 240; //--- Order: TAKE HOLD units may patrol x seconds in a town
CTI_AI_ORDER_TAKEHOLDTOWNS_RANGE = 800; //--- Order: TAKE HOLD units will attempt to patrol if within that range of a town

//--- Support: Parameters
CTI_SUPPORT_COOLDOWN_MIN = 1000;
CTI_SUPPORT_COOLDOWN_MID = 1500; //--- Average interval at which a side will attempt to request fire support
CTI_SUPPORT_COOLDOWN_MAX = 2500;
CTI_SUPPORT_COOLDOWN_ARTY = 2000;
CTI_SUPPORT_COOLDOWN_CAS = 2300;
CTI_SUPPORT_COOLDOWN_GBU = 3000;

//--- Orders: Parameters (players)
CTI_PLAYER_ORDER_TAKEHOLDTOWNS_RANGE = 800; //--- Order: TAKE HOLD units will attempt to patrol if within that range of a town
CTI_PLAYER_ORDER_TAKEHOLDTOWNS_TIME = 200; //--- Order: TAKE HOLD units may patrol x seconds in a town
//-----------------------------------------------------------------------------------------------------------------------//




//----------------------------------------------ORDERS (PLAYER AI)-------------------------------------------------------//
/*
 * Those orders are sligthly different from the main ones as they only deal with individual units, still those units may
 * create a sub-formation with some members.
 *
 * The principle remain the same, a seed is used to check whether the order has changed or not and the order is executed
 * in a different thread to keep a simple flow within the ai FSM and a flexible one with the orders.
 *
 * New orders may be added below, still they need to be defined in the FSM within the "Duty" state
 *
 * - Client\FSM\update_client_ai.fsm: Controls the Player AI "flow".
 * - Client\Functions\FSM\Functions_FSM_UpdateClientAI.sqf: Contains the functions related to the Player AI FSM
 */

//--- Orders Player AI: ID (Unique)
CTI_ORDER_CLIENT_NONE = 0; //--- AI: No order, follow the group
CTI_ORDER_CLIENT_TAKETOWNS = 1; //--- AI: Take any towns (trigger CTI_ORDER_TAKETOWN_AUTO)
CTI_ORDER_CLIENT_TAKETOWN = 2; //--- AI: Take the assigned town, don't change target
CTI_ORDER_CLIENT_TAKETOWN_AUTO = 3; //--- AI: Take the assigned town, change target if there's any closer
CTI_ORDER_CLIENT_TAKEHOLDTOWNS = 4; //--- AI: Take and Hold any towns (trigger CTI_ORDER_TAKETOWN_AUTO)
CTI_ORDER_CLIENT_TAKEHOLDTOWN = 5; //--- AI: Take and hold the assigned town, don't change target
CTI_ORDER_CLIENT_TAKEHOLDTOWN_AUTO = 6; //--- AI: Take and hold the assigned town, change target if there's any closer
CTI_ORDER_CLIENT_HOLDTOWNSBASES = 7; //--- AI: Determine any hold location (Can be towns/base)
CTI_ORDER_CLIENT_HOLDTOWNSBASE = 8; //--- AI: Permanently hold a location (Can be towns/base)
CTI_ORDER_CLIENT_SAD = 9; //--- AI: Search and destroy the enemy base
CTI_ORDER_CLIENT_MOVE = 10; //--- AI: Move to a position
CTI_ORDER_CLIENT_PATROL = 11; //--- AI: Patrol a position

//--- Orders Player AI: Parameters
CTI_ORDER_CLIENT_PATROL_HOPS = 10; //--- AI: Amount of node present within the patrol area
CTI_ORDER_CLIENT_PATROL_RANGE = 325; //--- AI: Patrol a position.
//-----------------------------------------------------------------------------------------------------------------------//




//---------------------------------------------------UPGRADES------------------------------------------------------------//
/*
 * The upgrade can be seen as an "ingame-feature-evolution" where everything can be upgraded beyond your wildest dreams,
 * the ID determine the position of an upgrade in the upgrade arrays
 *
 * The upgrade array count and order shall be identical for both sides
 *
 * The upgrades are defined in:
 * - Common\Config\Upgrades\Upgrades_xxx.sqf (where xxx is the side/faction)
 */

//--- Upgrades: Order
CTI_UPGRADE_GEAR = 	0;
CTI_UPGRADE_BARRACKS = 1;
CTI_UPGRADE_LIGHT = 2;
CTI_UPGRADE_HEAVY = 3;
CTI_UPGRADE_NAVAL = 4;
CTI_UPGRADE_AIR_ROTARY = 5;
CTI_UPGRADE_AIR_FIXED = 6;
CTI_UPGRADE_AIR_ORDINANCE = 7;
CTI_UPGRADE_LAND_ORDINANCE = 8;
CTI_UPGRADE_TOWNS = 9;
CTI_UPGRADE_HALO = 10;
CTI_UPGRADE_AIRR = 11;
CTI_UPGRADE_ARTR = 12;
CTI_UPGRADE_REST = 13;
CTI_UPGRADE_LVOSS = 14;
CTI_UPGRADE_ERA = 15;
CTI_UPGRADE_SATELLITE = 16;
CTI_UPGRADE_NUKE = 17;
CTI_UPGRADE_SUPPLY_RATE = 18;
CTI_UPGRADE_BASE_HEALTH = 19;
CTI_UPGRADE_BASE_DEFENSES = 20;
CTI_UPGRADE_JAMMING_TYPE  = 21;
CTI_UPGRADE_JAMMING_RANGE = 22;

//--- Supply
CTI_UPGRADE_CST_SUPPLY_COEF = [1, 1.25, 1.50, 1.75]; //--- Supply coefficient (Default * upgrade)
CTI_UPGRADE_BARRACKS_SKILL = [60, 65, 70, 75, 80, 85, 90]; //--- AI Skill level with barracks upgrade, starts at 0

//-----------------------------------------------------------------------------------------------------------------------//




//---------------------------------------------------REQUESTS------------------------------------------------------------//
/*
 * The requests are special actions which a player may request such as a FOB construction. The commander receive them and
 * can either accept or deny them.
 *
 * The request and their actions are defined in:
 * - Client\Functions\UI\Functions_UI_RequestMenu.sqf
 */

//--- Requests: ID
CTI_REQUEST_FOB = 0;
CTI_REQUEST_FOB_DISMANTLE = 1;

//--- Requests: Parameters
CTI_REQUESTS_TIMEOUT = 160; //--- A request will vanish after x seconds if left unattended
CTI_REQUESTS_PERMISSION_TIMEOUT = 300; //--- A player's permission to dismantle a fob will only persist for at most x seconds

CTI_REQUESTS_DISMANTLE_COST = 10; //--- The percent of a FOB truck's original cost that will be charged to a player

CTI_HQTopicSide = "CTI_HQTopicSide";
CTI_HQTopicSideVanilla = "CTI_HQTopicSideVanilla";
//-----------------------------------------------------------------------------------------------------------------------//




//-----------------------------------------------------GEAR--------------------------------------------------------------//
/*
 * The gear system is defined by IDs where each items belong to a specific class (Pistol, Vest, Item...), those class are
 * determined by IDs. The IDs are defined in config so we set them here!
 *
 * Note that the sub IDs are not defined at the same location
 */

//--- Gear: Config ID
CTI_TYPE_RIFLE = 1;
CTI_TYPE_PISTOL = 2;
CTI_TYPE_LAUNCHER = 4;
CTI_TYPE_RIFLE2H = 5;
CTI_TYPE_EQUIPMENT = 4096;
CTI_TYPE_ITEM = 131072;

//--- Gear: Config sub ID
CTI_SUBTYPE_ITEM = 0;
CTI_SUBTYPE_ACC_MUZZLE = 101;
CTI_SUBTYPE_ACC_OPTIC = 201;
CTI_SUBTYPE_ACC_SIDE = 301;
CTI_SUBTYPE_ACC_BIPOD = 302;
CTI_SUBTYPE_HEADGEAR = 605;
CTI_SUBTYPE_UAVTERMINAL = 621;
CTI_SUBTYPE_VEST = 701;
CTI_SUBTYPE_UNIFORM = 801;
CTI_SUBTYPE_BACKPACK = 901;

//--- Gear: Parameters
CTI_GEAR_RESELL_TAX = 0.25; //--- Owned items are traded for: <item price> * <tax>
CTI_GEAR_RESPAWN_WITH_LAST = 1; //--- Determine whether the player should respawn with his last known gear or not

//--- Depot and FOB Price Tax
CTI_GEAR_DEPOT_FEE = 0; //--- Adds this number to price of equipment before tax (Not implemented)
CTI_GEAR_DEPOT_TAX = 0; //--- Tax coefficient for  gear price. 0 means no tax. 1 means the units price is doubled (Not implemented)

CTI_UNIT_DEPOT_FEE = 100; //--- Adds price to unit before tax
CTI_UNIT_DEPOT_TAX = .5; //--- Tax coefficient for unit price. 0 means no tax. 1 means the units price is doubled
//-----------------------------------------------------------------------------------------------------------------------//




//-----------------------------------------------------TOWNS-------------------------------------------------------------//
/*
 * The towns are location marked by a marker (flag), they generate a different value depending on the value set within the
 * editor. A town is either held by resistance or by the occupation, units may spawn to defend them.
 *
 * When captured, the possible remaining units will try to capture it back.
 *
 * Note that the AI are not managed with waypoints
 *
 * There are several scripts about towns:
 * - Server\FSM\town_capture.fsm: This controls the town value/capture "flow"
 * - Server\FSM\town_occupation.fsm: This controls the town occupation defensive "flow"
 * - Server\FSM\town_patrol.fsm: This controls the town units patrol "flow" for either resistance or occupation
  * - Server\FSM\town_naval_patrol.fsm: This controls the naval town units patrol "flow" for either resistance or occupation
 * - Server\FSM\town_resistance.fsm: This controls the town resistance defensive "flow"
 */

//--- Towns: Camps
CTI_TOWNS_CAMPS_CAPTURE_RANGE = 12; //--- Range needed for player to capture/protect a camp
CTI_TOWNS_CAMPS_CAPTURE_RATE = 2; //--- Determine how fast a camp may be captured/protected
CTI_TOWNS_CAMPS_CAPTURE_VALUE_CEIL = 30; //--- The camp value's ceiling
CTI_TOWNS_CAMPS_CAPTURE_VALUE_ITERATE = 1; //--- The iterated value, (try to match CTI_TOWNS_CAMPS_CAPTURE_VALUE_ITERATE), proc all 5 seconds.
CTI_TOWNS_CAMPS_CAPTURE_BOUNTY = 500; //--- Bounty value
CTI_TOWNS_CAMPS_CAPTURE_BOUNTY_DELAY = 600; //--- Award the bounty depending if the last camp capture happened longer than x seconds ago

//--- Towns: Capture
CTI_TOWNS_CAPTURE_BOUNTY_COEF = 100; //--- Bounty coefficient upon capture, (max sv * coefficient)
CTI_TOWNS_CAPTURE_BOUNTY_DELAY = 2700; //--- Award the bounty depending if the last town capture happened longer than x seconds ago
CTI_TOWNS_CAPTURE_DELETE_FORCES = 0; //--- Determine whether the resistance or occupation forces should be removed upon town capture or not (0: Disabled, 1: West & East, 2: All)
CTI_TOWNS_CAPTURE_DELETE_TIME = 100; //--- Determine how long to wait before deleteing all units upon town capture (-1 disables)
CTI_TOWNS_CAPTURE_DETECTION_MODE = 0; //--- Determine the towns detection mode, used for town/camp capture (0: All, 1: Players, 2: Playable units)
CTI_TOWNS_CAPTURE_FORCE_MAX = 2; //--- The force determine how many units may try to capture a town (caoture rate = SV - round((units force + camp rate) * town rate))
CTI_TOWNS_CAPTURE_PEACE_SCAN_RANGE = 300; //--- This range is used upon town capture to search for enemies around the depot, if none are found peace mode will be triggered
CTI_TOWNS_CAPTURE_RANGE = 40; //--- The range which a unit/vehicle has to be from a town center to capture it
CTI_TOWNS_CAPTURE_RATE = 0.5; //--- Determine how fast a town may be captured/protected
CTI_TOWNS_CAPTURE_RATE_CAMPS = 3; //--- Determine how fast a town may be captured while holding it's camps

CTI_TOWNS_CAPTURE_VALUE_CEIL = 30; //--- The town value's ceiling
CTI_TOWNS_CAPTURE_VALUE_ITERATE = 5; //--- The iterated value, (try to match CTI_TOWNS_CAPTURE_VALUE_CEIL), proc all 5 seconds.

//--- Towns: Depot
CTI_TOWNS_DEPOT_ACCESS_MODE = 1; //--- Determine how depots can be accessed for purchases (0: Town belong to side, 1: Town belong to side + all camps)
CTI_TOWNS_DEPOT_BUILD_DIRECTION = 0; //--- Determine the direction a vehicle will use while being spawned from the depot
CTI_TOWNS_DEPOT_BUILD_DISTANCE = 15; //--- Determine how far a unit/vehicle will spawn from the depot
CTI_TOWNS_DEPOT_CLASSNAME = ["Land_Bunker_01_HQ_F"]; //--- The classname(s) used for town depots in editor
CTI_TOWNS_NAVAL_DEPOT_CLASSNAME = ["Land_Lighthouse_small_F"]; //--- The classname(s) used for town depots in editor
CTI_TOWNS_DEPOT_RANGE = 20; //--- Determine how far a player needs to be from a depot in order to use it
CTI_TOWNS_NAVAL_DEPOT_RANGE = 30; //--- Determine how far a player needs to be from a naval depot in order to use it

//--- Towns: Static Defenses
CTI_TOWNS_STATICS_CLASSNAME = ["VR_GroundIcon_01_F"]; //--- The classname(s) used for town depots in editor


//--- Towns: Economy

CTI_TOWNS_INCOME_RATIO = 8.5; //--- A value above 1 will increase the resources ($) generation ((Current SV) * ratio) 

CTI_TOWNS_INCOME_UNOCCUPIED_PERCENTAGE = 1.00; //--- Determine how much value an unoccupied town bring to the side.

//--- Towns: Markers
CTI_TOWNS_MARKERS_MAP_RANGE = 750; //--- Distance required to show the town SV on the map (from a player/player's unit)
CTI_TOWNS_MARKERS_PEACE_COLOR = "ColorWhite"; //--- The color used for peace-mode towns
CTI_TOWNS_MARKERS_ALERT_COLOR = "ColorYellow"; //--- The color used for when enemy activated the towns
CTI_TOWNS_MARKERS_ALPHA_ACTIVE = 0.6;
CTI_TOWNS_MARKERS_ALPHA = 0.4;

//--- Towns: Patrol
CTI_TOWNS_PATROL_CAMPS_AI_DEFENSE_MAX = 3; //--- Determine how many Town AI groups may try to capture back one hostile camp
CTI_TOWNS_PATROL_HOPS = 4; //--- Towns patrol hops (non-waypoint), ammount of "waypoints" given to town AI
CTI_TOWNS_PATROL_RANGE = 400; //--- Patrol range in a town "Max range of waypoints"

//--- Towns: Occupation

//CTI_TOWNS_OCCUPATION_GROUPS_RATIO = 0.025; //--- Determine how many groups may spawn (scales with town value)
CTI_TOWNS_OCCUPATION_DETECTION_MODE	= 2;	//--- Determine the towns detection mode, used for town occupation spawning (0: All, 1: Players, 2: Playable units)
CTI_TOWNS_OCCUPATION_DETECTION_RANGE = 7500; //--- Determine how far a threat may be detected from the town center
CTI_TOWNS_OCCUPATION_DETECTION_RANGE_AIR = 50; //--- Determine how high a threat is considered aerial
CTI_TOWNS_OCCUPATION_INACTIVE_MAX = 180; //--- Determine how long a town may remain active when triggered
CTI_TOWNS_OCCUPATION_MIN_ACTIVE = 8; //--- When the town is not held by the side and when no enemy is near, at least x enemies need to be alive for the town to be considered active

CTI_TOWNS_OCCUPATION_SPAWN_AI_MAX = 40;  //--- Determine the max occupation AI count to present in a town (if the count is below the given limit, a new wave will spawn)
CTI_TOWNS_OCCUPATION_SPAWN_AI_MIN = 10; //--- Determine the min occupation AI count to present in a town
CTI_TOWNS_OCCUPATION_SPAWN_RANGE = 500; //--- Determine how far the units may spawn from the town center
CTI_TOWNS_OCCUPATION_SPAWN_RANGE_CAMPS = 100; //--- Determine how far the units may spawn from a town's camp when selected
CTI_TOWNS_OCCUPATION_SPAWN_SAFE_RANGE = 120; //--- Determine the "safe" range for spawning units (no enemy units have to be present within this area)

//--- Towns: Resistance

//CTI_TOWNS_RESISTANCE_GROUPS_RATIO = 0.025; //--- Determine how many groups may spawn (scales with town value)
CTI_TOWNS_RESISTANCE_DETECTION_MODE	= 2;	//--- Determine the towns detection mode, used for town occupation spawning (0: All, 1: Players, 2: Playable units)
CTI_TOWNS_RESISTANCE_DETECTION_RANGE = 7500; //--- Determine how far a threat may be detected from the town center
CTI_TOWNS_RESISTANCE_DETECTION_RANGE_AIR = 50; //--- Determine how high a threat is considered aerial
CTI_TOWNS_RESISTANCE_INACTIVE_MAX = 180; //--- Determine how long a town may remain active when triggered
CTI_TOWNS_RESISTANCE_MIN_ACTIVE = 8; //--- When the town is not held by the side and when no enemy is near, at least x enemies need to be alive for the town to be considered active

CTI_TOWNS_RESISTANCE_SPAWN_AI_MAX = 40; //--- Determine the max resistance AI count to present in a town (if the count is below the given limit, a new wave will spawn)
CTI_TOWNS_RESISTANCE_SPAWN_AI_MIN = 10; //--- Determine the min resistance AI count to present in a town
CTI_TOWNS_RESISTANCE_SPAWN_RANGE = 500; //--- Determine how far the units may spawn from the town center
CTI_TOWNS_RESISTANCE_SPAWN_RANGE_CAMPS = 100; //--- Determine how far the units may spawn from a town's camp when selected
CTI_TOWNS_RESISTANCE_SPAWN_SAFE_RANGE = 120; //--- Determine the "safe" range for spawning units (no enemy units have to be present within this area)

//--- Towns: Patrol
CTI_TOWNS_NAVAL_PATROL_HOPS = 16; //--- Towns patrol hops (non-waypoint), ammount of "waypoints" given to town AI
//--- Naval Towns: CAPTURE
CTI_TOWNS_NAVAL_CAPTURE_RANGE = 300; //--- The range which a unit/vehicle has to be from a town center to capture it
//--- Naval Towns: Markers
CTI_TOWNS_NAVAL_MARKERS_MAP_RANGE = 1000; //--- Distance required to show the town SV on the map (from a player/player's unit)
//--- Naval Towns: Patrol
CTI_TOWNS_NAVAL_PATROL_MIN_RANGE = 400; //--- Patrol range in a town "Min range of waypoints"
CTI_TOWNS_NAVAL_PATROL_RANGE = 500; //--- Patrol range in a town "Max range of waypoints"
//--- Naval Towns: Occupation
CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE = 1000; //--- Determine how far a threat may be detected from the town center
CTI_TOWNS_NAVAL_OCCUPATION_DETECTION_RANGE_AIR = 75; //--- Determine how high a threat is considered aerial
CTI_TOWNS_NAVAL_OCCUPATION_INACTIVE_MAX = 300; //--- Determine how long a town may remain active when triggered
CTI_TOWNS_NAVAL_OCCUPATION_MIN_ACTIVE = 0; //--- When the town is not held by the side and when no enemy is near, at least x enemies need to be alive for the town to be considered active
CTI_TOWNS_NAVAL_OCCUPATION_MIN_SPAWN_RANGE = 400; //--- Min range units will spawn from the town center
CTI_TOWNS_NAVAL_OCCUPATION_SPAWN_RANGE = 500; //--- Determine how far the units may spawn from the town center
CTI_TOWNS_NAVAL_OCCUPATION_SPAWN_SAFE_RANGE = 200; //--- Determine the "safe" range for spawning units (no enemy units have to be present within this area)
//--- Naval Towns: Resistance
CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE = 1000; //--- Determine how far a threat may be detected from the town center
CTI_TOWNS_NAVAL_RESISTANCE_DETECTION_RANGE_AIR = 75; //--- Determine how high a threat is considered aerial
CTI_TOWNS_NAVAL_RESISTANCE_INACTIVE_MAX = 300; //--- Determine how long a town may remain active when triggered
CTI_TOWNS_NAVAL_RESISTANCE_MIN_ACTIVE = 5; //--- When the town is not held by the side and when no enemy is near, at least x enemies need to be alive for the town to be considered active
CTI_TOWNS_NAVAL_RESISTANCE_MIN_SPAWN_RANGE = 400; //--- Min range units will spawn from the town center
CTI_TOWNS_NAVAL_RESISTANCE_SPAWN_RANGE = 500; //--- Determine how far the units may spawn from the town center
CTI_TOWNS_NAVAL_RESISTANCE_SPAWN_SAFE_RANGE = 200; //--- Determine the "safe" range for spawning units (no enemy units have to be present within this area)

//--- Towns: Spawn System
CTI_TOWNS_SPAWN_BUILDING_INFANTRY_CHANCE = 100; //--- Determine the chance over 100 that infantry may spawn in a building (requires CTI_TOWNS_SPAWN_MODE on 1)
CTI_TOWNS_SPAWN_MODE = 1; //--- Determine how units are spawned in town (0: Spawn on the fly, 1: Cache asset on start and spawn infantry units in building)
CTI_TOWNS_SPAWN_PRIORITY = 1; //--- Determine the priority for spawning units (0: Random, 1: Vehicles first)
CTI_TOWNS_SPAWN_BUILDING_BLACKLIST = ["Land_Lighthouse_small_F"]; //--- Prevents AI to spawn inside specified buildings
CTI_TOWNS_SPAWN_SV_MAX = 120; //--- Determine the max SV used for a town as a reference for AI units spawning (min max scaling)
CTI_TOWNS_SPAWN_SV_MIN = 20; //--- Determine the min SV used for a town as a reference for AI units spawning (min max scaling)

//--- Towns: Supply
CTI_TOWNS_SUPPLY_MODE = 1; //--- Supply Mode: (0: Default, 1: Timed)
CTI_TOWNS_SUPPLY_TIME_INTERVAL = 60; //--- Determine the interval between each town SV increment with time
CTI_TOWNS_SUPPLY_TIME_INCREASE = 1; //--- Determine the town SV increment when the interval's reached (Potential upgrade?)

//--- Towns: Territorial



CTI_TOWNS_TERRITORIAL_MARKER_SIZE = [320, 320]; //--- Size of the helper marker
CTI_TOWNS_NAVAL_TERRITORIAL_MARKER_SIZE = [400, 400]; //--- Size of the helper marker

CTI_TOWNS_FLAG_TEXTURE_PEACE = "\A3\Data_F\Flags\Flag_white_CO.paa"; //--- Determines the texture used by a town's flag in peace mode

//--- Towns: Parameters
with missionNamespace do {
	if (isNil 'CTI_TOWNS_OCCUPATION') then {CTI_TOWNS_OCCUPATION = 1}; //--- Determine whether occupation is enabled or not
	if (isNil 'CTI_TOWNS_OCCUPATION_LIMIT_AI') then {CTI_TOWNS_OCCUPATION_LIMIT_AI = 150}; //--- Determine the soft limit for overall occupation Town AI
	if (isNil 'CTI_TOWNS_OCCUPATION_LIMIT_AI_QUEUE_RATIO') then {CTI_TOWNS_OCCUPATION_LIMIT_AI_QUEUE_RATIO = 40}; //--- Determine the AI queue ratio (Queued unit = Groups * ratio/100)
	if (isNil 'CTI_TOWNS_OCCUPATION_SKILL') then {CTI_TOWNS_OCCUPATION_SKILL = 50}; //--- Set Town Occupation Skill
	if (isNil 'CTI_TOWNS_OCCUPATION_LEVEL_RESISTANCE') then {CTI_TOWNS_OCCUPATION_LEVEL_RESISTANCE = 10}; //--Set town occ max group for resistance
	if (isNil 'CTI_TOWNS_OCCUPATION_LEVEL') then {CTI_TOWNS_OCCUPATION_LEVEL = 8}; //-- Set Town occ max group
	if (isNil 'CTI_TOWNS_OCCUPATION_RESISTANCE') then {CTI_TOWNS_OCCUPATION_RESISTANCE = 0}; //--- Set Town Occupation Forces
	if (isNil 'CTI_TOWNS_OCCUPATION_WEST') then {CTI_TOWNS_OCCUPATION_WEST = 0};
	if (isNil 'CTI_TOWNS_OCCUPATION_EAST') then {CTI_TOWNS_OCCUPATION_EAST = 0};
	if (isNil 'CTI_TOWNS_PEACE') then {CTI_TOWNS_PEACE = 180}; //--- Enable or disable the Town Peace mode (Expressed in seconds, 0 is disabled)
	if (isNil 'CTI_TOWNS_RESISTANCE_LIMIT_AI') then {CTI_TOWNS_RESISTANCE_LIMIT_AI = 150}; //--- Determine the soft limit for overall resistance Town AI
	if (isNil 'CTI_TOWNS_RESISTANCE_LIMIT_AI_QUEUE_RATIO') then {CTI_TOWNS_RESISTANCE_LIMIT_AI_QUEUE_RATIO = 40}; //--- Determine the AI queue ratio (Queued unit = Groups * ratio/100)
	if (isNil 'CTI_TOWNS_TERRITORIAL') then {CTI_TOWNS_TERRITORIAL = 0}; //--- Enable or disable the Territorial mode (Neighbors Capture)
	if (isNil 'CTI_TOWNS_CAPTURE_MODE') then {CTI_TOWNS_CAPTURE_MODE = 0}; //--- Require camps to capture town
};
//-----------------------------------------------------------------------------------------------------------------------//




//------------------------------------------------------BASE-------------------------------------------------------------//
/*
 * At the begining of the game an HQ is available for both side where the commander may build from it. It also act as a
 * mobile respawn point for your team.
 *
 * Structures such as Barracks, Light Vehicles Factory or even Command Center may be built from it. A repair truck may also
 * be used to construct defenses or special structures such as FOB.
 *
 * When a structure is placed, it goes in a "ruins" state where workers may build it up (the same applies on destruction). If
 * a structure in ruins state is left unattended for too long then it'll be removed.
 *
 * Defenses created near a Barracks will be automatically manned by an AI if enabled in both parameter and GUI.
 *
 * To prevent long games, bases need to be build in an area which is limited by a parameter
 *
 * - Common\Config\Base\Base_xxx.sqf: Define the structures and defenses for a side (where xxx is the side/faction)
 */


//--- Base: Air Radar
CTI_BASE_AIRRADAR_RANGES = [4000, 6000, 12000, 18000, 24000]; //--- Ranges used by the Air Radar (default + based on upgrade)

//--- Jamming ranges
CTI_BASE_JAMMING_RANGES = [1000, 2000, 3000, 4000, 6000]; //--- Ranges used by the Air Radar (default + based on upgrade)


//--- Base: Artillery Radar
CTI_BASE_ARTRADAR_MARKER_ACCURACY = 80; //--- Accuracy of the marker (Artillery Distance Radar / value)
CTI_BASE_ARTRADAR_MARKER_TIMEOUT = 400; //--- Time needed for an artillery marker to expire
CTI_BASE_ARTRADAR_RANGES = [4000, 6000, 12000, 18000, 24000]; //--- Ranges used by the Artillery Radar (default + based on upgrade)
CTI_BASE_ARTRADAR_REPORT_COOLDOWN = 0; //--- Time after which an artillery piece may be reported again (Used to be 300)
CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY = 8; //--- Time after which a projectile is considered tracked (-1: Disabled)

//--- Base: Satellite
CTI_BASE_SATELLITE_RANGE_SATCAM = 15000; //--- Determine how far a player has to be from a factory to access the satellite
CTI_BASE_SATELLITE_BASE_DETECTION_RANGE = 600; //--- Distance from base enemies are detected
CTI_BASE_SATELLITE_BASE_DETECTION_TIME = 240;  //--- Detection cycle, time between scans
CTI_BASE_SATELLITE_BASE_BASECAM_HEIGHT = 600;  //--- Height of base camera

//--- Base: Area
CTI_BASE_AREA_RANGE = 400;

//--- Base: Construction
CTI_BASE_CONSTRUCTION_BOUNTY = 3; //--- The bounty awarded upon a hostile structure destruction
CTI_BASE_CONSTRUCTION_DEFENSE_BOUNTY = 0.1; //--- The bounty multiplier awarded upon a hostile defensive structure destruction
CTI_BASE_CONSTRUCTION_DECAY_TIMEOUT = 500; //--- Decay starts after x seconds unattended.
CTI_BASE_CONSTRUCTION_DECAY_DELAY = 10; //--- Decay each x seconds.
CTI_BASE_CONSTRUCTION_DECAY_FROM = 10; //--- Decay of x / 100 each y seconds.
CTI_BASE_CONSTRUCTION_RANGE = 400; //--- Determine how far the commander may be from the HQ to build
CTI_BASE_CONSTRUCTION_RATIO_INIT = 1; //--- The initial construction ratio
CTI_BASE_CONSTRUCTION_RATIO_ON_DEATH = 0.80; //--- The completion ratio is multiplied by this coefficient to make repairs less effective at each factory's destruction.
CTI_BASE_CONSTRUCTION_REFUNDS = 0.40; //--- The refund value of a structure (structure cost * x)
CTI_BASE_CONSTRUCTION_VALID_RANGE = 10; //--- Default build menu block range - if object within this range building is blocked
CTI_BASE_CONSTRUCTION_VALID_RANGE_ENEMY = 200; //--- If enemy is withing this range building is blocked
CTI_BASE_SELL_DELAY = 60; //--- Delay for factories to get sold.

//--- Base: Defenses  *See Server_HandleStaticDefenses for more details
CTI_BASE_DEFENSES_AUTO_AREA_LIMIT = 25; //--- Amount of defences which may be manned within a given area
CTI_BASE_DEFENSES_AUTO_DELAY = 240; //--- Delay after which a new unit will replace a dead one for a defense
CTI_BASE_DEFENSES_AUTO_LIMIT = 50; //--- Amount of defences which may be manned globally
CTI_BASE_DEFENSES_AUTO_MODE = 2; //--- AI Base Defenses mode (0: No AI, 1: Global Limit, 2: Limit per Area)
CTI_BASE_DEFENSES_AUTO_RANGE = 1000; //--- Range from the nearest barrack at which AI may auto man a defense
CTI_BASE_DEFENSES_AUTO_REARM_RANGE = 800; //--- Range needed for a defense to be able to rearm at a service point
CTI_BASE_DEFENSES_EMPTY_TIMEOUT = 400; //--- Delay after which an empty defense is considered empty
CTI_BASE_DEFENSES_SOLD_COEF = 0.4; //--- The player will get a fund return based on the defense price * coef when a defense is sold
CTI_BASE_DEFENSES_AUTO_REARM_DELAY = 60; //--- Time delay between auto reloads
CTI_BASE_DEFENSES_AUTO_REARM_BLACKLIST = ["CUP_O_D30_RU","CUP_B_M119_US","OFPS_MK41_VLS_O","B_Ship_MRLS_01_F","B_SAM_System_01_F","OFPS_SPARTAN_O","OFPS_MK45_CANNON_O","OFPS_MK45_CANNON_B"]; //--- Blocks automatic rearms 

//--- Base: HQ
CTI_BASE_HQ_BOUNTY = 2.50; //--- The bounty awarded upon HQ destruction
CTI_BASE_HQ_DAMAGES_TRANSFER = 1; //--- Determine whether the damage should be transfered when the HQ get deployed or mobilized
CTI_BASE_HQ_REPAIR_PRICE = 40000; //--- The cost needed to repair the HQ (When using money)
CTI_BASE_HQ_REPAIR_PRICE_SUPPLY = 2500;//--- The cost needed to repair the HQ (When using supply)
CTI_BASE_HQ_REPAIR_REQ = 1; //--- How to pay for Repair (0 = Money, 1 = Supply)
CTI_BASE_HQ_REPAIR_RANGE = 200; //--- The range needed between the HQ wreck and the Repair Truck
CTI_BASE_HQ_REPAIR_TIME = 60; //--- The time needed to repair the HQ
CTI_BASE_HQ_ALLOW_MOBILE_DEFENSES = false; //--- Set to false to make it so the HQ cannot set down any defenses while the mobilized
CTI_BASE_HQ_MOBILIZATION_RANGE = 40; //--- Distance from deployed HQ that the HQ can be mobilized

//--- Base: Supply depots
CTI_BASE_SUPPLY_BASE_VALUE = 5000; //--- Max supply base value
CTI_BASE_SUPPLY_DEPOT_VALUE = 5000; //--- Supply depot supply value

//--- Base: FOB
CTI_BASE_FOB_BOUNTY = 4500; //--- The bounty awarded upon small fob destruction
CTI_TOWNS_FOB_CLASSNAME = ["Land_MedicalTent_01_white_generic_open_F"]; //--- The classname used for FOB in editor
CTI_TOWNS_FOB_CLASSNAME_RUINS = [""]; //--- The classname of fob ruins
CTI_TOWNS_FOB_RANGE = 10; //--- Determine how far a player needs to be from a FOB in order to use it

//--- Base: Large FOB
CTI_BASE_LARGE_FOB_BOUNTY = 35000; //--- The bounty awarded upon large fob destruction
CTI_TOWNS_LARGE_FOB_BUILD_DIRECTION = 0; //--- Determine the direction a vehicle will use while being spawned from the Large FOB
CTI_TOWNS_LARGE_FOB_BUILD_DISTANCE = 20; //--- Determine how far a unit/vehicle will spawn from the Large FOB
CTI_TOWNS_LARGE_FOB_CLASSNAME = ["Land_BagBunker_Large_F"]; //--- The classname used for Large FOB in editor
CTI_TOWNS_LARGE_FOB_CLASSNAME_RUINS = ["Land_Cargo_House_V1_ruins_F"]; //--- The classname of fob ruins
CTI_TOWNS_LARGE_FOB_RANGE = 80; //--- Determine how far a player needs to be from a Large FOB in order to use it

//--- Base: FOB Cup overrides
if (CTI_CUP_CORE_ADDON > 0) then { 
	CTI_TOWNS_FOB_CLASSNAME = ["CampEast"]; 
	CTI_TOWNS_FOB_CLASSNAME_RUINS = [""]; 
	CTI_TOWNS_LARGE_FOB_CLASSNAME = ["WarfareBDepot"];
	CTI_TOWNS_LARGE_FOB_CLASSNAME_RUINS = [""];
};

//--- Base: Misc
CTI_BASE_MARKER_DESTROYED_COLOR = "ColorBlack"; //--- A destroyed structure will have this color upon destruction
CTI_BASE_MARKER_DESTROYED_DELAY = CTI_BASE_CONSTRUCTION_DECAY_TIMEOUT; //--- A destroyed structure will remain on the map x seconds
CTI_BASE_NOOBPROTECTION = 0; //--- Make structures invulnerable to friendly fire
CTI_BASE_HEALTH_MULTIPLIER = [1, 1.5, 2, 2.5, 3]; //--- Factory health upgrade damage reduce multipliers
CTI_BASE_DISPLAY_HINT = 1; // 1 to enable, 0 to disable -- displays hint for player shooting enemy structure showing current building health. Also displays hint to the structure's friendly team showing base health, position, and name of structure

//--- Blow are damage modifiers, ammo type for them is set in Server_OnBuildingHandleVirtualDamage.sqf
//--- Bigger the numbers more damage that Ammo does!
//--- 1 means no extra damage will be applied, if you put in 0 the ammo wont do any damage at all.
CTI_BASE_DAMAGE_MULTIPLIER_SHELL = 1;//--- Tanks
CTI_BASE_DAMAGE_MULTIPLIER_ARTY = 1;//--- Arty
CTI_BASE_DAMAGE_MULTIPLIER_SATCHEL = 2;//--- Satchels
CTI_BASE_DAMAGE_MULTIPLIER_PIPE = 1; //--- Pipe Bombs
CTI_BASE_DAMAGE_MULTIPLIER_CANNON = 1;//--- HE Cannons
CTI_BASE_DAMAGE_MULTIPLIER_MISSLE = 1;//--- Missiles from helis and others
CTI_BASE_DAMAGE_MULTIPLIER_FUEL = 0; //--- Players that trying to ram buildings, or if a unit blows up to bad spawn will not cause damage. 
CTI_BASE_DAMAGE_MULTIPLIER_ROCKETS = 1;//--- Rockets
CTI_BASE_DAMAGE_MULTIPLIER_BOMB = 4;//--- Bombs, previously at 2

//--- Max damage values for ammo types, this method retains indirect or lesser damage and limits glitchy OP damage values
CTI_BASE_DAMAGE_MAX_SHELL = 0.3;//--- Tanks, previously at .1
CTI_BASE_DAMAGE_MAX_ARTY = 1;//--- Arty
CTI_BASE_DAMAGE_MAX_SATCHEL = 1;//--- Satchels
CTI_BASE_DAMAGE_MULTIPLIER_PIPE = 1;//--- Pipe Bombs
CTI_BASE_DAMAGE_MAX_CANNON = 0.002;//--- HE Cannons
CTI_BASE_DAMAGE_MAX_MISSLE = 0.1;//--- Missiles from helis and others
CTI_BASE_DAMAGE_MAX_FUEL = 0; //--- Players that trying to ram buildings, or if a unit blows up to bad spawn will not cause damage. 
CTI_BASE_DAMAGE_MAX_ROCKETS = 0.1;//--- Rockets
CTI_BASE_DAMAGE_MAX_BOMB = 1;//--- Bombs

//--- Base: Purchase range
CTI_BASE_GEAR_FOB_RANGE = 30; //--- Determine how far a player has to be from a FOB to access the Gear Menu
CTI_BASE_GEAR_LARGE_FOB_RANGE = 100; //--- Determine how far a player has to be from a FOB to access the Gear Menu
CTI_BASE_GEAR_RANGE = 600; //--- Determine how far a player has to be from a Barracks to access the Gear Menu
CTI_BASE_PURCHASE_UNITS_RANGE = 300; //--- Determine how far a player has to be from a factory to access the Factory Menu without CC
CTI_BASE_PURCHASE_UNITS_RANGE_CC = 50000; //--- Determine how far a player has to be from a factory to access the Factory Menu with CC
CTI_BASE_PURCHASE_UNITS_UPGRADE = 3; // --- Determines the barracks level required for vehicles bought at factories to start spawning with vanilla units

//--- Base: Workers
CTI_BASE_WORKERS_BUILD_COEFFICIENT = 1; //--- Worker build speed multiplier (<coefficient> / (<structure build time> / 100)), higher is faster.
CTI_BASE_WORKERS_BUILD_RANGE = 20; //--- Worker minimal build distance.
CTI_BASE_WORKERS_LIMIT = 10; //--- Maximum amount of worker which may be purchased by a side
CTI_BASE_WORKERS_PRICE = 300; //--- Worker price.
CTI_BASE_WORKERS_RANGE = 600; //--- Worker effective work area.
CTI_BASE_WORKERS_REPAIR = 0.0075; //--- Worker repair iteration per action over a structure.
CTI_BASE_WORKERS_REPAIR_RANGE = 25; //--- Worker repair range.
CTI_BASE_WORKERS_REPAIR_ENTITY = 0.005; //--- Worker repair iteration per action over a vehicle.
CTI_BASE_WORKERS_WANDER_RANGE = 60; //--- Worker may wander of x meters at a time.
CTI_BASE_WORKERS_WANDER_RANGE_MAX = 225; //--- Worker may wander no further than x meters from their center

//--- Base: Parameters
with missionNamespace do {
	if (isNil 'CTI_BASE_HEALTH_UPGRADE') then {CTI_BASE_HEALTH_UPGRADE = 1}; //--- Enable Base Health Upgrade - see above for values : CTI_BASE_HEALTH_MULTIPLIER
	if (isNil 'CTI_BASE_AREA_MAX') then {CTI_BASE_AREA_MAX = 2}; //--- Amount of base areas which may be built
	if (isNil 'CTI_BASE_AREA_STRUCTURES_IDENTICAL_LIMIT') then {CTI_BASE_AREA_STRUCTURES_IDENTICAL_LIMIT = 1}; //--- Amount of identical structures which may be present within a base area (-1: Unlimited)
	if (isNil 'CTI_BASE_CONSTRUCTION_MODE') then {CTI_BASE_CONSTRUCTION_MODE = 2}; //--- Construction mode to use for structures (0: Timed, 1: Workers, 2: Timed + Repairs)
	if (isNil 'CTI_BASE_FOB_MAX') then {CTI_BASE_FOB_MAX = 2}; //--- Maximum amount of FOBs which a side may place
	if (isNil 'CTI_BASE_LARGE_FOB_MAX') then {CTI_BASE_LARGE_FOB_MAX = 2}; //--- Maximum amount of Large FOBs which a side may place
	if (isNil 'CTI_BASE_HQ_REPAIR') then {CTI_BASE_HQ_REPAIR = 1}; //--- Determine whether the HQ can be repaired or not
	if (isNil 'CTI_BASE_STARTUP_PLACEMENT') then {CTI_BASE_STARTUP_PLACEMENT = 4000}; //--- Each side need to be further than x meters
};

//-----------------------------------------------------------------------------------------------------------------------//




//----------------------------------------------------VEHICLES-----------------------------------------------------------//
/*
 * Vehicles is a word with regroup units and vehicles, they are present on the battlefield and they are handled depending
 * on their nature.
 *
 * Vehicles such as cars, tanks, ships or aircraft are checked each x seconds for their emptiness and destroyed if they remain
 * empty for too long (this way we don't end up with 1000 cars on the map)
 *
 * Vehicles and units are cleaned up automatically by the server depending on the Garbage Collector settings
 *
 * - Server\FSM\update_garbage_collector.fsm: This handle the vehicles/units destruction "flow"
 * - Server\FSM\update_repairtruck.fsm: This handle the Repair Truck repairing "flow"
 * - Server\FSM\update_salvager.fsm: This handle the Salvager Truck "flow"
 * - Server\FSM\update_salvager_independent.fsm: This handle the Independent Salvager Truck "flow"
 * - Server\Functions\FSM\Functions_FSM_RepairTruck.sqf: Contains the functions related to the Repair Truck FSM
 */

//--- Vehicles: Misc
CTI_VEHICLES_BASE_SAFE_SPAWN = 1; //--- If enabled, the vehicles will try to spawn near their factory in a safe area
CTI_VEHICLES_EMPTY_SCAN_PERIOD = 15; //--- Scan for a crew member in a vehicle each x seconds
CTI_VEHICLES_HANDLER_EMPTY = 0; //--- Determine how an empty vehicle is handled by the engine (0: Typical delay, 1: delay AND the unit cannot move/fire)
CTI_VEHICLES_PROTECT_TIRES = 1; //--- Determine whether the damages applied to tires should be reduced or not

//--- Advanced Air Lifting settings
ASL_HEAVY_LIFTING_MIN_LIFT_OVERRIDE = 2700;

//--- Vehicles: Repair Trucks
CTI_VEHICLES_REPAIRTRUCK_BASE_BUILD_COEFFICIENT = 2; //--- Repair trucks build speed multiplier (<coefficient> / (<structure build time> / 100)), higher is faster.
CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR = 0.05; //--- Repair trucks repair iteration per action over a structure.
CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR_RANGE = 50; //--- Repair trucks may repair structures in that range
CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR_USE_SV = 1; //--- Repair trucks will use SV to fix a base structure (0: Disabled, 1: CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR * 100)
CTI_VEHICLES_REPAIRTRUCK_BUILD_TAX_COEFFICIENT = 2; //--- Repair truck build tax multiplier
CTI_VEHICLES_DEFENSETRUCK_BUILD_TAX_COEFFICIENT = 2; //--- Defense truck build tax multiplier

//--- Vehicles: Salvage Trucks
CTI_VEHICLES_SALVAGE_INDEPENDENT_MAX = 1; //--- Maximum amount of Independent Salvage Trucks which may be present per side
CTI_VEHICLES_SALVAGE_INDEPENDENT_EFFECTIVE_RANGE = 3000; //--- An independent Salvage may search for wreck up to x meters
CTI_VEHICLES_SALVAGE_RATE = 0.40; //--- This coefficient determine the value of a salvaged wreck (wreck value * x)
CTI_VEHICLES_SALVAGE_RANGE = 250; //--- This is the distance required between a Wreck and Salvage Truck
CTI_VEHICLES_SALVAGER_PRICE = 1000; //--- Determine the cost of the salvage trucks

//--- Vehicles: FUEL CONSUMPTION
//--- Formula: 1 / (60*Minutes) = EXAMPLE for 60min runtime -- 1/(60*60) = 0.00027
CTI_VEHICLES_FUEL_CONSUMPTION_ALL = 0.000278; //---default consumption rate every 1s - 60min
CTI_VEHICLES_FUEL_CONSUMPTION_TANKS = 0.00037; //---tanks consumption rate - 45min 
CTI_VEHICLES_FUEL_CONSUMPTION_HELIS = 0.00556; //---heli consumption rate - 30min
CTI_VEHICLES_FUEL_CONSUMPTION_PLANES = 0.000417; //---planes consumption rate - 40min
CTI_VEHICLES_FUEL_CONSUMPTION_UAV = 0.000278; //---uav consumption rate - 60min
CTI_VEHICLES_FUEL_CONSUMPTION_SHIPS = 0.000139; //---ships consumption rate - 120min
CTI_VEHICLES_FUEL_CONSUMPTION_MHQ = 0.000278; //---mhq consumption rate - 60min
CTI_VEHICLES_FUEL_CONSUMPTION_SPECIAL = 0.000185; //---special units consumption rate 90min

//--- Vehicles: LVOSS and ERA SYSTEMS
CTI_VEHICLES_APS_SCAN_DISTANCE = 6000; //--- Scan distance for LVOSS and ERA scripts, must be fired within this range to detect
CTI_VEHICLES_LVOSS_COOLDOWN_TIME = 120; //--- Max cooldown time between LVOSS charges, upgrades remove 30s - 120/90
CTI_VEHICLES_ERA_COOLDOWN_TIME = 150; //--- Max cooldown time between ERA charges, upgrades remove 30s - 150/120/90/60

//--- Vehicles: LOADOUTS
CTI_VEHICLES_LOADOUTS_CUSTOM_COST = 250; //--- Price of unit customizations - bags/camonets
CTI_VEHICLES_LOADOUTS_CUSTOM_PREMIUM_COST = 1000; //--- Price of premium unit customizations - slatarmor
CTI_VEHICLES_LOADOUTS_ERA_PRICE = 500; //--- Price per mag for ERA
CTI_VEHICLES_LOADOUTS_ERA_TIME = 30; //--- Rearm time on ERA
CTI_VEHICLES_LOADOUTS_LVOSS_PRICE = 250; //--- Price per mag for LVOSS
CTI_VEHICLES_LOADOUTS_LVOSS_TIME = 15; //--- Rearm time on LVOSS
CTI_VEHICLES_LOADOUTS_REFUND_RATE = 1; //--- Change refund rate when removing mags -- 1 = no tax, 0.5 = 50% original price
CTI_VEHICLES_LOADOUTS_EXCHANGE_RATE = 1; //--- Change refund rate for pylons -- 1 = no tax, 0.5 = 50% original price
CTI_VEHICLES_LOADOUTS_CLEAR_DIVISOR = 10; //--- Clear mag/pylon time divided by this value... AMMO TIME / 10

//--- Mag class exceptions for rearm per round not mag
CTI_VEHICLES_LOADOUTS_PERROUND = ["CUP_Vacannon_2A14_veh","CUP_Vacannon_2A42_veh","CUP_Vacannon_2A72_veh","CUP_Vacannon_AZP23_veh","CUP_Vacannon_CTWS_veh","CUP_Vacannon_GI2_veh","CUP_Vacannon_GSh23L_in_veh","CUP_Vacannon_GSh23L_L39","CUP_Vacannon_GSh23L_pod_veh","CUP_Vacannon_GSh301_veh","CUP_Vacannon_GSh302K_veh","CUP_Vacannon_KPVB_veh","CUP_Vacannon_M242_veh","CUP_Vacannon_M621_AW159_veh","CUP_Vacannon_Phalanx_veh","CUP_Vacannon_Yakb_veh"];

CTI_VEHICLES_LOADOUTS_PERROUND_PARENT = ["MGunCore","autocannon_Base_F","autocannon_35mm","gatling_20mm","Gatling_30mm_Plane_CAS_01_F","Twin_Cannon_20mm","weapon_Cannon_Phalanx","weapon_Fighter_Gun_30mm","weapon_Fighter_Gun20mm_AA","CUP_Vacannon_GSh23L_L39","CUP_Vacannon_GSh23L_pod_veh","CUP_Vacannon_KPVB_veh","CUP_Vacannon_GSh301_veh","CUP_Vacannon_GSh302K_veh","CUP_Vacannon_2A42_veh","CUP_Vacannon_2A72_veh","CUP_Vacannon_AZP23_veh","CUP_Vacannon_M197_veh","CUP_Vacannon_M230_veh","autocannon_40mm_CTWS","CUP_Vacannon_M242_veh","CUP_Vacannon_Yakb_veh","CUP_Vacannon_2A14_veh","CUP_Vacannon_M168_M163VADS","gatling_30mm_base","HAFM_M168_M163VADS","M61_Vulcan_CIWS","sfp_bofors_l70","sfp_bofors_l70_57mm", "CUP_Vacannon_M621_AW159_veh", "CUP_Vacannon_GI2_veh"];

// Vehicle classes that should never be deleted for being empty
CTI_VEHICLES_EMPTY_IGNORE = ["Land_Pod_Heli_Transport_04_box_F", "B_G_Van_01_fuel_F", "O_G_Van_01_fuel_F", "B_Slingload_01_Cargo_F","Land_Pod_Heli_Transport_04_ammo_F", "Land_Pod_Heli_Transport_04_repair_F", "Land_Pod_Heli_Transport_04_fuel_F", "B_Slingload_01_Repair_F", "B_Slingload_01_Fuel_F", "B_Slingload_01_Ammo_F", "B_Slingload_01_Medevac_F", "Land_Pod_Heli_Transport_04_medevac_F", "CUP_O_Ural_Repair_RU", "cup_b_mtvr_repair_usmc", "OFPS_O_Truck_03_device_F", "OFPS_B_Truck_03_device_F", "O_Truck_03_ammo_F", "B_Truck_01_ammo_F", "O_Heli_Transport_04_ammo_F", "O_Truck_03_repair_F", "CUP_O_V3S_Repair_TKA", "CUP_O_Kamaz_Repair_RU", "B_Truck_01_Repair_F","O_Heli_Transport_04_repair_F"]; // "Land_Pod_Heli_Transport_04_bench_F", "Land_Pod_Heli_Transport_04_covered_F"

//--- NUKE Settings
NUKE_EXPOSURE_TIME = 360; //exposure length

NUKE_BLAST_WAVE_RADIUS = 1000; //sets main nuke effect range, mainly effects
NUKE_BLAST_DAMAGE_RADIUS = 2500; //sets main nuke damage range and max scan range - use below values to adjust object specific, nothing outside this range will be harmed
NUKE_BLAST_DAMAGE_RADIUS_SLOPE = 4000; //sets damage range slope, used for adjusting damage based on distance | damage = 1 - (range / blast_damage_radius)s
NUKE_BLAST_CORE_RADIUS =  200; //sets range for core nuke area - this area kills all 
NUKE_BLAST_BASE_RADIUS =  1000; //sets range for base objects and factories
NUKE_BLAST_INFANTRY_RADIUS =  1500; //sets range for all objects
NUKE_BLAST_VEHICLE_RADIUS =  2000; //sets range for emp range for ground units
NUKE_BLAST_AIR_RADIUS =  2500; //sets range for just air vehicles and emp effect
NUKE_BLAST_SPEED = 150;

NUKE_BLOW_SPEED = 200;
NUKE_HALF_LIFE = 10 * 30;
NUKE_RADIATION_DAMAGE = 0.02;
NUKE_CAR_ARMOUR = 2 / 4;

NUKE_DAMAGE_ON = true; //enables damage
NUKE_RADIATION_ON = false; //enable radiation
NUKE_RADIATION_RADIUS = 2000;  //sets radiation effect range

//--- Vehicles: Parameter
with missionNamespace do {
	if (isNil 'CTI_VEHICLES_LOADOUTS') then {CTI_VEHICLES_LOADOUTS = 1}; //-- Enable Custom Loadouts - air loadout menu
	if (isNil 'CTI_VEHICLES_AIR_ORDINANCE') then {CTI_VEHICLES_AIR_ORDINANCE = 1}; //-- Enable air ordinance upgrade
	if (isNil 'CTI_VEHICLES_LAND_ORDINANCE') then {CTI_VEHICLES_LAND_ORDINANCE = 1}; //-- Enable land ordinance upgrade
	if (isNil 'CTI_VEHICLES_FUEL_CONSUMPTION') then {CTI_VEHICLES_FUEL_CONSUMPTION = 1}; //-- Enable advanced fuel consumption
	if (isNil 'CTI_VEHICLES_LVOSS') then {CTI_VEHICLES_LVOSS = 1}; //-- Enable lvoss on wheeled vehicles
	if (isNil 'CTI_VEHICLES_ERA') then {CTI_VEHICLES_ERA = 1}; //-- Enable era on tracked vehicles
	if (isNil 'CTI_VEHICLES_AIR_FFAR') then {CTI_VEHICLES_AIR_FFAR = 1}; //--- AA Missiles availability (0: Disabled, 1: Enabled on Upgrade, 2: Enabled)
	if (isNil 'CTI_VEHICLES_AIR_DAR') then {CTI_VEHICLES_AIR_DAR = 1}; //--- AA Missiles availability (0: Disabled, 1: Enabled on Upgrade, 2: Enabled)
	if (isNil 'CTI_VEHICLES_AIR_AA') then {CTI_VEHICLES_AIR_AA = 1}; //--- AA Missiles availability (0: Disabled, 1: Enabled on Upgrade, 2: Enabled)
	if (isNil 'CTI_VEHICLES_AIR_AT') then {CTI_VEHICLES_AIR_AT = 1}; //--- AT Missiles availability (0: Disabled, 1: Enabled on Upgrade, 2: Enabled)
	if (isNil 'CTI_VEHICLES_AIR_CM') then {CTI_VEHICLES_AIR_CM = 1}; //--- Countermeasures availability (0: Disabled, 1: Enabled on Upgrade, 2: Enabled)
	if (isNil 'CTI_VEHICLES_EMPTY_TIMEOUT') then {CTI_VEHICLES_EMPTY_TIMEOUT = 900}; //--- set default vehicles timeout
	if (isNil 'CTI_VEHICLES_EMPTY_SPECIAL_TIMEOUT') then {CTI_VEHICLES_EMPTY_SPECIAL_TIMEOUT = 4800}; //--- set special vehicles timeout
};
//-----------------------------------------------------------------------------------------------------------------------//

CTI_ARTILLERY_FILTER = 1; //--- Toggle artillery magazines like mines and AT mines (0: Disabled, 1: Enabled)
CTI_ARTILLERY_TIMEOUT = 240; //--- Delay between each fire mission

CTI_PASSIVE_INCOME = 500; //--- Minimum amount every player will receive on every cycle (Param Set)
CTI_BOUNTY_COEF = 0.2; //--- Bounty coefficient multiplicator based on the unit original cost
CTI_BOUNTY_COEF_PVP = 1; //--- Bounty coefficient multiplicator based on the killed unit score
CTI_BOUNTY_BASE_PVP = 500; //--- Bounty minimum value for killing a player.

CTI_COIN_AREA_DEFAULT = [45, 20];  //--- Default Construction Interface area parameters [Radius, Height]
CTI_COIN_AREA_HQ_DEPLOYED = [CTI_BASE_AREA_RANGE, 40]; //--- Deployed HQ Construction Interface area parameters [Radius, Height]
CTI_COIN_AREA_HQ_MOBILIZED = [80, 20]; //--- Mobilized HQ Construction Interface area parameters [Radius, Height]
CTI_COIN_AREA_REPAIR = [45, 20]; //--- Repair Truck Construction Interface area parameters [Radius, Height]
CTI_COIN_AREA_DEFENSE = [45, 15];

CTI_ECONOMY_POOL_RESOURCES_PERCENTAGE_MIN = 10; //--- Keep values of 10
CTI_ECONOMY_POOL_RESOURCES_MODE = 1; //--- Resources mode to be used (0: Clasic - Player pool & Award pool, 1: Commander mode - player pool)

CTI_MARKERS_OPACITY = 0.3;
CTI_MARKERS_TOWN_AREA_RANGE = 320;
CTI_MARKERS_UNITS_DEAD_DELAY = 30;
CTI_MARKERS_VEHICLES_DEAD_DELAY = 125;

CTI_PLAYER_DEFAULT_ALIAS = "Soldier";

CTI_RESPAWN_AI_RANGE = 600;
CTI_RESPAWN_BASE_MODE = 1; //--- Determine where the client should respawn in base (0: Near a structure, 1: Use listed structure buildingPos)
CTI_RESPAWN_BASE_SAFE_RANGE = 20; //--- A base structure is considered safe for respawn if no enemies are within that range (0: Disabled, X: The safe distance)
CTI_RESPAWN_CAMPS_CONDITION_LIMITED = 10; //--- With this condition, a unit may only spawn x times on a camp during a capture cycle
CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_ENEMY = 5; //--- Coefficient applied upon camp fee on enemy held town respawn
CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_FRIENDLY = 5; //--- Coefficient applied upon camp fee on friendly held town respawn
CTI_RESPAWN_CAMPS_MODE = 1; //--- Determine where the client should respawn at camps (0: Near the camp, 1: Use listed camp buildingPos)
CTI_RESPAWN_CAMPS_RANGE_CLASSIC = 550; //--- Determine the range needed to respawn at a town's camps (from the town center)
CTI_RESPAWN_CAMPS_RANGE_ENHANCED = 550; //--- Determine the range needed to respawn at a town's camps (from a camp)
CTI_RESPAWN_CAMPS_SAFE_RANGE = 25; //--- A camp is considered safe for respawn if no enemies are within that range (0: Disabled, X: The safe distance)
CTI_RESPAWN_MOBILE_SAFE = 1; //--- Disable a mobile respawn's respawn if enemies are around it
CTI_RESPAWN_MOBILE_SAFE_RANGE = 40; //--- Disable respawn if enemies are within this range
CTI_RESPAWN_MOBILE_RANGE = 500; //--- A mobile respawn such as an ambulance may be used if the client died within it's range
CTI_RESPAWN_MOBILE_PRICE = 200;
CTI_RESPAWN_MOBILE_REWARD = 500;

CTI_SATCAM_ZOOM_MIN = 40;
CTI_SATCAM_ZOOM_MAX = 800;

CTI_SERVICE_PRICE_REPAIR = 0;
CTI_SERVICE_PRICE_REPAIR_COEF = 0;
CTI_SERVICE_PRICE_REAMMO = 2000;
CTI_SERVICE_PRICE_REAMMO_COEF = 0.10;
CTI_SERVICE_PRICE_REFUEL = 0;
CTI_SERVICE_PRICE_REFUEL_COEF = 0;
CTI_SERVICE_PRICE_HEAL = 0;
CTI_SERVICE_PRICE_DEPOT_COEF = 3;
CTI_SERVICE_PRICE_LARGE_FOB_COEF = 2;
CTI_SERVICE_SELL = 500;
CTI_SERVICE_SELL_COEF = 0.8;
CTI_SERVICE_SELL_DEPOT_COEF = 0.4;
CTI_SERVICE_SELL_LARGE_FOB_COEF = 0.6;

CTI_MORTAR_REARM_RATIO=10;
CTI_ART_REARM_RATIO=20;
CTI_AIR_REARM_RATIO=5;

//todo: add fuel & heal later on
CTI_SERVICE_AMMO_DEPOT_RANGE = 600;
CTI_SERVICE_AMMO_DEPOT_TIME = 30;
CTI_SERVICE_AMMO_TRUCK_RANGE = 75;
CTI_SERVICE_AMMO_TRUCK_TIME = 60;
CTI_SERVICE_AMMO_TOWN_DEPOT_TIME = 120;
CTI_SERVICE_AMMO_LARGE_FOB_TIME = 60;
CTI_SERVICE_REPAIR_DEPOT_RANGE = 600;
CTI_SERVICE_REPAIR_DEPOT_TIME = 30;
CTI_SERVICE_REPAIR_TRUCK_RANGE = 75;
CTI_SERVICE_FUEL_TRUCK_RANGE = 75;
CTI_SERVICE_FUEL_TRUCK_TIME = 60;
CTI_SERVICE_DEFENSE_TRUCK_RANGE = 50;
CTI_SERVICE_DEFENSE_TRUCK_TIME = 90;
CTI_SERVICE_REPAIR_TRUCK_TIME = 60;
CTI_SERVICE_AMMO_BOX_RANGE = 75;
CTI_SERVICE_AMMO_BOX_TIME = 90;
CTI_SERVICE_REPAIR_TOWN_DEPOT_TIME = 120;
CTI_SERVICE_REPAIR_LARGE_FOB_TIME = 60;
CTI_SERVICE_GEAR_RANGE = 25;
CTI_SERVICE_SELL_CONTROL_CENTER_RANGE = 400;
CTI_SERVICE_SELL_CONTROL_CENTER_TIME = 30;

CTI_SCORE_BUILD_VALUE_PERPOINT = 1500; //--- Structure value / x
CTI_SCORE_SALVAGE_VALUE_PERPOINT = 2000; //--- Unit value / x
CTI_SCORE_TOWN_VALUE_PERPOINT = 100; //--- Town value / x
CTI_SCORE_CAMP_VALUE_PERPOINT = 50; //--- Camp value / x

CTI_UI_TOWNS_PROGRESSBAR_DISTANCE = 550;

CTI_GC_DELAY = 30;
CTI_GC_DELAY_AIR = 350;
CTI_GC_DELAY_CAR = 60;
CTI_GC_DELAY_MAN = 25;
CTI_GC_DELAY_TANK = 300;
CTI_GC_DELAY_SHIP = 60;
CTI_GC_DELAY_STATIC = 80;
CTI_GC_DELAY_BUILDING = 30;
CTI_GC_GROUND_CLEANUP_KIND = ["WeaponHolder", "GroundWeaponHolder", "WeaponHolderSimulated", "CraterLong_small", "CraterLong"];
CTI_GC_GROUND_CLEANUP_DISTANCE_UNIT = 30;

CTI_TEAMPLAY_TRANSPORT_DISTANCE = 1500;
CTI_TEAMPLAY_TRANSPORT_DISTANCE_TOWN = 1000; // Must be this close to a town for a reward
CTI_TEAMPLAY_TRANSPORT_DISTANCE_TOWN_LAST = 1000; // Must be this far from the last town a reward was gotten at
CTI_TEAMPLAY_TRANSPORT_REWARD = 200; // Reward for Dropping off units at a cap.
CTI_TEAMPLAY_TRANSPORT_SCORE = 2;
CTI_TEAMPLAY_PARADROP_DISTANCE = 2500; // Vehicle must travel this far to be considered for a rewards
CTI_TEAMPLAY_PARADROP_DISTANCE_TOWN = 1500; // Vehicle must be at most this far from a town to be considered eligible for rewards
CTI_TEAMPLAY_PARADROP_DISTANCE_TOWN_LAST = 1500;
CTI_TEAMPLAY_PARADROP_REWARD = 500; // Reward for paradropping a vehicle
CTI_TEAMPLAY_PARADROP_SCORE = 10;

CTI_HALO_COOLDOWN = 600;
CTI_HALO_LASTTIME = 60;
CTI_HALO_ALTITUDE = 400;
CTI_HALO_RATIO = 1;
CTI_HALO_COST = 3000;
CTI_HALO_COST_VEHICLE_PERCENTAGE = 15;
CTI_HALO_BLACKLIST = ["HAFM_BUYAN", "OFPS_HAFM_214_O", "OFPS_HAFM_214_O", "HAFM_FREMM", "HAFM_Replenishment", "HAFM_Russen", "HAFM_ABurke", "OFPS_GUNBOAT_O", "OFPS_HAFM_BUYAN", "OFPS_HAFM_Admiral", "HAFM_Admiral", "HAFM_Yasen", "HAFM_209", "HAFM_214", "HAFM_MEKO_HN", "HAFM_Virginia","HAFM_GunBoat_BLU", "HAFM_MEKO_TN", "HAFM_Replenishment_OPF", "CUP_B_Frigate_ANZAC", "CUP_O_Ural_Repair_RU", "cup_b_mtvr_repair_usmc", "OFPS_Frigate_CSAT", "OFPS_O_Truck_03_device_F", "OFPS_B_Truck_03_device_F"]; //--- Classnames in this list may not use HALO

CTI_PARADROP_UNIT_FEE = 100; // Cost per unit being paradropped
CTI_PARADROP_MARK_RANGE = 400; // Max distance dropzone can be from the player/town
CTI_PARADROP_TOWN_RANGE = 1000; // How far the drop zone must be from towns not owned by the player's team/fully secured (All camps capped) 
CTI_PARADROP_PODS = ["Land_Pod_Heli_Transport_04_bench_F", "Land_Pod_Heli_Transport_04_covered_F", "Land_Pod_Heli_Transport_04_bench_black_F", "Land_Pod_Heli_Transport_04_covered_black_F", "OFPS_POD_BENCH_B", "OFPS_POD_COVERED_B"]; // Classnames of vehicles that can be used to paradrop units in

//CRAM_TARGET_CLASSES = ["RocketCore", "ShellCore", "ShellBase", "BombCore", "MissileCore", "SubmunitionCore", "SubmunitionBase","Air"];
//CRAM_TURRET_CLASSES = ["O_at_phalanx_35AI","B_at_phalanx_35AI"];
//CRAM_PROXIMITY_RANGE = 15;

if (isNil 'CTI_DEV_MODE') then {CTI_DEV_MODE = 1};
CTI_VOTE_TIME = 60; //--- Commander Vote time
if (CTI_DEV_MODE > 0) then {
	CTI_VOTE_TIME = 8;
};

//---  OFPS Core Pack Check --- SET ALL EXTERNAL SOUND FILE CLASSNAMES HERE----------------------------------------------------------
if (OFPS_Core_Loaded) then {
	CTI_SOUND_nosound = "nosound";//Silent Mod No Sound External Class
	CTI_SOUND_prison = "prison";
	CTI_SOUND_nuke = "nuke";
	CTI_SOUND_nuclear_boom = "nuclear_boom";
	CTI_SOUND_nuclear_heartbeat = "nuclear_heartbeat";
	CTI_SOUND_uclear_geiger = "nuclear_geiger";
	CTI_SOUND_geiger_1 = "geiger_1";
	CTI_SOUND_geiger_2 = "geiger_2";
	CTI_SOUND_geiger_3 = "geiger_3";
	CTI_SOUND_akbar = "akbar";
	CTI_SOUND_choppa = "choppa";
	CTI_SOUND_incoming = "incoming";
	CTI_SOUND_Vent = "Vent";
	CTI_SOUND_Vent2 = "Vent2";
	CTI_SOUND_Para = "Para";
	CTI_SOUND_valkyries = "valkyries";
	CTI_SOUND_valkyries_loud = "valkyries_loud";
	CTI_SOUND_radiodanger = "radiodanger";
	CTI_SOUND_theme_east_1_short = "theme_east_1_short";
	CTI_SOUND_theme_east_1_long = "theme_east_1_long";
	CTI_SOUND_theme_west_1_short = "theme_west_1_short";
	CTI_SOUND_theme_west_1_long = "theme_west_1_long";
	CTI_SOUND_joytotheworld = "joytotheworld";
	CTI_SOUND_jinglebellrocks = "jinglebellrocks";
	CTI_SOUND_herecomessantaclaus = "herecomessantaclaus";
	CTI_SOUND_rockinaroundthechristmastree = "rockinaroundthechristmastree";
	CTI_SOUND_purgesiren = "purgesiren";
	CTI_SOUND_purgesiren_1 = "purgesiren_1";
	CTI_SOUND_purgesiren_2 = "purgesiren_2";
	CTI_SOUND_purgesiren_3 = "purgesiren_3";
	CTI_SOUND_marchinhome = "marchinhome";
	//weather effects
	CTI_SOUND_MKY_Blizzard = "MKY_Blizzard";
	CTI_SOUND_MKY_Snowfall = "MKY_Snowfall";
	CTI_SOUND_bcg_wind = "bcg_wind";
	CTI_SOUND_rafala_1 = "rafala_1";
	CTI_SOUND_rafala_2 = "rafala_2";
	CTI_SOUND_rafala_6 = "rafala_6";
	CTI_SOUND_rafala_7 = "rafala_7";
	CTI_SOUND_rafala_8 = "rafala_8";
	CTI_SOUND_rafala_9 = "rafala_9";
	CTI_SOUND_tree_crack_1 = "tree_crack_1";
	CTI_SOUND_tree_crack_2 = "tree_crack_2";
	CTI_SOUND_tree_crack_3 = "tree_crack_3";
	CTI_SOUND_tree_crack_4 = "tree_crack_4";
	CTI_SOUND_tree_crack_5 = "tree_crack_5";
	CTI_SOUND_tree_crack_6 = "tree_crack_6";
	CTI_SOUND_tree_crack_7 = "tree_crack_7";
	CTI_SOUND_tree_crack_8 = "tree_crack_8";
	CTI_SOUND_tree_crack_9 = "tree_crack_9";
	CTI_SOUND_lup_01 = "lup_01";
	CTI_SOUND_lup_02 = "lup_02";
	CTI_SOUND_lup_03 = "lup_03";
	CTI_SOUND_tremurat_1 = "tremurat_1";
	CTI_SOUND_tremurat_2 = "tremurat_2";
	CTI_SOUND_tremurat_3 = "tremurat_3";
	CTI_SOUND_tremurat_4 = "tremurat_4";
	CTI_SOUND_tuse_1 = "tuse_1";
	CTI_SOUND_tuse_2 = "tuse_2";
	CTI_SOUND_tuse_3 = "tuse_3";
	CTI_SOUND_tuse_4 = "tuse_4";
	CTI_SOUND_tuse_5 = "tuse_5";
	CTI_SOUND_tuse_6 = "tuse_6";
	CTI_SOUND_uragan_1 = "uragan_1";
	CTI_SOUND_rafala_4_dr = "rafala_4_dr";
	CTI_SOUND_rafala_5_st = "rafala_5_st";
	CTI_SOUND_sandstorm = "sandstorm";
} else {
	//SETUP ALL VANILLA BACKUP SOUNDS HERE --- IF NOT BACKUP SOUND USE NOMODSOUND FOR EMPTY
	CTI_SOUND_nosound = "nomodsound";//nomodsound -- BACKUP SILENT LOCAL SOUNDCLASS
	CTI_SOUND_prison = "nomodsound";
	CTI_SOUND_nuke = "nomodsound";
	CTI_SOUND_nuclear_boom = "nomodsound";
	CTI_SOUND_nuclear_heartbeat = "nomodsound";
	CTI_SOUND_uclear_geiger = "nomodsound";
	CTI_SOUND_geiger_1 = "nomodsound";
	CTI_SOUND_geiger_2 = "nomodsound";
	CTI_SOUND_geiger_3 = "nomodsound";
	CTI_SOUND_akbar = "nomodsound";
	CTI_SOUND_choppa = "nomodsound";
	CTI_SOUND_incoming = "nomodsound";
	CTI_SOUND_Vent = "nomodsound";
	CTI_SOUND_Vent2 = "nomodsound";
	CTI_SOUND_Para = "nomodsound";
	CTI_SOUND_valkyries = "nomodsound";
	CTI_SOUND_valkyries_loud = "nomodsound";
	CTI_SOUND_radiodanger = "nomodsound";
	CTI_SOUND_theme_east_1_short = "nomodsound";
	CTI_SOUND_theme_east_1_long = "nomodsound";
	CTI_SOUND_theme_west_1_short = "nomodsound";
	CTI_SOUND_theme_west_1_long = "nomodsound";
	CTI_SOUND_joytotheworld = "nomodsound";
	CTI_SOUND_jinglebellrocks = "nomodsound";
	CTI_SOUND_herecomessantaclaus = "nomodsound";
	CTI_SOUND_rockinaroundthechristmastree = "nomodsound";
	CTI_SOUND_purgesiren = "nomodsound";
	CTI_SOUND_purgesiren_1 = "nomodsound";
	CTI_SOUND_purgesiren_2 = "nomodsound";
	CTI_SOUND_purgesiren_3 = "nomodsound";
	CTI_SOUND_marchinhome = "nomodsound";
	CTI_SOUND_MKY_Blizzard = "nomodsound";
	CTI_SOUND_MKY_Snowfall = "nomodsound";
	CTI_SOUND_bcg_wind = "nomodsound";
	CTI_SOUND_rafala_1 = "nomodsound";
	CTI_SOUND_rafala_2 = "nomodsound";
	CTI_SOUND_rafala_6 = "nomodsound";
	CTI_SOUND_rafala_7 = "nomodsound";
	CTI_SOUND_rafala_8 = "nomodsound";
	CTI_SOUND_rafala_9 = "nomodsound";
	CTI_SOUND_tree_crack_1 = "nomodsound";
	CTI_SOUND_tree_crack_2 = "nomodsound";
	CTI_SOUND_tree_crack_3 = "nomodsound";
	CTI_SOUND_tree_crack_4 = "nomodsound";
	CTI_SOUND_tree_crack_5 = "nomodsound";
	CTI_SOUND_tree_crack_6 = "nomodsound";
	CTI_SOUND_tree_crack_7 = "nomodsound";
	CTI_SOUND_tree_crack_8 = "nomodsound";
	CTI_SOUND_tree_crack_9 = "nomodsound";
	CTI_SOUND_lup_01 = "nomodsound";
	CTI_SOUND_lup_02 = "nomodsound";
	CTI_SOUND_lup_03 = "nomodsound";
	CTI_SOUND_tremurat_1 = "nomodsound";
	CTI_SOUND_tremurat_2 = "nomodsound";
	CTI_SOUND_tremurat_3 = "nomodsound";
	CTI_SOUND_tremurat_4 = "nomodsound";
	CTI_SOUND_tuse_1 = "nomodsound";
	CTI_SOUND_tuse_2 = "nomodsound";
	CTI_SOUND_tuse_3 = "nomodsound";
	CTI_SOUND_tuse_4 = "nomodsound";
	CTI_SOUND_tuse_5 = "nomodsound";
	CTI_SOUND_tuse_6 = "nomodsound";
	CTI_SOUND_uragan_1 = "nomodsound";
	CTI_SOUND_rafala_4_dr = "nomodsound";
	CTI_SOUND_rafala_5_st = "nomodsound";
	CTI_SOUND_sandstorm = "nomodsound";
};	

with missionNamespace do {

	// --- server ---
	if (isNil 'CTI_SERVER_RESTART') then {CTI_SERVER_RESTART = 0};
	// --- database ---
	if ((isNil 'CTI_DATABASE_ENABLED') || (CTI_DATABASE_ENABLED == 0 )) then {
		CTI_DATABASE_TRACKING = false;
	} else {
		CTI_DATABASE_TRACKING = true;
	};
	if ((isNil 'CTI_DATABASE_DESTINATION') || (CTI_DATABASE_DESTINATION == 0 )) then { //-- 0: prod db, 1: test db, 2: local db
		CTI_DATABASE_DESTINATION = 0; //default to prod DB
	};
	// --- end of database ---


	if (isNil 'CTI_MISSION_MODE') then {CTI_MISSION_MODE = 0};
	if (isNil 'CTI_MODE_PARAMS') then {CTI_MODE_PARAMS = 0};
	if (isNil 'CTI_FACTION_WEST') then {CTI_FACTION_WEST = 0};
	if (isNil 'CTI_FACTION_EAST') then {CTI_FACTION_EAST = 0};
	
	if (isNil 'CTI_FACTION_DEFAULT_BASE') then {CTI_FACTION_DEFAULT_BASE = 0};
	if (isNil 'CTI_FACTION_DEFAULT_VEHICLES') then {CTI_FACTION_DEFAULT_VEHICLES = 0};
	if (isNil 'CTI_FACTION_DEFAULT_GEAR') then {CTI_FACTION_DEFAULT_GEAR = 0};
	if (isNil 'CTI_FACTION_DEFAULT_TROOPS') then {CTI_FACTION_DEFAULT_TROOPS = 0};

	if (isNil 'CTI_ARTILLERY_SETUP') then {CTI_ARTILLERY_SETUP = 0}; //--- Artillery status (-2: Disabled, -1: Artillery Computer, 0: Short, 1: Medium, 2: Long, 3: Far)

	if (isNil 'CTI_ECONOMY_INCOME_CYCLE') then {CTI_ECONOMY_INCOME_CYCLE = 60};

	CTI_ECONOMY_POOL_AWARD_PERCENTAGE_WEST = 0.1;
	CTI_ECONOMY_POOL_AWARD_PERCENTAGE_EAST = 0.1;
	CTI_ECONOMY_POOL_RESOURCES_PERCENTAGE_WEST = 0.1;
	CTI_ECONOMY_POOL_RESOURCES_PERCENTAGE_EAST = 0.1;

	if (isNil 'CTI_ECONOMY_STARTUP_FUNDS_EAST') then {CTI_ECONOMY_STARTUP_FUNDS_EAST = 900};
	if (isNil 'CTI_ECONOMY_STARTUP_FUNDS_EAST_COMMANDER') then {CTI_ECONOMY_STARTUP_FUNDS_EAST_COMMANDER = 9000};
	if (isNil 'CTI_ECONOMY_STARTUP_FUNDS_WEST') then {CTI_ECONOMY_STARTUP_FUNDS_WEST = 900};
	if (isNil 'CTI_ECONOMY_STARTUP_FUNDS_WEST_COMMANDER') then {CTI_ECONOMY_STARTUP_FUNDS_WEST_COMMANDER = 9000};

	if (isNil 'CTI_ECONOMY_STARTUP_SUPPLY_EAST') then {CTI_ECONOMY_STARTUP_SUPPLY_EAST = 1200};
	if (isNil 'CTI_ECONOMY_STARTUP_SUPPLY_WEST') then {CTI_ECONOMY_STARTUP_SUPPLY_WEST = 1200};

	
	if (CTI_DEV_MODE > 0) then {
		CTI_ECONOMY_STARTUP_FUNDS_EAST = 1000000;
		CTI_ECONOMY_STARTUP_FUNDS_EAST_COMMANDER = 1000000;
		CTI_ECONOMY_STARTUP_SUPPLY_EAST = 1000000;
		CTI_ECONOMY_STARTUP_FUNDS_WEST = 1000000;
		CTI_ECONOMY_STARTUP_FUNDS_WEST_COMMANDER = 1000000;
		CTI_ECONOMY_STARTUP_SUPPLY_WEST = 1000000;
	};

	if (isNil 'CTI_ECONOMY_TOWNS_OCCUPATION') then {CTI_ECONOMY_TOWNS_OCCUPATION = 1}; //--- Determine if towns need to be occupied to bring more resources
	if (isNil 'CTI_GRAPHICS_VD_MAX') then {CTI_GRAPHICS_VD_MAX = 2500};
	if (isNil 'CTI_GRAPHICS_TG_MAX') then {CTI_GRAPHICS_TG_MAX = 50};

	if (isNil 'CTI_RESPAWN_AI') then {CTI_RESPAWN_AI = 1};
	if (isNil 'CTI_RESPAWN_CAMPS') then {CTI_RESPAWN_CAMPS = 1}; //--- Camp mode (1: Classic, 2: Nearby)
	if (isNil 'CTI_RESPAWN_CAMPS_CONDITION') then {CTI_RESPAWN_CAMPS_CONDITION = 2}; //--- Camp respawn condition (0: Unlimited, 1: Priced, 2: Limited per capture)
	if (isNil 'CTI_RESPAWN_FOB_RANGE') then {CTI_RESPAWN_FOB_RANGE = 1750}; //--- Range at which a unit can spawn at a FOB
	if (isNil 'CTI_RESPAWN_LARGE_FOB_RANGE') then {CTI_RESPAWN__LARGE_FOB_RANGE = 2500}; //--- Range at which a unit can spawn at a Large FOB
	if (isNil 'CTI_RESPAWN_MOBILE') then {CTI_RESPAWN_MOBILE = 1};
	if (isNil 'CTI_RESPAWN_TIMER') then {CTI_RESPAWN_TIMER = 30};

	if (isNil 'CTI_TEAMSWAP') then {CTI_TEAMSWAP = 1};
	if (isNil 'CTI_TEAMSTACK') then {CTI_TEAMSTACK = 1};

	if (isNil 'CTI_MARKERS_INFANTRY') then {CTI_MARKERS_INFANTRY = 1}; //--- Track infantry on map

	if (isNil 'CTI_PLAYERS_GROUPSIZE') then {CTI_PLAYERS_GROUPSIZE = 4}; //--Limit Player AI

	if (isNil 'CTI_UNITS_FATIGUE') then {CTI_UNITS_FATIGUE = 0};
	if (isNil 'CTI_GAMEPLAY_3P') then {CTI_GAMEPLAY_3P = -1};
	if (isNil 'CTI_WEAPON_SWAY') then {CTI_WEAPON_SWAY = 50};
	if (isnil 'CTI_SM_NONV') then {CTI_SM_NONV = 1};
	if (isnil 'CTI_SM_NV_THER_VEH') then {CTI_SM_NV_THER_VEH = 0};

	if (isNil 'CTI_WEATHER_FAST') then {CTI_WEATHER_FAST = 12};
	if (isNil 'CTI_WEATHER_FAST_NIGHT') then {CTI_WEATHER_FAST_NIGHT = 1};
	if (isNil 'CTI_WEATHER_INITIAL') then {CTI_WEATHER_INITIAL = 10};
	if (isNil 'CTI_WEATHER_RAIN') then {CTI_WEATHER_RAIN = -1};
	if (isNil 'CTI_WEATHER_RAIN_COEF') then {CTI_WEATHER_RAIN_COEF = -1};
	if (isNil 'CTI_WEATHER_SNOW') then {CTI_WEATHER_SNOW = 0};
	if (isNil 'CTI_WEATHER_SNOW_COEF') then {CTI_WEATHER_SNOW_COEF = -1};
	if (isNil 'CTI_WEATHER_DUST') then {CTI_WEATHER_DUST = 0};
	if (isNil 'CTI_WEATHER_DUST_COEF') then {CTI_WEATHER_DUST_COEF = -1};
	if (isNil 'CTI_WEATHER_MONSOON') then {CTI_WEATHER_MONSOON = 0};
	if (isNil 'CTI_WEATHER_MONSOON_COEF') then {CTI_WEATHER_MONSOON_COEF = -1};
	if (isNil 'CTI_WEATHER_OVERCAST') then {CTI_WEATHER_OVERCAST = -1};
	if (isNil 'CTI_WEATHER_OVERCAST_COEF') then {CTI_WEATHER_OVERCAST_COEF = -1};
	if (isNil 'CTI_WEATHER_FOG') then {CTI_WEATHER_FOG = -1};
	if (isNil 'CTI_WEATHER_FOG_COEF') then {CTI_WEATHER_FOG_COEF = -1};
	if (isNil 'CTI_WEATHER_FOG_DECAY') then {CTI_WEATHER_FOG_DECAY = -1};
	if (isNil 'CTI_WEATHER_FOG_DECAY_COEF') then {CTI_WEATHER_FOG_DECAY_COEF = -1};
	if (isNil 'CTI_WEATHER_FOG_ALT') then {CTI_WEATHER_FOG_ALT = -1};
	if (isNil 'CTI_WEATHER_FOG_ALT_COEF') then {CTI_WEATHER_FOG_ALT_COEF = -1};
	if (isNil 'CTI_WEATHER_WIND') then {CTI_WEATHER_WIND = -1};
	if (isNil 'CTI_WEATHER_WIND_COEF') then {CTI_WEATHER_WIND_COEF = -1};
	if (isNil 'CTI_WEATHER_WAVES') then {CTI_WEATHER_WAVES = -1};
	if (isNil 'CTI_WEATHER_WAVES_COEF') then {CTI_WEATHER_WAVES_COEF = -1};
	if (isNil 'CTI_WEATHER_VARIANCE_TIME') then {CTI_WEATHER_VARIANCE_TIME = -1};
	if (isNil 'CTI_WEATHER_STORM_TIME') then {CTI_WEATHER_STORM_TIME = -1};
	
	if (isNil 'CTI_VANILLA_ADDON') then {CTI_VANILLA_ADDON = 0};
	if (isNil 'CTI_KARTS_ADDON') then {CTI_KARTS_ADDON = 0};
	if (isNil 'CTI_HELI_ADDON') then {CTI_HELI_ADDON = 0};
	if (isNil 'CTI_MARKSMEN_ADDON') then {CTI_MARKSMEN_ADDON = 0};
	if (isNil 'CTI_APEX_ADDON') then {CTI_APEX_ADDON = 0};
	if (isNil 'CTI_JETS_ADDON') then {CTI_JETS_ADDON = 0};
	if (isNil 'CTI_MALDEN_ADDON') then {CTI_MALDEN_ADDON = 0};
	if (isNil 'CTI_TANKS_ADDON') then {CTI_TANKS_ADDON = 0};
	if (isNil 'CTI_GLOBAL_MOBILIZATION_ADDON') then {CTI_GLOBAL_MOBILIZATION_ADDON = 0};
	if (isNil 'CTI_CONTACT_ADDON') then {CTI_CONTACT_ADDON = 0};
	if (isNil 'CTI_OFPS_CORE_ADDON') then {CTI_OFPS_CORE_ADDON = 0};
	if (isNil 'CTI_OFPS_UNITS_ADDON') then {CTI_OFPS_UNITS_ADDON = 0};
	if (isNil 'CTI_OFPS_RHS_ADDON') then {CTI_OFPS_RHS_ADDON = 0};
	if (isNil 'CTI_OFPS_CUP_ADDON') then {CTI_OFPS_CUP_ADDON = 0};
	if (isNil 'CTI_CUP_UNITS_ADDON') then {CTI_CUP_UNITS_ADDON = 0};
	if (isNil 'CTI_CUP_VEHICLES_ADDON') then {CTI_CUP_VEHICLES_ADDON = 0};
	if (isNil 'CTI_CUP_WEAPONS_ADDON') then {CTI_CUP_WEAPONS_ADDON = 0};
	if (isNil 'CTI_CUP_CORE_ADDON') then {CTI_CUP_CORE_ADDON = 0};
	if (isNil 'CTI_CUP_TERRAINS_ADDON') then {CTI_CUP_TERRAINS_ADDON = 0};
	if (isNil 'CTI_RHS_AFRF_ADDON') then {CTI_RHS_AFRF_ADDON = 0};
	if (isNil 'CTI_RHS_GREF_ADDON') then {CTI_RHS_GREF_ADDON = 0};
	if (isNil 'CTI_RHS_SAF_ADDON') then {CTI_RHS_SAF_ADDON = 0};
	if (isNil 'CTI_RHS_USAF_ADDON') then {CTI_RHS_USAF_ADDON = 0};
	if (isNil 'CTI_SFP_ADDON') then {CTI_SFP_ADDON = 0};
	if (isNil 'CTI_OFPS_SFP_ADDON') then {CTI_OFPS_SFP_ADDON = 0};
	if (isNil 'CTI_RUSSIA_2035_ADDON') then {CTI_RUSSIA_2035_ADDON = 0};
	if (isNil 'CTI_HAFM_ADDON') then {CTI_HAFM_ADDON = 0};
	if (isNil 'CTI_HAFM_SUBS_ADDON') then {CTI_HAFM_SUBS_ADDON = 0};
	if (isNil 'CTI_OFPS_HAFM_ADDON') then {CTI_OFPS_HAFM_ADDON = 0};
	if (isNil 'CTI_OFPS_HAFM_SUBS_ADDON') then {CTI_OFPS_HAFM_SUBS_ADDON = 0};
	if (isNil 'CTI_UNSUNG_ADDON') then {CTI_UNSUNG_ADDON = 0};
	if (isNil 'CTI_IFA3_ADDON') then {CTI_IFA3_ADDON = 0};
	
	if (isNil 'CTI_DEV_MODE') then {CTI_DEV_MODE = 0};

	// quick fix	
	if (isnil "CTI_GAMEPLAY_DARTER") then {CTI_GAMEPLAY_DARTER = 2000};

};

//Setup MODES Here
//--- add param to parameters file
//--- add folder into Common/config/modedir
//--- add directory below that matches foldername exact
switch (CTI_MISSION_MODE) do {
	case 0:{
		CTI_MODE_DIR = "vanilla-mode";	
	};
	case 1:{
		CTI_MODE_DIR = "ofps-mode";		
	};
	case 2:{
		CTI_MODE_DIR = "rhs-mode";		
	};	
	case 3:{
		CTI_MODE_DIR = "ifa3-mode";		
	};	
};
//Mode Param Overrides
if (CTI_MODE_PARAMS == 0) then {
	call compile preprocessFileLineNumbers Format["Common\Config\%1\Parameters\Mode_Params.sqf", CTI_MODE_DIR];
};
//Mode Override
call compile preprocessFileLineNumbers Format["Common\Config\%1\Mode_CommonConstants.sqf", CTI_MODE_DIR];	