class Params {
	
	
	class CTI_TOWNS_RESISTANCE_DETECTION_RANGE {
		title = "Trigger_RES";
		values[] = {750,3000,5000,15000};
		texts[] = {"750", "3000", "5000", "15k"};
		default = 5000;
	};
	
	class TOWNS_OCCUPATION_DETECTION_RANGE {
		title = "Trigger_OCCUP";
		values[] = {750,3000,5000,15000};
		texts[] = {"750", "3000", "5000", "15k"};
		default = 5000;
	};
	
	
	
	
	class CTI_MISSION_MODE {
		title = "MODE: CTI Game Mode";
		values[] = {0,1,2,3};
		texts[] = {"Vanilla/DLC", "OFPS", "RHS", "IFA3"};
		default = 1;
	};
	class CTI_MODE_PARAMS {
		title = "MODE: Mode Param Overrides";
		values[] = {0,1};
		texts[] = {"Use Mode Params (if available)", "Manual Settings"};
		default = 0;
	};	
	class SEPARATORR {
		title = "========================== FACTIONS ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_FACTION_WEST {
		title = "FACTION: Default West Faction";
		values[] = {0,1,2,3,4,5,6};
		texts[] = {"NATO Vanilla (arid)","NATO Pacific APEX (woodland)","USMC CUP (Arid)", "USAF RHS (Arid)", "Cold War", "Unsung", "IFA3 - Germany"};
		default = 3;
	};
	class CTI_FACTION_EAST {
		title = "FACTION: Default East Faction";
		values[] = {0,1,2,3,4,5,6};
		texts[] = {"CSAT Vanilla (arid)","CSAT Pacific APEX (woodland)","Russia CUP (Arid)","Russia RHS (Arid)", "Cold War", "Unsung", "IFA3 - USSR"};
		default = 3;
	};
	class CTI_FACTION_DEFAULT_BASE {
		title = "FACTION: Default Base Factories/Objects";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Vanilla","CUP","RHS","Cold War", "Unsung", "IFA3"};
		default = 2;
	};	
	class SEPARATOR0 {
		title = "========================== BASES ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};	
	class CTI_BASE_AREA_MAX {
		title = "BASE: Areas";
		values[] = {1,2,3,4,5};
		texts[] = {"1","2","3","4","5"};
		default = 3;
	};
	class CTI_BASE_AREA_STRUCTURES_IDENTICAL_LIMIT {
		title = "BASE: Areas Identical Structures Limit";
		values[] = {-1,1};
		texts[] = {"Unlimited","Factory Limit"};
		default = 1;
	};
	class CTI_BASE_HQ_REPAIR {
		title = "BASE: HQ Repairable";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_BASE_HEALTH_UPGRADE {
		title = "BASE: Enable Base Health Upgrade";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};		
	class CTI_BASE_FOB_MAX {
		title = "BASE: FOB Limit";
		values[] = {0,1,2,3,4,5,6,7,8,9,10};
		texts[] = {"Disabled","1","2","3","4","5","6","7","8","9","10"};
		default = 4;
	};
	class CTI_BASE_LARGE_FOB_MAX {
		title = "BASE: Large FOB Limit";
		values[] = {0,1,2,3,4,5,6,7,8,9,10};
		texts[] = {"Disabled","1","2","3","4","5","6","7","8","9","10"};
		default = 2;
	};
	class CTI_BASE_STARTUP_PLACEMENT {
		title = "BASE: Startup Placement";
		values[] = {2000,3000,4000,5000,6000,7000,8000,9000,10000,12000,15000,20000,25000,30000,40000};
		texts[] = {"2 KM","3 KM","4 KM","5 KM","6 KM","7 KM","8 KM","9 KM","10 KM","12 KM","15 KM","20 KM","25 KM","30 KM","40 KM"};
		default = 9000;
	};
	class SEPARATOR1 {
		title = "========================== INCOME ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_ECONOMY_INCOME_CYCLE {
		title = "INCOME: Delay";
		values[] = {30,35,40,45,50,55,60,65,70,75,90,36000};
		texts[] = {"30 Seconds","35 Seconds","40 Seconds","45 Seconds","50 Seconds","55 Seconds","01:00 Minutes","01:05 Minutes","01:10 Minutes","01:15 Minutes","01:30 Minutes","10hrs (no passive)"};
		default = 90;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_EAST_COMMANDER {
		title = "INCOME: Starting Funds (East Commander)";
		values[] = {0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,60000,70000,80000,90000,100000,500000,1000000,10000000,100000000,1000000000};
		texts[] = {"$0, %5k, $10k","$15k","$20k","$25k","$30k","$35k","$40k","$45k","$50k","$60k","$70k","$80k","$90k","$100k","$500,000","$1,000,000","$10,000,000","$100,000,000","$1,000,000,000"};
		default = 1000000;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_EAST {
		title = "INCOME: Starting Funds (East Players)";
		values[] = {0,1000,1500,2000,2500,5000,7500,10000,15000,20000,25000,30000,40000,50000,100000,500000,1000000,10000000,100000000};
		texts[] = {"$0","$1000","$1500","$2000","$2500","$5000","$7500","$10,000","$15,000","$20,000","$25,000","$30,000","$40,000","$50,000","$100,000","$500,000","$1,000,000","$10,000,000","$100,000,000"};
		default = 30000;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_WEST_COMMANDER {
		title = "INCOME: Starting Funds (West Commander)";
		values[] = {0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,60000,70000,80000,90000,100000,500000,1000000,10000000,100000000,1000000000};
		texts[] = {"$0, %5k, $10k","$15k","$20k","$25k","$30k","$35k","$40k","$45k","$50k","$60k","$70k","$80k","$90k","$100k","$500,000","$1,000,000","$10,000,000","$100,000,000","$1,000,000,000"};
		default = 1000000;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_WEST {
		title = "INCOME: Starting Funds (West Players)";
		values[] = {0,1000,1500,2000,2500,5000,7500,10000,15000,20000,25000,30000,40000,50000,100000,500000,1000000,10000000,100000000};
		texts[] = {"$0","$1000","$1500","$2000","$2500","$5000","$7500","$10,000","$15,000","$20,000","$25,000","$30,000","$40,000","$50,000","$100,000","$500,000","$1,000,000","$10,000,000","$100,000,000"};
		default = 30000;
	};
	class CTI_ECONOMY_TOWNS_OCCUPATION {
		title = "INCOME: Towns Occupation";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_ECONOMY_STARTUP_SUPPLY_EAST {
		title = "SUPPLY: Starting Supply (East Team)";
		values[] = {0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,60000,70000,80000,90000,100000,500000,1000000,10000000,100000000,1000000000};
		texts[] = {"$0, %5k, $10k","$15k","$20k","$25k","$30k","$35k","$40k","$45k","$50k","$60k","$70k","$80k","$90k","$100k","$500,000","$1,000,000","$10,000,000","$100,000,000","$1,000,000,000"};
		default = 100000;
	};
	class CTI_ECONOMY_STARTUP_SUPPLY_WEST {
		title = "SUPPLY: Starting Supply (West Team)";
		values[] = {0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,60000,70000,80000,90000,100000,500000,1000000,10000000,100000000,1000000000};
		texts[] = {"$0, %5k, $10k","$15k","$20k","$25k","$30k","$35k","$40k","$45k","$50k","$60k","$70k","$80k","$90k","$100k","$500,000","$1,000,000","$10,000,000","$100,000,000","$1,000,000,000"};
		default = 100000;
	};
	class SEPARATOR2 {
		title = "========================== TOWNS ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_TOWNS_OCCUPATION {
		title = "TOWNS: Occupation";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_TOWNS_OCCUPATION_SKILL {
		title = "TOWNS: Occupation Skill level";
		values[] = {20,30,40,50,60,70,80,90,100};
		texts[] = {"20","30","40","50","60","70","80","90","100"};
		default = 60;
	};

	class CTI_TOWNS_OCCUPATION_LEVEL_RESISTANCE {
		title = "TOWNS: Resistance Occupation Squad Count";
		values[] = {5,10,15,20,25,30,35,40};
		texts[] = {"Amateur","Novice","Average","Skilled","Professional","Specialist","Expert","Chuck Norris"};
		default = 20;
	};
	class CTI_TOWNS_OCCUPATION_LEVEL {
		title = "TOWNS: Side Occupation Squad Count";
		values[] = {5,10,15,20,25,30,35,40};
		texts[] = {"Amateur","Novice","Average","Skilled","Professional","Specialist","Expert","Chuck Norris"};
		default = 20;
	};
	class CTI_TOWNS_OCCUPATION_RESISTANCE {
		title = "TOWNS: Resistance Occupation Forces";
		values[] = {0,1,2,3,4,5,6,7,8,9,10};
		texts[] = {"Vanilla - AAF","Vanilla - FIA","Syndikat Paramilitary - APEX","ION PMC - CUP","NAPA Chernarus - CUP","Royal Army Corp Of Sahrani - CUP","Takistani Military - CUP","GREF - RHS", "Cold War", "Unsung", "IFA3 - Americans/British"};
		default = 4;
	};
	class CTI_TOWNS_OCCUPATION_WEST {
		title = "TOWNS: Blufor Occupation Forces";
		values[] = {0,1,2,3,4,5,6};
		texts[] = {"Vanilla","Pacific Special Forces - APEX","US Army - CUP","US - RHS", "Cold War", "Unsung", "IFA3 - Germany"};
		default = 4;
	};
	class CTI_TOWNS_OCCUPATION_EAST {
		title = "TOWNS: Opfor Occupation Forces";
		values[] = {0,1,2,3,4,5,6};
		texts[] = {"Vanilla","Pacific Special Forces - APEX","Russians - CUP","Russians - RHS", "Cold War", "Unsung", "IFA3 - USSR"};
		default = 4;
	};
	class CTI_TOWNS_PEACE {
		title = "TOWNS: Peace";
		values[] = {0,60,120,180,300,600};
		texts[] = {"Disabled","1 Minute","2 Minutes","3 Minutes","5 Minutes","10 Minutes"};
		default = 600;
	};
	class CTI_TOWNS_OCCUPATION_LIMIT_AI {
		title = "TOWNS: Occupation Soft max AI Limit";
		values[] = {50,100,150,200,250,300,350,400};
		texts[] = {"50","100","150","200","250","300","350","400"};
		default = 200;
	};
	class CTI_TOWNS_OCCUPATION_LIMIT_AI_QUEUE_RATIO {
		title = "TOWNS: Occupation Squad Queue Ratio";
		values[] = {0,10,20,30,40,50,60,70,80,90,100};
		texts[] = {"0","10","20","30","40","50","60","70","80","90","100"};
		default = 40;
	};
	class CTI_TOWNS_RESISTANCE_LIMIT_AI {
		title = "TOWNS: Resistance Soft max AI Limit";
		values[] = {50,100,150,200,250,300,350,400};
		texts[] = {"50","100","150","200","250","300","350","400"};
		default = 200;
	};
	class CTI_TOWNS_RESISTANCE_LIMIT_AI_QUEUE_RATIO {
		title = "TOWNS: Resistance Squad Queue Ratio";
		values[] = {0,10,20,30,40,50,60,70,80,90,100};
		texts[] = {"0","10","20","30","40","50","60","70","80","90","100"};
		default = 40;
	};
	class CTI_TOWNS_CAPTURE_MODE {
		title = "TOWNS: CAPTURE MODE";
		values[] = {0,1,2};
		texts[] = {"Normal","Camp Cap Boost","All Camps Required (also boosts)"};
		default = 2;
	};
	class CTI_TOWNS_TERRITORIAL {
		title = "TOWNS: Territorial Mode";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_TOWNS_STARTING_MODE {
		title = "TOWNS: Startup Mode (Precapped Towns)";
		 values[] = {0,1,2};
        texts[] = {"None", "Nearby", "Random"};
        default = 1;
	};
	class CTI_TOWN_AMOUNT {
		title = "TOWNS: Starting Amount";
		 values[] = {1,5,10,20,30,40,50};
        texts[] = {"1%","5%","10%","20%","30%","40%","50%"};
        default = 1;
	};
	class CTI_TOWN_WIN_MODE {
		title = "TOWNS: Economic Victory Requirement";
		 values[] = {60,70,80,90,100};
        texts[] = {"60%","70%","80%","90%","100% - All Towns Capped"};
        default = 90;
	};
	class CTI_TOWN_SUPPORT_MODE {
		title = "TOWNS: Allow Support Requests";
		 values[] = {0,1,2};
        texts[] = {"Disabled", "Resistance Only", "All"};
        default = 0;
	};
	class SEPARATOR3 {
		title = "========================== RESPAWN ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_RESPAWN_AI {
		title = "RESPAWN: AI Members";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_RESPAWN_CAMPS {
		title = "RESPAWN: Camps";
		values[] = {0,1,2};
		texts[] = {"Disabled","Town Classic","Nearby Camps"};
		default = 2;
	};
	class CTI_RESPAWN_CAMPS_CONDITION {
		title = "RESPAWN: Camps Condition";
		values[] = {0,1,2};
		texts[] = {"No limits","Priced","Limited"};
		default = 1;
	};
	class CTI_RESPAWN_FOB_RANGE {
		title = "RESPAWN: FOB Range";
		values[] = {500,750,1000,1250,1500,1750,2000,3000,4000,5000,10000};
		texts[] = {"0.50 KM","0.75 KM","1 KM","1.25 KM","1.5 KM","1.75 KM","2 KM","3 KM","4 KM","5 KM","10 KM"};
		default = 5000;
	};
	class CTI_RESPAWN_LARGE_FOB_RANGE {
		title = "RESPAWN: Large FOB Range";
		values[] = {500,750,1000,1250,1500,1750,2000,2250,2500,2750,3000,4000,5000,10000};
		texts[] = {"0.50 KM","0.75 KM","1 KM","1.25 KM","1.5 KM","1.75 KM","2 KM","2.25 KM","2.5 KM","2.75 KM","3 KM","4 KM","5 KM","10 KM"};
		default = 10000;
	};
	class CTI_RESPAWN_MOBILE {
		title = "RESPAWN: Mobile";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_RESPAWN_TIMER {
		title = "RESPAWN: Delay";
		values[] = {15,20,25,30,35,40,45,50,55,60};
		texts[] = {"15 Seconds","20 Seconds","25 Seconds","30 Seconds","35 Seconds","40 Seconds","45 Seconds","50 Seconds","55 Seconds","60 Seconds"};
		default = 30;
	};
	class SEPARATOR13 {
		title = "========================== REVIVE ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	#include "paramRevive.hpp"		
	class SEPARATOR4 {
		title = "============================ AI ==============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_PLAYERS_GROUPSIZE {
		title = "AI: Player Group Size";
		values[] = {0,1,2,3,4,5,8,10,12,14,16};
		texts[] = {"Barracks","1","2","3","4","5","8","10","12","14","16"};
		default = 0;
	};
	class SEPARATOR5 {
		title = "=========================== UNITS ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_MARKERS_INFANTRY {
		title = "UNITS: Show Map Infantry";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_UNITS_FATIGUE {
		title = "UNITS: Fatigue";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};	
	class SEPARATOR_VEH {
		title = "=========================== VEHICLES ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_VEHICLES_LOADOUTS {
		title = "VEHICLES: Loadouts";
		values[] = {0,1,2};
		texts[] = {"Disabled","Realistic","Unlocked"};
		default = 2;
	};
	class CTI_VEHICLES_AIR_ORDINANCE {
		title = "VEHICLES: Air Ordinance Upgrade";
		values[] = {0,1};
		texts[] = {"Disabled (no limit)","Enabled"};
		default = 0;
	};
	class CTI_VEHICLES_LAND_ORDINANCE {
		title = "VEHICLES: Land Ordinance Upgrade";
		values[] = {0,1};
		texts[] = {"Disabled (no limit)","Enabled"};
		default = 0;
	};	
	class CTI_VEHICLES_FUEL_CONSUMPTION {
		title = "VEHICLES: Increased Fuel Consumption";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_VEHICLES_LVOSS {
		title = "VEHICLES: Enable LVOSS";
		values[] = {0,1};
		texts[] = {"Disabled","Enable LVOSS"};
		default = 1;
	};
	class CTI_VEHICLES_ERA {
		title = "VEHICLES: Enable ERA/ARENA";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_VEHICLES_EMPTY_TIMEOUT {
		title = "VEHICLES: Vehicles Recycling Delay";
		values[] = {60,120,180,240,300,600,1200,1800,2400,3000,3600};
		texts[] = {"1 Minute","2 Minutes","3 Minutes","4 Minutes","5 Minutes","10 Minutes","20 Minutes","30 Minutes","40 Minutes","50 Minutes","1 Hour"};
		default = 1200;
	};
	class CTI_ARTILLERY_SETUP {
		title = "ARTILLERY: Setup";
		values[] = {-2,-1,0,1,2,3};
		texts[] = {"Disabled","Computer (Vanilla)","Short Range (2k)","Medium Range (4k)","Long Range (6k)","Extreme Range (8k)"};
		default = -1;
	};
	class SEPARATOR6 {
		title = "========================== GAMEPLAY ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_GAMEPLAY_3P {
		title = "GAMEPLAY: 3P view";
		values[] = {-1,0,1,2,3};
		texts[] = {"All","Drivers and Holstered","Vehicles","Infrantry","None"};
		default = -1;
	};
	class CTI_WEAPON_SWAY {
		title = "GAMEPLAY: Weapon Sway Level";
		values[] = {-1,0,10,20,30,40};
		texts[] = {"Rank","None","Little","Normal","Allot","Full"};
		default = -1;
	};
	class CTI_SM_NONV {
		title = "GAMEPLAY: Disable NVs, Thermal on Players";
		values[] = {0,1,2,3};
		texts[] = {"Default","Disable NV", "Disable Thermals","Disable NV/THERMALS"};
		default = 0;
	};
	class CTI_SM_NV_THER_VEH {
		title = "GAMEPLAY: Disable NVs, Thermal on Vehicles, Statics";
		values[] = {0,1,2,3};
		texts[] = {"Default","Disable NV", "Disable Thermals","Disable NV/THERMALS"};
		default = 0;
	};
	class CTI_GAMEPLAY_DARTER {
		title = "GAMEPLAY: Darter Range limitation";
		values[] = {0,500,1000,2000,4000,6000,8000};
		texts[] = {"None","Connection range 500m","Connection range 1000m","Connection range 2000m","Connection range 4000m","Connection range 6000m", "Connection range 8000m"};
		default = 6000;
	};
	class SEPARATOR7 {
		title = "========================== TEAMPLAY ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_TEAMSWAP {
		title = "TEAM: Team swap protection";
		values[] = {0,1};
		texts[] = {"off","on"};
		default = 1;
	};
	class CTI_TEAMSTACK {
		title = "TEAM: Team Stack protection";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Disabled","+1 Player","+2 Players","+3 Players","+4 Players","+5 Players"};
		default = 0;
	};
	class SEPARATOR8 {
		title = "======================== MAP SETTINGS =========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_GRAPHICS_TG_MAX {
		title = "VISUAL: Terrain Grid";
		values[] = {10,20,30,40,50};
		texts[] = {"Far","Medium","Short","Shorter","Free"};
		default = 50;
	};
	class CTI_GRAPHICS_VD_MAX {
		title = "VISUAL: View Distance";
		values[] = {1000,1500,2000,2500,3000,3500,4000};
		texts[] = {"1 KM","1.5 KM","2 KM","2.5 KM","3 KM","3.5 KM","4 KM"};
		default = 3500;
	};
	class CTI_WEATHER_INITIAL {
		title = "WEATHER: Inital Time";
		values[] = {-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18};
		texts[] = {"12 AM","1 AM","2 AM","3 AM","4 AM","5 AM","6 AM","7 AM","8 AM","9 AM","10 AM","11 AM","12 PM","1 PM","2 PM","3 PM","4 PM","5 PM","6 PM","7 PM","8 PM","9 PM","10 PM","11 PM","Random"};
		default = 0;
	};
	class CTI_WEATHER_RAIN {
		title = "WEATHER: Rain (Rain Requires Overcast Greater High)";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = 0;
	};
	class CTI_WEATHER_RAIN_COEF {
		title = "WEATHER: Rain Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = 0;
	};
	class CTI_WEATHER_SNOW {
		title = "WEATHER: Snow Storms";
		values[] = {0,1,2,3,4};
		texts[] = {"Clear","Light","Medium","High","Max"};
		default = 0;
	};
	class CTI_WEATHER_SNOW_COEF {
		title = "WEATHER: Snow Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = 0;
	};
	class CTI_WEATHER_DUST {
		title = "WEATHER: Dust Storms";
		values[] = {0,1,2,3,4};
		texts[] = {"Clear","Light","Medium - Adds Wall of Dust","High - Adds Effect on Objects","Max - Adds Lethal Wall"};
		default = 0;
	};
	class CTI_WEATHER_DUST_COEF {
		title = "WEATHER: Dust Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = 0;
	};
	class CTI_WEATHER_MONSOON {
		title = "WEATHER: Monsoon Storms";
		values[] = {0,1,2};
		texts[] = {"Clear","No Damage","Damage Objects"};
		default = 0;
	};
	class CTI_WEATHER_MONSOON_COEF {
		title = "WEATHER: Monsoon Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = 0;
	};
	class CTI_WEATHER_OVERCAST {
		title = "WEATHER: Overcast";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = -1;
	};
	class CTI_WEATHER_OVERCAST_COEF {
		title = "WEATHER: Overcast Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = -1;
	};
	class CTI_WEATHER_FOG {
		title = "WEATHER: Fog value";
		values[] = {-1,0,10,20,30,40,50,60,70,80,90,100};
		texts[] = {"Random","Clear","10","20","30","40","50","60","70","80","90","MAX"};
		default = 0;
	};
	class CTI_WEATHER_FOG_COEF {
		title = "WEATHER: Fog Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = -1;
	};
	class CTI_WEATHER_FOG_DECAY {
		title = "WEATHER: Fog decay level";
		values[] = {-1,0,0.02,0.04,0.06,0.08,0.1,0.15,0.20,0.25,0.5,0.75,1};
		texts[] = {"Random","None","0.02","0.04","0.06","0.08","0.1","0.15","0.20","0.25","0.5","0.75","1"};
		default = 0;
	};
	class CTI_WEATHER_FOG_DECAY_COEF {
		title = "WEATHER: Fog decay Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = 0;
	};
	class CTI_WEATHER_FOG_ALT {
		title = "WEATHER: Fog altitude";
		values[] = {-1,0,1,5,25,50,100,200,300,400,500,600,700,800,900,1000};
		texts[] = {"Random","0m","1m","5m","25m","50m","100m","200m","300m","400m","500m","600m","700m","800m","900m","1km"};
		default = 0;
	};
	class CTI_WEATHER_FOG_ALT_COEF {
		title = "WEATHER: Fog altitude Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = 0;
	};
	class CTI_WEATHER_WIND {
		title = "WEATHER: Wind";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = -1;
	};
	class CTI_WEATHER_WIND_COEF {
		title = "WEATHER: Wind Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = -1;
	};
	class CTI_WEATHER_WAVES {
		title = "WEATHER: Waves";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = -1;
	};
	class CTI_WEATHER_WAVES_COEF {
		title = "WEATHER: Waves Variance";
		values[] = {-1,0,0.1,0.25,0.5,0.75,1};
		texts[] = {"Random","None","10%","25%","50%","75%","Chaos"};
		default = -1;
	};
	class CTI_WEATHER_VARIANCE_TIME {
		title = "WEATHER: Frequency of weather changes (or between of storms)";
		values[] = {-1,0,60,120,300,600,900,1800,2700,3600,5400,7200};
		texts[] = {"Random","No Change","1min","2min","5min","10min","15min","30min","45min","60min","90min","120min"};
		default = 1800;
	};
	class CTI_WEATHER_STORM_TIME {
		title = "WEATHER: Duration of Storms (dust storms and monsoons)";
		values[] = {-1,60,120,300,600,900,1800,2700,3600,5400,7200,14400};
		texts[] = {"Random","1min","2min","5min","10min","15min","30min","45min","60min","90min","120min","240min"};
		default = 900;
	};
  	class CTI_WEATHER_FAST {
		title = "WEATHER: Day Duration";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12};
		texts[] = {"1 hour","2 hours","3 hours","4 hours","5 hours","6 hours","7 hours","8 hours","9 hours","10 hours","11 hours","12 hours"};
		default = 3;
	};
  	class CTI_WEATHER_FAST_NIGHT {
		title = "WEATHER: Night Duration";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12};
		texts[] = {"1 hour","2 hours","3 hours","4 hours","5 hours","6 hours","7 hours","8 hours","9 hours","10 hours","11 hours","12 hours"};
		default = 1;
	};
	class SEPARATOR9 {
		title = "=========================== ADDONS ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_VANILLA_ADDON {
		title = "ADDON: Vanilla Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_KARTS_ADDON {
		title = "ADDON: KARTS DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_HELI_ADDON {
		title = "ADDON: HELI DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_MARKSMEN_ADDON {
		title = "ADDON: MARKSMEN DLC Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_APEX_ADDON {
		title = "ADDON: APEX DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_JETS_ADDON {
		title = "ADDON: JETS DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_MALDEN_ADDON {
		title = "ADDON: MALDEN DLC Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};	
	class CTI_LAWSOFWAR_ADDON {
		title = "ADDON: Laws Of War DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};	
	class CTI_TANKS_ADDON {
		title = "ADDON: TANKS DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};	
	class CTI_GLOBAL_MOBILIZATION_ADDON {
		title = "ADDON: GLOBAL MOBILIZATION - COLD WAR GERMANY DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_CONTACT_ADDON {
		title = "ADDON: CONTACT DLC Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_CUP_UNITS_ADDON {
		title = "ADDON: CUP Units";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_CUP_VEHICLES_ADDON {
		title = "ADDON: CUP Vehicles";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_CUP_WEAPONS_ADDON {
		title = "ADDON: CUP Weapons";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};	
	class CTI_CUP_CORE_ADDON {
		title = "ADDON: CUP CORE";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_CUP_TERRAINS_ADDON {
		title = "ADDON: CUP Terrains";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_RHS_AFRF_ADDON {
		title = "ADDON: RHS AFRF Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 3;
	};
	class CTI_RHS_GREF_ADDON {
		title = "ADDON: RHS GREF Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 3;
	};
	class CTI_RHS_SAF_ADDON {
		title = "ADDON: RHS SAF Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 3;
	};
	class CTI_RHS_USAF_ADDON {
		title = "ADDON: RHS USAF Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 3;
	};
	class CTI_OFPS_CORE_ADDON {
		title = "ADDON: OFPS Core Pack Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_OFPS_UNITS_ADDON {
		title = "ADDON: OFPS Units Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_OFPS_RHS_ADDON {
		title = "ADDON: OFPS RHS Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_OFPS_CUP_ADDON {
		title = "ADDON: OFPS CUP Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_HAFM_ADDON {
		title = "ADDON: HAFM Navy Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_HAFM_SUBS_ADDON {
		title = "ADDON: HAFM Subs Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};	
	class CTI_OFPS_HAFM_ADDON {
		title = "ADDON: OFPS HAFM Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_OFPS_HAFM_SUBS_ADDON {
		title = "ADDON: OFPS HAFM SUBS Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_SFP_ADDON {
		title = "ADDON: Swedish Forces Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};	
	class CTI_OFPS_SFP_ADDON {
		title = "ADDON: OFPS SFP Pack Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_RUSSIA_2035_ADDON {
		title = "ADDON: 2035: Russian Armed Forces Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_UNSUNG_ADDON {
		title = "ADDON: Unsung Vietnam Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class CTI_IFA3_ADDON {
		title = "ADDON: Iron Front IFA3 Support";
		values[] = {0,1,2,3};
		texts[] = {"Disabled","Gear/Troops","Vehicles","Enable All"};
		default = 0;
	};
	class SEPARATOR11 {
		title = "========================== SERVER ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_SERVER_RESTART {
		title = "SERVER: Restart on mission end";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class SEPARATOR12 {
		title = "========================== DATABASE ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_DATABASE_ENABLED {
		title = "DATABASE: Enable Database Connection";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_DATABASE_DESTINATION {
		title = "DATABASE: Which Database to utilize";
		values[] = {0,1,2};
		texts[] = {"Production","Test","Local"};
		default = 0;
	};
	class SEPARATOR14 {
		title = "========================== DEV MODE ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_DEV_MODE {
		title = "DEV: Dev Mode";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
};