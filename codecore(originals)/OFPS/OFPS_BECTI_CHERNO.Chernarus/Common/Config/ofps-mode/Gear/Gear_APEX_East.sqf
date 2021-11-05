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
_faction = "East";
_mod = "Apex";

_u = []; //Gear Classname

//--------------------------------------------------------------------------------------------------------------

//************************Gear_APEX_East************************

//----PRIMARY WEAPON MENU----

  //Shotguns
  
    //Pump action
    
    //Semi Auto
    
    //Full Auto

  //SMGs
  
  //Rifles
  
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_AKS_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_CTAR_blk_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_CTAR_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_CTAR_hex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_ARX_blk_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_ARX_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_ARX_hex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_AKM_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_AK12_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

  //Rifles w/ Nade Launcher

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_CTAR_GL_blk_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_CTAR_GL_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_CTAR_GL_hex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'arifle_AK12_GL_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

  //MGs
  
    //LMGs

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'arifle_CTARS_blk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/80,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'arifle_CTARS_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/80,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'arifle_CTARS_hex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/80,
				/*Camo*/[],
				/*Type*/["LMG"]
			];
    
    //MMGs (Ammo larger than 5.56)
  
  //DMRs

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'srifle_DMR_07_blk_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'srifle_DMR_07_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'srifle_DMR_07_hex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["DMR"]
		];  

  //Snipers
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'srifle_LRR_tna_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/2000,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'srifle_GM6_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/3000,
			/*Camo*/[],
			/*Type*/["Special"]
		];			
 
  //Grenade Launcher

//----ROCKET LAUNCHER MENU----

  //Ground to Ground

    //Dumbfire

			_u pushBack [
				/*Enabled*/false,
				/*Name*/'',
				/*ClassName*/'launch_RPG7_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/950,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'launch_RPG32_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/800,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];    

			_u pushBack [
				/*Enabled*/false,
				/*Name*/'',
				/*ClassName*/'RPG7_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/950,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];    
 
    //SACLOS
    
    //Lock-on

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'launch_O_Titan_short_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/5000,
				/*Camo*/[],
				/*Type*/["Lock-On/TOW"]
			];
    
    //Lock-on & SACLOS
  
  //Ground to Air

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'launch_O_Titan_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/3500,
			/*Camo*/[],
			/*Type*/["Rocket AA"]
		];

//----SECONDARY WEAPON MENU----

  //Revolvers
  
  //Regular Pistols

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'hgun_Pistol_01_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'10Rnd_9x21_Mag',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/5,
			/*Camo*/[],
			/*Type*/["Pistol"]
		];
	
//----WEAPON ACCESSORY MENU----

  //Barrel Attachments
  
    //Flash Hiders
    
    //Silencers

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_58_blk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_58_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_58_hex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_65_TI_blk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_65_TI_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_65_TI_hex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_h_khk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_h_snd_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_B_khk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'muzzle_snds_B_snd_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];
					
  //Rail Attachments

    //Lights
    
    //Lasers
    
    //Light/Laser Combo
    
    //Optics
    
      //Close Range
      
      //Medium Range
      
      //Medium Range w/ Close Range

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'optic_Arco_blk_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/10,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'optic_Arco_ghex_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/10,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'optic_DMS_ghex_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/30,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

      //Long Range

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'optic_LRPS_ghex_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/70,
					/*Camo*/[],
					/*Type*/["Long"]
				];

      //Long Range w/ Close Range
			
			//Nightvision
			
			//Thermal
			
			//Nightvison/Thermal
    
    //Grips
    
    //Grip/Bipod Combo

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'bipod_01_F_khk',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];
    
    //Bipods
    
//----AMMO MENU----

  //Secondary Weapon

    //Revolvers
    
    //Regular Pistols

  //Primary Weapons
	
		//Shotguns
  
    //SMGs
    
    //Rifles (Rifles w/ Nade Launcher uses same Ammo)

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_545x39_Mag_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_545x39_Mag_Green_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_545x39_Mag_Tracer_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_545x39_Mag_Tracer_Green_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_580x42_Mag_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_580x42_Mag_Tracer_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_762x39_Mag_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_762x39_Mag_Green_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_762x39_Mag_Tracer_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'30Rnd_762x39_Mag_Tracer_Green_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'10Rnd_50BW_Mag_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

    //MGs
    
      //LMGs

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'100Rnd_580x42_Mag_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'100Rnd_580x42_ghex_Mag_Tracer_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'100Rnd_580x42_hex_Mag_Tracer_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'100Rnd_580x42_Mag_Tracer_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

      //MMGs (Ammo larger than 5.56)
    
    //DMRs

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'20Rnd_650x39_Cased_Mag_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];

    //Snipers

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'7Rnd_408_Mag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/5,
				/*Price*/4,
				/*Camo*/[],
				/*Type*/["Sniper"]
			];    

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

		//SACLOS
    
    //Lock-on
    
    //Lock-on and SACLOS
    
    //Ground to Air

//----EQUIPMENT MENU----

  //NVGs

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'O_NVGoggles_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'O_NVGoggles_hex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'O_NVGoggles_urb_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];
  
  //ENVGs (Night Vision and Thermal)
  
  //Binoculars and Range finders
  
  //Laser Designators

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'Laserdesignator_02_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/1000,
			/*Camo*/[],
			/*Type*/["Spotting"]
		];  

  //GPS

  //UAV Terminal
  
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
    
    //Anti-Vehicle
    
    //Other (IED's etc.)
    
    //Charges
    
    //Satchels
  
  //Other

//----APPAREL MENU----
	
  //Uniforms

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'U_B_GEN_Commander_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Uniform"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'U_B_GEN_Soldier_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/1,
			/*Camo*/[],
			/*Type*/["Uniform"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'U_O_T_Officer_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/50,
			/*Camo*/[],
			/*Type*/["Uniform"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'U_O_T_Soldier_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/500,
			/*Camo*/[],
			/*Type*/["Uniform"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'U_O_V_Soldier_Viper_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/1000,
			/*Camo*/[],
			/*Type*/["Uniform"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'U_O_V_Soldier_Viper_hex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/1000,
			/*Camo*/[],
			/*Type*/["Uniform"]
		];
			
    //Regular
    
    //Stealth
      
      //Stealth Suits
      
      //Ghillie Suits

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'U_O_T_Sniper_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/1000,
					/*Camo*/[],
					/*Type*/["Half Ghillie"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'U_O_T_FullGhillie_tna_F',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/6,
					/*Price*/1500,
					/*Camo*/[],
					/*Type*/["Full Ghillie"]
				];

    //Diving
		
		//Pilot

  //Vests

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_BandollierB_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_HarnessOGL_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_HarnessO_ghex_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_TacVest_gen_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Police"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_PlateCarrier1_rgr_noflag_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'V_PlateCarrier2_rgr_noflag_F',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

  //Backpacks
  
    //Regualar

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_FieldPack_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperLightHarness_blk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/30,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperLightHarness_oli_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/6,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperLightHarness_khk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/6,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperLightHarness_hex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperLightHarness_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperHarness_blk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/40,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperHarness_oli_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperHarness_khk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperHarness_hex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_ViperHarness_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Carryall_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/600,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Bergen_hex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/800,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'B_Bergen_dgtl_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/800,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

    //UAV Bag
    
    //Statics (Lowest Damage to Highest Damage)

  //Head gear

    //Hats

    //Helmets

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Beret_gen_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Police"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_MilCap_gen_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Police"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_Cap_police',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Police"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_MilCap_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Hat"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HelmetCrew_O_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HelmetO_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/70,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HelmetSpecO_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HelmetLeaderO_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/5,
				/*Price*/170,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HelmetO_ViperSP_ghex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/3000,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'H_HelmetO_ViperSP_hex_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/3000,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

    //Glasses

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Shades_Black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Shades_Blue',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Shades_Green',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Shades_Red',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

    //Goggles

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Combat_Goggles_tna_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

    //Face Wear (scarfs, bandanas, etc.)

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Balaclava_TI_blk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'G_Balaclava_TI_G_blk_F',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

    //Masks

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Gear\Gear_Config_Set.sqf";