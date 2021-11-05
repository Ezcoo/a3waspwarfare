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
_mod = "CUP";

_u = []; //Gear Classname

//--------------------------------------------------------------------------------------------------------------

//************************Gear_CUP_West************************

//Don't know what these are

	_u pushBack [
		/*Enabled*/true,
		/*Name*/'',
		/*ClassName*/'CUP_Mxx_camo_half',
		/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
		/*UpgradeLevel*/2,
		/*Price*/30,
		/*Camo*/[],
		/*Type*/["Camo"]
	];

	_u pushBack [
		/*Enabled*/true,
		/*Name*/'',
		/*ClassName*/'CUP_Mxx_camo',
		/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
		/*UpgradeLevel*/2,
		/*Price*/60,
		/*Camo*/[],
		/*Type*/["Camo"]
	];

//----PRIMARY WEAPON MENU----

  //Shotguns
  
    //Pump action
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_sgun_M1014',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];
    
    //Semi Auto

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_sgun_CZ584',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_sgun_CZ584_RIS',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/25,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];
    
    //Full Auto
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_sgun_AA12',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];

  //SMGs
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_Mac10',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/500,
			/*Camo*/[],
			/*Type*/["SMG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_MP5A5',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["SMG"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_MP5A5_flashlight',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["SMG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_MP5SD6',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/50,
			/*Camo*/[],
			/*Type*/["SMG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_EVO',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["SMG"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_MP7',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["SMG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_MP7_desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["SMG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_smg_MP7_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["SMG"]
		];
  
  //Rifles
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_BallisticShield_Armed',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/50,
			/*Camo*/[],
			/*Type*/["Special"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_XM8_Carbine_FG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_XM8_Railed',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_L85A2',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_L86A2',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/120,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];


		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_L85A2_G',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_L85A2_NG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36A',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36C',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36A_camo',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36A_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36C_camo',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36C_hex',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36C_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_camo',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS_hex',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS_camo',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_CZ805_A1',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_CZ805_A2',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_AUG_A1',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A1',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A1_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A1_desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A1_camo',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A3_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/4,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A3_desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/4,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A3_camo',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/4,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_mk18_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/50,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_SBR_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_SBR_od',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A1',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/5,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A2',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A4_Base',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/1,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/100,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/100,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/100,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G3A3_ris',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/180,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G3A3_ris_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/180,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G3A3_modern_ris',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/180,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G3A3_modern_ris_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/180,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G3A3_ris_vfg',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/180,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G3A3_ris_vfg_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/180,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK_M27',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK_M27_VFG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/250,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_FG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_SFG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_FG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_SFG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_FG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_SFG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_FG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_SFG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_FG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_SFG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_FG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_SFG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_SV',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_SV_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_SV_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_FG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_FG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_SFG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_SFG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_SFG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_FG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_FG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_FG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_FG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_SFG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_SFG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_SFG_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle"]
		];
  
  //Rifles w/ Nade Launcher
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_L85A2_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS_AG36',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/100,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS_AG36_hex',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/100,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS_AG36_camo',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/100,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_G36K_RIS_AG36_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/100,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_CZ805_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_CZ805_B',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_CZ805_B_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A1_BUIS_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A1_BUIS_desert_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M4A1_BUIS_camo_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_mk18_m203_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/150,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A1GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A1GL_FS',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A1GL_USA',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A2_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_M16A4_GL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_AGL_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_AGL_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_AGL_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_M203_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_M203_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_M203_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_AG36',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_AG36_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_AG36_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_M203_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CQB_M203_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK416_CBQ_M203_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/80,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_AG36',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/150,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_AG36_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/150,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_AG36_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/150,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_M203',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/150,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_M203_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/150,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_12_M203_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/150,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK_M27_AG36',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/250,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_EGLM',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_EGLM_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_CQC_EGLM_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_EGLM',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_EGLM_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk16_STD_EGLM_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/60,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_EGLM',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_EGLM_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_CQC_EGLM_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_EGLM',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_EGLM_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_EGLM_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk17_STD_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/25,
			/*Camo*/[],
			/*Type*/["Rifle-GL"]
		];
  
  //MGs
  
    //LMGs
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_arifle_MG36',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_arifle_MG36_camo',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_arifle_MG36_hex',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_arifle_MG36_wdl',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_minimi',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_minimi_railed',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_minimipara',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/110,
				/*Camo*/[],
				/*Type*/["LMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_m249_para_gl',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/250,
				/*Camo*/[],
				/*Type*/["LMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_m249_SQuantoon',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_m249_pip1',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_m249_pip3',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_m249_pip4',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_M249_E2',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/1100,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_m249_pip2',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_m249_para',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/110,
				/*Camo*/[],
				/*Type*/["LMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_L110A1',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["LMG"]
			];
    
    //MMGs (Ammo larger than 5.56)
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_M240',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/220,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_Mk48',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/220,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_Mk48_od',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/220,
				/*Camo*/[],
				/*Type*/["MMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_Mk48_tan',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/220,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_Mk48_wdl',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/220,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_Mk48_des',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/220,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_M60',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_M60E4_norail',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["MMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_M60E4',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/120,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_MG3',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/320,
				/*Camo*/[],
				/*Type*/["MMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_lmg_MG3_rail',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/520,
				/*Camo*/[],
				/*Type*/["MMG"]
			];
  
  //DMRs
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_LeeEnfield',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_LeeEnfield_rail',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["DMR"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_Mk12SPR',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/15,
			/*Camo*/[],
			/*Type*/["DMR"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M14',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M14_DMR',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_L129A1',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_L129A1_HG',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M110',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M110_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M110_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_20',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_20_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_HK417_20_Wood',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["DMR"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_Mk20',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["DMR"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_FNFAL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_FNFAL_railed',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_FNFAL5061',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_FNFAL5062',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["DMR"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_arifle_FNFAL_OSW',
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
			/*ClassName*/'CUP_srifle_M24_blk',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/210,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M24_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/210,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M24_des',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/210,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M40A3',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/210,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_G22_des',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/300,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_G22_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/300,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_AWM_des',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_AWM_wdl',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_AS50',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/860,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M107_Base',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/800,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M107_Snow',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/800,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M107_Desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/800,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_srifle_M107_Woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/800,
			/*Camo*/[],
			/*Type*/["Sniper"]
		];
  
  //Grenade Launcher
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_glaunch_M79',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/90,
			/*Camo*/[],
			/*Type*/["Special"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_glaunch_Mk13',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/130,
			/*Camo*/[],
			/*Type*/["Special"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_glaunch_M32',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/250,
			/*Camo*/[],
			/*Type*/["Special"]
		];

//----ROCKET LAUNCHER MENU----

  //Ground to Ground

    //Dumbfire
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_launch_Mk153Mod0',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
		
			_u pushBack [
				/*Enabled*/false,
				/*Name*/'',
				/*ClassName*/'CUP_launch_M72A6',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_M72A6_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_launch_M72A6_Special',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_launch_M136',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/400,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_M136_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/150,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_launch_MAAWS',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/1500,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
    
    //SACLOS
    
    //Lock-on
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_launch_NLAW_Loaded',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/800,
				/*Camo*/[],
				/*Type*/["Lock-on or Dumbfire"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_Javelin_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/5,
				/*Price*/1000,
				/*Camo*/[],
				/*Type*/["Lock-on"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_launch_Javelin',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/5,
				/*Price*/3000,
				/*Camo*/[],
				/*Type*/["Lock-on"]
			];
    
    //Lock-on & SACLOS
  
  //Ground to Air
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_launch_FIM92Stinger',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/600,
			/*Camo*/[],
			/*Type*/["Rocket AA"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_Stinger_M',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/300,
			/*Camo*/[],
			/*Type*/["Rocket AA"]
		];

//----SECONDARY WEAPON MENU----

  //Revolvers
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_TaurusTracker455',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/1,
			/*Camo*/[],
			/*Type*/["Revolver"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_TaurusTracker455_gold',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/30,
			/*Camo*/[],
			/*Type*/["Revolver"]
		];
  
  //Regular Pistols
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Colt1911',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_M9',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Glock17',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Glock17_blk',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Glock17_tan',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Phantom',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Mk23',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/20,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Deagle',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/70,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_TEC9',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/10,
			/*Camo*/[],
			/*Type*/["Semi-Auto Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_Mac10',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/500,
			/*Camo*/[],
			/*Type*/["Machine Pistol"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_MicroUzi',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/500,
			/*Camo*/[],
			/*Type*/["Machine Pistol"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_MP7',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Machine Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_MP7_desert',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Machine Pistol"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_hgun_MP7_woodland',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Machine Pistol"]
		];
  
//----WEAPON ACCESSORY MENU----

  //Barrel Attachments
  
    //Flash Hiders
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_mfsup_Flashhider_556x45_Black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/30,
				/*Camo*/[],
				/*Type*/["Flash Hider"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_mfsup_Flashhider_556x45_OD',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/30,
				/*Camo*/[],
				/*Type*/["Flash Hider"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_mfsup_Flashhider_556x45_Tan',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/30,
				/*Camo*/[],
				/*Type*/["Flash Hider"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_mfsup_SCAR_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/30,
				/*Camo*/[],
				/*Type*/["Flash Hider"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_mfsup_SCAR_H',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider"]
			];
    
    //Silencers
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_PBS4',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/200,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_mk23',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/150,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_MP7',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/5,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M9',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/150,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_AWM',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/1000,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_G36_black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_G36_desert',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_bfa',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_L85',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_sffh',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M110_black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M110',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M110_woodland',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M14',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M16',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M16_desert',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_M16_camo',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_Mk12',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_SCAR_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_AMW',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_SCAR_H',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_muzzle_snds_XM8',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Flash Hider/Silencer"]
			];
    
  //Rail Attachments

    //Lights
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_Glock17_Flashlight',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Light"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_Flashlight',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Light"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_Flashlight_desert',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Light"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_Flashlight_wdl',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Light"]
			];
    
    //Lasers
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_MK23_lam_f',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_MLPLS_Laser',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Laser"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_LLM',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_15_Black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_15_Black_Top',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_15',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_15_Tan_Top',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_15_OD',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_15_OD_Top',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_2',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_2_camo',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_2_desert',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_ANPEQ_2_grey',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Laser"]
			];
    
    //Light/Laser Combo
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_CZ_M3X',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_acc_XM8_light_module',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'Light/Laser Black',
				/*ClassName*/'CUP_acc_ANPEQ_15_Flashlight_Black_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'Light/Laser Black Top',
				/*ClassName*/'CUP_acc_ANPEQ_15_Top_Flashlight_Black_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'Light/Laser OD',
				/*ClassName*/'CUP_acc_ANPEQ_15_Flashlight_OD_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'Light/Laser OD Top',
				/*ClassName*/'CUP_acc_ANPEQ_15_Top_Flashlight_OD_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'Light/Laser Tan',
				/*ClassName*/'CUP_acc_ANPEQ_15_Flashlight_Tan_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'Light/Laser Tan Top',
				/*ClassName*/'CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Light/Laser"]
			];
    
    //Optics
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_optic_SMAW_Scope',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Other"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_optic_MAAWS_Scope',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/30,
				/*Camo*/[],
				/*Type*/["Other"]
			];
    
      //Close Range
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_MRad',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_ZDDot',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_TrijiconRx01_black',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_TrijiconRx01_desert',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM4',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/0,
					/*Camo*/[],
					/*Type*/["Close"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_low',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_low_coyote',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_low_od',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_Black',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_Desert',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_Coyote',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_OD',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_Woodland2',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CompM2_Woodland',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Eotech553_Black',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Eotech553_Coyote',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Eotech553_OD',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Eotech533Grey',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Eotech533',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_HoloBlack',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_HoloDesert',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_HoloWdl',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_LeupoldMk4_CQ_T',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/2,
					/*Camo*/[],
					/*Type*/["Close"]
				];
      
      //Medium Range
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Elcan',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/10,
					/*Camo*/[],
					/*Type*/["Medium"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_ElcanM145',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/10,
					/*Camo*/[],
					/*Type*/["Medium"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_SUSAT',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/8,
					/*Camo*/[],
					/*Type*/["Medium"]
				];
      
      //Medium Range w/ Close Range
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Elcan_reflex',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/15,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_ELCAN_SpecterDR',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/15,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_ELCAN_SpecterDR_od',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/15,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_ELCAN_SpecterDR_black',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/15,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Elcan_SpecterDR_RMR',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/25,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Elcan_SpecterDR_RMR_black',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/25,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_Elcan_SpecterDR_RMR_od',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/25,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_RCO',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/13,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_RCO_desert',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/13,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_ACOG',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/13,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_SB_11_4x20_PM',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/8,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_SB_11_4x20_PM_od',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/8,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_SB_11_4x20_PM_tan',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/8,
					/*Camo*/[],
					/*Type*/["Medium/Close"]
				];
      
      //Long Range
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_LeupoldMk4',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/14,
					/*Camo*/[],
					/*Type*/["Long"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_LeupoldMk4_10x40_LRT_Desert',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/14,
					/*Camo*/[],
					/*Type*/["Long"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_LeupoldMk4_10x40_LRT_Woodland',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/14,
					/*Camo*/[],
					/*Type*/["Long"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_LeupoldMk4_10x40_LRT_Desert',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/14,
					/*Camo*/[],
					/*Type*/["Long"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_LeupoldMk4_25x50_LRT_SNOW',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/18,
					/*Camo*/[],
					/*Type*/["Long"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_SB_3_12x50_PMII',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/16,
					/*Camo*/[],
					/*Type*/["Long"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_SB_3_12x50_PMII_Tan',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/16,
					/*Camo*/[],
					/*Type*/["Long"]
				];
      
      //Long Range w/ Close Range
			
			//Nightvision
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_AN_PVS_10',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/500,
					/*Camo*/[],
					/*Type*/["Nightvision"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_AN_PVS_4',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/500,
					/*Camo*/[],
					/*Type*/["Nightvision"]
				];
			
			//Thermal
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_AN_PAS_13c2',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/1500,
					/*Camo*/[],
					/*Type*/["Thermal"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_AN_PAS_13c1',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/3,
					/*Price*/1500,
					/*Camo*/[],
					/*Type*/["Thermal"]
				];
			
			//Nightvison/Thermal
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_optic_CWS',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/1750,
					/*Camo*/[],
					/*Type*/["Thermal/Nightvision"]
				];
    
    //Grips
    
    //Grip/Bipod Combo
    
    //Bipods
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_Bipod_G36',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_Bipod_G36_wood',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_Bipod_G36_desert',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_bipod_G3',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_bipod_G3SG1',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_bipod_Harris_1A2_L',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_bipod_VLTOR_Modpod',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_bipod_VLTOR_Modpod_black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_bipod_VLTOR_Modpod_od',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Grips and Bipods"]
			];
    
//----AMMO MENU----

  //Secondary Weapon

    //Revolvers
    
    //Regular Pistols
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_17Rnd_9x19_glock17',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/8,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_15Rnd_9x19_M9',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/7,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_7Rnd_45ACP_1911',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_45ACP_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_12Rnd_45ACP_mk23',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/6,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_7Rnd_50AE_Deagle',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/17,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10Rnd_9x19_Compact',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10Rnd_B_765x17_Ball_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_B_765x17_Ball_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_50Rnd_B_765x17_Ball_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/25,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_8Rnd_9x18_Makarov_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/4,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_8Rnd_9x18_MakarovSD_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/4,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_18Rnd_9x19_Phantom',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/9,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_9x19_UZI',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_45ACP_MAC10_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_32Rnd_9x19_TEC9',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/16,
				/*Camo*/[],
				/*Type*/["Pistol"]
			];

  //Primary Weapons
	
		//Shotguns
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_B_CZ584_74Slug',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_B_CZ584_74Pellets',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_762x51_CZ584',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_8Rnd_B_Saiga12_74Pellets_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/4,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_8Rnd_B_Saiga12_74Slug_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/4,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_8Rnd_B_Beneli_74Pellets',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/4,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_8Rnd_B_Beneli_74Slug',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/4,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_B_AA12_HE',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_B_AA12_Pellets',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_B_AA12_74Slug',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Shotgun"]
			];
  
    //SMGs
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_9x19_EVO',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["SMG"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_9x19_MP5',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["SMG"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_46x30_MP7',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["SMG"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_40Rnd_46x30_MP7',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["SMG"]
			];
    
    //Rifles (Rifles w/ Nade Launcher uses same Ammo)
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_FNFAL_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_CZ805B',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Green_Tracer_762x51_CZ805B',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Yellow_Tracer_762x51_CZ805B',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_556x45_Stanag_Red',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_556x45_Stanag_Yellow',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_556x45_Stanag_Green',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_556x45_Stanag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Stanag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Stanag_Tracer_Red',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Stanag_Tracer_Green',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Stanag_Tracer_Yellow',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_PMAG_QP',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_PMAG_QP_Tan',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_PMAG_QP_Olive',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_PMAG_QP_Tracer_Red',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_PMAG_QP_Tracer_Green',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_PMAG_QP_Tracer_Yellow',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Emag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_EMAG_Tan',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_EMAG_Olive',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Emag_Tracer_Red',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Emag_Tracer_Green',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_Emag_Tracer_Yellow',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_B_SCAR',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_White_Tracer_762x51_SCAR',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_G36',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_G36_camo',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Green_Tracer_556x45_G36',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Green_Tracer_556x45_G36_camo',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Green_Tracer_556x45_G36_wdl',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Green_Tracer_556x45_G36_hex',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Red_Tracer_556x45_G36',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Red_Tracer_556x45_G36_hex',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_camo',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_wdl',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_hex',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_556x45_AUG',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Red_Tracer_556x45_AUG',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Yellow_Tracer_556x45_AUG',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_TE1_Green_Tracer_556x45_AUG',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_G3',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Red_Tracer_762x51_G3',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Green_Tracer_762x51_G3',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Yellow_Tracer_762x51_G3',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_HK417',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Red_Tracer_762x51_HK417',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Green_Tracer_762x51_HK417',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Yellow_Tracer_762x51_HK417',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_HK417_Camo_Wood',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_HK417_Camo_Desert',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_Sa58_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_30Rnd_Sa58_M_TracerG',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Rifle"]
			];
    
    //MGs
    
      //LMGs
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_60Rnd_556x45_SureFire',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/30,
					/*Camo*/[],
					/*Type*/["LMG"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_556x45_BetaCMag',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_556x45_BetaCMag_camo',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_556x45_BetaCMag_wdl',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_556x45_BetaCMag_hex',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_hex',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_wdl',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_camo',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_camo',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_wdl',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_hex',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_camo',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_wdl',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_hex',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_Green_Tracer_556x45_M249',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_Red_Tracer_556x45_M249',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["LMG"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE1_Red_Tracer_556x45_M249',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_Green_Tracer_556x45_M249',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_Red_Tracer_556x45_M249',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["LMG"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["LMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["LMG"]
				];
				
				_u pushBack [
					/*Enabled*/false,
					/*Name*/'',
					/*ClassName*/'CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/22,
					/*Camo*/[],
					/*Type*/["LMG"]
				];
				
				_u pushBack [
					/*Enabled*/false,
					/*Name*/'',
					/*ClassName*/'CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/37,
					/*Camo*/[],
					/*Type*/["LMG"]
				];
      
      //MMGs (Ammo larger than 5.56)
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/60,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/60,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/60,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_120Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/2,
					/*Price*/60,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["MMG"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/0,
					/*Price*/50,
					/*Camo*/[],
					/*Type*/["MMG"]
				];
				
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["MMG"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_200Rnd_TE1_LRT4_Red_Tracer_762x51_Belt_M',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/100,
					/*Camo*/[],
					/*Type*/["MMG"]
				];
				
				_u pushBack [
					/*Enabled*/false,
					/*Name*/'',
					/*ClassName*/'CUP_50Rnd_UK59_762x54R_Tracer',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/1,
					/*Price*/25,
					/*Camo*/[],
					/*Type*/["MMG"]
				];
    
    //DMRs
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10Rnd_762x54_SVD_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["DMR"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10Rnd_9x39_SP5_VSS_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["DMR"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_9x39_SP5_VSS_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_5x_22_LR_17_HMR_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/8,
				/*Camo*/[],
				/*Type*/["DMR"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10Rnd_762x51_CZ750',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["DMR"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10Rnd_762x51_CZ750_Tracer',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["DMR"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10x_303_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["DMR"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_L129_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_762x51_B_M110',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Green_Tracer_762x51_M110',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Red_Tracer_762x51_M110',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_White_Tracer_762x51_M110',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/10,
				/*Camo*/[],
				/*Type*/["DMR"]
			];
    
    //Snipers
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_5Rnd_762x51_M24',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Sniper"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_5Rnd_762x67_G22',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Sniper"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_5Rnd_86x70_L115A1',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Sniper"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_10Rnd_127x99_M107',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Sniper"]
			];
    
  //Handheld Grenades

    //Smoke
    
    //Flare
    
    //Flashbang
    
    //Concussion
    
    //Lethal Grenades
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_HandGrenade_L109A1_HE',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/2,
				/*Camo*/[],
				/*Type*/["Lethal"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_HandGrenade_L109A2_HE',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/2,
				/*Camo*/[],
				/*Type*/["Lethal"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_HandGrenade_M67',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/2,
				/*Camo*/[],
				/*Type*/["Lethal"]
			];
  
  //Under-Barrel Grenade Launcher Rounds
  
    //Smoke
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_SmokeYellow_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_SmokeGreen_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_Smoke_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_SmokeRed_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_SmokeYellow_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_SmokeGreen_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_Smoke_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_SmokeRed_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
    
    //Flare
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_FlareYellow_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_StarFlare_Red_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_StarCluster_Red_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_FlareRed_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_StarFlare_Green_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_StarCluster_Green_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_FlareGreen_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_StarCluster_White_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_StarFlare_White_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_FlareWhite_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_FlareYellow_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_FlareRed_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_FlareGreen_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_FlareWhite_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
    
    //HE
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_HE_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_HE_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_6Rnd_HE_M203_heli',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/15,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
    
    //HEDP
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_HEDP_M203',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/5,
				/*Camo*/[],
				/*Type*/["Under-Barrel GL"]
			];
    
  //Handheld Grenade Launcher rounds
  
    //Smoke
    
    //Flare
    
    //HE
    
    //HEDP
    
  //Rocket Launchers
  
    //Dumbfire
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_1Rnd_RBS70_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_SMAW_Spotting',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_SMAW_NE_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_SMAW_HEDP_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/300,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_SMAW_HEAA_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/400,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_MAAWS_HEDP_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/1000,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_MAAWS_HEAT_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/800,
				/*Camo*/[],
				/*Type*/["Dumbfire"]
			];
    
    //SACLOS
    
    //Lock-on
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_NLAW_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/700,
				/*Camo*/[],
				/*Type*/["Lock-on or Dumbfire"]
			];
    
    //Lock-on and SACLOS
    
    //Ground to Air

//----EQUIPMENT MENU----

  //NVGs
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_HMNVS',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_PVS14',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_PVS7',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_GPNVG_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_GPNVG_green',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_GPNVG_tan',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_GPNVG_winter',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_PVS15_black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_PVS15_green',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_PVS15_tan',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_NVG_PVS15_winter',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/200,
			/*Camo*/[],
			/*Type*/["NVG"]
		];
  
  //ENVGs (Night Vision and Thermal)
  
  //Binoculars and Range finders
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_Vector21Nite',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/40,
			/*Camo*/[],
			/*Type*/["Spotting"]
		];
  
  //Laser Designators
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_SOFLAM',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/1000,
			/*Camo*/[],
			/*Type*/["Spotting"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_LRTV',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/1200,
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
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_Mine_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/400,
				/*Camo*/[],
				/*Type*/["AT Mine"]
			];
    
    //Other (IED's etc.)
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_IED_V1_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Remote Explosive"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_IED_V2_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/1000,
				/*Camo*/[],
				/*Type*/["Remote Explosive"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_IED_V3_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Remote Explosive"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_IED_V4_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/1000,
				/*Camo*/[],
				/*Type*/["Remote Explosive"]
			];
    
    //Charges
    
    //Satchels
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PipeBomb_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["Remote Explosive"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_TimeBomb_M',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/2000,
				/*Camo*/[],
				/*Type*/["Remote Explosive"]
			];
  
  //Other

//----APPAREL MENU----
	
  //Uniforms
  
    //Regular
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_USArmy_TwoKnee',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_USMC_MARPAT_WDL_TwoKneepads',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_USMC_FROG4_DMARPAT',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_USMC_FROG4_WMARPAT',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_CRYE_BLK_Full',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_CRYE_RGR_US_Full',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_CRYE_TAN_US_Full',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_CRYE_V2_Full',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_GER_Fleck_Crye',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_GER_Crye',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_17',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_24',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_18',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_25',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_26',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_27',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_28',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_29',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_I_B_PMC_Unit_30',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/3,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_BDUv2_gloves_Winter',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/false,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_CDF_SNW_1',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];

			_u pushBack [
				/*Enabled*/false,
				/*Name*/'',
				/*ClassName*/'CUP_U_B_CDF_SNW_2',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/1,
				/*Camo*/[],
				/*Type*/["Uniform"]
			];
    
    //Stealth
      
      //Stealth Suits
      
      //Ghillie Suits
			
				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_U_B_CZ_DST_Ghillie',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/1000,
					/*Camo*/[],
					/*Type*/["Full Ghillie"]
				];

				_u pushBack [
					/*Enabled*/true,
					/*Name*/'',
					/*ClassName*/'CUP_U_B_CZ_WDL_Ghillie',
					/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
					/*UpgradeLevel*/4,
					/*Price*/1000,
					/*Camo*/[],
					/*Type*/["Full Ghillie"]
				];
      
    //Diving
		
		//Pilot

  //Vests
	
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_BB_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/650,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_BB_Coyote',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/650,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_GER_Armatus_BB_Fleck',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/650,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_BB_US_MCam',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/650,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_BB_OD',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/650,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_GER_Armatus_BB_Trop',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/5,
			/*Price*/650,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/550,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_Coyote',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/550,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_GER_Armatus_Fleck',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/550,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_US_MCam',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/550,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Armatus_OD',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/550,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_GER_Armatus_Trop',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/4,
			/*Price*/550,
			/*Camo*/[],
			/*Type*/["Vest"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Black_Empty',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/250,
			/*Camo*/[],
			/*Type*/["Vest"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Coyote_Empty',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/250,
			/*Camo*/[],
			/*Type*/["Vest"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Winter_Empty',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/2,
			/*Price*/250,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Black_Veh',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Coyote_Veh',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Winter_Veh',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/400,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Black_Grenadier',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/450,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Coyote_Grenadier',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/450,
			/*Camo*/[],
			/*Type*/["Vest"]
		];
		
		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Winter_Grenadier',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/450,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Black_TL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/450,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Coyote_TL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/450,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_PMC_CIRAS_Winter_TL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/3,
			/*Price*/450,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Ciras_Khaki',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Ciras_Black',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Ciras_Olive',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Ciras_Khaki',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Ciras_MCam',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/6,
			/*Price*/700,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_IOTV_Rifleman',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_IOTV_AT',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_MTV_Patrol',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/0,
			/*Price*/0,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_RRV_TL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/1,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Delta_1',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/1,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

		_u pushBack [
			/*Enabled*/true,
			/*Name*/'',
			/*ClassName*/'CUP_V_B_Eagle_SPC_SL',
			/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
			/*UpgradeLevel*/1,
			/*Price*/1,
			/*Camo*/[],
			/*Type*/["Vest"]
		];

  //Backpacks
  
    //Regualar
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_Predator_MTP',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/30,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_AssaultPack_ACU',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_AlicePack_Khaki',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_GER_Pack_Tropentarn',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_GER_Pack_Flecktarn',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_AlicePack_OD',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_AssaultPack_Coyote',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_USMC_AssaultPack',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_USMC_MOLLE',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_USPack_Coyote',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_USPack_Black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Backpack"]
			];
    
    //UAV Bag
    
    //Statics (Lowest Damage to Highest Damage)
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_M2_Gun_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1000,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_M2_MiniTripod_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_M2_Tripod_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/false,
				/*Name*/'',
				/*ClassName*/'CUP_B_M252_Gun_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/7500,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/false,
				/*Name*/'',
				/*ClassName*/'CUP_B_M252_Bipod_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_Mk19_Gun_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/1500,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_Mk19_Tripod_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_Tow_Gun_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/5,
				/*Price*/8500,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_TOW_Tripod_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/5,
				/*Price*/500,
				/*Camo*/[],
				/*Type*/["Static"]
			];
			
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_Tow_Gun_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/5000,
				/*Camo*/[],
				/*Type*/["Static"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_B_TOW_Tripod_Bag',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/2,
				/*Price*/1000,
				/*Camo*/[],
				/*Type*/["Static"]
			];

  //Head gear

    //Hats
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_US_patrol_cap_winter',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Hat"]
			];

    //Helmets
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_Helmet_Pilot',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Pilot"]
			];
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USArmy_Helmet_M1_plain_M81',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USArmy_Helmet_M1_plain_Vine',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USArmy_Helmet_M1_plain_Olive',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/20,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_US_H_PASGT_winter',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_OpsCore_Black_SF',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_OpsCore_Grey_SF',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_OpsCore_Tan_SF',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_OpsCore_Covered_MCAM_US_SF',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/4,
				/*Price*/100,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_Ger_M92_Cover_Trop',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_Ger_M92_Cover',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USArmy_HelmetMICH',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_MICH2000_WDL',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_MICH2000_DES',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USArmy_HelmetMICH_earpro',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_MICH2000_DEF_WDL',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_MICH2000_DEF_DES',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_HelmetWDL',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_Headset_GoggleW_HelmetWDL',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_LWH_NVGMOUNT_WDL',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_LWH_NVGMOUNT_DES',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_MICH2000_DEF_ESS_DES',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_MICH2000_DEF_ESS_DES',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_LWH_NVGMOUNT_DES',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/3,
				/*Price*/50,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_Crew_Helmet',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_ACVC_WDL',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_H_USMC_ACVC_DES',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/1,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Helmet"]
			];
    
    //Glasses
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_G_Thug',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/6,
				/*Price*/6969,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

    //Goggles

    //Face Wear (scarfs, bandanas, etc.)
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_TK_NeckScarf',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_FR_NeckScarf',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_FR_NeckScarf2',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];
    
    //Masks
		
			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Black',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Ranger',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Red',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Skull',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Winter',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Tropical',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Tan',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

			_u pushBack [
				/*Enabled*/true,
				/*Name*/'',
				/*ClassName*/'CUP_PMC_Facewrap_Smilie',
				/*Location*/[CTI_BARRACKS, [CTI_DEPOT,"logistics"], [CTI_AMMO_TRUCK,"logistics"], [CTI_FOB,"logistics"], [CTI_LARGE_FOB,"gear"]],
				/*UpgradeLevel*/0,
				/*Price*/0,
				/*Camo*/[],
				/*Type*/["Facewear"]
			];

//--------------------------------------------------------------------------------------------------------------

[_side, _faction, _u, _mod] call compile preprocessFileLineNumbers "Common\Config\Common\Gear\Gear_Config_Set.sqf";