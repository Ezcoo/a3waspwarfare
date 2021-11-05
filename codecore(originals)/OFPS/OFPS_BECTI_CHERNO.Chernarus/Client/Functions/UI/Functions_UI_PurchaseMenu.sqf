CTI_UI_Purchase_LogisticsTax = {
	private ["_price"];
	_price = (round (((_this + CTI_UNIT_DEPOT_FEE) * (1 + CTI_UNIT_DEPOT_TAX)) / 10)) * 10;
	_price
};

CTI_UI_Purchase_SetIcons = {
	private ["_IDCs", "_index", "_selected"];
	_index = _this;
	
	_IDCs = [110001, 110002, 110003, 110004, 110021, 110005, 110006, 110007, 110008];
	_selected = _IDCs select _index;
	_IDCS = _IDCS - [_selected];
	
	{
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl _x) ctrlSetTextColor [0.4, 0.4, 0.4, 1];
	} forEach _IDCs;
	// ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl _selected) ctrlSetTextColor [1, 1, 1, 1];
	((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl _selected) ctrlSetTextColor [0.258823529, 0.713725490, 1, 1];
};

//--- Get the best factory (the closest).
CTI_UI_Purchase_GetFirstAvailableFactories = {
	_fetched = objNull;
	_index = -1;
	_type = "";
	
	//--- Retrieve the current structures
	_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
	_factories = [CTI_BARRACKS, CTI_LIGHT, CTI_HEAVY, CTI_AIR_ROTARY, CTI_AIR_FIXED, CTI_REPAIR, CTI_AMMO, CTI_NAVAL];
	_availables = [];
	{_availables = _availables + ([_x, _structures, player, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetSideStructuresByType)} forEach _factories;
	
	//--- Check for depot
	_depot = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
	if (!(isNull _depot) && CTI_Base_DepotInRange) then {_availables pushBack _depot};

	//--- Check for naval depot
	_naval_depot = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestNavalDepot;
	if (!(isNull _naval_depot) && CTI_Base_NavalDepotInRange) then {_availables pushBack _naval_depot};
	
	//--- Check for large FOB
	_large_fob = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestLargeFOB;
	if (!(isNull _large_fob) && CTI_Base_LargeFOBInRange) then {_availables pushBack _large_fob};

	if (count _availables > 0) then {
		_fetched = [player, _availables] call CTI_CO_FNC_GetClosestEntity;
		_nearAction = uiNamespace getVariable "cti_dialog_ui_purchasemenu_action";
		if !(isNil '_nearAction') then { //--- Override by closest?
			if (alive _nearAction && _nearAction in _structures) then {
				_fetched = _nearAction;
			};
		};
		
		_var = _fetched getVariable "cti_structure_type";
		if !(isNil '_var') then {
			_var = missionNamespace getVariable format ["CTI_%1_%2", CTI_P_SideJoined, _var];
			_type = (_var select CTI_STRUCTURE_LABELS) select 0;
			_index = switch (_type) do {
				case CTI_BARRACKS: {CTI_FACTORY_BARRACKS};
				case CTI_LIGHT: {CTI_FACTORY_LIGHT};
				case CTI_HEAVY: {CTI_FACTORY_HEAVY};
				case CTI_AIR_ROTARY: {CTI_FACTORY_AIR_ROTARY};
				case CTI_AIR_FIXED: {CTI_FACTORY_AIR_FIXED};
				case CTI_REPAIR: {CTI_FACTORY_REPAIR};
				case CTI_AMMO: {CTI_FACTORY_AMMO};
				case CTI_NAVAL: {CTI_FACTORY_NAVAL};
				default {-1};
			};
		} else {			
			if !(isNil {_fetched getVariable "cti_depot"}) then {
				_index = CTI_FACTORY_DEPOT;
				_type = CTI_DEPOT;
				if !(isNil {(_fetched getVariable "cti_depot") getVariable "cti_naval_depot"}) then {
					_index = CTI_FACTORY_DEPOT;
					_type = CTI_DEPOT_NAVAL;
				};
			};
			if !(isNil {_fetched getVariable "cti_large_fob"}) then {
				_index = CTI_FACTORY_DEPOT;//use depot index instead CTI_FACTORY_LARGE_FOB
				_type = CTI_LARGE_FOB;
			};
		};
	};
	
	if (_index < 0) then {_fetched = objNull};
	
	[_fetched, _index, _type];
};

CTI_UI_PURCHASE_SortUnitList = {
	// This will sort by model
	private _units = _this;
	private _models = [];
	private _classnames = [];
	private _cfg = configFile >> "CfgVehicles";
	{
		_classname = _x;
		_model = getText(_cfg >> _classname >> "model");
		if (_model in _models) then {
			_pos = _models find _model;
			_classNamesOld = (_classnames select _pos);
			//diag_log ["OLD", _classNamesOld];
			_classNamesNew = _classNamesOld;
			_classNamesNew pushBack _classname;
			//diag_log ["NEW", _classNamesNew];

			_classnames set [_pos, _classNamesNew];
		} else {
			_models pushBack _model;
			_classnames pushBack [_classname];
		};
	} forEach _units;
	_classNamesOrdered = [];
	{
		_classNamesOrdered pushBack ([_x ,[],{(missionNamespace getVariable _x) select CTI_UNIT_PRICE},"ASCEND"] call BIS_fnc_sortBy);
	} forEach _classNames;
	_classNamesOrdered = _classNamesOrdered call CTI_CO_FNC_ConvertGearToFlat;
	_classNamesOrdered

};
CTI_UI_Purchase_CheckUnitAvailability = {
	private ["_type","_item"];
	_type = _this select 0;
	_item = _this select 1;
	_unit_available = false;

	//check default factory locations
	_list_barracks = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_BARRACKS];
	_list_light = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_LIGHT];
	_list_heavy = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_HEAVY];
	_list_air_rotary = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_AIR_ROTARY];
	_list_air_fixed = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_AIR_FIXED];
	_list_repair = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_REPAIR];
	_list_ammo = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_AMMO];
	_list_naval = missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, CTI_NAVAL];

	//--- If we're dealing with a depot, determine whether it is on ground or on water
	/*if (_type isEqualTo CTI_DEPOT) then {
		//systemChat format ["DEPOT: %1 | %2", _item, _type];
		if (
			((uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory") getVariable "cti_depot") getVariable ["cti_naval", false] ||
			(uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory") getVariable ["cti_kind_naval", false] || 
			(typeOf (uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory")) isEqualTo "Land_Lighthouse_small_F"
		) then {_type = CTI_DEPOT_NAVAL};
		//systemChat format ["DEPOT: %1 | %2", _item, _type];

	};*/
	
	//--- Start Check
	_var = missionNamespace getVariable _item;

	if !(isNil "_var") then {

		if (_var select CTI_UNIT_ENABLED) then { //--- Add if item enabled
			_unit_source = "";
			_unit_type = "";
			_unit_lvl = 0;

			//check gear upgrade
			{
				_unit_source_temp = "";
				_unit_type_temp = "";
				_unit_lvl_temp = 0;
				_count = 0;
				switch (typeName _x) do {
					case "STRING": { 
						_unit_source_temp = _x;
						_unit_type_temp = "default";
						_unit_lvl_temp = _var select CTI_UNIT_UPGRADE;
					};
					case "ARRAY": { 
						//check to source
						_count = count _x;
						_unit_source_temp = _x select 0;
						_unit_type_temp = _x select 1;
						if (_count > 2) then {
							_unit_lvl_temp = _x select 2;
						} else {
							_unit_lvl_temp = _var select CTI_UNIT_UPGRADE;
						};
					};
				};
				if (_unit_source_temp isEqualTo _type) then {
					_unit_source = _unit_source_temp;
					_unit_type = _unit_type_temp;
					_unit_lvl = _unit_lvl_temp;						
				};
				

			} foreach (_var select CTI_UNIT_FACTORY);

			//Check upgrade levels
			_upgrade = switch (_type) do {
				case CTI_BARRACKS: {CTI_UPGRADE_BARRACKS};
				case CTI_LIGHT: {CTI_UPGRADE_LIGHT};
				case CTI_HEAVY: {CTI_UPGRADE_HEAVY};
				case CTI_AIR_ROTARY: {CTI_UPGRADE_AIR_ROTARY};
				case CTI_AIR_FIXED: {CTI_UPGRADE_AIR_FIXED};
				case CTI_REPAIR: {CTI_UPGRADE_TOWNS};
				case CTI_AMMO: {CTI_UPGRADE_TOWNS};
				case CTI_NAVAL: {CTI_UPGRADE_NAVAL};
				case CTI_DEPOT: {CTI_UPGRADE_TOWNS};
				case CTI_DEPOT_NAVAL: {CTI_UPGRADE_TOWNS};
				case CTI_LARGE_FOB: {CTI_UPGRADE_TOWNS};
				default {0};
			};
	
			//modify upgrade level if default selected -- checks default factory upgrade level
			if (_unit_type isEqualTo "default") then {
				if (_item in _list_barracks) then {
					_upgrade = CTI_UPGRADE_BARRACKS;
				};
				if (_item in _list_light) then {
					_upgrade = CTI_UPGRADE_LIGHT;
				};
				if (_item in _list_heavy) then {
					_upgrade = CTI_UPGRADE_HEAVY;
				};
				if (_item in _list_air_rotary) then {
					_upgrade = CTI_UPGRADE_AIR_ROTARY;
				};
				if (_item in _list_air_fixed) then {
					_upgrade = CTI_UPGRADE_AIR_FIXED;
				};
				if (_item in _list_repair) then {
					_upgrade = CTI_UPGRADE_TOWNS;
				};
				if (_item in _list_ammo) then {
					_upgrade = CTI_UPGRADE_TOWNS;
				};
				if (_item in _list_naval) then {
					_upgrade = CTI_UPGRADE_NAVAL;
				};
			};

			_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
			switch (_unit_type) do {
				case "default": {
					_unit_available = _unit_lvl <= (_upgrades select _upgrade);
				};
				case "logistics": {
					_unit_available = _unit_lvl <= (_upgrades select CTI_UPGRADE_TOWNS);
				};
				default {_unit_available = false};
			};
			//systemChat format ["Available: %1 | %2 | %3 | %4 | %5", _type, _unit_available, _unit_source, _unit_type, _unit_lvl];
		};
	};


	//--- Return
	_unit_available
};

CTI_UI_Purchase_FillUnitsList = {
	private ["_type", "_var"];
	_type = _this;
	
	lnbClear ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007);

	_filter_use = "all";
	
	//--- Prevent the reloading of the current tab via onLBSelChanged EH
	uiNamespace setVariable ["cti_dialog_ui_purchasemenu_filter_reload", false];
	
	_filter_current = lbCurSel((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017);
	if (_filter_current != -1) then {_filter_use = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017) lbData _filter_current};

	lbClear 110017;
	
	_lb = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017) lbAdd "All";
	((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017) lbSetData [_lb, "all"];
	_filters = [];
	{
		_var = missionNamespace getVariable _x;
		if !(isNil "_var") then {
			_upgrade_match = [_type, _x] call CTI_UI_Purchase_CheckUnitAvailability;
			{
				if (_upgrade_match && !((_x) in _filters) && !((_x) isEqualTo "")) then {
					_filters pushBack (_x);
				};
			} forEach (_var select CTI_UNIT_FILTERUI);
		};
	} forEach (missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, _type]);

	//--- Add the filters to the combo rsc
	{
		_lb = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017) lbAdd _x;
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017) lbSetData [_lb, _x];
		
		if (_filter_use isEqualTo _x) then {((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017) lbSetCurSel _lb};
	} forEach _filters;
	
	if (_filter_use isEqualto "all") then {((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110017) lbSetCurSel 0}; //--- No filter specified? select the default one! (all)
	_list = (missionNamespace getVariable format ["CTI_%1_%2Units", CTI_P_SideJoined, _type]) call CTI_UI_PURCHASE_SortUnitList;

	{
		_var = missionNamespace getVariable _x;
		if !(isNil '_var') then {
			//--- Upgradeable?
			_upgrade_match = [_type, _x] call CTI_UI_Purchase_CheckUnitAvailability;
			_unitfilters = [];
			{
				_unitfilters pushBack (_x);
			} forEach (_var select CTI_UNIT_FILTERUI);
			if (_upgrade_match) then {
				if (_filter_use isEqualTo "all" || _filter_use in _unitfilters) then {
					 _price = _var select CTI_UNIT_PRICE;
					 //check for pylons
					 _isdynamic = "";
					 _unitclass = _var select CTI_UNIT_CLASSNAME;
					 _validPylons = (("isClass _x" configClasses (configfile >> "CfgVehicles" >> _unitclass >> "Components" >> "TransportPylonsComponent" >> "Pylons")) apply {configname _x});
					 if (count _validPylons > 0 ) then {_isdynamic = "DYN";} else {_isdynamic = "";};
					 if (_type in [CTI_DEPOT, CTI_DEPOT_NAVAL, CTI_LARGE_FOB]) then {
						_price = _price call CTI_UI_Purchase_LogisticsTax;
					 };
				    _row = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007) lnbAddRow [format ["$%1", _price], _var select CTI_UNIT_LABEL, format ["%1", _var select CTI_UNIT_UPGRADE], _var select CTI_UNIT_MOD, _isdynamic];
				    ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007) lnbSetData [[_row, 0], _x];
				    ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007) lnbSetPicture [[_row, 0], _var select CTI_UNIT_PICTURE];
				};
			};
		};
	} forEach _list;
	
};

CTI_UI_Purchase_CenterMap = {
	private ["_delay", "_position", "_zoom"];
	_position = _this select 0;
	_delay = _this select 1;
	_zoom = _this select 2;
	
	ctrlMapAnimClear ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110010);
	((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110010) ctrlMapAnimAdd [_delay, _zoom, _position];
	ctrlMapAnimCommit ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110010);
};

CTI_UI_Purchase_UpdateVehicleIcons = {
	private ["_classname", "_IDCs", "_showArray", "_turrets", "_var"];
	_var_name = _this;
	_var = missionNamespace getVariable _var_name;
	_classname = _var select CTI_UNIT_CLASSNAME;

	_IDCs = [110100, 110101, 110102, 110103];
	
	if (_classname isKindOf "Man" || getnumber (configFile >> "CfgVehicles" >> _classname >> "isUAV") == 1) then {
		call CTI_UI_Purchase_HideVehicleIcons;
	} else {
		_turrets = _var select CTI_UNIT_TURRETS;
		_showArray = [true, false, false, false];
		{
			if (count _x isEqualTo 1) then {_showArray set [3, true]};
			if (count _x isEqualTo 2) then {
				switch (_x select 1) do { case "Gunner": {_showArray set [1, true]}; case "Commander": {_showArray set [2, true]}; };
			};
		} forEach _turrets;
		
		for '_i' from 0 to (count _IDCs)-1 do {
			((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl (_IDCs select _i)) ctrlShow (_showArray select _i);  //--- Lock
		};
		
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110104) ctrlShow true;  //--- Lock
	};
	
	(_var_name) call CTI_UI_Purchase_UpdateCost;
};

CTI_UI_Purchase_UpdateCost = {
	_var_name = _this;
	_factoryType  = uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory_type";
	
	_cost = 0;
	
	if !(_var_name isEqualTo "") then {
		_var = missionNamespace getVariable _var_name;
		_classname = _var select CTI_UNIT_CLASSNAME;
		_cost = _var select CTI_UNIT_PRICE;
		if !(_classname isKindOf "Man" || getnumber (configFile >> "CfgVehicles" >> _classname >> "isUAV") == 1) then { //--- Add the vehicle crew cost if applicable
			_crew = switch (true) do { 
				case (_classname isKindOf "Tank"): {"Crew"}; 
				case (_classname isKindOf "Air"): {"Pilot"}; 
				default {"Soldier"};
			};
			_crew = missionNamespace getVariable format["CTI_%1_%2", CTI_P_SideJoined, _crew];
			
			//--- Ultimately if we're dealing with a sub we may want to use divers unless that our current soldiers are free-diving champions
			if (_classname isKindOf "Ship") then {
				if (getText(configFile >> "CfgVehicles" >> _classname >> "simulation") isEqualTo "submarinex") then { _crew = missionNamespace getVariable format["CTI_%1_Diver", CTI_P_SideJoined] };
			};
			
			_var_crew_classname = missionNamespace getVariable _crew;
			if !(isNil '_var_crew_classname') then {
				_veh_infos = call CTI_UI_Purchase_GetVehicleInfo;
				for '_i' from 0 to 2 do { if (_veh_infos select _i) then { _cost = _cost + (_var_crew_classname select CTI_UNIT_PRICE) } };
				
				if (_veh_infos select 3) then { //--- Turrets
					{ if (count _x isEqualTo 1) then { _cost = _cost + (_var_crew_classname select CTI_UNIT_PRICE) } } forEach (_var select CTI_UNIT_TURRETS);
				};
				
			};
		};
	(_var_name) call CTI_UI_Purchase_UpdateDescription;
	};
	if (_factoryType in [CTI_LARGE_FOB, CTI_DEPOT, CTI_DEPOT_NAVAL]) then {
		_cost = _cost call CTI_UI_Purchase_LogisticsTax;
	};
	uiNamespace setVariable ["cti_dialog_ui_purchasemenu_unitcost", _cost];
	((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110014) ctrlSetStructuredText (parseText format["<t align='left'>Cost: <t color='#F56363'>$%1</t></t>", _cost]);
};
CTI_UI_Purchase_UpdateDescription = {
	_var_name = _this;
	_var = missionNamespace getVariable _var_name;
	_classname = _var select CTI_UNIT_CLASSNAME;
	_time = "";
	_isInfantry = if (_classname isKindOf 'Man') then {true} else {false};
	if (_classname != "") then {
		_var = missionNamespace getVariable _classname;
		_price = _var select CTI_UNIT_PRICE;
		_time = _var select CTI_UNIT_TIME;
	};
	_weapons = [];
	_magazines = [];
	if !(_isInfantry) then {
		private _split = _classname call CTI_CO_FNC_GetVehicleTurretWeapons;
		_weapons = (_split select 0) - ['Put','Throw','Horn','CarHorn','SportCarHorn','MiniCarHorn','TruckHorn','TruckHorn2','TruckHorn3','FakeWeapon'];
		_magazines = _split select 1;
	} else {
		_weapons = (getArray (configFile >> 'CfgVehicles' >> _classname >> 'weapons')) - ['Put','Throw','Horn','CarHorn','SportCarHorn','MiniCarHorn','TruckHorn','TruckHorn2','TruckHorn3','FakeWeapon'];
		_magazines = getArray (configFile >> 'CfgVehicles' >> _classname >> 'magazines');
	};
	_weapons = _weapons apply {
		_name = getText (configFile >> 'CfgWeapons' >> _x >> 'displayName');
		_name
	};
	_magazinesUnique = [];
	{_magazinesUnique pushBackUnique _x} forEach _magazines;
	_magazinesCount = [];
	{
		_magazine = _x;
		_magcount = {_magazine isEqualTo _x} count _magazines;
		_name = getText (configFile >> 'CfgMagazines' >> _magazine >> 'displayName');
		_permag = getNumber (configFile >> 'CfgMagazines' >> _magazine >> 'count');
		if (_name isEqualTo "") then {_name = _magazine} else {
			if ((toLower _name find "rnd") isEqualTo -1) then { _magcount = _magcount * _permag; };
		};
		_str = format["%1 X %2", _magcount, _name];
		_magazinesCount pushBack _str;
	} forEach _magazinesUnique;

	//Update large Image - idc - 111014
	//_isPreview = isClass (configFile >> 'CfgVehicles' >> _classname >> "editorPreview");
	//_pic = getText(configFile >> 'CfgVehicles' >> _classname >> "picture");
	_pic = getText(configFile >> 'CfgVehicles' >> _classname >> "editorPreview");
	((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111014) ctrlSetStructuredText (parseText format["<img image='%1'  size='6'/>", _pic]);

	//Update Stat rows - 110020
	lnbClear 110020;
	if !(_isInfantry) then {
		lnbAddRow [110020, ["Classname: ", format ["%1", _classname]]];
		lnbAddRow [110020, ["Build Time: ", format ["%1s", _time]]];
		lnbAddRow [110020, ["Capacity: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'transportSoldier'))]];
		lnbAddRow [110020, ["Max speed: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'maxSpeed'))]];
		lnbAddRow [110020, ["Brake Dist: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'brakeDistance'))]];
		lnbAddRow [110020, ["Max load: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'maximumLoad'))]];
		lnbAddRow [110020, ["Armor: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'armor'))]];
		lnbAddRow [110020, ["Structural: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'armorStructural'))]];
		if(count _weapons > 0) then {lnbAddRow [110020, ["Weapons: ", _weapons joinString " | "]];};
		if(count _weapons > 0) then {lnbAddRow [110020, ["Magazines: ", _magazinesCount joinString " | "]];};
	} else {
		lnbAddRow [110020, ["Classname: ", format ["%1", _classname]]];
		lnbAddRow [110020, ["Build Time: ", format ["%1s", _time]]];
		lnbAddRow [110020, ["Skill: ", format ["%1", getText(configFile >> 'CfgVehicles' >> _classname >> 'displayName')]]];
		lnbAddRow [110020, ["Role: ", format ["%1", getText(configFile >> 'CfgVehicles' >> _classname >> 'role')]]];
		lnbAddRow [110020, ["Accuracy: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'accuracy'))]];
		lnbAddRow [110020, ["Armor: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'armor'))]];
		lnbAddRow [110020, ["Audible: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'audible'))]];
		if(count _weapons > 0) then {lnbAddRow [110020, ["Weapons: ", _weapons joinString " | "]];};
		if(count _weapons > 0) then {lnbAddRow [110020, ["Magazines: ", _magazinesCount joinString " | "]];};
	};
	//update Descriptions - idc - 110019
	//--- Long description.
	if !(_isInfantry) then {
		if (isClass (configFile >> 'CfgVehicles' >> _classname >> 'Library')) then {
			_txt = getText (configFile >> 'CfgVehicles' >> _classname >> 'Library' >> 'libTextDesc');
			((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110019) ctrlSetStructuredText (parseText _txt);
		} else {
			((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110019) ctrlSetStructuredText (parseText '');
		};
	} else {
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110019) ctrlSetStructuredText (parseText '');
	};
};

CTI_UI_Purchase_HideVehicleIcons = {
	private ["_IDCs"];
	_IDCs = [110100, 110101, 110102, 110103, 110104];
	{ ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl _x) ctrlShow false } forEach _IDCs;
};

CTI_UI_Purchase_OnUnitListLoad = {
	private ["_classname"];
	if (lnbCurSelRow 111007 > -1) then {
		_var_name = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007) lnbData [lnbCurSelRow 111007, 0];
		_var = missionNamespace getVariable _var_name;
		_classname = _var select CTI_UNIT_CLASSNAME;
		if !(_classname isEqualTo "") then {
			(_var_name) call CTI_UI_Purchase_UpdateVehicleIcons;
		} else {
			call CTI_UI_Purchase_HideVehicleIcons;
			("") call CTI_UI_Purchase_UpdateCost;
		};
	} else {
		call CTI_UI_Purchase_HideVehicleIcons;
		("") call CTI_UI_Purchase_UpdateCost;
	};
};

CTI_UI_Purchase_LoadFactories = {
	private ["_closest", "_fetched", "_index", "_structures", "_structure_text", "_type", "_var","_depot","_naval_depot","_large_fob"];
	_type = _this select 0;
	_index = if (count _this > 1) then {_this select 1} else {uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory_index"};
	
	_fetched = [];
	
	lbClear ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110009);
	
	if (!(_type isEqualTo CTI_DEPOT) && !(_type isEqualTo CTI_LARGE_FOB) && !(_type isEqualTo CTI_DEPOT_NAVAL)) then {
		_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
		_fetched = [_type, _structures, player, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetSideStructuresByType;
		
		_var = missionNamespace getVariable format ["CTI_%1_%2", CTI_P_SideJoined, _type];
		_structure_text = (_var select CTI_STRUCTURE_LABELS) select 1;
		
		{
			_closest = _x call CTI_CO_FNC_GetClosestTown;
			((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110009) lbAdd format ["%1 - %2 (%3m)", _structure_text, _closest getVariable "cti_town_name", round(_closest distance _x)];
		} forEach _fetched;
	} else {
		switch (_type) do {
			case CTI_DEPOT: {
				_depot = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
				if !(isNull _depot) then {
					_fetched = [_depot];
					
					((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110009) lbAdd format ["Depot - %1", (_depot getVariable "cti_depot") getVariable ["cti_town_name", ""]];
				};
			};
			case CTI_DEPOT_NAVAL: {
				_naval_depot = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestNavalDepot;
				if !(isNull _naval_depot) then {
					_fetched = [_naval_depot];
					
					((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110009) lbAdd format ["Naval Depot - %1", (_naval_depot getVariable "cti_depot") getVariable ["cti_town_name", ""]];
				};
			};
			case CTI_LARGE_FOB: {
				_large_fob = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestLargeFob;
				if !(isNull _large_fob) then {
					_fetched = [_large_fob];
					((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110009) lbAdd format ["Large FOB"];
				};
			};
		};
	};
	
	uiNamespace setVariable ["cti_dialog_ui_purchasemenu_factory", _fetched select 0];
	uiNamespace setVariable ["cti_dialog_ui_purchasemenu_factory_index", _index];
	uiNamespace setVariable ["cti_dialog_ui_purchasemenu_factory_type", _type];
	uiNamespace setVariable ["cti_dialog_ui_purchasemenu_factories", _fetched];
	
	if (count _fetched > 0) then {
		[_fetched select 0, 2, .175] call CTI_UI_Purchase_CenterMap;
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110009) lbSetCurSel 0;
	};
};

CTI_UI_Purchase_SetVehicleIconsColor = {
	private ["_color", "_idc"];
	_idc = 110100;
	{
		_color = [[0.2, 0.2, 0.2, 1], [0.258823529, 0.713725490, 1, 1]] select (uiNamespace getVariable format ["cti_dialog_ui_purchasemenu_vehicon_%1", _x]);
		
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl (_idc + _forEachIndex)) ctrlSetTextColor _color;
	} forEach ['driver','gunner','commander','turrets'];
	
	_color = [[0.2, 0.2, 0.2, 1], [1, 0.22745098, 0.22745098, 1]] select (uiNamespace getVariable "cti_dialog_ui_purchasemenu_vehicon_lock");
	((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110104) ctrlSetTextColor _color;
};

CTI_UI_Purchase_GetVehicleInfo = {
	private ["_idc", "_returned", "_selected"];
	_idc = 110100;
	_returned = [false, false, false, false, false];
	
	// For regular vehicles, return crew and lock info. For UAVs, both crew and lock are not useful.
	if (getnumber (configFile >> "CfgVehicles" >> _classname >> "isUAV") == 0) then {
		{
			_selected = uiNamespace getVariable format ["cti_dialog_ui_purchasemenu_vehicon_%1", _x];
			if (_selected && ctrlShown ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl (_idc + _forEachIndex))) then {_returned set [_forEachIndex, true]};
		} forEach ['driver','gunner','commander','turrets'];
		
		if (uiNamespace getVariable "cti_dialog_ui_purchasemenu_vehicon_lock") then {_returned set [4, true]};
	};
	
	_returned
};