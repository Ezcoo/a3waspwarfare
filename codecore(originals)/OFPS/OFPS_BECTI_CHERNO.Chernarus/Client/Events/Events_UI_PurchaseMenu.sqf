private ["_action"];
_action = _this select 0;
true call CTI_CL_FNC_UpdateBaseVariables;
switch (_action) do {
	case "onLoad": {
		// cti_dialog_ui_purchasemenu_action
		_get = call CTI_UI_Purchase_GetFirstAvailableFactories;
		_factory = _get select 0;
		_factory_index = _get select 1;
		_factory_type = _get select 2;
		
		if (isNull _factory) exitWith { closeDialog 0; };
		
		{if (isNil {uiNamespace getVariable format ["cti_dialog_ui_purchasemenu_vehicon_%1", _x]}) then {uiNamespace setVariable [format ["cti_dialog_ui_purchasemenu_vehicon_%1", _x], true]}} forEach ['driver','gunner','commander','turrets','lock'];
		uiNamespace setVariable ["cti_dialog_ui_purchasemenu_unitcost", 90000]; //--- Muhahahah!
		
		if (call CTI_CL_FNC_IsPlayerCommander) then {
			_groups = (CTI_P_SideJoined) call CTI_CO_FNC_GetSidePlayerGroups;
			uiNamespace setVariable ["cti_dialog_ui_purchasemenu_teams", _groups];
			{
				_header_ai = ["AI", ""] select (isPlayer leader _x);
				((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110016) lbAdd format ["%1%2 (%3)", _header_ai, _x getVariable ["cti_alias", CTI_PLAYER_DEFAULT_ALIAS], name leader _x];
				if (leader _x isEqualTo player) then {((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110016) lbSetCurSel _forEachIndex};
			} forEach (_groups);
		} else {
			_groups = [group player];
			uiNamespace setVariable ["cti_dialog_ui_purchasemenu_teams", _groups];
			
			((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110016) lbAdd format ["%1 (%2)", group player, name player];
			((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110016) lbSetCurSel 0;
		};

		uiNamespace setVariable ["cti_dialog_ui_purchasemenu_team", group player];
		
		[_factory_type, _factory_index] call CTI_UI_Purchase_LoadFactories;
		call CTI_UI_Purchase_SetVehicleIconsColor;
		(_factory_index) call CTI_UI_Purchase_SetIcons;
		(_factory_type) call CTI_UI_Purchase_FillUnitsList;
		call CTI_UI_Purchase_OnUnitListLoad;
		
		
		if (!(_factory_type isEqualTo CTI_REPAIR) || !(call CTI_CL_FNC_IsPlayerCommander)) then {((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 100016) ctrlShow false};
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 100016) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.505), SafeZoneY + (SafeZoneH * 0.896), SafeZoneW * 0.458, SafeZoneH * 0.055]; ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 100016) ctrlCommit 0;
		
		execVM "Client\GUI\GUI_PurchaseMenu.sqf";
	};
	case "onUnitsLBSelChanged": {
		_changedTo = _this select 1;
		
		_classname = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007) lnbData [_changedTo, 0];
		(_classname) call CTI_UI_Purchase_UpdateVehicleIcons;
	};
	case "onGroupLBSelChanged": {
		_changedTo = _this select 1;
		
		uiNamespace setVariable ["cti_dialog_ui_purchasemenu_team", (uiNamespace getVariable "cti_dialog_ui_purchasemenu_teams") select _changedTo];
	};
	case "onFactoryLBSelChanged": {
		_changedTo = _this select 1;
		
		_factory = (uiNamespace getVariable "cti_dialog_ui_purchasemenu_factories") select _changedTo;
		if (alive _factory) then {
			[_factory, 2, .175] call CTI_UI_Purchase_CenterMap;
			uiNamespace setVariable ["cti_dialog_ui_purchasemenu_factory", _factory];
		} else {
			if ({alive _x} count (uiNamespace getVariable "cti_dialog_ui_purchasemenu_factories") > 0) then {
				[uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory_type"] call CTI_UI_Purchase_LoadFactories;//reload.
			} else {
				['onLoad'] call compile preprocessFileLineNumbers 'Client\Events\Events_UI_PurchaseMenu.sqf';
			};
		};
	};
	case "onIconSet": {
		_factory_index = _this select 1;
		_factory_type = _this select 2;
		if (_factory_index isEqualTo 8) then {_factory_type = CTI_Base_ExtFactoryType;};
		
		_available = [CTI_Base_BarracksInRange, CTI_Base_LightInRange, CTI_Base_HeavyInRange, CTI_Base_AirRotaryInRange, CTI_Base_AirFixedInRange, CTI_Base_RepairInRange, CTI_Base_AmmoInRange, CTI_Base_NavalInRange, CTI_Base_ExtFactoryInRange];

		if (_available select _factory_index) then {
			[_factory_type, _factory_index] call CTI_UI_Purchase_LoadFactories;
			(_factory_index) call CTI_UI_Purchase_SetIcons;
			(_factory_type) call CTI_UI_Purchase_FillUnitsList;
			call CTI_UI_Purchase_OnUnitListLoad;
			
			if (call CTI_CL_FNC_IsPlayerCommander) then {((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 100016) ctrlShow (if (_factory_type isEqualTo CTI_REPAIR) then {true} else {false})};
		};
	};
	case "onVehicleIconClicked": {
		_role = _this select 1;
		_idc = _this select 2;
		
		_classname = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007) lnbData [lnbCurSelRow 111007, 0];
		
		_toggle = [true, false] select (uiNamespace getVariable format ["cti_dialog_ui_purchasemenu_vehicon_%1", _role]);
		uiNamespace setVariable [format ["cti_dialog_ui_purchasemenu_vehicon_%1", _role], _toggle];
		
		_color = [[0.2, 0.2, 0.2, 1], [0.258823529, 0.713725490, 1, 1]] select (_toggle);
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl _idc) ctrlSetTextColor _color;
		(_classname) call CTI_UI_Purchase_UpdateCost;
	};
	case "onVehicleLockClicked": {
		_toggle = [true, false] select (uiNamespace getVariable "cti_dialog_ui_purchasemenu_vehicon_lock");
		uiNamespace setVariable ["cti_dialog_ui_purchasemenu_vehicon_lock", _toggle];
		
		_color = [[0.2, 0.2, 0.2, 1], [1, 0.22745098, 0.22745098, 1]] select (uiNamespace getVariable "cti_dialog_ui_purchasemenu_vehicon_lock");
		((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110104) ctrlSetTextColor _color;
	};
	case "onPurchase": {
		_selected = _this select 1;
		_player_ai_count = CTI_PLAYERS_GROUPSIZE;
		if ( CTI_PLAYERS_GROUPSIZE isEqualTo 0) then {_player_ai_count = player getVariable ["CTI_PLAYER_GROUPSIZE",[]];} else {_player_ai_count = CTI_PLAYERS_GROUPSIZE;};
		
		if (_selected isEqualTo -1) exitWith {}; //nothing selected.
		
		_funds = call CTI_CL_FNC_GetPlayerFunds;
		if (_funds > (uiNamespace getVariable "cti_dialog_ui_purchasemenu_unitcost")) then {
			_var_name = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 111007) lnbData [_selected, 0];
			//systemchat format ["_var_name | %1",_var_name];
			_var = missionNamespace getvariable _var_name;
			_classname = _var select CTI_UNIT_CLASSNAME;
			_selected_group = (uiNamespace getVariable "cti_dialog_ui_purchasemenu_teams") select (lbCurSel ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110016)); //todo Change that by combo value
			
			_isEmpty = false;
			_crew_count = 0;
			_veh_info = if (_classname isKindOf "Man") then { [] } else { call CTI_UI_Purchase_GetVehicleInfo };
			if (count _veh_info > 0) then {
				if !((_veh_info select 0) || (_veh_info select 1) || (_veh_info select 2) || (_veh_info select 3)) then { _isEmpty = true };
				
				if (_veh_info select 3) then { //--- Turrets are specified (TODO: Fine tune if turret isEqualTo driver)
					_crew_count = count(_classname call CTI_CO_FNC_GetVehicleTurrets);
					if (_veh_info select 0) then {_crew_count = _crew_count + 1}; //--- Add the driver to the crew count
					if !(_veh_info select 1) then {_crew_count = _crew_count - 1}; //--- Subtract the gunner from the turrets if needed
					if !(_veh_info select 2) then {_crew_count = _crew_count - 1}; //--- Subtract the commander from the turrets if needed
				} else {
					_crew_count = {_x} count [_veh_info select 0, _veh_info select 1, _veh_info select 2];
				};
			} else {
				_crew_count = 1;
			};
			
			if (alive(uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory")) then {
				if (isPlayer leader _selected_group) then {
					if ((count units _selected_group)+_crew_count <= _player_ai_count || _isEmpty) then { //todo ai != player limit
						_proc_purchase = true;
						if (_isEmpty && !(_selected_group isEqualTo group player)) then { _proc_purchase = false; hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />Empty vehicles may not be purchased for other groups."; };
						
						if (_proc_purchase) then {
							_get = missionNamespace getVariable _var_name;
							_picture = if !((_get select CTI_UNIT_PICTURE) isEqualTo "") then {format["<img image='%1' size='2.5'/><br /><br />", _get select CTI_UNIT_PICTURE]} else {""};
							hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />%2<t>A <t color='#ccffaf'>%1</t> is being built</t>", _get select CTI_UNIT_LABEL, _picture];
							[_var_name, uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory", _selected_group, _veh_info] call CTI_CL_FNC_PurchaseUnit;
						};
					} else {
						hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />Your unit limit has been reached.";
					};
				} else {
					hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />Units may not be purchased to AI groups while the AI Teams are disabled in the parameters.";
				};
			};
		} else {
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />You do not have enough funds to perform this operations.";
		};
	};
	case "onIndependentSalvagerPressed": {
		if (isNil 'CTI_P_LastIndepSalvagerPurchased') then { CTI_P_LastIndepSalvagerPurchased = -600 }; 
		
		_in_use = (uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory") getVariable "cti_inuse";
		if (isNil '_in_use') then { _in_use = false };
		if !(_in_use) then {
			_funds = call CTI_CL_FNC_GetPlayerFunds;
			if (_funds >= CTI_VEHICLES_SALVAGER_PRICE) then {
				if (count(CTI_P_SideLogic getVariable "cti_salvagers") < CTI_VEHICLES_SALVAGE_INDEPENDENT_MAX) then { 
					if (time - CTI_P_LastIndepSalvagerPurchased > 5) then {
						CTI_P_LastIndepSalvagerPurchased = time;						
						[CTI_P_SideJoined, group player, CTI_P_SideJoined, format["CTI_Salvager_Independent_%1", CTI_P_SideJoined], uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory", [], (time + random 10000 - random 500 + diag_frameno)] remoteExec ["CTI_PVF_SRV_RequestPurchase", CTI_PV_SERVER];
					} else {
						hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />Please wait a few seconds before performing this operation again.";
					};
				} else {
					hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The Independent salvager limit has been reached.";
				};
			} else {
				hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />You do not have enough funds to perform this operations.";
			};
		} else {
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The factory shouldn't be in use in order to buy an independent salvager.";
		};
	};
	case "onQueueCancel": {
		_selected = _this select 1;
		
		if !(_selected isEqualTo -1) then {
			_classname = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110013) lbData _selected;
			_rounded_seed = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110013) lbValue _selected;
			
			// player sidechat format ["trying to remove %1 %2", _classname, _rounded_seed];
			_is_present = false;
			_req_can_alter = true;
			_req_factory = objNull;
			_req_team = grpNull;
			_seed = -1;
			_index = -1;
			{
				if (round(_x select 0) isEqualTo _rounded_seed && _x select 1 isEqualTo _classname) exitWith {
					_is_present = true;
					_seed = _x select 0;
					_req_factory = _x select 3;
					_req_team = _x select 4;
					_req_can_alter = _x select 5;
					_index = _forEachIndex;
				};
			} forEach CTI_P_PurchaseRequests;
			
			if (_is_present) then {
				//--- Yes it's here, but can we alter it ?
				if (_req_can_alter) then {
					// CTI_P_PurchaseRequests set [_index, "!nil!"];
					// CTI_P_PurchaseRequests = CTI_P_PurchaseRequests - ["!nil!"];
					CTI_P_PurchaseRequests deleteAt _index;
					
					//--- Notify the server thread that our request has been canceled.
					[_seed, _classname, _req_factory, _req_team, group player] remoteExec ["CTI_PVF_SRV_RequestPurchaseCancel", CTI_PV_SERVER];
				} else {
					hint "commander assigned units may not be removed";
				};
			};
		};
	};
	case "onFilterLBSelChanged": {
		_selected = _this select 1;
		
		if (uiNamespace getVariable ["cti_dialog_ui_purchasemenu_filter_reload", true]) then {
			_factory_index = uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory_index";
			_factory_type = uiNamespace getVariable "cti_dialog_ui_purchasemenu_factory_type";
			[_factory_type, _factory_index] call CTI_UI_Purchase_LoadFactories;
			(_factory_index) call CTI_UI_Purchase_SetIcons;
			(_factory_type) call CTI_UI_Purchase_FillUnitsList;
			call CTI_UI_Purchase_OnUnitListLoad;
		};
		
		uiNamespace setVariable ["cti_dialog_ui_purchasemenu_filter_reload", true];
	};
	case "copyClassnameToClipboard": {
		if !(isServer) exitWith {};
		if !((_this select 1) isEqualTo 0) exitWith {};
		_text = ((uiNamespace getVariable "cti_dialog_ui_purchasemenu") displayCtrl 110020) lbText 1;
		systemChat format["Classname: '%1' has been copied to your clipboard.",_text];
		copyToClipboard _text;
	};
	case "onUnload": {
		uiNamespace setVariable ["cti_dialog_ui_purchasemenu_action", objNull];
	};
};