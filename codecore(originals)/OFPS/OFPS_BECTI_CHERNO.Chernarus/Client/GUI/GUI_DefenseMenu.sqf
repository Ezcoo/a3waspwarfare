_side = CTI_P_SideJoined;
_last_defense_team = 0;

while { true } do {
	if (isNil {uiNamespace getVariable "cti_dialog_ui_defensemenu"}) exitWith {}; //--- Menu is closed.
	
	_logic = (_side) call CTI_CO_FNC_GetSideLogic;
	_defense_team = _logic getVariable "cti_defensive_team";
	_defense_count = count(_defense_team call CTI_CO_FNC_GetLiveUnits);

	if (_defense_count != _last_defense_team) then {
		(_side) call CTI_UI_DefenseMenu_GetDefensiveUnits;
		_last_defense_team = _defense_count;
	};

	sleep 1;
};