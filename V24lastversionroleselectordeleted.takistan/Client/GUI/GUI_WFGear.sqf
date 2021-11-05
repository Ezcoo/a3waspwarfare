_action = _this select 0;

switch (_action) do {
	case "onLoad": { //--- Triggered on the very first loading of the UI
		//-- Load the list.
		call cti_UI_Gear_LoadAvailableUnits;

		execVM "Client\GUI\GUI_GearMenu.sqf";

		//--- Handle drag stop //todo check the getVariable modification.
		_dragging = if (isNil{uiNamespace getVariable "cti_dialog_ui_gear_dragging"}) then {false} else {uiNamespace getVariable "cti_dialog_ui_gear_dragging"};
		
		if (_dragging) then {uiNamespace setVariable ["cti_dialog_ui_gear_dragging", false]};
		(findDisplay 503000) displaySetEventHandler ["mouseButtonUp", "_dragging = if (isNil{uiNamespace getVariable 'cti_dialog_ui_gear_dragging'}) then {false} else {uiNamespace getVariable 'cti_dialog_ui_gear_dragging'}; if (_dragging) then {['onShoppingListMouseUp', _this select 1] call compile preprocessFileLineNumbers 'Client\GUI\GUI_WFGear.sqf'}"];
	};
	case "onShoppingTabClicked": { //--- A shopping tab was clicked upon
		//--- New tab
		_changedto = _this select 1;
		(_changedto) call cti_UI_Gear_DisplayShoppingItems;
		uiNamespace setVariable ["cti_dialog_ui_gear_shop_tab", _changedto];
	};
	case "onUnitLBSelChanged": { //--- The units combo was changed
		_changedto = _this select 1;

		_target = (uiNamespace getVariable "cti_dialog_ui_gear_units") select _changedto;
		//--- The target
		uiNamespace setVariable ["cti_dialog_ui_gear_target", _target];

		if (_target isKindOf "Man") then {
		//--- Get the target's equipment
		_gear = (_target) call cti_CO_FNC_GetUnitLoadout;

		//--- Calculate the initial mass
		_mass = (_gear) call cti_UI_Gear_GetTotalMass;

		//--- Default
		uiNamespace setVariable ["cti_dialog_ui_gear_target_staticgear", +_gear];
		uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
		uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", _mass];

		//--- Progress UI Updates.
		{[_forEachIndex, _x] call cti_UI_Gear_UpdateContainerProgress} forEach [70301,70302,70303];

		//--- Do we have a default gear tab? if not we give the template one to the player
			uiNamespace setVariable ["cti_dialog_ui_gear_shop_tab", cti_GEAR_TAB_PRIMARY];
			(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab") call cti_UI_Gear_DisplayShoppingItems;
			
			call cti_UI_Gear_UpdatePrice;
			(_gear) call cti_UI_Gear_DisplayInventory;
		} else {
			_gear = (_target) call cti_CO_FNC_GetVehicleCargo;

			//--- Calculate the initial mass
			_maxmass = getNumber(configFile >> "CfgVehicles" >> typeOf _target >> "maximumLoad");
			_mass = (_gear) call cti_UI_Gear_GetVehicleLoad;
			
			//--- Update the overlay
			call cti_UI_Gear_EnableVehicleOverlay;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001) ctrlSetText getText(configFile >> "CfgVehicles" >> typeOf _target >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001) ctrlSetTooltip getText(configFile >> "CfgVehicles" >> typeOf _target>> 'displayName');
			
			//--- Default
			uiNamespace setVariable ["cti_dialog_ui_gear_target_staticgear", +_gear];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", [_maxmass, _mass]];
			
			//--- Do we have a default gear tab? if not we give the template one to the player
			if (isNil {uiNamespace getVariable "cti_dialog_ui_gear_shop_tab"}) then {uiNamespace setVariable ["cti_dialog_ui_gear_shop_tab", cti_GEAR_TAB_PRIMARY]};
			(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab") call cti_UI_Gear_DisplayShoppingItems;
			
			//--- Progress UI Updates.
			call cti_UI_Gear_UpdateVehicleContainerProgress;

			call cti_UI_Gear_UpdatePrice;
			(_gear) call cti_UI_Gear_DisplayInventoryVehicle;
		};
	};
	case "onShoppingListLBDblClick": {
		
			//--- Item
		_selected = _this select 1;
		
		//--- Get the current tab
		if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" != 7) then {		
			_updated = (lnbData [70108, [_selected,0]]) call cti_UI_Gear_AddItem;
			if (_updated) then { call cti_UI_Gear_UpdatePrice };
		} else {
			_selected = lnbValue[70108, [_selected,1]];
			(_selected) call cti_UI_Gear_EquipTemplate;
		};
		
		
		
		/*buged wasp code template not working
		
		//--- Item
		_selected = _this select 1;

		//--- Get the current tab
		if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" != 7) then {//--- Skip on template tab
			_updated = false;
			if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
				_updated = (lnbData [70108, [_selected,0]]) call cti_UI_Gear_AddItem;
		} else {
				_updated = [uiNamespace getVariable "cti_dialog_ui_gear_target_gear", lnbData [70108, [_selected,0]]] call cti_UI_Gear_AddVehicleItem;
			};
			
			if (_updated) then { call cti_UI_Gear_UpdatePrice };
		} else {
			if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
				(_selected) call cti_UI_Gear_EquipTemplate;
			};
		};
		*/
	};
	case "onShoppingListLBDrag": {
		//--- Item (Data)
		_selected = ((_this select 1) select 0) select 2;

		if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" != 7) then { //--- Skip on template tab
			uiNamespace setVariable ["cti_dialog_ui_gear_dragging", true];
			(_selected) call cti_UI_Gear_OnShoppingItemDrag;
		};
	};
	case "onShoppingListLBDrop": {
		_kind = _this select 1;
		_idc = _this select 2;
		_dropped = _this select 3;
		_path = _this select 4;

		if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" != 7) then { //--- Skip on template tab
			_updated = [_idc, _dropped, _kind, _path] call cti_UI_Gear_OnShoppingItemDrop;
			if (_updated) then { call cti_UI_Gear_UpdatePrice };
		};
	};
	case "onShoppingListLBSelChanged": {
		//--- Item
		_selected = _this select 1;
		
		(lnbData [70108, [_selected,0]]) call cti_UI_Gear_UpdateLinkedItems;
	};
	case "onShoppingListMouseUp": {
		{
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15];
		} forEach (uiNamespace getVariable ["cti_dialog_ui_gear_drag_colored_idc", []]);
		
		{
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15];
		} forEach (uiNamespace getVariable ["cti_dialog_ui_gear_drag_colored_idc_red", []]);

		//--- Todo: highlight current container.
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (77001 + (uiNamespace getVariable "cti_dialog_ui_gear_items_tab"))) ctrlSetBackgroundColor [1, 1, 1, 0.4];

		uiNamespace setVariable ["cti_dialog_ui_gear_dragging", false];
	};
	case "onLinkedListLBDblClick": {
		//--- Item
		_selected = _this select 1;
		_updated = false;
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_updated = (lnbData [70601, [_selected,0]]) call cti_UI_Gear_AddItem;
		} else {
			_updated = [uiNamespace getVariable "cti_dialog_ui_gear_target_gear", lnbData [70601, [_selected,0]]] call cti_UI_Gear_AddVehicleItem;
		};

		if (_updated) then { call cti_UI_Gear_UpdatePrice };
	};
	case "onItemContainerClicked": { //--- Uniform (0), vest (1) or backpack (2) container was clicked upon
		//--- The container
		_container = _this select 1;
		_background = _this select 2;

		//--- Get the target's gear
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
		//--- Make sure that the container is present.
		if ((((_gear select 1) select _container) select 0) != "") then {
				(((_gear select 1) select _container) select 1) call cti_UI_Gear_DisplayContainerItems;

			//--- Change the color
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _background) ctrlSetBackgroundColor [1, 1, 1, 0.4];
				{((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15]} forEach ([77001,77002,77003] - [_background]);

			//--- Set the current items tab
				uiNamespace setVariable ["cti_dialog_ui_gear_items_tab", _container];
			};
		};
	};
	case "onItemContainerMouseClicked": { //--- Uniform (0), vest (1) or backpack (2) container was clicked upon
		//--- The container
		_container = _this select 1;
		_idc = _this select 2;
		_mouse = _this select 3;

		//--- Remove the container & its content if needed
		if (_mouse == 1 && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then { //--- Right click
			_updated = ["", _container] call cti_UI_Gear_ReplaceContainer;
			if (_updated) then { call cti_UI_Gear_UpdatePrice };
		};
	};
	case "onAccessoryClicked": { //--- Helm or Goggles were clicked upon
		//--- The array slot, idc and default picture
		_slot = _this select 1;
		_idc = _this select 2;
		_default = _this select 3;

		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

		if ((_gear select 2) select _slot != "" && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			//--- Apply the default picture and release the tooltip
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText _default;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";

			(_gear select 2) set [_slot, ""];
			call cti_UI_Gear_UpdatePrice;
		};
	};
	case "onItemClicked": { //--- NVG, Binocular or items were clicked upon
		//--- The array slot, idc and default picture
		_slot = _this select 1;
		_idc = _this select 2;
		_default = _this select 3;

		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

		if ((((_gear select 3) select (_slot select 0)) select (_slot select 1)) != "" && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText _default;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";

			((_gear select 3) select (_slot select 0)) set [(_slot select 1), ""];
			call cti_UI_Gear_UpdatePrice;
		};
	};
	case "onWeaponClicked": { //--- Primary, Secondary or Handgun was clicked upon
		//--- The array slot, idc and default picture
		_slot = _this select 1;
		_idc = _this select 2;

		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			["", _slot] call cti_UI_Gear_ReplaceWeapon;
			call cti_UI_Gear_UpdatePrice;
		};
	};
	case "onUnitItemsLBDblClick": { //--- Item container
		_row = _this select 1;

		_item = lnbData[70109, [_row,0]];
		_count = lnbValue[70109, [_row,0]];

		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

		if (uiNamespace getVariable ["cti_dialog_ui_gear_target", objNull] isKindOf "Man") then {
			_container = uiNamespace getVariable "cti_dialog_ui_gear_items_tab";
		_items = ((_gear select 1) select _container) select 1;

			_items deleteAt (_items find _item);
			(_gear select 1) select (uiNamespace getVariable "cti_dialog_ui_gear_items_tab") set [1, _items];
			
			//--- Update the mass.
			["ContainerItem", _item, "", [_container]] call cti_UI_Gear_UpdateMass;
			
			//--- Update the Mass RscProgress
			[_container, 70301+_container] call cti_UI_Gear_UpdateContainerProgress;
		} else {
			//--- Update the Mass RscProgress
			// [0, 70301] call cti_UI_Gear_UpdateContainerProgress;
			
			_gear deleteAt (_gear find _item);

		//--- Update the mass.
			[_item, "delete"] call cti_UI_Gear_UpdateVehicleLoad;

		//--- Update the Mass RscProgress
			call cti_UI_Gear_UpdateVehicleContainerProgress;
		};

		if (_count > 1) then { //--- Decrement
			lnbSetText[70109, [_row,0], Format["x%1",_count - 1]];
			lnbSetValue[70109, [_row,0], _count - 1];
		} else { //--- Remove
			lnbDeleteRow[70109, _row];
		};

		call cti_UI_Gear_UpdatePrice;
	};

	case 'onWeaponAccessoryClicked': { //--- Primary, Secondary or Handgun accessory was clicked upon
		//--- The array slot, idc and default picture
		_slot_type = _this select 1;
		_slot = _this select 2;
		_idc = _this select 3;
		_default = _this select 4;

		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
		if (count(((_gear select 0) select _slot_type) select 1) > 0) then {
			if (((((_gear select 0) select _slot_type) select 1) select _slot) != "") then {
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText _default;
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";

				(((_gear select 0) select _slot_type) select 1) set [_slot, ""];
					call cti_UI_Gear_UpdatePrice;
				};
			};
		};
	};

	case "onWeaponCurrentMagazineClicked": { //--- Primary, Secondary or Handgun current magazine was clicked upon
		_slot_type = _this select 1;
		_idc = _this select 2;

		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_updated = ["", _slot_type, _idc] call cti_UI_Gear_ChangeCurrentMagazine;
			if (_updated) then {call cti_UI_Gear_UpdatePrice};
		};
	};

	case "onPurchase": {
		_funds = Call cti_CL_FNC_GetPlayerFunds;
		_cost = uiNamespace getVariable "cti_dialog_ui_gear_tradein";
		if (_funds >= _cost) then {
			if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
				[uiNamespace getVariable "cti_dialog_ui_gear_target", uiNamespace getVariable "cti_dialog_ui_gear_target_gear"] call cti_CO_FNC_EquipUnit; 
				
				missionNamespace setVariable ["cti_gear_lastpurchased", uiNamespace getVariable "cti_dialog_ui_gear_target_gear"];
				cti_P_CurrentGear = (player) call cti_CO_FNC_GetUnitLoadout;
			} else {
				[uiNamespace getVariable "cti_dialog_ui_gear_target", uiNamespace getVariable "cti_dialog_ui_gear_target_gear"] call cti_CO_FNC_EquipVehicleCargo;
			};
			uiNamespace setVariable ["cti_dialog_ui_gear_target_staticgear", +(uiNamespace getVariable "cti_dialog_ui_gear_target_gear")];
			
			call cti_UI_Gear_UpdatePrice;
			-(_cost) Call cti_CL_FNC_ChangePlayerFunds
		} else {
			hint "not enough funds";
		};
	};

	case "onInventoryClear": {
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
		_gear = [
			[["", [], []], ["", [], []], ["", [], []]],
			[["", []], ["", []], ["", []]],
			["", ""],
			[["", ""], ["", "", "", "", ""]]
		];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];

			_mass = (_gear) call cti_UI_Gear_GetTotalMass;
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", _mass];

			{[_forEachIndex, _x] call cti_UI_Gear_UpdateContainerProgress} forEach [70301,70302,70303];
			
			call cti_UI_Gear_UpdatePrice;
			(_gear) call cti_UI_Gear_DisplayInventory;
		} else {
			_gear = [];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
			(uiNamespace getVariable ["cti_dialog_ui_gear_target_gear_mass", [0, 0]]) set [1, 0];
			
			//--- Progress UI Updates.
			call cti_UI_Gear_UpdateVehicleContainerProgress;

			call cti_UI_Gear_UpdatePrice;
			(_gear) call cti_UI_Gear_DisplayInventoryVehicle;
		};
	};

	case "onInventoryReload": {
		_gear = missionNamespace getVariable "cti_gear_lastpurchased";
		if (!isNil '_gear' && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];

			_mass = (_gear) call cti_UI_Gear_GetTotalMass;
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", _mass];

			{[_forEachIndex, _x] call cti_UI_Gear_UpdateContainerProgress} forEach [70301,70302,70303];

			call cti_UI_Gear_UpdatePrice;
			(_gear) call cti_UI_Gear_DisplayInventory;
		};
		//todo reload from config if nil
	};

	case "onTemplateCreation": {
		_gear = +(uiNamespace getVariable "cti_dialog_ui_gear_target_gear");
		
		_cost = 0;
		_picture = "";
		_label = "";
		_haspic = false;
		_upgrade = 0;
		_has_nil = false;
		_dontbelong = false;
		
		_side_gear = missionNamespace getVariable "cti_gear_all";
		_upgrades = (cti_P_SideJoined) call cti_CO_FNC_GetSideUpgrades;
		_upgrade_gear = _upgrades select cti_UPGRADE_GEAR;
		
		{
			_var = missionNamespace getVariable _x;
			if !(isNil '_var') then {
				_cost = _cost + ((_var select 0) select 1);
				if (((_var select 0) select 0) > _upgrade) then {_upgrade = (_var select 0) select 0};
			} else {
				_has_nil = true;
			};
			if !(_x in _side_gear) then {_dontbelong = true};
			if (_has_nil || _dontbelong) exitWith {};
		} forEach (_gear call cti_CO_FNC_ConvertGearToFlat);
		
		if (_upgrade > _upgrade_gear) exitWith {
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>The template could not be created since some items does not meet the current <t color='#F5D363'>Gear</t> upgrade level</t>";
		};
		
		if (_dontbelong) exitWith {
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>The template could not be created since some items do not belong to the side's equipment</t>";
		};
		//todo: items belong to side gear?
		
		if (_cost != 0) then {
			{
				if (_x select 0 != "") then {
					if (_label != "") then { _label = _label + " | " };
					_label = _label + getText(configFile >> "CfgWeapons" >> (_x select 0) >> "displayName");
					if !(_haspic) then { _picture = getText(configFile >> "CfgWeapons" >> (_x select 0) >> "picture"); _haspic = true};
				};
			} forEach (_gear select 0);
		};
		
		_seed = round(time + random 10000 - random 500 + diag_frameno);
		[missionNamespace getVariable "cti_gear_list_templates", [_label, _picture, _cost, _gear, _upgrade, _seed]] call cti_CO_FNC_ArrayPush;
		
		_templates = if !(isNil {profileNamespace getVariable format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_P_SideJoined]}) then {profileNamespace getVariable format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_P_SideJoined]} else {+(missionNamespace getVariable "cti_gear_list_templates")};
		[_templates, [_label, _picture, _cost, _gear, _upgrade, _seed]] call cti_CO_FNC_ArrayPush; 
		profileNamespace setVariable [format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_P_SideJoined], _templates];
		saveProfileNamespace;
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" == cti_GEAR_TAB_TEMPLATES) then { //--- Reload the template tab if needed
			(cti_GEAR_TAB_TEMPLATES) call cti_UI_Gear_DisplayShoppingItems;
		};
		
		hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>A new template has been created with the name <t color='#bcff70'>%1</t>.<br /><br />You may find it in the <t color='#eaff96'>Template</t> tab</t><br /><br /><img image='Rsc\Pictures\icon_wf_building_barracks.paa' size='2.5'/>", _label];
	};
	
	case "onTemplateDeletion": {
		//todo: lnbvalue later when they're hidden
		_index = _this select 1;
		if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" == cti_GEAR_TAB_TEMPLATES) then {
			_seed = lnbValue[70108, [_index,0]];
			if (_index > -1 && _index < ((lnbSize((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70108)) select 0)) then {
				_index = lnbValue[70108, [_index,1]];
				_templates = missionNamespace getVariable "cti_gear_list_templates";
				_templates set [_index, "!nil!"];
				_templates = _templates - ["!nil!"];
				missionNamespace setVariable ["cti_gear_list_templates", _templates];
				
				//--- Persistent!
				//todo: finds the ID that matches
				// if (isNil {profileNamespace getVariable format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_P_SideJoined]}) then {call cti_UI_Gear_InitializeProfileTemplates};
				// _templates = profileNamespace getVariable format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_P_SideJoined];
				(_seed) call cti_UI_Gear_RemoveProfileTemplate;
				// _templates set [_index, "!nil!"];
				// _templates = _templates - ["!nil!"];
				// profileNamespace setVariable [format["cti_PERSISTENT_GEAR_TEMPLATE_%1", cti_P_SideJoined], _templates];
				// saveProfileNamespace;
				
				if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" == cti_GEAR_TAB_TEMPLATES) then { //--- Reload the template tab if needed
					(cti_GEAR_TAB_TEMPLATES) call cti_UI_Gear_DisplayShoppingItems;
				};
			};
		} else {
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>Templates may only be removed from the <t color='#eaff96'>Template</t> tab</t><br /><br /><img image='Rsc\Pictures\icon_wf_building_barracks.paa' size='2.5'/>";
		};
	};
	

	case "onItemContainerMouseDblClicked": {
		_container = _this select 1;


		
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
		_container_type = ((_gear select 1) select _container) select 0;
		
		if (_container_type != "") then {
			if (uiNamespace getVariable "cti_dialog_ui_gear_items_tab" == _container) then {lnbClear 70109};
			
			["Container", "", _container_type, [_container, ((_gear select 1) select _container) select 1]] call cti_UI_Gear_UpdateMass;
			((_gear select 1) select _container) set [1, []];
			[_container, 70301+_container] call cti_UI_Gear_UpdateContainerProgress;
			
			call cti_UI_Gear_UpdatePrice;
		};
	};


/*
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
		_container_type = ((_gear select 1) select _container) select 0;

		if (_container_type != "") then {
				if (uiNamespace getVariable "cti_dialog_ui_gear_items_tab" == _container) then {lnbClear 70109};

				["Container", "", _container_type, [_container, ((_gear select 1) select _container) select 1]] call cti_UI_Gear_UpdateMass;
			((_gear select 1) select _container) set [1, []];
				[_container, 70301+_container] call cti_UI_Gear_UpdateContainerProgress;

				call cti_UI_Gear_UpdatePrice;
			};
		};
	};
*/
};
