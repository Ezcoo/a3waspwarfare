Private ["_side"];
_side = _this;

missionNamespace setVariable [Format['cti_%1_ARTILLERY_DISPLAY_NAME', _side], ['M119','M252','MLRS','M109']]; //--- Display Name to use in the GUI.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_WEAPONS', _side], ['RHS_weap_M119','mortar_82mm','CUP_Vmlauncher_MLRS_veh','rhs_weap_m284']]; //--- Weapon classname.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_RANGES_MIN', _side], [1000,250,1200,1200]]; //--- Unit cannot fire if the target is within it's min range.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_DISPERSIONS', _side], [50,60,50,35]]; //--- Accuracy of the shell upon landing.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_RANGES_MAX', _side], [7000,5500,9000,8000]]; //--- Unit max firing range.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_TIME_RELOAD', _side], [7,4,2,5]]; //--- Approximate time needed for unit to fire again.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_BURST', _side], [12,8,12,8]]; //--- Burst sent per fire mission.


//--- Special projectiles used by artillery classes.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_EXTENDED_MAGS', _side], [
	['RHS_mag_m1_he_12','rhs_mag_m314_ilum_4','rhs_mag_m60a2_smoke_4'],
	['8Rnd_82mm_Mo_shells', '8Rnd_82mm_Mo_Flare_white', '8Rnd_82mm_Mo_Smoke_white', '8Rnd_82mm_Mo_guided', '8Rnd_82mm_Mo_LG'],
	[],
	[]
]];

//--- Upgrade level required to use the special projectile.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_EXTENDED_MAGS_UPGRADE', _side], [
	[2,3,3,1,1],
	[2,1],
	[],
	[]
]];

//--- Artillery magazines
missionNamespace setVariable [Format['cti_%1_ARTILLERY_MAGAZINES', _side], [
	['RHS_mag_m1_he_12'],
	['8Rnd_82mm_Mo_shells'],
	['CUP_12Rnd_MLRS_HE'],
	['32Rnd_155mm_Mo_shells']
]];

//--- Artillery classnames, more than one of the same family may be used.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_CLASSNAMES', _side], [
	['RHS_M119_WD'],
	['CUP_B_M252_USMC'],
	['CUP_B_M270_HE_USA'],
	['rhsusf_m109d_usarmy']
]];
