/*
//--------------------------------------------------------------------------------------------------------------
# HEADER #
Description:	This file presents classnames and their values to the mission.

//--------------------------------------------------------------------------------------------------------------	
# DOCUMENTATION #

	/*Enabled*/
		//DESCRIPTION: Enables use of unit in game, still loads unit into variable for reference
		//TYPE: Boolean
		//DEFAULT: true
		//EXAMPLES: true/false

	/*Name*/
		//DESCRIPTION: Common Unit name, primarily for internal reference
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'CSAT Infantry (Pacific)'

	/*ClassName*/
		//DESCRIPTION:  Unit Class Name
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'O_T_Soldier_A_F'

	/*Location*/
		//DESCRIPTION:  Which factory unit will be available for purchase
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//OPTIONS: CTI_BARRACKS, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_FOB, CTI_LARGE_FOB, "All", "External"
			//[CTI_BARRACKS] //based on gear upgrade
			//[CTI_BARRACKS,CTI_DEPOT] // both based on gear upgrade
			//[CTI_BARRACKS,[CTI_DEPOT,"gear",5]] //barracks normal, from depot require gear upgrade 5 (different from default gear upgrade)
			//[CTI_BARRACKS,[CTI_DEPOT,"logistics"]] //barracks normal, from depot require forward logistics
			//[CTI_BARRACKS,[CTI_DEPOT,"logistics",3]] //barracks normal, from depot require forward logistics 3
			//["All"] //available at all gear sources based on gear upgrade
			//[["All", "logistics"]] //available at all gear sources based on logistics upgrade
			//[CTI_BARRACKS,["External", "logistics"]] //barracks normal, available at all other gear sources based on logistics upgrade

	/*UpgradeLevel*/
		//DESCRIPTION:  Upgrade level which unit will be available starts from 0 
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 3

	/*Price*/
		//DESCRIPTION:  Price of the unit
		//TYPE: Integer
		//DEFAULT: 0
		//EXAMPLES: 500

	/*Camo*/
		//DESCRIPTION:  Filter by Camo
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Tropic'],
			//['Tropic','Tropic'],

	/*Type*/
		//DESCRIPTION:  
		//TYPE: Array
		//DEFAULT: []
		//EXAMPLES: 
			//['Rifle'],
			//['Rifle','Rifle']

//--------------------------------------------------------------------------------------------------------------
private ["_side", "_faction", "_u"];

_side = _this;
_faction = "West";
_mod = "Lawsofwar";

_u = []; //Gear Classname

//--------------------------------------------------------------------------------------------------------------

//************************Gear_LAWSOFWAR_West************************

//----PRIMARY WEAPON MENU----

  //Shotguns
  
    //Pump action
    
    //Semi Auto
    
    //Full Auto

  //SMGs
  
  //Rifles
  
  //Rifles w/ Nade Launcher
  
  //MGs
  
    //LMGs
    
    //MMGs (Ammo larger than 5.56)
  
  //DMRs
  
  //Snipers
  
  //Grendade Launcher

//----ROCKET LAUNCHER MENU----

  //Ground to Ground

    //Dumbfire
    
    //TOW
    
    //Lock-on
    
    //Lock-on & TOW
  
  //Ground to Air

//----SECONDARY WEAPON MENU----

  //Revolvers
  
  //Regular Pistols
  
//----WEAPON ACCESSORY MENU----

  //Barrel Attachments
  
    //Flash Hiders
    
    //Silencers
    
  //Rail Attachments

    //Lights
    
    //Lasers
    
    //Light/Laser Combo
    
    //Optics
    
      //Close Range
      
      //Medium Range
      
      //Medium Range w/ Close Range
      
      //Long Range
      
      //Long Range w/ Close Range
			
			//Nightvision
			
			//Thermal
			
			//Nightvison/Thermal
    
    //Grips
    
    //Grip/Bipod Combo
    
    //Bipods
    
//----AMMO MENU----

  //Secondary Weapon

    //Revolvers
    
    //Regular Pistols

  //Primary Weapons
	
		//Shotguns
  
    //SMGs
    
    //Rifles (Rifles w/ Nade Launcher uses same Ammo)
    
    //MGs
    
      //LMGs
      
      //MMGs (Ammo larger than 5.56)
    
    //DMRs
    
    //Snipers
    
  //Handheld Grenades

    //Smoke
    
    //Flare
    
    //Flashbang
    
    //Concussion
    
    //Lethal Grenades
  
  //Under-Barrel Grenade Launcher Rounds
  
    //Smoke
    
    //Flare
    
    //HE
    
    //HEDP
    
  //Handheld Grenade Launcher rounds
  
    //Smoke
    
    //Flare
    
    //HE
    
    //HEDP
    
  //Rocket Launchers
  
    //Dumbfire
    
    //TOW
    
    //Lock-on
    
    //Lock-on and TOW
    
    //Ground to Air

//----EQUIPMENT MENU----

  //NVGs
  
  //ENVGs (Night Vision and Thermal)
  
  //Binoculars and Range finders
  
  //Laser Designators
  
  //GPS
	  
  //UAV Terminal
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'C_UavTerminal',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/2000,
			/*Camo*/[],
			/*Type*/["GPS/Terminal"]
		];
  
  //Map
  
  //Compass
  
  //Radio
  
  //Watch
  
  //First Aid Kit
  
  //Medkit
  
  //Toolkit
  
  //Mine Detector
  
  //Explosives
  
    //Anti-Personal
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'TrainingMine_Mag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["AP Mine"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'APERSMineDispenser_Mag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/2800,
				/*Camo*/[],
				/*Type*/["AP Mine"]
			];
    
    //Anti-Vehicle
    
    //Other (IED's etc.)
    
    //Charges
    
    //Satchels
  
  //Other

//----APPAREL MENU----
	
  //Uniforms
  
    //Regular
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_IDAP_Man_cargo_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_IDAP_Man_Jeans_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_IDAP_Man_casual_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_IDAP_Man_shorts_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_IDAP_Man_Tee_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_IDAP_Man_TeeShorts_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_ConstructionCoverall_Black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_ConstructionCoverall_Blue_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_ConstructionCoverall_Red_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_ConstructionCoverall_Vrana_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_BG_Guerilla1_2_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_Mechanic_01_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'U_C_Paramedic_01_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];
    
    //Stealth
      
      //Stealth Suits
      
      //Ghillie Suits
      
    //Diving
		
		//Pilot

  //Vests
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_EOD_blue_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_EOD_IDAP_blue_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_EOD_olive_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_EOD_coyote_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Plain_crystal_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Plain_medical_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_LegStrapBag_black_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_LegStrapBag_olive_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_LegStrapBag_coyote_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Pocketed_black_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Pocketed_olive_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Pocketed_coyote_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Safety_blue_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Safety_orange_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_Safety_yellow_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'B_LegStrapBag_black_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'B_LegStrapBag_olive_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'B_LegStrapBag_coyote_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Civilian"]
		];

  //Backpacks
  
    //Regualar
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Messenger_Black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Messenger_Gray_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Messenger_Olive_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Messenger_Coyote_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Messenger_IDAP_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];
    
    //UAV Bag
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'I_UAV_06_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_UAV_06_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'I_UAV_06_medical_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'C_IDAP_UAV_06_medical_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_UAV_06_medical_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'C_IDAP_UAV_06_antimine_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'C_UAV_06_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'C_IDAP_UAV_06_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'C_UAV_06_medical_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'C_IDAP_UAV_01_Civilian_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'C_IDAP_UAV_06_antimine_backpack_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/3000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_UAV_06_backpack_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_UAV_06_medical_backpack_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/2150,
				/*Camo*/[],
				/*Type*/["UAV/UGV"]
			];
    
    //Statics (Lowest Damage to Highest Damage)

  //Head gear

    //Hats

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Cap_Black_IDAP_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/25,
				/*Camo*/[],
				/*Type*/["Hat"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Cap_Orange_IDAP_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/25,
				/*Camo*/[],
				/*Type*/["Hat"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Cap_White_IDAP_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/25,
				/*Camo*/[],
				/*Type*/["Hat"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Hat_Safari_olive_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/25,
				/*Camo*/[],
				/*Type*/["Hat"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Hat_Safari_sand_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/25,
				/*Camo*/[],
				/*Type*/["Hat"]
			];

    //Helmets
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_WirelessEarpiece_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_EarProtectors_black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_EarProtectors_orange_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_EarProtectors_red_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_EarProtectors_white_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_EarProtectors_yellow_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadSet_black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadSet_orange_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadSet_red_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadSet_white_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadSet_yellow_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_basic_black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_earprot_black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_headset_black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_basic_orange_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_earprot_orange_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_headset_orange_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_basic_red_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_earprot_red_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_headset_red_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_basic_vrana_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_earprot_vrana_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_headset_vrana_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_basic_white_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_earprot_white_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_headset_white_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_basic_yellow_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_earprot_yellow_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Construction_headset_yellow_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_PASGT_basic_black_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_PASGT_basic_blue_press_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_PASGT_neckprot_blue_press_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_PASGT_basic_blue_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_PASGT_basic_olive_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_PASGT_basic_white_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Civilian"]
			];
    
    //Glasses

    //Goggles
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_EyeProtectors_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_EyeProtectors_Earpiece_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

    //Face Wear (scarfs, bandanas, etc.)
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_WirelessEarpiece_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadBandage_clean_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadBandage_stained_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HeadBandage_bloody_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];
    
    //Masks
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Respirator_blue_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Respirator_white_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Respirator_yellow_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Gear\Gear_Config_Set.sqf";