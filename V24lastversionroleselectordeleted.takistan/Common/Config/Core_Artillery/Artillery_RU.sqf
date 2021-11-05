Private ["_side"];
_side = _this;

missionNamespace setVariable [Format['cti_%1_ARTILLERY_DISPLAY_NAME', _side], ['D30','2B14','GRAD','2S3M1']]; //--- Display Name to use in the GUI.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_WEAPONS', _side], ['RHS_Weap_d30','rhs_weap_2b14','rhs_weap_grad','RHS_Weap_2a33']]; //--- Weapon classname.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_RANGES_MIN', _side], [800,800,1000,1000]]; //--- Unit cannot fire if the target is within it's min range.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_DISPERSIONS', _side], [50,60,50,35]]; //--- Accuracy of the shell upon landing.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_RANGES_MAX', _side], [7000,5500,9000,8000]]; //--- Unit max firing range.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_TIME_RELOAD', _side], [7,4,2,5]]; //--- Approximate time needed for unit to fire again.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_BURST', _side], [12,8,12,8]]; //--- Burst sent per fire mission.

//--- Special projectiles used by artillery classes.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_EXTENDED_MAGS', _side], [
	['CUP_30Rnd_122mmWP_D30_M','CUP_30Rnd_122mmHE_D30_M','CUP_30Rnd_122mmLASER_D30_M','CUP_30Rnd_122mmSMOKE_D30_M','CUP_30Rnd_122mmILLUM_D30_M'],
	['8Rnd_82mm_Mo_Flare_white','8Rnd_82mm_Mo_Smoke_white','8Rnd_82mm_Mo_guided','8Rnd_82mm_Mo_LG'],
	[],
	[]
]];

//--- Upgrade level required to use the special projectile.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_EXTENDED_MAGS_UPGRADE', _side], [
	[3,3,3,3,1,1,2,2,2,2],
	[1,2,3,3],
	[],
	[]
]];

//--- Artillery magazines
missionNamespace setVariable [Format['cti_%1_ARTILLERY_MAGAZINES', _side], [
	['rhs_mag_3of56_10'],
	['rhs_mag_3vo18_10'],
	['rhs_mag_40Rnd_122mm_rockets'],
	['rhs_mag_HE_2a33']
]];

//--- Artillery classnames, more than one of the same family may be used.
missionNamespace setVariable [Format['cti_%1_ARTILLERY_CLASSNAMES', _side], [
	['rhs_D30_vdv'],
	['rhs_2b14_82mm_msv'],
	['RHS_BM21_MSV_01'],
	['rhs_2s3_tv']
]];