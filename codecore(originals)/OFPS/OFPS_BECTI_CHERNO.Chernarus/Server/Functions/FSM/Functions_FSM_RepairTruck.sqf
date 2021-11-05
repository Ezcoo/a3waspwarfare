CTI_FSM_RepairTruck_Construct = {
	params ["_vehicle", "_target"];
	private ["_addin", "_completion", "_group"];
	
	_completion = _target getVariable "cti_completion";
	if !(isNil '_completion') then {
		_addin = _completion + ((CTI_VEHICLES_REPAIRTRUCK_BASE_BUILD_COEFFICIENT/(_target getVariable "cti_structures_iteration")) * (_target getVariable "cti_completion_ratio"));
		if (_addin > 100) then {_addin = 100};
		_target setVariable ["cti_completion", _addin];
		if !(_completion isEqualTo _addin) then {
			_group = group driver _vehicle;
			if (isPlayer leader _group) then {["build-by", [driver _vehicle, _target getVariable "cti_structure_type", round _addin]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", leader _group]};
		};
	};
};

CTI_FSM_RepairTruck_Repair = {
	params ["_side", "_vehicle", "_target"];
	private ["_repair", "_repair_consume", "_virtual_damages","_group"];
	
	_virtual_damages = _target getVariable ["cti_altdmg", -1];
	
	_repair = 0;
	_repair_consume = CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR;
	if (_virtual_damages < 0) then {
		_repair = getDammage _target - CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR;
		if (_repair < 0) then {
			_repair_consume = CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR - (CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR - getDammage _target);
			_repair = 0;
		};
		_target setDammage _repair;
	} else {
		_repair = _virtual_damages - CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR;
		if (_repair < 0) then {
			_repair_consume = CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR - (CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR - _virtual_damages);
			_repair = 0;
		};
		if !(_repair isEqualTo _virtual_damages) then {_target setVariable ["cti_altdmg", _repair]};
	};
	
	//--- If SV consumption with Repair truck is enabled, remove the supply according to the repaired amount
	switch (CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR_USE_SV) do {
		case 1: { //--- SV Cost is based on the repair value (CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR * 100)
			if (_repair_consume > 0) then {[_side, -round(_repair_consume * 100)] call CTI_CO_FNC_ChangeSideSupply};
		};
	};
	
	_group = group driver _vehicle;
	if (isPlayer leader _group) then {["repair-by", [driver _vehicle, _target getVariable "cti_structure_type", round((1 - _repair)*100), _repair_consume]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", leader _group]};
};