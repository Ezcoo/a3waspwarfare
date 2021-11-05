switch (typeOf _this) do 
{

	case "RHS_M2A2_BUSKI";
	case "RHS_M2A2";
	case "RHS_M2A3";
	case "RHS_M2A3_BUSKI";
	case "RHS_M2A3_BUSKIII";
	case "RHS_M2A2_BUSKI_wd";
	case "RHS_M2A2_wd";
	case "RHS_M2A3_wd";
	case "RHS_M2A3_BUSKI_wd";
	case "RHS_M2A3_BUSKIII_wd": {
		_this removeWeaponTurret ["Rhs_weap_TOW_Launcher",[0]];
		_this removeMagazineTurret ["rhs_mag_2Rnd_TOW2A",[0]];
		_this removeMagazineTurret ["rhs_mag_2Rnd_TOW2A",[0]];
		_this removeMagazineTurret ["rhs_mag_2Rnd_TOW2A",[0]];
		_this removeMagazineTurret ["rhs_mag_2Rnd_TOW2A",[0]];
		_this addMagazineTurret ["rhs_mag_9m133_2",[0]];
		_this addMagazineTurret ["rhs_mag_9m133_2",[0]];
		_this addMagazineTurret ["rhs_mag_9m133_2",[0]];
		_this addMagazineTurret ["rhs_mag_9m133_2",[0]];
		_this addWeaponTurret ["rhs_weap_9k133",[0]];
		_current_heavy_level = ((side player) Call cti_CO_FNC_GetSideUpgrades) select cti_UP_HEAVY;
        if(_current_heavy_level < 2)then{
            _this disableTIEquipment true;
        };
	};
	
	case "CUP_B_LAV25_desert_USMC";
	case "CUP_B_LAV25_USMC":{
    	_current_light_level = ((side player) Call cti_CO_FNC_GetSideUpgrades) select cti_UP_LIGHT;
        if(_current_light_level < 4)then{
            _this disableTIEquipment true;
    	};
    };
	
	case "rhs_bmd1pk":{
        _current_heavy_level = ((side player) Call cti_CO_FNC_GetSideUpgrades) select cti_UP_HEAVY;
        if(_current_heavy_level < 1)then{
            _this removeMagazineTurret ["rhs_mag_pg15v_24",[0]];
            _this removeMagazineTurret ["rhs_mag_pg15v_24",[0]];
            _this removeMagazineTurret ["rhs_mag_pg15v_24",[0]];
            _this removeMagazineTurret ["rhs_mag_pg15v_24",[0]];
        };
    };
};



