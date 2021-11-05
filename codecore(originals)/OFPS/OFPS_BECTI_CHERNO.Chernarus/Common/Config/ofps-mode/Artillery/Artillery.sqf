_c = []; //--- Classname
_m = []; //--- Magazines
_b = []; //--- Burst
_r = []; //--- Ranges

//--- VANILLA UNITS
if (CTI_VANILLA_ADDON >= 2) then { 
        _c pushBack "O_Mortar_01_weapon_F";
	_m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];
	
        _c pushBack "I_Mortar_01_weapon_F";
	_m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "B_Mortar_01_weapon_F";
	_m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "B_Mortar_01_F";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "O_Mortar_01_F";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "I_Mortar_01_F";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "I_G_Mortar_01_F";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "B_G_Mortar_01_F";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "O_G_Mortar_01_F";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "B_T_Mortar_01_F";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "O_MBT_02_arty_F";
        _m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "B_MBT_01_arty_F";
        _m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "B_T_MBT_01_arty_F";
        _m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "B_MBT_01_mlrs_F";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "MBT_01_mlrs_base_F_placeholder1";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "MBT_01_mlrs_base_F_placeholder2";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "B_T_MBT_01_mlrs_F";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];
};
//--- HELI UNITS
if (CTI_HELI_ADDON >= 2) then {  

};
//--- APEX UNITS
if (CTI_APEX_ADDON >= 2) then {  
	_c pushBack "O_T_MBT_02_arty_ghex_F";
        _m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];
};
//--- JETS UNITS
if (CTI_JETS_ADDON >= 2) then { 

};
//--- Laws Of War UNITS
if (CTI_LAWSOFWAR_ADDON >= 2) then { 

};
//--- TANKS UNITS
if (CTI_TANKS_ADDON >= 2) then { 

};
//--- GLOBAL MOBILIZATION UNITS
if (CTI_GLOBAL_MOBILIZATION_ADDON >= 2) then { 

};
//--- CONTACT UNITS
if (CTI_CONTACT_ADDON >= 2) then { 

};

//--- CUP UNITS
if (CTI_CUP_VEHICLES_ADDON > 0) then { 
	_c pushBack "CUP_B_D30_AT_CDF";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

	_c pushBack "CUP_B_D30_CDF";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];
	
        _c pushBack "CUP_I_D30_AT_TK_GUE";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_I_D30_TK_GUE";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_AT_ChDKZ";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_AT_RU";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_AT_SLA";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_AT_TK_INS";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_AT_TK_INS";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_AT_TK";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_ChDKZ";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_RU";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_RU";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_SLA";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_TK_INS";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_TK_INS";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_O_D30_TK";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "CUP_B_M270_DPICM_USA";
	_m pushBack ["CUP_12Rnd_MLRS_DPICM"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "CUP_I_M270_DPICM_AAF";
	_m pushBack ["CUP_12Rnd_MLRS_DPICM"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "CUP_B_M270_DPICM_USMC";
	_m pushBack ["CUP_12Rnd_MLRS_DPICM"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "CUP_B_M270_HE_USA";
	_m pushBack ["CUP_12Rnd_MLRS_HE"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "CUP_B_M270_HE_USMC";
	_m pushBack ["CUP_12Rnd_MLRS_HE"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "CUP_I_M270_HE_AAF";
	_m pushBack ["CUP_12Rnd_MLRS_HE"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "CUP_B_BM21_CDF";
	_m pushBack ["CUP_40Rnd_GRAD_HE"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "CUP_O_BM21_CHDKZ";
	_m pushBack ["CUP_40Rnd_GRAD_HE"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "CUP_O_BM21_RU";
	_m pushBack ["CUP_40Rnd_GRAD_HE"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "CUP_O_BM21_SLA";
	_m pushBack ["CUP_40Rnd_GRAD_HE"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "CUP_O_BM21_TKA";
	_m pushBack ["CUP_40Rnd_GRAD_HE"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "CUP_B_Podnos_Gun_Bag";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_2b14_82mm_ACR";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_2b14_82mm_CDF";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_L16A2_BAF_DDPM";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_L16A2_BAF_MPT";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_L16A2_BAF_WDL";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1129_MC_MK19_Desert_Slat";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1129_MC_MK19_Desert";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1129_MC_MK19_Woodland_Slat";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1129_MC_MK19_Woodland";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1130_CV_M2_Desert_Slat";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1130_CV_M2_Desert";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1130_CV_M2_Woodland_Slat";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M1130_CV_M2_Woodland";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M252_Gun_Bag";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M252_US";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_B_M252_USMC";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_I_2b14_82mm_TK_GUE";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_I_M252_RACS";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_O_2b14_82mm_ChDKZ";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_O_2b14_82mm_RU";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_O_2b14_82mm_SLA";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_O_2b14_82mm_TK_INS";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_O_2b14_82mm_TK_INS";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "CUP_O_2b14_82mm_TK";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];
};
//--- RHS UNITS
if (CTI_RHS_AFRF_ADDON >= 2) then {
        _c pushBack "rhs_2s3_tv";
        _m pushBack ["rhs_mag_HE_2a33", "rhs_mag_WP_2a33", "rhs_mag_Atomic_2a33", "rhs_mag_LASER_2a33", "rhs_mag_SMOKE_2a33", "rhs_mag_ILLUM_2a33"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "rhs_D30_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_vdv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_vmf";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_at_vdv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_at_vmf";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_d30_at_msv_placeholder1";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_d30_at_msv_placeholder2";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_O_HE_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_O_HEAT_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_M_HE_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_M_HEAT_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_B_HE_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_B_HEAT_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_cdf_reg_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_cdf_reg_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_nat_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_nat_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_g_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_g_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhssaf_army_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "RHS_BM21_MSV_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_BM21_VDV_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_BM21_VMF_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_BM21_VV_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_cdf_reg_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_cdf_b_reg_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_ins_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_ins_g_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_Podnos_Gun_Bag";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_2b14_82mm_msv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_2b14_82mm_vdv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_2b14_82mm_vmf";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_nat_2b14";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_ins_2b14";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_ins_g_2b14";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_9k79";
        _m pushBack ["1_Rnd_RHS_9M79_1_K", "1_Rnd_RHS_9M79B"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 4000], [500, 5000]];

        _c pushBack "rhs_9k79_K";
        _m pushBack ["1_Rnd_RHS_9M79_1_K", "1_Rnd_RHS_9M79B"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 4000], [500, 5000]];

        _c pushBack "rhs_9k79_B";
        _m pushBack ["1_Rnd_RHS_9M79_1_K", "1_Rnd_RHS_9M79B"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 4000], [500, 5000]];

        _c pushBack "rhsusf_m109_usarmy";
	_m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "rhsusf_m109d_usarmy";
	_m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "rhs_M252_Gun_Bag";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_D";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_WD";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_USMC_D";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_USMC_WD";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_cdf_reg_M252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_cdf_reg_M252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_cdf_b_reg_M252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhssaf_army_m252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

   	_c pushBack "rhs_prp3_vdv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

   	_c pushBack "rhs_prp3_tv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

   	_c pushBack "rhs_prp3_msv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

   	_c pushBack "rhs_prp3_vmf";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

   	_c pushBack "rhs_prp3_vv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];



};
if (CTI_RHS_GREF_ADDON >= 2) then { 

};
if (CTI_RHS_SAF_ADDON >= 2) then { 

};
if (CTI_RHS_USAF_ADDON >= 2) then { 
        _c pushBack "rhs_2s3_tv";
        _m pushBack ["rhs_mag_HE_2a33", "rhs_mag_WP_2a33", "rhs_mag_Atomic_2a33", "rhs_mag_LASER_2a33", "rhs_mag_SMOKE_2a33", "rhs_mag_ILLUM_2a33"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "rhs_D30_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_vdv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_vmf";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_at_vdv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_D30_at_vmf";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_d30_at_msv_placeholder1";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhs_d30_at_msv_placeholder2";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_O_HE_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_O_HEAT_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_M_HE_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_M_HEAT_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_B_HE_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "opfor_B_HEAT_rhs_d30_at_msv";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_cdf_reg_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_cdf_reg_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_nat_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_nat_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_g_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhsgref_ins_g_d30_at";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "rhssaf_army_d30";
	_m pushBack ["CUP_30Rnd_122mmAT_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmHE_D30_M", "CUP_30Rnd_122mmWP_D30_M", "CUP_30Rnd_122mmLASER_D30_M", "CUP_30Rnd_122mmSMOKE_D30_M",  "CUP_30Rnd_122mmILLUM_D30_M"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 1500], [500, 2000], [500, 3500]];

        _c pushBack "RHS_BM21_MSV_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_BM21_VDV_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_BM21_VMF_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_BM21_VV_01";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_cdf_reg_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_cdf_b_reg_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_ins_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "rhsgref_ins_g_BM21";
	_m pushBack ["rhs_mag_40Rnd_122mm_rockets"];
        _b pushBack [1, 2, 8, 10];
        _r pushBack [[300, 1000], [300, 2500], [300, 3000], [300, 4500]];

        _c pushBack "RHS_Podnos_Gun_Bag";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_2b14_82mm_msv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_2b14_82mm_vdv";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_2b14_82mm_vmf";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_nat_2b14";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_ins_2b14";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_ins_g_2b14";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhs_9k79";
        _m pushBack ["1_Rnd_RHS_9M79_1_K", "1_Rnd_RHS_9M79B"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 4000], [500, 5000]];

        _c pushBack "rhs_9k79_K";
        _m pushBack ["1_Rnd_RHS_9M79_1_K", "1_Rnd_RHS_9M79B"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 4000], [500, 5000]];

        _c pushBack "rhs_9k79_B";
        _m pushBack ["1_Rnd_RHS_9M79_1_K", "1_Rnd_RHS_9M79B"];
        _b pushBack [1, 1, 1, 1];
        _r pushBack [[500, 1000], [500, 2500], [500, 4000], [500, 5000]];

        _c pushBack "rhsusf_m109_usarmy";
	_m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "rhsusf_m109d_usarmy";
	_m pushBack ["32Rnd_155mm_Mo_shells", "6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_mine", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"];
	_b pushBack [1, 1, 1, 1];
	_r pushBack [[500, 1000], [500, 2000], [500, 3000], [500, 4000]];

        _c pushBack "rhs_M252_Gun_Bag";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_D";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_WD";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_USMC_D";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "RHS_M252_USMC_WD";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_cdf_reg_M252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_cdf_reg_M252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhsgref_cdf_b_reg_M252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];

        _c pushBack "rhssaf_army_m252";
        _m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_guided", "8Rnd_82mm_Mo_LG"];
        _b pushBack [1, 2, 4, 8];
        _r pushBack [[100, 500], [100, 1000], [100, 1500], [100, 2000]];
};
//--- OFPS UNITS
if (CTI_OFPS_UNITS_ADDON >= 2) then { 
        _c pushBack "OFPS_SCORCHER";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "OFPS_SANDSTORM";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "ofps_B_MBT_01_mlrs_base_F";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];

        _c pushBack "ofps_O_MBT_01_mlrs_base_F";
        _m pushBack ["12Rnd_230mm_rockets"];
        _b pushBack [1, 2, 4, 6];
        _r pushBack [[500, 1000], [500, 2500], [500, 3000], [500, 4500]];
};
//--- OFPS RHS UNITS
if (CTI_OFPS_RHS_ADDON >= 2) then { 

};
//--- OFPS CUP UNITS
if (CTI_OFPS_CUP_ADDON >= 2) then { 

};

//--- UNSUNG UNITS
if (CTI_UNSUNG_ADDON >= 2) then { 

};

//--- IFA3 UNITS
if (CTI_IFA3_ADDON >= 2) then { 

};


[_c, _m, _b, _r] call compile preprocessFileLineNumbers "Common\Config\Common\Artillery\Set_Artillery.sqf";