_last_funds = -1;
_last_supply = -1;
_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
_getunitcustom = (_unit) call bis_fnc_getVehicleCustomization;
_customizations = _getunitcustom select 1;
_hascustomizations = false;
if !(isNil '_customizations') then {
	if ((count _customizations) > 0) then {
		_hascustomizations = true;
	};
};
while { true } do {
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu"}) exitWith {}; //--- Menu is closed.
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if (_isbusy) then {
		ctrlEnable [790026, false];//customization buttons
		ctrlEnable [790027, false];//customization buttons
		ctrlEnable [790038, false];//clear mag
		ctrlEnable [790014, false];//clear
		ctrlEnable [790015, false];//rearm
		ctrlEnable [790016, false];//purchase
	} else {
		if (_hascustomizations) then {
			//customization buttons
			ctrlEnable [790026, true];
			ctrlEnable [790027, true];
		};
		ctrlEnable [790038, true];//clear mag
		ctrlEnable [790014, true];//clear
		ctrlEnable [790015, true];//rearm
		//ctrlEnable [790016, true];//purchase
	};
	//refresh rate
	sleep .1;
};