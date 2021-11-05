_time = time;
["hint-holster"] call CTI_CL_FNC_DisplayMessage;
waitUntil {sleep 0.01; !isHolsterKeyDown || time >= _time + .4}; // Wait a little if they hold it;
if (isHolsterKeyDown) then {
	//--- Weapon Holster
	_currentWep = currentWeapon CTI_P_Controlled;
	if (_currentWep != "" && vehicle CTI_P_Controlled == CTI_P_Controlled) then {
		_stance = "Perc";
		_wep = "Wrfl";
		if (stance CTI_P_Controlled == "CROUCH") then {_stance = "Pknl"};
		if (stance CTI_P_Controlled == "PRONE") then {_stance = "Ppne"};
		if (_currentWep == handgunWeapon CTI_P_Controlled) then {_wep = "Wpst"};
		if (_currentWep == secondaryWeapon CTI_P_Controlled) then {_wep = "Wlnr"};
		
		// systemChat format ["Amov%1MstpSRas%2Dnon_Amov%1MstpSnonWnonDnon", _stance, _wep];
		CTI_P_Controlled switchMove format ["Amov%1MstpSras%2Dnon_Amov%1MstpSnonWnonDnon", _stance, _wep];
		CTI_P_Controlled action ["SwitchWeapon", CTI_P_Controlled, CTI_P_Controlled, 100];
		//--- 3rd person auto switch
		if (missionNamespace getVariable "CTI_GAMEPLAY_3P" isEqualTo 0) then {
			CTI_P_Controlled switchCamera "EXTERNAL";
		};
	};
};