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
			//OPTIONS: CTI_AMMO, CTI_DEPOT, CTI_AMMO_TRUCK, CTI_LARGE_FOB, "All", "External"
			//[CTI_AMMO] //based on associated ordinance upgrade
			//[CTI_AMMO,CTI_DEPOT] // both based on associated ordinance upgrade
			//[CTI_AMMO,[CTI_DEPOT,"ordinance",5]] //ammo factory normal, from depot require ordinance upgrade 5 (different from default ordinance upgrade)
			//[CTI_AMMO,[CTI_DEPOT,"logistics"]] //ammo factory normal, from depot require forward logistics
			//[CTI_AMMO,[CTI_DEPOT,"logistics",3]] //ammo factory normal, from depot require forward logistics 3
			//["All"] //available at all ammo sources based on associated ordinance upgrade
			//[["All", "logistics"]] //available at all ammo sources based on logistics upgrade
			//[CTI_AMMO,["External", "logistics"]] //ammo factory normal, available at all other ammo sources based on logistics upgrade

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
private ["_side", "_u"];

_side = _this;

_u = []; //Ammo Classname

//--------------------------------------------------------------------------------------------------------------

//--- LAND -----------------------------------------------------------

//--- Small Arms --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_DSHKM_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_M2_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_M2_M1Abrams_Commander',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_M85_M60_Commander',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_M2_AAV_Noeject',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_M3P_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_GAU21_MH60_Left',
	/*MaxMags*/3
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_GAU21_MH60_Right',
	/*MaxMags*/3
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_M2_static',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_M2_CROWS_gunner',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_KORD_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_KORD_T72CZ',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_SGMT',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_MGNest',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_veh2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_veh3',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_veh_Noeject',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_veh_Noeject_FCS',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_BMP_L_Noeject',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_BMP_R_Noeject',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_T34',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_PKT_LR',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_KPVT_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_GAU19_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_TwinGAU19_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_AGS30_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_GAU10_L_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_GAU10_R_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vhmg_GAU10_A_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M134_A_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_veh_laser',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_veh2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_veh3',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_veh4',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_L2A1_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_M1Abrams_Loader',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_Challenger2_Loader',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_M1Abrams_Coax',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_L94A1_Coax',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M240_Merlin_Rear',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_MG3_veh_noeject',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M134_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M134_veh2',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M134_UH1Y_veh',
	/*MaxMags*/2
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_M134_UH1Y_veh2',
	/*MaxMags*/2
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_TwinM134_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vlmg_TwinM134_AC47',
	/*MaxMags*/3
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M240_uh1h_right_veh_W',
	/*MaxMags*/5
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M240_uh1h_left_veh_W',
	/*MaxMags*/5
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_D10',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_D5_T34',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A70_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A28',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_SPG9_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_M197_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_M242_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_CTWS_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_KPVB_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_M256_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_M256_M1Abrams',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_M68_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_M68A2_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_2A46_Txx',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_M230_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A14_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_AZP23_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_AZP23_2_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A42_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A42_FCS',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A42_Ka50',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A72_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A72_FCS',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_M621_AW159_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GI2_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GSh23L_in_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GSh23L_L39',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GAU8_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GAU12_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GAU22_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_M168_M163VADS',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_Phalanx_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GSh302K_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GSh301_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_2A38M_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_Yakb_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_L30A1_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_D30_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_M119_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vcannon_D30AT_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vacannon_GSh23L_pod_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_VaCannon_Mk45Mod2_127mm_veh',
	/*MaxMags*/6
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_DSHKM_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M2_vehicle_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M3P_vehicle_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M2_Commander_M1_Abrams_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M240_veh_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M240_veh2_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M240_veh3_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M240_Loader_M1_Abrams_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M240_Coax_M1_Abrams_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M134',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M134_2',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_KORD_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_L2A1_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_PKT_MG_Nest_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_PKT_veh_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_KPVT_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_HKGMG_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AGS30_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AGS17_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_MK19_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Rarden_CTWS_veh',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M197_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M242_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_KPVB_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M256_Cannon_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M230_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_2A14_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_2A42_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_GAU12_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_GSh302K_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_D30_W',
	/*MaxMags*/20
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M119_W',
	/*MaxMags*/20
];

//--- Explosives --------------------------

//--- Heavy --------------------------

//--- Arty --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_GRAD_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_MLRS_veh',
	/*MaxMags*/1
];

//--- HE --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vgmg_HKGMG_veh',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vgmg_AGS17_veh',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vgmg_MK19_veh',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_glaunch_M32',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_glaunch_M79',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_glaunch_Mk13',
	/*MaxMags*/4
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_glaunch_6G30',
	/*MaxMags*/4
];
//--- Grenades --------------------------

//--- Launchers --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_M72A6',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_M72A6_Special',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_Igla',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_Javelin',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_M136',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_M47',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_MAAWS',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_MAAWS_Scope',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_Metis',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_NLAW',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_RPG18',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_Mk153Mod0',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_Mk153Mod0_SMAWOptics',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_FIM92Stinger',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_9K32Strela',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_RPG7V',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_RPG7V_PGO7V',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_RPG7V_PGO7V2',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_RPG7V_PGO7V3',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_launch_RPG7V_NSPU',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Igla',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Javelin',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_ksvk',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_MetisLauncher',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_SMAW',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Stinger',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Strela',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_SOFLAM',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_LRTV',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AT13LauncherSingle_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_TOWLauncher_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_TOWLauncherSingle_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Igla_twice_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AT5Launcher_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AT5LauncherSingle_W',
	/*MaxMags*/1
];

//--- Naval --------------------------

//--- Other --------------------------

//--- AIR ------------------------------------------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_M32_heli',
	/*MaxMags*/20
];

//--- Missles --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT13_single_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_TOW_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_TOW_single_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_Igla_twice_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_9M311_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_9M311M_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_Stinger_vehicle_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_RBS70_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_19In',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_19Mid',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_19Out',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_7In',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_7Mid',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_7Out',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_7Single',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_19Right',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_7Right',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_14',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_A10',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_FFAR_veh_UH1Y',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_CRV7_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_CRV7_FAT_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_CRV7_HE_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_CRV7_KEP_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_S5_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_S5_CCIP_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_S8_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_S8_CCIP_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT2_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT3_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT6_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT9_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT16_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_Kh29L_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AIM9L_veh_4Rnd',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AIM9L_veh_Int_2Rnd',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AIM9L_veh_2Rnd',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AIM9L_veh_1Rnd',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AIM9L_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AIM120_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_RIM7_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_R73_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AGM114K_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AGM114L_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT5_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AT5_single_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AGM65_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AGM84_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher19_In_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher19_Mid_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher19_Out_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher7_In_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher7_Mid_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher7_Out_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_FFARLauncher_14_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AIM9L_SidewinderLauncher_4Rnd_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AIM9L_SidewinderLauncher_2Rnd_Internal_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AIM9L_SidewinderLauncher_2Rnd_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AIM9L_SidewinderLauncher_1Rnd_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AIM9L_SidewinderLauncher_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_StingerLauncher_vehicle_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_AGM114K_Hellfire_II_Launcher_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_MaverickLauncher_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vmlauncher_AGM65pod_veh',
	/*MaxMags*/1
];
//--- Bombs --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vblauncher_GBU12_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vblauncher_KAB250_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vblauncher_Mk82_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Vblauncher_Fab250_veh',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_BombLauncherGBU_W',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_BombLauncherMk82_W',
	/*MaxMags*/1
];
//--- Pylons --------------------------

//--- Other --------------------------
_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Laserdesignator',
	/*MaxMags*/1
];

_u pushBack [
	/*Enabled*/true,
	/*Name*/'',
	/*ClassName*/'CUP_Laserdesignator_mounted',
	/*MaxMags*/1
];




//--------------------------------------------------------------------------------------------------------------

[_side, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Ammo\Weapon_Config_Set.sqf";