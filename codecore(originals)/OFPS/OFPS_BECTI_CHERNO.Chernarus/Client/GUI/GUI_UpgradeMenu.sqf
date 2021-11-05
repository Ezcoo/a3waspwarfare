_last_supply = -1;
_last_running = -1;
_last_upgrades_check = -1;

while { true } do {
	if (isNil {uiNamespace getVariable "cti_dialog_ui_upgrademenu"}) exitWith {}; //--- Menu is closed.
	
	_selected = lnbCurSelRow ((uiNamespace getVariable "cti_dialog_ui_upgrademenu") displayCtrl 250002);
	if (_selected > -1) then {
		_selected = lnbValue [250002, [_selected, 1]];
		_supply = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideSupply;
		
		if !(_last_supply isEqualTo _supply) then {
			(_selected) call CTI_UI_Upgrade_LoadUpgradeInfo;
		};
		
		_last_supply = _supply;
	};
	
	if (time - _last_upgrades_check > .75) then {
		_last_upgrades_check = time;
		//check if upgrade enabled
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		_upgradesenabled = [];
		_upgradesenabledlevel = [];
		_enabled = missionNamespace getVariable format["CTI_%1_UPGRADES_ENABLED", (CTI_P_SideJoined)];
		_enabledlevels = missionNamespace getVariable Format["CTI_%1_UPGRADES_LEVELS", CTI_P_SideJoined];
		{
			if (_enabled select _forEachIndex) then {
				_upgradesenabled pushback _x;
			};
		} forEach (_upgrades);
		{
			if (_enabled select _forEachIndex) then {
				_upgradesenabledlevel pushback _x;
			};
		} forEach (_enabledlevels);
		//end upgrade enabled checks
		_need_reload = false;
		for '_i' from 0 to ((lnbSize 250002) select 0)-1 do {
			_value = lnbValue[250002, [_i, 0]];
			if !((_upgrades select _i) isEqualTo _value) then {
				if (_i isEqualTo _selected) then {_need_reload = true};
				((uiNamespace getVariable "cti_dialog_ui_upgrademenu") displayCtrl 250002) lnbSetText [[_i, 0], format["%1/%2", _upgradesenabled select _i, _upgradesenabledlevel select _i]];
				((uiNamespace getVariable "cti_dialog_ui_upgrademenu") displayCtrl 250002) lnbSetValue [[_i, 0], _upgradesenabled select _i];
			};
		};
		
		if (_need_reload) then {(_selected) call CTI_UI_Upgrade_LoadUpgradeInfo};
	};
	
	_running = CTI_P_SideLogic getVariable "cti_upgrade";
	if !(_running isEqualTo _last_running) then {
		_last_running = _running;
		_html = "";
		if (_running > -1) then {
			_html = format ["Running: <t color='#F5D363'>%1 :: %2 s left.</t>", ((missionNamespace getVariable format["CTI_%1_UPGRADES_LABELS", CTI_P_SideJoined]) select _running) select 0,CTI_P_SideLogic getVariable "cti_upgrade_lt"];
		};
		((uiNamespace getVariable "cti_dialog_ui_upgrademenu") displayCtrl 250009) ctrlSetStructuredText parseText _html;
	};
	
	sleep .1;
};