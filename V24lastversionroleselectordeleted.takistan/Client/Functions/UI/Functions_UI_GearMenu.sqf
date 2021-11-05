//--- Display a vehicle's content in the Gear UI
cti_UI_Gear_DisplayInventoryVehicle = {
	private ["_gear", "_list", "_u"];
	_gear = _this;
	
	lnbClear 70109;
	_list = [];
	_u = 0;
	
	{
		_item = _x;
		if !(_item in _list) then {
			_count = {_x == _item} count _gear;
			_config = (_item) call cti_UI_Gear_GetItemBaseConfig;
			lnbAddRow [70109, [format ["x%1", _count], format ["%1", getText(configFile >> _config >> _item >> 'displayName')]]];
			lnbSetPicture [70109, [_u, 0], getText(configFile >> _config >> _item >> 'picture')];
			lnbSetData [70109, [_u, 0], _item];
			lnbSetValue [70109, [_u, 0], _count];
			_list pushBack _item;
			_u = _u + 1;
		};
	} forEach _gear;
};

cti_UI_Gear_AddVehicleItem = {
	private ["_gear", "_item"];
	_gear = _this select 0;
	_item = _this select 1;
	
	_gear pushBack _item;
	
	//--- Update the vehicle's mass
	[_item, "add"] call cti_UI_Gear_UpdateVehicleLoad;
	
	//--- Update the Vehicle container along with the mass
	call cti_UI_Gear_UpdateVehicleContainerProgress;
	(_gear) call cti_UI_Gear_DisplayInventoryVehicle;
	
	true
};

cti_UI_Gear_EnableVehicleOverlay = {
	private ["_startidc"];

	//--- Weapons
	_startidc = 70013;
	
	_default_weapons = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_primary_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_secondary_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_hgun_gs.paa"];
	_default_accs = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa", "\A3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"];
	_default_clothes = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_uniform_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_vest_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa"];
	_default_bin = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_helmet_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_glasses_gs.paa"];
	_default_items = [["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_nvg_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_binocular_gs.paa"], ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_map_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_gps_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_radio_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_compass_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_watch_gs.paa"]];
	
	for '_i' from 0 to 2 do {
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText (_default_weapons select _i);
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip "";
		_startidc = _startidc + 1;
		
		for '_j' from 0 to 3 do {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText (_default_accs select _j);
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip "";
			_startidc = _startidc + 1;
		};
	};
	
	//--- Uniform, Vest and backpack
	for '_i' from 0 to 2 do {
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_i) ctrlSetText (_default_clothes select _i);
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_i) ctrlSetTooltip "";
	};
	
	//--- Accessories
	for '_i' from 0 to 1 do {
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004+_i) ctrlSetText (_default_bin select _i);
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004+_i) ctrlSetTooltip "";
	};
	
	//--- Accessories - specials and items
	_startidc = 70006;
	{
		_index = _forEachIndex;
		{
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText ((_default_items select _index) select _forEachIndex);
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip "";
			_startidc = _startidc + 1;
		} forEach _x;
	} forEach _default_items;
	
	//--- Load the vest/vehicle container
	uiNamespace setVariable ["cti_dialog_ui_gear_items_tab", 0];
	(uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 77001 ctrlSetBackgroundColor [1, 1, 1, 0.4];
	
	{((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15]} forEach [77002, 77003];
	
	//--- Mask the extra containers
	{((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) progressSetPosition 0} forEach [70302, 70303];
};

//--- Update the corresponding RscProgress bar
cti_UI_Gear_UpdateVehicleContainerProgress = {
	private ["_idc"];
	
	_idc = 70301;
	
	_mass = uiNamespace getVariable "cti_dialog_ui_gear_target_gear_mass";
	_container_capacity = _mass select 0;
	_container_items_mass = _mass select 1;
	
	_progress = if (_container_capacity != 0) then {_container_items_mass / _container_capacity} else {0};
	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) progressSetPosition _progress;
	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip (if (_container_capacity != 0) then {Format ["Mass: %1 / %2", _container_items_mass, _container_capacity]} else {""});
};

cti_UI_Gear_UpdateVehicleLoad = {
	private ["_item"];
	_item = _this select 0;
	_operation = _this select 1;
	
	_mass_item = _item call cti_UI_Gear_GetGenericItemMass;
	_mass = uiNamespace getVariable "cti_dialog_ui_gear_target_gear_mass";
	_mass set [1, if (_operation == "delete") then {(_mass select 1) - _mass_item} else {(_mass select 1) + _mass_item}];
};

cti_UI_Gear_GetVehicleLoad = {
	private ["_gear"];
	_gear = _this;
	
	_mass = 0;
	
	{_mass = _mass + (_x call cti_UI_Gear_GetGenericItemMass)} forEach _gear;
	
	_mass
};

//--- Display the gear on the Gear UI
cti_UI_Gear_DisplayInventory = {
	private ["_config_base", "_gear", "_load", "_startidc", "_startidc_current_mag", "_use", "_use_id"];

	_gear = _this;

	//--- Weapons
	_startidc = 70013;
	_startidc_current_mag = 70901;

	_default_weapons = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_primary_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_secondary_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_hgun_gs.paa"];
	_default_accs = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa", "\A3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"];
	_default_clothes = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_uniform_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_vest_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa"];
	_default_bin = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_helmet_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_glasses_gs.paa"];
	_default_items = [["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_nvg_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_binocular_gs.paa"], ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_map_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_gps_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_radio_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_compass_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_watch_gs.paa"]];

	{
		if (_x select 0 != "") then {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText getText(configFile >> 'CfgWeapons' >> _x select 0 >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> _x select 0 >> 'displayName');
		} else {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText (_default_weapons select _forEachIndex);
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip "";
		};
		_startidc = _startidc + 1;

		if (count (_x select 1) > 0) then {
			for '_i' from 0 to 3 do {
				if ((_x select 1) select _i != "") then {
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText getText(configFile >> 'CfgWeapons' >> (_x select 1) select _i >> 'picture');
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> (_x select 1) select _i >> 'displayName');
				} else {
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText (_default_accs select _i);
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip "";
				};
				_startidc = _startidc + 1;
			};
		} else {
			for '_i' from 0 to 3 do {
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText (_default_accs select _i);
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip "";
				_startidc = _startidc + 1;
			};
		};

		if (count(_x select 2) > 0) then {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc_current_mag+_forEachindex) ctrlSetText getText(configFile >> 'CfgMagazines' >> ((_x select 2) select 0) >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc_current_mag+_forEachindex) ctrlSetTooltip getText(configFile >> 'CfgMagazines' >> ((_x select 2) select 0) >> 'displayName');
		} else {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc_current_mag+_forEachindex) ctrlSetText "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_magazine_gs.paa";
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc_current_mag+_forEachindex) ctrlSetTooltip "";
		};
	} forEach (_gear select 0);

	//--- Uniform, Vest and backpack
	{
		if (_x select 0 != "") then {
			_config_base = (_x select 0) call cti_UI_Gear_GetItemBaseConfig;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_forEachIndex) ctrlSetText getText(configFile >> _config_base >> _x select 0 >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_forEachIndex) ctrlSetTooltip getText(configFile >> _config_base >> _x select 0 >> 'displayName');
		} else {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_forEachIndex) ctrlSetText (_default_clothes select _forEachIndex);
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_forEachIndex) ctrlSetTooltip "";
		};
	} forEach (_gear select 1);

	//--- Accessories
	{
		if (_x != "") then {
			_config = if (isClass(configFile >> 'CfgWeapons' >> _x)) then {"CfgWeapons"} else {"CfgGlasses"};
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004+_forEachIndex) ctrlSetText getText(configFile >> _config >> _x >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004+_forEachIndex) ctrlSetTooltip getText(configFile >> _config >> _x >> 'displayName');
		} else {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004+_forEachIndex) ctrlSetText (_default_bin select _forEachIndex);
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004+_forEachIndex) ctrlSetTooltip "";
		};
	} forEach (_gear select 2);

	//--- Accessories - specials and items
	_startidc = 70006;
	{
		_def_root = _forEachIndex;
		{
			if (_x != "") then {
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText getText(configFile >> 'CfgWeapons' >> _x >> 'picture');
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> _x >> 'displayName');
			} else {
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetText ((_default_items select _def_root) select _forEachIndex);
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _startidc) ctrlSetTooltip "";
			};
			_startidc = _startidc + 1;
		} forEach _x;
	} forEach (_gear select 3);

	//--- Unless told otherwise, load the vest content.
	//todo tweak that
	_idcs = [77001,77002,77003];
	_load = [1,0,2];
	_use = [];
	_use_id = 0;
	{
		if (((_gear select 1) select _x) select 0 != "") exitWith {_use = ((_gear select 1) select _x) select 1; _use_id = _x};
	} forEach _load;

	uiNamespace setVariable ["cti_dialog_ui_gear_items_tab", _use_id];
	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (_idcs select _use_id)) ctrlSetBackgroundColor [1, 1, 1, 0.4];

	{
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15];
	} forEach (_idcs - [_idcs select _use_id]);

	(_use) call cti_UI_Gear_DisplayContainerItems;
};

//--- Display the items from a container
cti_UI_Gear_DisplayContainerItems = {
	private ["_config", "_find", "_list", "_item", "_items"];
	_list = _this;

	lnbClear 70109;

	_items = [[], []];
	if (count _list > 0) then {
		{
			_find = (_items select 0) find _x;
			if (_find == -1) then {
				(_items select 0) pushBack _x;
				(_items select 1) pushBack 1;
			} else {
				(_items select 1) set [_find, ((_items select 1) select _find) + 1];
			};
		} forEach _list;
	};

	for '_i' from 0 to count(_items select 0)-1 do {
		_item = (_items select 0) select _i;
		_config = (_item) call cti_UI_Gear_GetItemBaseConfig;

		lnbAddRow [70109, [format ["x%1", (_items select 1) select _i], format ["%1", getText(configFile >> _config >> _item >> 'displayName')]]];
		lnbSetPicture [70109, [_i, 0], getText(configFile >> _config >> _item >> 'picture')]; // listbox of magazines
		lnbSetData [70109, [_i, 0], _item];
		lnbSetValue [70109, [_i, 0], (_items select 1) select _i];
	};
};

//--- Display the shoping tab items
cti_UI_Gear_DisplayShoppingItems = {
	private ["_get", "_list", "_tab", "_upgrade_gear", "_upgrades"];

	_tab = _this;

	(_tab) call cti_UI_Gear_HighlightTab;

	lnbClear 70108;




_list = switch (_tab) do {
            case cti_GEAR_TAB_PRIMARY: {missionNamespace getVariable "cti_gear_list_primary"};
            case cti_GEAR_TAB_SECONDARY: {missionNamespace getVariable "cti_gear_list_secondary"};
            case cti_GEAR_TAB_HANDGUN: {missionNamespace getVariable "cti_gear_list_pistol"};
            case cti_GEAR_TAB_ACCESSORIES: {missionNamespace getVariable "cti_gear_list_accessories"};
            case cti_GEAR_TAB_AMMO: {missionNamespace getVariable "cti_gear_list_magazines"};
            case cti_GEAR_TAB_MISC: {(missionNamespace getVariable "cti_gear_list_special") + (missionNamespace getVariable "cti_gear_list_misc") + (missionNamespace getVariable "cti_gear_list_explosives")};
            case cti_GEAR_TAB_EQUIPMENT: {
                (missionNamespace getVariable "cti_gear_list_uniforms") + (missionNamespace getVariable "cti_gear_list_vests") + (missionNamespace getVariable "cti_gear_list_backpacks") +
                (missionNamespace getVariable "cti_gear_list_headgear") + (missionNamespace getVariable "cti_gear_list_glasses")
            };
            default {missionNamespace getVariable "cti_gear_list_templates"};
        };

	_upgrades = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideUpgrades;
	_upgrade_gear = _upgrades select cti_UP_GEAR;
	_templates = missionNamespace getVariable "cti_gear_list_templates";

        if!(isnil '_templates')then{
            {
                _template = _x;
                _gear = _template select 3;
                _upgrade = -1;
                _current_upgrade_level = 0;
                {
                    if(_upgrade == -1)then{
                        _upgrade = (_x call cti_CO_FNC_GetGearItemUpgradeLevel);
                    }else{
                        _current_upgrade_level = (_x call cti_CO_FNC_GetGearItemUpgradeLevel);
                        if(_upgrade < _current_upgrade_level)then{
                            _upgrade = _current_upgrade_level;
                        };
                    };
                } forEach (_gear call cti_CO_FNC_ConvertGearToFlat);

                if(_upgrade > _upgrade_gear) then{
                    _template set [4, _upgrade];
                    missionNamespace setVariable ["cti_gear_list_templates", _templates];
                    _list set [_forEachIndex, _template]
                }

            }foreach _templates;
        };

		{		
			if ((_x select 4) <= _upgrade_gear) then { //--- Add the template if it's equal or below the upgrade level
				_row = lnbAddRow [70108, [_x select 0, format ["$%1", _x select 2]]];
				if (_x select 1 != "") then {lnbSetPicture [70108, [_row, 1], _x select 1]};
				lnbSetValue [70108, [_row, 0], _x select 4];
			};
		} forEach _list;
	};

	if (lnbCurSelRow 70108 != -1 && lnbCurSelRow 70108 < (lnbSize 70108) select 0) then {
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70108) lnbSetCurSelRow lnbCurSelRow 70108;
	} else {
		lnbClear ((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70601);
	};
};

cti_UI_Gear_HighlightTab = {
	private ["_IDCs", "_index", "_selected"];
	_index = _this;

	_IDCs = [70501, 70502, 70503, 70504, 70505, 70506, 70507, 70508];
	_selected = _IDCs select _index;
	_IDCS = _IDCS - [_selected];

	{
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetTextColor [0.4, 0.4, 0.4, 1];
	} forEach _IDCs;
	// ((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _selected) ctrlSetTextColor [1, 1, 1, 1];
	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _selected) ctrlSetTextColor [0.258823529, 0.713725490, 1, 1];
};

//--- Replace or remove a weapon (Primary, Secondary or Pistol)
cti_UI_Gear_ReplaceWeapon = {
	private ["_accessories", "_changed", "_defaults", "_gear", "_idc", "_index", "_item", "_item_old"];

	_item = _this select 0;
	_index = _this select 1;

	_idc = [70013,70018,70023] select _index;
	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

	_accessories = ((_gear select 0) select _index) select 1;
	_item_old = ((_gear select 0) select _index) select 0;

	_changed = true;

	if (_item != "") then { //--- Replace
		switch (_index) do {
			case 0: { //--- Adding a primary weapon
				if ((_item call cti_UI_Gear_GetItemConfigType) == 5) then { ["", 1] call cti_UI_Gear_ReplaceWeapon }; //--- The launcher is gone if the weapon is considered heavy
			};
			case 1: { //--- Adding a secondary weapon
				_primary = ((_gear select 0) select 0) select 0;
				if (_primary != "") then {
					if ((_primary call cti_UI_Gear_GetItemConfigType) == 5) then { _changed = false }; //--- Heavy primary prevent the launcher from being picked
				};
			};
		};

		if (_changed) then {
			((_gear select 0) select _index) set [0, _item];
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText getText(configFile >> 'CfgWeapons' >> _item >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> _item >> 'displayName');

			//--- Do we keep the ammunitions?
			if (_item_old != "") then {[_item_old, _item] call cti_UI_Gear_CheckMagazines};
		};
	} else { //--- Remove
		_defaults = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_primary_gs.paa","\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_secondary_gs.paa","\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_hgun_gs.paa"];
		(_gear select 0) set [_index, ["", [], [""]]];

		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText (_defaults select _index);
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";

		["", _index, 70901+_index] call cti_UI_Gear_ChangeCurrentMagazine;
	};

	if (_changed) then { [_item, _index, [_idc+1, _idc+2, _idc+3, _idc+4]] call cti_UI_Gear_CheckAccessories }; //--- Do we keep the accessories?
};

//--- Replace a container (Uniform, Vest or Backpack)
cti_UI_Gear_ReplaceContainer = {
	private ["_config_base", "_container", "_current", "_defaults", "_gear", "_item", "_updated"];

	_item = _this select 0;
	_container = _this select 1;
	_updated = false;

	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

	if (_item != "") then {
		_current = ((_gear select 1) select _container) select 0;
		_config_base = (_item) call cti_UI_Gear_GetItemBaseConfig;

		if (_current != _item) then {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_container) ctrlSetText getText(configFile >> _config_base >> _item >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_container) ctrlSetTooltip getText(configFile >> _config_base >> _item >> 'displayName');

			["Container", "", _item, [_container, ((_gear select 1) select _container) select 1]] call cti_UI_Gear_UpdateMass;
			[_container, 70301+_container] call cti_UI_Gear_UpdateContainerProgress; //--- Update the Mass RscProgress

			(_gear select 1) set [_container, [_item,[]]];
			_updated = true;
		};
	} else {
		if ((((_gear select 1) select _container) select 0) != "") then {
			_defaults = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_uniform_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_vest_gs.paa", "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa"];

			["Container", "", _item, [_container, ((_gear select 1) select _container) select 1]] call cti_UI_Gear_UpdateMass;

			(_gear select 1) set [_container, [_item,[]]];

			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_container) ctrlSetText (_defaults select _container);
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001+_container) ctrlSetTooltip "";

			[_container, 70301+_container] call cti_UI_Gear_UpdateContainerProgress;
			_updated = true;
		};
	};

	if ((uiNamespace getVariable "cti_dialog_ui_gear_items_tab") == _container) then {(((_gear select 1) select _container) select 1) call cti_UI_Gear_DisplayContainerItems};

	_updated
};

cti_UI_Gear_TryContainerAddItem = {
	private ["_container", "_item", "_updated"];

	_item = _this select 0;
	_container = if (count _this > 1) then {_this select 1} else {uiNamespace getVariable "cti_dialog_ui_gear_items_tab"};
	_updated = false;
	if ([_item, _container] call cti_UI_Gear_CanAddItemWithMass) then {
		[_item, _container] call cti_UI_Gear_AddContainerItem;
		["ContainerItem", "", _item, [_container]] call cti_UI_Gear_UpdateMass; //--- Update the mass.
		[_container, 70301+_container] call cti_UI_Gear_UpdateContainerProgress; //--- Update the Mass RscProgress
		_updated = true;
	};

	_updated
};

//--- Item add attempt
cti_UI_Gear_AddItem = {
	private ["_current", "_get", "_gear", "_index", "_item", "_slot", "_sub_type", "_type", "_updated"];

	_item = toLower(_this);

	_get = missionNamespace getVariable format["cti_%1", _item];
	_updated = false;

	if !(isNil '_get') then {
		//--- Depending on the item, we do different checks.
		_type = if (typeName (_get select 1) == "STRING") then {_get select 1} else {(_get select 1) select 0};
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

		switch (_type) do {
			case "Rifle": { //--- Primary
				[_item, 0] call cti_UI_Gear_ReplaceWeapon;
				_updated = true;
			};
			case "Launcher": { //--- Secondary
				[_item, 1] call cti_UI_Gear_ReplaceWeapon;
				_updated = true;
			};
			case "Pistol": { //--- Handgun
				[_item, 2] call cti_UI_Gear_ReplaceWeapon;
				_updated = true;
			};
			case "Rifle 2H": { //--- Two handed rifle, no launchers
				[_item, 0] call cti_UI_Gear_ReplaceWeapon;
				["", 1] call cti_UI_Gear_ReplaceWeapon;
				_updated = true;
			};
			case "Equipment": { //--- Binoc... NVG...
				//--- Simulation?
				_index = if (getText(configFile >> 'CfgWeapons' >> _item >> 'simulation') == "NVGoggles") then {0} else {1};
				_current = ((_gear select 3) select 0) select _index;

				if (_current != _item) then { //--- Replace
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (70006+_index)) ctrlSetText getText(configFile >> 'CfgWeapons' >> _item >> 'picture');
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (70006+_index)) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> _item >> 'displayName');

					((_gear select 3) select 0) set [_index, _item];
					_updated = true;
				};
			};
			case "Item": { //--- Uniform, vest, helm, gps, compass, toolkit...
				_sub_type = if (typeName (_get select 1) == "STRING") then {_get select 1} else {(_get select 1) select 1};

				switch (true) do {
					case (_sub_type in ["","BaseItem"]): {
						_slot = switch (getText(configFile >> 'CfgWeapons' >> _item >> 'simulation')) do {
							case "ItemMap": {0};
							case "ItemGPS": {1};
							case "ItemRadio": {2};
							case "ItemCompass": {3};
							case "ItemWatch": {4};
							default {-1};
						};

						if (_slot != -1) then { //--- Special item
							_current = ((_gear select 3) select 1) select _slot;

							if (_current != _item) then {
								((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (70008+_slot)) ctrlSetText getText(configFile >> 'CfgWeapons' >> _item >> 'picture');
								((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (70008+_slot)) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> _item >> 'displayName');

								((_gear select 3) select 1) set [_slot, _item];
								_updated = true;
							};
						} else { //--- Stock item
							_updated = [_item] call cti_UI_Gear_TryContainerAddItem;
						};
					};
					case (_sub_type in ["Acc-Muzzle","Acc-Optics","Acc-Side","Acc-Bipod"]): {
						// _updated = [_item] call cti_UI_Gear_TryContainerAddItem;
						
						//--- Try to equip it.
						_updated = [_item, _sub_type] call cti_UI_Gear_TryEquipAccessory;
						
					};
					case (_sub_type == "Item"): {
						_updated = [_item] call cti_UI_Gear_TryContainerAddItem;
					};
					case (_sub_type == "Headgear"): {
						_current = (_gear select 2) select 0;

						if (_current != _item) then {
							((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004) ctrlSetText getText(configFile >> 'CfgWeapons' >> _item >> 'picture');
							((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70004) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> _item >> 'displayName');

							(_gear select 2) set [0, _item];
							_updated = true;
						};
					};
					case (_sub_type in ["Uniform","Vest"]): {
						_updated = [_item, if (_sub_type == "Uniform") then {0} else {1}] call cti_UI_Gear_ReplaceContainer;
					};
				};
			};
			case "Magazines": {
				_updated = [_item] call cti_UI_Gear_TryContainerAddItem;
			};
			case "Backpack": {
				_updated = [_item, 2] call cti_UI_Gear_ReplaceContainer;
			};
			case "Goggles": {
				_current = (_gear select 2) select 1;

				if (_current != _item) then {
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70005) ctrlSetText getText(configFile >> 'CfgGlasses' >> _item >> 'picture');
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70005) ctrlSetTooltip getText(configFile >> 'CfgGlasses' >> _item >> 'displayName');

					(_gear select 2) set [1, _item];
					_updated = true;
				};
			};
		};
	};

	_updated
};

cti_UI_Gear_TryEquipAccessory = {
	private["_accessory", "_gear"];
	
	_accessory = _this select 0;
	_sub_type = _this select 1;
	
	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
	
	//--- Retrieve the matching config element
	_config_properties_acc = ["MuzzleSlot","PointerSlot","CowsSlot","UnderBarrelSlot"];
	_config_properties = ["Acc-Muzzle","Acc-Side","Acc-Optics","Acc-Bipod"];
	
	_index_acc = _config_properties find _sub_type;
	_config = _config_properties_acc select _index_acc;
	_idcs_acc_start = [70014, 70019, 70024]; //--- Muzzle IDCs
	
	//--- Check each weapons
	_match = false;
	{
		if (_x select 0 != "") then {
			//--- Check if the accessory is already equiped or not
			_do_check = true;
			if (count(_x select 1) > 0) then {
				if ((_x select 1) select _index_acc == _accessory) then {_do_check = false};
			};
			
			//--- Check if the accessory is compatible with this weapon
			if (_do_check) then {
				_compatibleItems = (getArray(configFile >> 'CfgWeapons' >> (_x select 0) >> 'WeaponSlotsInfo' >> _config >> 'compatibleItems') call cti_CO_FNC_ArrayToLower);
				{_compatibleItems pushBack toLower(configName _x)} forEach (configProperties[configfile >> "CfgWeapons" >> (_x select 0) >> "WeaponSlotsInfo" >> _config >> "compatibleItems", "true", true]);
				
				if (_accessory in _compatibleItems) then { //--- On match, equip the accessory
					_match = true;
					(((_gear select 0) select _forEachIndex) select 1) set [_index_acc, _accessory];
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl ((_idcs_acc_start select _forEachIndex)+_index_acc)) ctrlSetText getText(configFile >> 'CfgWeapons' >> _accessory >> 'picture');
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl ((_idcs_acc_start select _forEachIndex)+_index_acc)) ctrlSetTooltip getText(configFile >> 'CfgWeapons' >> _accessory >> 'displayName');
				};
			};
		};
		
		if (_match) exitWith {};
	} forEach (_gear select 0);
	
	_match
};

//--- Add an item within a container.
cti_UI_Gear_AddContainerItem = {
	private["_config", "_exists", "_gear", "_index", "_item", "_items", "_row"];

	_item = _this select 0;
	_index = _this select 1;

	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

	_items = ((_gear select 1) select _index) select 1;
	_items = _items + [_item];
	((_gear select 1) select _index) set [1, _items];

	if (_index == uiNamespace getVariable "cti_dialog_ui_gear_items_tab") then {
		_exists = -1;
		for '_i' from 0 to ((lnbSize 70109) select 0)-1 do {
			if (lnbData[70109, [_i, 0]] == _item) exitWith {_exists = _i};
		};

		if (_exists != -1) then {
			lnbSetValue [70109, [_exists,0], lnbValue[70109,[_exists,0]] + 1];
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70109) lnbSetText [[_exists, 0], format["x%1", lnbValue[70109,[_exists,0]]]];
		} else {
			_config = (_item) call cti_UI_Gear_GetItemBaseConfig;
			_row = lnbAddRow [70109, ["x1", format ["%1", getText(configFile >> _config >> _item >> 'displayName')]]];
			lnbSetPicture [70109, [_row, 0], getText(configFile >> _config >> _item >> 'picture')];
			lnbSetData [70109, [_row, 0], _item];
			lnbSetValue [70109, [_row, 0], 1];
		};
	};
};

//--- Determine if an item can be added to a container based on it's mass and the one of the container.
cti_UI_Gear_CanAddItemWithMass = {
	private["_index", "_item", "_mass", "_mass_capacity_container", "_mass_item", "_mass_items_container"];
	_item = _this select 0;
	_index = _this select 1;

	_mass = uiNamespace getVariable "cti_dialog_ui_gear_target_gear_mass";
	
	_mass_item = (_item) call cti_UI_Gear_GetGenericItemMass;
	_mass_items_container = ((_mass select 1) select _index) select 0;
	_mass_capacity_container = ((_mass select 1) select _index) select 1;

	if (_mass_item + _mass_items_container <= _mass_capacity_container) then {true} else {false}
};

//--- Check whether accessories shall be kept after changing a weapon or not
cti_UI_Gear_CheckAccessories = {
	private ["_defaults", "_defaults_process", "_gear", "_index", "_idcs", "_item"];

	_item = _this select 0;
	_index = _this select 1;
	_idcs = _this select 2;

	_defaults = ["\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa","\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa","\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa", "\A3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"];
	_defaults_process = [];

	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
	if (_item == "" || count(((_gear select 0) select _index) select 1) == 0) then {
		((_gear select 0) select _index) set [1, []];
		_defaults_process = [0,1,2];
	} else {
		_config_properties = ["MuzzleSlot","PointerSlot","CowsSlot","UnderBarrelSlot"];

		for '_i' from 0 to 3 do {
			_compatibleItems = (getArray(configFile >> 'CfgWeapons' >> _item >> 'WeaponSlotsInfo' >> _config_properties select _i >> 'compatibleItems') call cti_CO_FNC_ArrayToLower);
			{_compatibleItems pushBack toLower(configName _x)} forEach (configProperties[configfile >> "CfgWeapons" >> _item >> "WeaponSlotsInfo" >> _config_properties select _i >> "compatibleItems", "true", true]);
			
			if !(toLower((((_gear select 0) select _index) select 1) select _i) in _compatibleItems) then {
				(((_gear select 0) select _index) select 1) set [_i, ""];
				_defaults_process = _defaults_process + [_i];
			};
		};
	};

	{
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (_idcs select _x)) ctrlSetText (_defaults select _x);
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (_idcs select _x)) ctrlSetTooltip "";
	} forEach _defaults_process;
};

//--- Check whether magazines shall be kept after changing a weapon or not
cti_UI_Gear_CheckMagazines = {
	private ["_gear", "_magazines", "_magazines_old", "_replace", "_weapon", "_weapon_old"];

	_weapon_old = _this select 0;
	_weapon = _this select 1;

	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

	_magazines_old = (getArray(configFile >> 'CfgWeapons' >> _weapon_old >> 'magazines')) call cti_CO_FNC_ArrayToLower;
	_magazines = (getArray(configFile >> 'CfgWeapons' >> _weapon >> 'magazines')) call cti_CO_FNC_ArrayToLower;

	_replace = [];
	{
		if (_x in _magazines_old && !(_x in _magazines) && !(_x in _replace)) then {
			_replace pushBack _x;
		};
	} forEach ((((_gear select 1) select 0) select 1) + (((_gear select 1) select 1) select 1) + (((_gear select 1) select 2) select 1));

	if (count _replace > 0) then {
		private ["_container_capacity", "_container_items_mass", "_count", "_current_magazine", "_expected_mass", "_freespace", "_items", "_magazine_new", "_magazine_new_mass", "_return"];
		_magazine_new = _magazines select 0;
		_magazine_new_mass = (_magazine_new) call cti_UI_Gear_GetGenericItemMass;

		for '_i' from 2 to 0 step -1 do {
			_items = ((_gear select 1) select _i) select 1;
			for '_j' from 0 to count(_items)-1 do {
				if(count _items > 0 && _j <= count _items) then
				{
				if ((_items select _j) in _replace) then {
					["ContainerItem", _items select _j, "", [_i]] call cti_UI_Gear_UpdateMass;
					[_i, 70301+_i] call cti_UI_Gear_UpdateContainerProgress;
					_items deleteAt _j;
						_j = _j - 1;						
					};				
				};
			};

			((_gear select 1) select _i) set [1, _items];
			_return = [((_gear select 1) select _i) select 0, _items] call cti_UI_Gear_GetContainerMass;
			_container_items_mass = _return select 1;
			_container_capacity = _return select 2;

			//--- Determine how much new magazines we can fill.
			_freespace = _container_capacity - _container_items_mass;
			_expected_mass = _count * _magazine_new_mass;

			while { _expected_mass > _freespace && _expected_mass > 0 } do { _expected_mass = _expected_mass - _magazine_new_mass };

			if (_expected_mass > 0) then {
				for '_k' from 1 to (_expected_mass/_magazine_new_mass) do {
					[_magazine_new, _i] call cti_UI_Gear_AddContainerItem;
					["ContainerItem", "", _magazine_new, [_i]] call cti_UI_Gear_UpdateMass;
				};
				[_i, 70301+_i] call cti_UI_Gear_UpdateContainerProgress;
			};

			_current_magazine = ((_gear select 0) select _i) select 2;
			if (count _current_magazine > 0) then {
				if ((_current_magazine select 0) in _replace) then {
					[_magazine_new, _i, 70901+_i] call cti_UI_Gear_ChangeCurrentMagazine;
				};
			};
		};
	
		(((_gear select 1) select (uiNamespace getVariable "cti_dialog_ui_gear_items_tab")) select 1) call cti_UI_Gear_DisplayContainerItems;
	};
	
};

//--- Get the mass of/from/in a container
cti_UI_Gear_GetContainerMass = {
	private["_container", "_container_capacity", "_container_items_mass", "_container_mass", "_items"];

	_container = _this select 0;
	_items = _this select 1;

	_container_mass = (_container) call cti_UI_Gear_GetGenericItemMass;
	_container_capacity = (_container) call cti_UI_Gear_GetContainerMassCapacity;
	_container_items_mass = (_items) call cti_UI_Gear_GetItemsMass;

	[_container_mass, _container_items_mass, _container_capacity]
};

//--- Return the initial mass of a unit from it's stored gear along with the separate containers mass
cti_UI_Gear_GetTotalMass = {
	private["_backpack_items_capacity", "_backpack_items_mass", "_gear", "_generic_mass", "_item", "_mass", "_uniform_items_capacity", "_uniform_items_mass", "_vest_items_capacity", "_vest_items_mass"];

	_gear = _this;
	_generic_mass = 0;

	//--- Equipment
	_mass = [((_gear select 1) select 0) select 0, ((_gear select 1) select 0) select 1] call cti_UI_Gear_GetContainerMass;
	_uniform_items_mass = _mass select 1;
	_uniform_items_capacity = _mass select 2;
	_generic_mass = _generic_mass + (_mass select 0) + _uniform_items_mass;

	_mass = [((_gear select 1) select 1) select 0, ((_gear select 1) select 1) select 1] call cti_UI_Gear_GetContainerMass;
	_vest_items_mass = _mass select 1;
	_vest_items_capacity = _mass select 2;
	_generic_mass = _generic_mass + (_mass select 0) + _vest_items_mass;

	_mass = [((_gear select 1) select 2) select 0, ((_gear select 1) select 2) select 1] call cti_UI_Gear_GetContainerMass;
	_backpack_items_mass = _mass select 1;
	_backpack_items_capacity = _mass select 2;
	_generic_mass = _generic_mass + (_mass select 0) + _backpack_items_mass;

	//--- Headgear
	_item = (_gear select 2) select 0;
	_generic_mass = _generic_mass + (if (_item != "") then {getNumber(configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "mass")} else {0});

	//--- Glasses
	_item = (_gear select 2) select 1;
	_generic_mass = _generic_mass + (if (_item != "") then {getNumber(configFile >> "CfgGlasses" >> _item >> "mass")} else {0});

	//--- Special and items
	_generic_mass = _generic_mass + (((_gear select 3) select 0) call cti_UI_Gear_GetItemsMass) + (((_gear select 3) select 1) call cti_UI_Gear_GetItemsMass);

	//--- Weapons
	for '_i' from 0 to 2 do {
		_item = ((_gear select 0) select _i) select 0;
		if (_item != "") then {
			_generic_mass = _generic_mass + getNumber(configFile >> "CfgWeapons" >> _item >> "WeaponSlotsInfo" >> "mass");

			{
				if (_x != "") then {_generic_mass = _generic_mass + getNumber(configFile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")};
			} forEach (((_gear select 0) select _i) select 1);
		};
	};

	[_generic_mass, [[_uniform_items_mass, _uniform_items_capacity], [_vest_items_mass, _vest_items_capacity], [_backpack_items_mass, _backpack_items_capacity]]]
};

//--- Update the corresponding RscProgress bar
cti_UI_Gear_UpdateContainerProgress = {
	private["_container_capacity", "_container_items_mass", "_idc", "_index", "_mass", "_progress"];

	_index = _this select 0;
	_idc = _this select 1;

	_mass = uiNamespace getVariable "cti_dialog_ui_gear_target_gear_mass";
	_container_items_mass = ((_mass select 1) select _index) select 0;
	_container_capacity = ((_mass select 1) select _index) select 1;

	_progress = if (_container_capacity != 0) then {_container_items_mass / _container_capacity} else {0};
	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) progressSetPosition _progress;
	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip (if (_container_capacity != 0) then {Format ["Mass: %1 / %2", ((_mass select 1) select _index) select 0, ((_mass select 1) select _index) select 1]} else {""});
};

cti_UI_Gear_GetItemsMass = {
	private["_items", "_mass"];

	_items = _this;

	_mass = 0;
	{if (_x != "") then {_mass = _mass + (_x call cti_UI_Gear_GetGenericItemMass)}} forEach _items;

	_mass
};

//--- Return the mass carrying capacity of a cargo item (uniform, vest or backpack)
cti_UI_Gear_GetContainerMassCapacity = {
	private["_base", "_container", "_item"];

	_item = _this;

	if (_item == "") exitWith {0};

	_base = (_item) call cti_UI_Gear_GetItemBaseConfig;

	if (_base == "CfgVehicles") then {
		getNumber(configFile >> "CfgVehicles" >> _item >> "maximumLoad");
	} else {
		_container = getText(configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "containerClass");
		getNumber(configFile >> "CfgVehicles" >> _container >> "maximumLoad");
	};
};

//--- Get the config of an item
cti_UI_Gear_GetItemBaseConfig = {
	switch (true) do { //--- Determine the kind of item that we're dealing with
		case (isClass (configFile >> 'CfgWeapons' >> _this)): {"CfgWeapons"};
		case (isClass (configFile >> 'CfgMagazines' >> _this)): {"CfgMagazines"};
		case (isClass (configFile >> 'CfgVehicles' >> _this)): {"CfgVehicles"};
		case (isClass (configFile >> 'CfgGlasses' >> _this)): {"CfgGlasses"};
		default {"nil"};
	}
};

//--- Return the mass of an generic item
cti_UI_Gear_GetGenericItemMass = {
	private["_config_type","_item","_mass"];

	_item = _this;

	_config_type = (_item) call cti_UI_Gear_GetItemBaseConfig;
	_mass = 0;
	_type = getNumber(configFile >> _config_type >> _item >> "type");

	switch (_config_type) do {
		case "CfgWeapons": {
			if (_type != cti_TYPE_ITEM) then {
				_mass = getNumber(configFile >> _config_type >> _item >> "WeaponSlotsInfo" >> "mass");
			} else {
				_mass = getNumber(configFile >> _config_type >> _item >> "ItemInfo" >> "mass");
			};
		};
		case "CfgMagazines": {_mass = getNumber(configFile >> _config_type >> _item >> "mass")};
		case "CfgVehicles": {_mass = getNumber(configFile >> _config_type >> _item >> "mass")};
		case "CfgGlasses": {_mass = getNumber(configFile >> _config_type >> _item >> "mass")};
	};

	_mass
};

//--- Update the mass of an inventory's part (+/-). TODO: Find the thin-air value that's used to define infantry maximum load
cti_UI_Gear_UpdateMass = {
	private["_extra","_item_new","_item_old","_mass","_mass_new","_mass_old","_part"];

	_part = _this select 0;
	_item_old = _this select 1;
	_item_new = _this select 2;
	_extra = if (count _this > 3) then {_this select 3} else {[]};

	_mass = uiNamespace getVariable "cti_dialog_ui_gear_target_gear_mass";
	_mass_old = if (_item_old != "") then {(_item_old) call cti_UI_Gear_GetGenericItemMass} else {0};
	_mass_new = if (_item_new != "") then {(_item_new) call cti_UI_Gear_GetGenericItemMass} else {0};

	switch (_part) do {
		case "Container": { //--- Update either, the uniform, vest or backpack
			_extra_index = _extra select 0;
			_extra_items = _extra select 1;

			_mass_recal = [_item_new, _extra_items] call cti_UI_Gear_GetContainerMass;
			_extra_items_mass = _mass_recal select 1;
			_extra_items_capacity = _mass_recal select 2;

			_mass_delta = _extra_items_mass - (((_mass select 1) select _extra_index) select 0);

			_mass set [0, (_mass select 0) + _mass_delta];
			((_mass select 1) select _extra_index) set [0, _mass_delta];
			((_mass select 1) select _extra_index) set [1, _extra_items_capacity];
		};
		case "ContainerItem": {
			_extra_index = _extra select 0;

			((_mass select 1) select _extra_index) set [0, (((_mass select 1) select _extra_index) select 0) - _mass_old + _mass_new];
		};
	};
};

cti_UI_Gear_GetItemAllowedSlots = {
	_item = _this;

	_config_type = (_item) call cti_UI_Gear_GetItemBaseConfig;
	_allowedInto = [];
	_type = getNumber(configFile >> _config_type >> _item >> "type");

	switch (_config_type) do {
		case "CfgWeapons": {
			if (_type != cti_TYPE_ITEM) then {
				_allowedInto = getArray(configFile >> _config_type >> _item >> 'WeaponSlotsInfo' >> 'allowedSlots');
			} else {
				_sub_type = getNumber(configFile >> _config_type >> _item >> 'ItemInfo' >> 'type');
				_allowedInto = switch (true) do {
					case (_sub_type in [cti_SUBTYPE_VEST, cti_SUBTYPE_UNIFORM]): {getArray(configFile >> _config_type >> _item >> 'allowedSlots')};
					default {getArray(configFile >> _config_type >> _item >> 'ItemInfo' >> 'allowedSlots')};
				};
			};
		};
		case "CfgMagazines": {_allowedInto = [cti_SUBTYPE_VEST, cti_SUBTYPE_UNIFORM, cti_SUBTYPE_BACKPACK]};
		case "CfgVehicles": {_allowedInto = getArray(configFile >> _config_type >> _item >> 'allowedSlots')};
		case "CfgGlasses": {_allowedInto = [cti_SUBTYPE_VEST, cti_SUBTYPE_UNIFORM, cti_SUBTYPE_BACKPACK]};
	};

	if (count _allowedInto == 0) then {_allowedInto = [cti_SUBTYPE_VEST, cti_SUBTYPE_UNIFORM, cti_SUBTYPE_BACKPACK]}; //--- Default

	[_allowedInto, _config_type]
};

//--- An item from the purchase list is being dragged around
cti_UI_Gear_OnShoppingItemDrag = {
	_item = _this;

	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
	_idcs = [];
	_idcs_red = [];
	
	if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
		_tab = uiNamespace getVariable "cti_dialog_ui_gear_items_tab";
		
		_get = (_item) call cti_UI_Gear_GetItemAllowedSlots;
	_slots = _get select 0;
	_config_type = _get select 1;

	_translated = [[cti_SUBTYPE_UNIFORM, 77001, ((_gear select 1) select 0) select 0],[cti_SUBTYPE_VEST, 77002, ((_gear select 1) select 1) select 0],[cti_SUBTYPE_BACKPACK, 77003, ((_gear select 1) select 2) select 0]];

	//--- Determine where the item may be parked.
	switch (_config_type) do {
		case "CfgMagazines": { //todo, current mag!
			_gear_sub = _gear select 1;

			for '_i' from 0 to 2 do {if ((_gear_sub select _i) select 0 != "") then { _idcs = _idcs + [77001+_i]; if (_tab == _i) then {_idcs = _idcs + [77109]}} };

			// current magazine
			//--- Is there a primary weapon?
			for '_i' from 0 to 2 do {
				_gear_sub = (_gear select 0) select _i;

				if (_gear_sub select 0 != "") then { //--- There is a weapon
					_magazines = (getArray(configFile >> 'CfgWeapons' >> (_gear_sub select 0) >> 'magazines')) call cti_CO_FNC_ArrayToLower;

					if (_item in _magazines) then {	_idcs = _idcs + [77901+_i] };
				};
			};
		};
		case "CfgGlasses": {
			_idcs = [77005];

			_gear = _gear select 1;

			for '_i' from 0 to 2 do {if ((_gear select _i) select 0 != "") then { _idcs = _idcs + [77001+_i]; if (_tab == _i) then {_idcs = _idcs + [77109]}} };
		};
		case "CfgVehicles": {
			{
				for '_i' from 0 to count(_translated)-1 do {
					if (_x == ((_translated select _i) select 0) && ((_translated select _i) select 2) != "") then {_idcs = _idcs + [(_translated select _i) select 1]; if (_tab == _i) then {_idcs = _idcs + [77109]}};
				};
			} forEach _slots;
			_idcs = _idcs + [77003];
		};
		case "CfgWeapons": {
			_type = getNumber(configFile >> _config_type >> _item >> "type");
			{
				for '_i' from 0 to count(_translated)-1 do {
					if (_x == ((_translated select _i) select 0) && ((_translated select _i) select 2) != "") then {_idcs = _idcs + [(_translated select _i) select 1]; if (_tab == _i) then {_idcs = _idcs + [77109]}};
				};
			} forEach _slots;

			//--- Specific to item
			switch (true) do {
				//todo, rifle & rifle2h separation > secondary unavailable
				case (_type in [cti_TYPE_RIFLE, cti_TYPE_RIFLE2H]): {_idcs = _idcs + [77013]};
				case (_type == cti_TYPE_LAUNCHER): {_idcs = _idcs + [77018]};
				case (_type == cti_TYPE_PISTOL): {_idcs = _idcs + [77023]};
				case (_type == cti_TYPE_EQUIPMENT): {
					_idcs = _idcs + [if (getText(configFile >> 'CfgWeapons' >> _item >> 'simulation') == "NVGoggles") then {77006} else {77007}]
				};
				case (_type == cti_TYPE_ITEM): {
					switch (getNumber(configFile >> _config_type >> _item >> 'ItemInfo' >> 'type')) do {
							case cti_SUBTYPE_ACC_MUZZLE: {
								_acc_idcs = [77014, 77019, 77024];
								//--- Where does it fit?
								{
									if ((_x select 0) != "") then { //--- Muzzle is an array
										_compatibleItems = (getArray(configFile >> _config_type >> (_x select 0) >> 'WeaponSlotsInfo' >> 'MuzzleSlot' >> 'compatibleItems') call cti_CO_FNC_ArrayToLower);
										{_compatibleItems pushBack toLower(configName _x)} forEach (configProperties[configfile >> _config_type >> (_x select 0) >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems", "true", true]);
										if (_item in _compatibleItems) then {_idcs = _idcs + [_acc_idcs select _forEachIndex]};
										// if (_item in (getArray(configFile >> _config_type >> (_x select 0) >> 'WeaponSlotsInfo' >> 'MuzzleSlot' >> 'compatibleItems') call cti_CO_FNC_ArrayToLower)) then {_idcs = _idcs + [_acc_idcs select _forEachIndex]};
									};
								} forEach (_gear select 0);
							};
							case cti_SUBTYPE_ACC_SIDE: {
								_acc_idcs = [77015, 77020, 77025];
								
							//--- Where does it fit?
							{
									if ((_x select 0) != "") then { //--- Side is a subclass
										_compatibleItems = (getArray(configFile >> _config_type >> (_x select 0) >> 'WeaponSlotsInfo' >> 'PointerSlot' >> 'compatibleItems') call cti_CO_FNC_ArrayToLower);
										{_compatibleItems pushBack toLower(configName _x)} forEach (configProperties[configfile >> _config_type >> (_x select 0) >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleItems", "true", true]);
										if (_item in _compatibleItems) then {_idcs = _idcs + [_acc_idcs select _forEachIndex]};
								};
							} forEach (_gear select 0);
						};
						case cti_SUBTYPE_ACC_OPTIC: {
							_acc_idcs = [77016, 77021, 77026];
							//--- Where does it fit?
							{
									if ((_x select 0) != "") then { //--- Optics is a subclass
										_compatibleItems = (getArray(configFile >> _config_type >> (_x select 0) >> 'WeaponSlotsInfo' >> 'CowsSlot' >> 'compatibleItems') call cti_CO_FNC_ArrayToLower);
										{_compatibleItems pushBack toLower(configName _x)} forEach (configProperties[configfile >> _config_type >> (_x select 0) >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems", "true", true]);
										if (_item in _compatibleItems) then {_idcs = _idcs + [_acc_idcs select _forEachIndex]};
								};
							} forEach (_gear select 0);
						};
						case cti_SUBTYPE_ACC_BIPOD: {
							_acc_idcs = [77017, 77022, 77027];
							//--- Where does it fit?
							{
									if ((_x select 0) != "") then { //--- Optics is a subclass
										_compatibleItems = (getArray(configFile >> _config_type >> (_x select 0) >> 'WeaponSlotsInfo' >> 'UnderBarrelSlot' >> 'compatibleItems') call cti_CO_FNC_ArrayToLower);
										{_compatibleItems pushBack toLower(configName _x)} forEach (configProperties[configfile >> _config_type >> (_x select 0) >> "WeaponSlotsInfo" >> "UnderBarrelSlot" >> "compatibleItems", "true", true]);
										if (_item in _compatibleItems) then {_idcs = _idcs + [_acc_idcs select _forEachIndex]};
								};
							} forEach (_gear select 0);
						};
						case cti_SUBTYPE_HEADGEAR: {_idcs = _idcs + [77004]};
						case cti_SUBTYPE_VEST: {_idcs = _idcs + [77002]};
						case cti_SUBTYPE_UNIFORM: {_idcs = _idcs + [77001]};
						case cti_SUBTYPE_UAVTERMINAL: {_idcs = _idcs + [77009]};
						default {
							switch (getText(configFile >> _config_type >> _item >> 'simulation')) do {
								case "ItemMap": {_idcs = _idcs + [77008]};
								case "ItemGPS": {_idcs = _idcs + [77009]};
								case "ItemRadio": {_idcs = _idcs + [77010]};
								case "ItemCompass": {_idcs = _idcs + [77011]};
								case "ItemWatch": {_idcs = _idcs + [77012]};
							};
						};
					};
				};
			};
		};
	};
	} else {
		_mass = uiNamespace getVariable "cti_dialog_ui_gear_target_gear_mass";
		_mass_item = _item call cti_UI_Gear_GetGenericItemMass;
		
		if (_mass_item + (_mass select 1) <= (_mass select 0)) then {
			_idcs = [77109];
		} else {
			_idcs_red = [77109];
		};
	};

	{
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [0.258823529, 0.713725490, 1, 0.7];
	} forEach _idcs;

	{
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 0.258823529, 0.258823529, 0.7];
	} forEach _idcs_red;
	
	uiNamespace setVariable ["cti_dialog_ui_gear_drag_colored_idc", _idcs];
	uiNamespace setVariable ["cti_dialog_ui_gear_drag_colored_idc_red", _idcs_red];
};

//--- An item from the purchase list is being dropped.
cti_UI_Gear_OnShoppingItemDrop = {
	private ["_config_type", "_current", "_gear", "_gear_index", "_gear_set", "_idc", "_item", "_kind", "_path", "_updated"];

	_idc = _this select 0;
	_item = _this select 1;
	_kind = _this select 2;
	_path = _this select 3;

	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

	_updated = false;

	if (_idc in (uiNamespace getVariable "cti_dialog_ui_gear_drag_colored_idc")) then { //--- Allowed action
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
		_current = "!nil!";
		_gear_index = -1;
		_gear_set = [];

		switch (_kind) do {
			case "HeadAsset": {
				_current = (_gear select (_path select 0)) select (_path select 1);
				_gear_set = _gear select (_path select 0);
				_gear_index = _path select 1;
			};
			case "Item": {
				_current = ((_gear select (_path select 0)) select (_path select 1)) select (_path select 2);
				_gear_set = (_gear select (_path select 0)) select (_path select 1);
				_gear_index = _path select 2;
			};
			case "Accessory": {
				_current = ((_gear select (_path select 0)) select (_path select 1)) select (_path select 2);
					if (count _current == 0) then {_current = ["","","",""];((_gear select (_path select 0)) select (_path select 1)) set [_path select 2, ["","","",""]]};
				_current = _current select (_path select 3);
				_gear_set = ((_gear select (_path select 0)) select (_path select 1)) select (_path select 2);
				_gear_index = _path select 3;
			};
			case "Weapon": {
				[_item, _path] call cti_UI_Gear_ReplaceWeapon;
				_updated = true;
			};
			case "Container": { //todo: if container load the config items!
				if (([cti_SUBTYPE_UNIFORM, cti_SUBTYPE_VEST, cti_SUBTYPE_BACKPACK] select _path) == (_item call cti_UI_Gear_GetItemConfigType)) then { //--- Same type, replace
					_updated = [_item, _path] call cti_UI_Gear_ReplaceContainer;
				} else { //--- Type differ, try to add
					_updated = [_item, _path] call cti_UI_Gear_TryContainerAddItem;
				};
			};
			case "ListItems": { _updated = [_item] call cti_UI_Gear_TryContainerAddItem };
			case "CurrentMagazine": { _updated = [_item, _path, _idc-7000] call cti_UI_Gear_ChangeCurrentMagazine };
		};

		if (_current != _item && _gear_index != -1) then {
			_config_type = (_item) call cti_UI_Gear_GetItemBaseConfig;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc-7000) ctrlSetText getText(configFile >> _config_type >> _item >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc-7000) ctrlSetTooltip getText(configFile >> _config_type >> _item >> 'displayName');

			_gear_set set [_gear_index, _item];
			_updated = true;
		};
		} else {
			_updated = [_gear, _item] call cti_UI_Gear_AddVehicleItem;
		};
	};

	_updated
};

//--- Get the config type of an item.
cti_UI_Gear_GetItemConfigType = {
	private ["_config_type", "_item", "_type", "_type_returned"];

	_item = _this;

	_config_type = (_item) call cti_UI_Gear_GetItemBaseConfig;
	_type_returned = -1;

	switch (_config_type) do {
		case "CfgMagazines": {_type_returned = 60000}; //--- Extended, no value in the config
		case "CfgGlasses": {_type_returned = 60001}; //--- Extended, no value in the config
		case "CfgVehicles": {
			if (getNumber(configFile >> _config_type >> _item >> 'isbackpack') == 1) then {_type_returned = cti_SUBTYPE_BACKPACK};
		};
		case "CfgWeapons": {
			_type_returned = getNumber(configFile >> _config_type >> _item >> "type");
			if (_type_returned == cti_TYPE_ITEM) then {
				_type_returned = getNumber(configFile >> _config_type >> _item >> 'ItemInfo' >> 'type');
				if (_type_returned == 0) then {_type_returned = cti_TYPE_ITEM};
			};
		};
	};

	_type_returned
};

cti_UI_Gear_ChangeCurrentMagazine = {
	private ["_gear", "_idc", "_item", "_slot_type", "_updated"];

	_item = _this select 0;
	_slot_type = _this select 1;
	_idc = _this select 2;

	_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
	_updated = false;

	if (_item == "") then { //--- Remove
		if (count(((_gear select 0) select _slot_type) select 2) > 0) then {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_magazine_gs.paa";
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";

			((_gear select 0) select _slot_type) set [2, []];
			_updated = true;
		};
	} else { //--- Add
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText getText(configFile >> 'CfgMagazines' >> _item >> 'picture');
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip getText(configFile >> 'CfgMagazines' >> _item >> 'displayName');

		((_gear select 0) select _slot_type) set [2, [_item]];
		_updated = true;
	};

	_updated
};

cti_UI_Gear_UpdateLinkedItems = {
	private ["_config_type", "_get", "_item", "_magazines","_upgrade_gear", "_upgrades"];
	_item = _this;
   _upgrades = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideUpgrades;
   _upgrade_gear = _upgrades select cti_UP_GEAR;

	_config_type = (_item) call cti_UI_Gear_GetItemBaseConfig;

	if ((lnbSize 70601) select 0 > 0) then {lnbClear 70601};

	if (_config_type == "CfgWeapons") then {
		//--- Add the linked magazines
		_magazines = [];
		{
			if (_x == "this") then {
				_magazines = _magazines + getArray(configFile >> 'CfgWeapons' >> _item >> 'magazines');
			} else {
				_magazines = _magazines + getArray(configfile >> 'CfgWeapons' >> _item >> _x >> 'magazines')
			};
		} forEach (getArray(configFile >> 'CfgWeapons' >> _item >> 'muzzles'));

		//--- Add the compatible accessories (bistery over here, one time the config 'compatibleItems' is property, one time it's an array, so fuck it, we add both).
		_compatible_acc = [];
		_compatible_acc = _compatible_acc + ((getArray(configFile >> 'CfgWeapons' >> _item >> 'WeaponSlotsInfo' >> 'MuzzleSlot' >> 'compatibleItems')) call cti_CO_FNC_ArrayToLower);
		_compatible_acc = _compatible_acc + ((getArray(configFile >> 'CfgWeapons' >> _item >> 'WeaponSlotsInfo' >> 'PointerSlot' >> 'compatibleItems')) call cti_CO_FNC_ArrayToLower);
		_compatible_acc = _compatible_acc + ((getArray(configFile >> 'CfgWeapons' >> _item >> 'WeaponSlotsInfo' >> 'CowsSlot' >> 'compatibleItems')) call cti_CO_FNC_ArrayToLower);
		_compatible_acc = _compatible_acc + ((getArray(configFile >> 'CfgWeapons' >> _item >> 'WeaponSlotsInfo' >> 'UnderBarrelSlot' >> 'compatibleItems')) call cti_CO_FNC_ArrayToLower);
		
		{_compatible_acc pushBack toLower(configName _x)} forEach (configProperties[configfile >> 'CfgWeapons' >> _item >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems", "true", true]);
		{_compatible_acc pushBack toLower(configName _x)} forEach (configProperties[configfile >> 'CfgWeapons' >> _item >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleItems", "true", true]);
		{_compatible_acc pushBack toLower(configName _x)} forEach (configProperties[configfile >> 'CfgWeapons' >> _item >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems", "true", true]);
		{_compatible_acc pushBack toLower(configName _x)} forEach (configProperties[configfile >> 'CfgWeapons' >> _item >> "WeaponSlotsInfo" >> "UnderBarrelSlot" >> "compatibleItems", "true", true]);
		
		
		{
			_get = missionNamespace getVariable format["cti_%1", _x];

			if (!(isNil "_get") &&((_get select 0) select 0) <= _upgrade_gear) then {
	
				_row = lnbAddRow [70601, [getText(configFile >> _get select 2 >> _x >> 'displayName'), format ["$%1", (_get select 0) select 1]]];
				lnbSetPicture [70601, [_row, 1], getText(configFile >> _get select 2 >> _x >> 'picture')];
				lnbSetData [70601, [_row, 0], toLower(_x)];
			};
		} forEach (_magazines call cti_CO_FNC_ArrayToLower) + _compatible_acc;
	};
};

cti_UI_Gear_GetGearCostDelta = {
	private ["_cost", "_find", "_gear_new", "_gear_old", "_item_cost"];
	
	_gear_old = +(_this select 0);
	_gear_new = +(_this select 1);

	_cost = 0;


        if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
		_gear_old = (_gear_old) call cti_CO_FNC_ConvertGearToFlat;
		_gear_new = (_gear_new) call cti_CO_FNC_ConvertGearToFlat;
	};

	{
		_find = _gear_new find _x;
		_item_cost = (_x) call cti_CO_FNC_GetGearItemCost;
		if (_find != -1) then {
			_gear_new deleteAt _find;
		} else {
			_cost = _cost - (_item_cost * 0.5);
		};
	} forEach _gear_old;

	{
		_item_cost = (_x) call cti_CO_FNC_GetGearItemCost;
		_cost = _cost + _item_cost;
	} forEach _gear_new;

	round _cost
};

cti_UI_Gear_UpdatePrice = {
	private ["_coloration", "_trade_in"];
	_trade_in = [uiNamespace getVariable "cti_dialog_ui_gear_target_staticgear", uiNamespace getVariable "cti_dialog_ui_gear_target_gear"] call cti_UI_Gear_GetGearCostDelta;
	uiNamespace setVariable ["cti_dialog_ui_gear_tradein", _trade_in];

	_coloration = if (_trade_in > 0) then {"#F56363"} else {"#76F563"};

	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70028) ctrlSetStructuredText parseText format ["<t align='left'>Trade-in: <t color='%3'>$%1</t><t><t align='right'>Resources: <t color='%4'>$%2</t><t>", _trade_in, call cti_CL_FNC_GetPlayerFunds, _coloration, "#BAFF81"];
};

cti_UI_Gear_EquipTemplate = {
	_index = _this;

	_gear = +(((missionNamespace getVariable "cti_gear_list_templates") select _index) select 3);
	uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];

	_mass = (_gear) call cti_UI_Gear_GetTotalMass;
	uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", _mass];

	{[_forEachIndex, _x] call cti_UI_Gear_UpdateContainerProgress} forEach [70301,70302,70303];

	call cti_UI_Gear_UpdatePrice;
	(_gear) call cti_UI_Gear_DisplayInventory;
};

cti_UI_Gear_LoadAvailableUnits = {
	_structures = (cti_Client_SideJoined) call cti_CO_FNC_GetSideStructures;
	_list = [];
	
	_vehicles = [];
	_base_gear_fob_range = 4; ////--- Determine how far a player has to be from a FOB to access the Gear Menu
	
	
	{
		_manRange = missionNamespace getVariable "cti_C_BASE_DEFENSE_MANNING_RANGE";
		_nearest = ['BARRACKSTYPE', _x, _structures, _manRange] call cti_CO_FNC_GetClosestStructure;
		
		_fob_in_range = gearInRange;
		
		if (!isNull _nearest || _x == player || _fob_in_range) then {//todo add fob
			_list pushBack _x;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70201) lbAdd Format["[%1] %2", _x Call cti_CO_FNC_GetAIDigit, getText(configFile >> "CfgVehicles" >> typeOf _x >> "displayName")];
		};
		if (vehicle _x != _x && !(vehicle _x in _vehicles)) then { //--- Vehicle check
			if (getNumber(configFile >> "CfgVehicles" >> typeOf vehicle _x >> "maximumLoad") > 0) then {
				if (!isNull _nearest || _fob_in_range) then {
					_list pushBack vehicle _x;
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70201) lbAdd Format["[%1] %2", _x Call cti_CO_FNC_GetAIDigit, getText(configFile >> "CfgVehicles" >> typeOf vehicle _x >> "displayName")];
					_vehicles pushBack vehicle _x;
				};
			};
		};
	} forEach ((units player) call cti_CO_FNC_GetLiveUnits);
	
	{
		_manRange = missionNamespace getVariable "cti_C_BASE_DEFENSE_MANNING_RANGE";
		_nearest = ['BARRACKSTYPE', _x, _structures, _manRange] call cti_CO_FNC_GetClosestStructure;
		
		_fob_in_range = gearInRange;
		
		if !(_x in _vehicles) then { //--- Vehicle check
			if (getNumber(configFile >> "CfgVehicles" >> typeOf _x >> "maximumLoad") > 0 && local _x) then {
				if (!isNull _nearest || _fob_in_range) then {
					_list pushBack _x;
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70201) lbAdd Format["%1", getText(configFile >> "CfgVehicles" >> typeOf _x >> "displayName")];
					_vehicles pushBack _x;
				};
			};
		};
	} forEach (vehicle player nearEntities [["Car", "Ship", "Motorcycle", "Tank", "Air", "StaticWeapon"], cti_C_BASE_AREA_RANGE]);
	
	uiNamespace setVariable ["cti_dialog_ui_gear_units", _list];
	
	((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70201) lbSetCurSel 0;
};

cti_UI_Gear_InitializeProfileTemplates = {

   
    
        _templates = +(missionNamespace getVariable format["cti_gear_list_templates_%1_%2", cti_Client_SideJoined, _x]);
        if(!isNil "_templates")then{
            {
                _x set [5, round(time + random 10000 - random 5000 + diag_frameno)];
            } forEach _templates;

            profileNamespace setVariable [format["cti_PERSISTENT_GEAR_TEMPLATE_%1_%2", cti_Client_SideJoined, _x], _templates];
            saveProfileNamespace;
        };
    } ;


};

cti_UI_Gear_RemoveProfileTemplate = {
	_index = _this;
	

	    _templates = profileNamespace getVariable format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_Client_SideJoined];
	    if (_index > -1) then {
            _templates deleteAt _index;
            profileNamespace setVariable [format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_Client_SideJoined], _templates];
            saveProfileNamespace;
        
	};
};