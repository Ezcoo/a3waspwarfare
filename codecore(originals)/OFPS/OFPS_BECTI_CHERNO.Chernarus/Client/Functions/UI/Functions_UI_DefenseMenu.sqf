CTI_UI_DefenseMenu_GetDefensiveUnits = {
	private ["_side","_logic","_defense_team","_defense_count","_defense_array","_u","_defensecountText","_totalAmmo","_maxAmmo","_vehclass","_vehname"];
	_side = _this;
	_logic = (_side) call CTI_CO_FNC_GetSideLogic;
	_defense_team = _logic getVariable "cti_defensive_team";
	_defense_count = count(_defense_team call CTI_CO_FNC_GetLiveUnits);
	_defense_array = [];
	_u = 0;

	//update counts
	_defensecountText = format ["<t color='#42b6ff' shadow='2' size='1' align='center' valign='top'>Defensive Team Count (%3 Per Base Area): %1 / %2</t>", _defense_count, CTI_BASE_DEFENSES_AUTO_LIMIT, CTI_BASE_DEFENSES_AUTO_AREA_LIMIT];
	((uiNamespace getVariable "cti_dialog_ui_defensemenu") displayCtrl 785007) ctrlSetStructuredText parseText _defensecountText;
	
	//Clear and Update Defense List
	lbClear 785006;
	{
		//statics ammo counts
		_totalAmmo = 0;
		_maxAmmo = 0;
		{
			_totalAmmo = _totalAmmo + (_x select 1);
			_maxAmmo = _maxAmmo + (getNumber(configFile >> "CfgMagazines" >> (_x select 0) >> "count"));
		} forEach magazinesAmmo (vehicle _x);

		_vehclass = (typeOf (vehicle _x));
		_vehname = getText (configFile >> "CfgVehicles" >> _vehclass >> "displayName");

		//update list
		((uiNamespace getVariable "cti_dialog_ui_defensemenu") displayCtrl 785006) lbAdd format["%1 | %2 ------ AMMO COUNT: %3 / %4",  _vehname, name (vehicle _x), _totalAmmo, _maxAmmo];
		((uiNamespace getVariable "cti_dialog_ui_defensemenu") displayCtrl 785006) lbSetValue [_u+1, _u];
		_defense_array pushBack _x;
		_u = _u + 1;
	} forEach units _defense_team;

	if (_defense_count == 0) then {
		((uiNamespace getVariable "cti_dialog_ui_defensemenu") displayCtrl 785006) lbAdd format["NO ACTIVE DEFENSES"];
	};

	_defense_array

};