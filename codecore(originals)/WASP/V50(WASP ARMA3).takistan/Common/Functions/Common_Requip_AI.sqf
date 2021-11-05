Private ["_gear"];

_gear = [];
switch (typeOf _this) do 
{
    case "rhs_vdv_flora_at":{
		
		// toDo: adapt gear, inventory according to camo specification		
		_this addPrimaryWeaponItem "rhs_acc_1p63";
		removeBackpack _this;
		_this removeWeapon "rhs_acc_pgo7v3";		

		//comment "Add containers";		
		_this addBackpack "B_Carryall_oli";
		_this addItemToBackpack "CUP_AT13_M";		

		//comment "Add weapons";		
		_this addWeapon "CUP_launch_Metis";		
	};
	case "rhs_vdv_des_at":{
		
		// toDo: adapt gear, inventory according to camo specification		
		_this addPrimaryWeaponItem "rhs_acc_1p63";
		removeBackpack _this;
		_this removeWeapon "rhs_acc_pgo7v3";		

		//comment "Add containers";		
		_this addBackpack "B_Carryall_cbr";
		_this addItemToBackpack "CUP_AT13_M";		

		//comment "Add weapons";		
		_this addWeapon "CUP_launch_Metis";		
	};
	case "rhs_msv_machinegunner":{
		removeVest _this;
		_this addVest "rhs_6b23_6sh116_od";
		_this addItemToVest "rhs_100Rnd_762x54mmR";
	};
	case "rhs_msv_arifleman":{
		_this addItemToVest "rhs_100Rnd_762x54mmR";
	};
	case "rhs_vdv_des_machinegunner":{
		removeVest _this;
		_this addVest "rhs_6b23_6sh116";
		_this addItemToVest "rhs_100Rnd_762x54mmR";
	};
	case "rhs_vdv_mflora_machinegunner":{
		_this addItemToVest "rhs_100Rnd_762x54mmR";
	};
	case "rhs_vdv_des_arifleman":{
		removeVest _this;
		_this addVest "rhs_6b23_6sh116";
		_this addItemToVest "rhs_100Rnd_762x54mmR";
	};
	case "rhs_msv_machinegunner_assistant":{
		removeVest _this;
		_this addVest "rhs_6b23_6sh116_od";
		_this addItemToVest "rhs_100Rnd_762x54mmR";
	};
};

//[_this, _gear] call WFBE_CO_FNC_EquipUnit;




