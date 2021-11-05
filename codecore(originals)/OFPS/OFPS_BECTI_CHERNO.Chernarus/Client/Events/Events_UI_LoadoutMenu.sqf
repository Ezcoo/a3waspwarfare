private ["_action","_unit","_classname"];
_action = _this select 0;
_unit = "";
_classname = "";

switch (_action) do {
	case "onLoad": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		//_classname = typeOf _unit;
		if (isNil {_unit getVariable "cti_dialog_ui_loadoutmenu_busy"}) then {
			_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false]; 
		};
		//GUI script for loops
		execVM "Client\GUI\GUI_LoadoutMenu.sqf";
		
		//-- Start Air Cam		
		_camdist = 18;
		_camheight = 3;
		CTI_Air_cam_pos1 = _unit modelToWorld [0,0,0];
		_vehpos = _unit modelToWorld [0,0,0];
		if !((_vehpos select 2) isEqualTo 0) then {
			_vehheight = [_vehpos select 0,_vehpos select 1 ,1];
			CTI_Air_cam_pos1 = _vehheight;
		};
		CTI_Air_cam = "camera" camCreate CTI_Air_cam_pos1;
		CTI_Air_cam cameraEffect ["INTERNAL", "BACK"];
		CTI_Air_cam_pos2 = _unit modelToWorld [0,_camdist,_camheight];
		_campos = _unit modelToWorld [0,_camdist,_camheight];
		if ((_campos select 2) < _camheight) then {
			_newheight = [_campos select 0,_campos select 1 ,_camheight];
			CTI_Air_cam_pos2 = _newheight;
		};
		CTI_Air_cam camSetPos CTI_Air_cam_pos2; 
		CTI_Air_cam camSetDir (CTI_Air_cam_pos2 vectorFromTo CTI_Air_cam_pos1);
		CTI_Air_cam camCommit 0.75;
		//End Air Cam
		(_unit) call CTI_UI_Loadout_UpdateMode;
		//Update Unit Info - TOP RIGHT		
		(_unit) call CTI_UI_Loadout_UpdateTitle;
		(_unit) call CTI_UI_Loadout_UpdateDescription;
		//Init Variables
		(_unit) call CTI_UI_Loadout_getSource;
		(_unit) call CTI_UI_Loadout_InitializeProfileTemplates;
		(_unit) call CTI_UI_Loadout_inittemplates;
		//Update Unit Variables
		(_unit) call CTI_UI_Loadout_savetemplates;
		//Update Full Arms List
		(_unit) call CTI_UI_Loadout_viewAllArms;
		//Update Pylonlist - fill
		//(_unit) call CTI_UI_Loadout_viewAllPylons;
		//Update Turretlist
		//(_unit) call CTI_UI_Loadout_viewAllTurrets;
		//Update Pylons -current
		//(_unit) call CTI_UI_Loadout_viewAllPylons;
		//(_unit) call CTI_UI_Loadout_listFlares;
		(_unit) call CTI_UI_Loadout_listSkins;
		(_unit) call CTI_UI_Loadout_viewAllCustomizations;
		//set initial price
		[0] call CTI_UI_Loadout_UpdatePrice;
		[0] call CTI_UI_Loadout_UpdateCredit;
		//rearm price
		(_unit) call CTI_UI_Loadout_UpdateRearmPrice;
		//clear all price
		(_unit) call CTI_UI_Loadout_UpdateClearAllPrice;


		//Customizations
		_getunitcustom = (_unit) call bis_fnc_getVehicleCustomization;
		_customizations = _getunitcustom select 1;
		//Disable buttons if none
		if !(isNil '_customizations') then {
			if ((count _customizations) isEqualTo 0) then {
				ctrlEnable [790026, false];
				ctrlEnable [790027, false];
			};
		};

		//check dynamic unit
		_validPylons = (("isClass _x" configClasses (configfile >> "CfgVehicles" >> typeof _unit >> "Components" >> "TransportPylonsComponent" >> "Pylons")) apply {configname _x});
		//disable menu 
		if ((count _validPylons) > 0) then {
			ctrlShow [790029, true ];
			ctrlShow [790030, true ];
			ctrlShow [790031, false ];
			ctrlShow [790032, true ];
			ctrlShow [790033, false ];
			ctrlShow [790034, true ];
		} else {
			ctrlShow [790029, false ];
			ctrlShow [790030, false ];
			ctrlShow [790031, false ];
			ctrlShow [790032, false ];
			ctrlShow [790033, false ];
			ctrlShow [790034, false ];
		};
		//disable purchase on load
		ctrlEnable [790016, false];//purchase
	};
	case "onUnload": {
		// Cleanup Air Cam
		CTI_Air_cam cameraEffect["TERMINATE","BACK"];
		camDestroy CTI_Air_cam;
		showCinemaBorder false;
	};	
	case "onPylonListLBSelChanged": {
		_changeto = _this select 1;
		//systemchat format ["_changeto: %1",_changeto];
		_selected = lbdata [790005,(lbCursel 790005)];
		//systemchat format ["selected: %1",_selected];
		_unitpylonfull = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitpylonfull";
		//_activePylonMags = _unitpylonfull select 1;
		//systemchat format ["unitpylonfull: %1",_unitpylonfull select 0];
		_ispylon = if(_selected in (_unitpylonfull select 0)) then {true} else {false};
		//systemchat format ["_ispylon: %1",_ispylon];
		_islvossera = if(_selected isEqualTo "LVOSS_left" || _selected isEqualTo "LVOSS_right" || _selected isEqualTo "ERA_left" || _selected isEqualTo "ERA_right") then {true} else {false};
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		_turretlist = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretlist";
		//systemchat format ["turretlist: %1  ", _turretlist];
		if !(_selected isEqualTo "blocked") then {
			if (_ispylon) then {
				//_unitpylonfull = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitpylonfull";
				_existingctn = (count _turretlist );
				_changeto = _changeto - _existingctn;
				//systemchat format ["ch: %1 | %2 ",_changeto, _existingctn];
				_activePylon = _unitpylonfull select 0;
				_activePylonMags = _unitpylonfull select 1;
				_activePylonct = _unitpylonfull select 2;
				_selectedmag = _activePylonMags select _changeto;
				_selectedpylon = _activePylon select _changeto;
				_selectedcount = _activePylonct select _changeto;
				_pylonNum = 0;
				{
					if (_x isEqualTo _selectedpylon) then {_pylonNum = _foreachindex};
				} foreach _activePylon;
				//systemchat format ["sel: %1 | %2 | %3 ",_unit, _selectedpylon, _selectedmag];
				[_unit, _selectedpylon, _selectedmag] call CTI_UI_Loadout_viewMags;
				[_unit, [_pylonNum,_selectedpylon], _selectedmag, _selectedcount] call CTI_UI_Loadout_viewCurrentPylonMag;
			} else {
				if (_islvossera) then {
					[_unit, _selected] call CTI_UI_Loadout_viewLvossEraMags;
					[_unit, _selected] call CTI_UI_Loadout_viewCurrentLvossEraMag;
				} else {
					//systemchat format ["tur: %1 ",_turretlist];
					_changeto = _changeto;
					//systemchat format ["ch: %1  ",_changeto];
					_turretlistsel = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretlist";
					_selectedturret = _turretlistsel select _changeto;		
					//systemchat format ["sel: %1 | %2 ",_unit, _selectedturret];	
					if !(isNil '_selectedturret') then {
						[_unit, _selectedturret] call CTI_UI_Loadout_viewTurretMags;
						[_unit, _selectedturret] call CTI_UI_Loadout_viewCurrentTurretMag;
					};
				};
			};	
		};			
	
	};
	case "onCurMagListLBSelChanged": {
		_changeto = _this select 1;
		_selected = lbdata [790020,(lbCursel 790020)];
		_curmaglist = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_currentmaglist";
		_selectedmag = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_currentmaglist") select _changeto;
		(_selectedmag) call CTI_UI_Loadout_updateClearMag;

	};
	case "onMagListLBSelChanged": {
		_changeto = _this select 1;
		_selected = lbdata [790007,(lbCursel 790007)];
		//systemchat format ["selected: %1",_selected];
		_unitpylonfull = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitvalidmaglist";
		//systemchat format ["unitpylonfull: %1",_unitpylonfull];
		_ispylon = if(_selected in _unitpylonfull) then {true} else {false};
		//systemchat format ["ispylon : %1 ",_ispylon];
		_islvossera = if(_selected isEqualTo "LVOSS_left" || _selected isEqualTo "LVOSS_right" || _selected isEqualTo "ERA_left" || _selected isEqualTo "ERA_right") then {true} else {false};
		if !(_selected isEqualTo "blocked") then {
			if (_ispylon) then {
				_selectedmag = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitvalidmaglist") select _changeto;
				//systemchat format ["selectedmag: %1 ",_selectedmag];
				(_selectedmag) call CTI_UI_Loadout_viewMagStats;
			} else {
				if (_islvossera) then {
					[_selected] call CTI_UI_Loadout_viewLvossEraStats;
				} else {
					_turretlist = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitvalidturretmaglist") select _changeto;
					//systemchat format ["turretlist: %1 ",_turretlist];
					_selectedturretmag = _turretlist  ;	
					//systemchat format ["mag: %1 ",_selectedturretmag];	
					(_selectedturretmag) call CTI_UI_Loadout_viewTurretMagStats;
				};
			};
		};
	};
	case "onFlareLBSelChanged": {
		_changeto = _this select 1;
		_selectedflare = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_flarelist") select _changeto;
		(_selectedflare) call onFlaresLBSelChanged;
	};
	case "onCamoLBSelChanged": {
		_changeto = _this select 1;
		//systemchat format ["camo: %1 ", _changeto];
		if (!isNil "_changeto") then {
			//if (_changeto > 0) then {_changeto = _changeto - 1};//remove 1 for helper
			_selectedcamo = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_camolist");
			_colorName = _selectedcamo select 0 select _changeto;
			_colorTextures = _selectedcamo select 1 select _changeto;
			_colorPrice = _selectedcamo select 2 select _changeto;
			_colorType = _selectedcamo select 3 select _changeto;
			//systemchat format ["selcamo: %1 | ",_colorName, _colorTextures];
			//[_colorName, _colorTextures] spawn CTI_UI_Loadout_setSkin;	
			[_colorName, _colorTextures, _colorPrice, _colorType] spawn CTI_UI_Loadout_PurchaseSkin;
		};
	};	
	case "onClearMagPressed": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		(_unit) spawn CTI_UI_Loadout_purchaseClearMag;
	};
	case "onClearPressed": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		(_unit) spawn CTI_UI_Loadout_purchaseClearAll;
	};
	case "onRearmPressed": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		(_unit) spawn CTI_UI_Loadout_purchaseRearm;
	};
	case "onQtyChanged": {
		(_unit) call CTI_UI_Loadout_magazineQtyChanged;
	};
	case "onPurchasePressed": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		_type = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_purchasetype");
		switch (_type) do {
			case "turret": {
				(_unit) spawn CTI_UI_Loadout_purchaseTurrets;	
			};
			case "pylon": {
				(_unit) spawn CTI_UI_Loadout_purchasePylons;
			};
			case "lvossera": {
				(_unit) spawn CTI_UI_Loadout_purchaseLvossEra;
			};
		};		
		//Update Unit Variables
		//(_unit) call CTI_UI_Loadout_savetemplates;
		//Update Pylonlist - fill
		//(_unit) call CTI_UI_Loadout_viewAllArms;	
		
	};
	case "onTemplateListLBSelChanged":{
		_changeto = _this select 1;

	};
	case "onTemplateCreatePressed": {
			_seed = round(time + random 10000 - random 500 + diag_frameno);
			(_seed) call CTI_UI_Loadout_SaveProfileTemplate;

	};
	case "onTemplateDeletePressed":{
		_selectedtemplate = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_templatelist") select _changeto;
		(_selectedtemplate) call CTI_UI_Loadout_DeleteTemplate;

	};
	case "onTemplatePurchasePressed":{
		_selectedtemplate = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_templatelist") select _changeto;
		(_selectedtemplate) call CTI_UI_Loadout_PurchaseTemplate;
	};
	case "onTemplateRenamePressed":{

	};
	case "onCustomListLBSelChanged": {
		_changeto = _this select 1;
	};
	case "onCustomClearPressed": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		_selected = lbdata [790025,(lbCursel 790025)];
		_selected = (lbCursel 790025);
		//systemchat format ["PRE: %1 | %2",_unit, _selected];
		[_unit, _selected] spawn CTI_UI_Loadout_PurchaseRemoveCustomization;
		//[_unit, _selected] call CTI_UI_Loadout_clearCustomization;
		//(_unit) call CTI_UI_Loadout_UpdateCustomizations;
	};
	case "onCustomPurchasePressed": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
		_selected = lbdata [790025,(lbCursel 790025)];
		_selected = (lbCursel 790025);
		//systemchat format ["PRE: %1 | %2",_unit, _selected];
		[_unit, _selected] spawn CTI_UI_Loadout_purchaseCustomization;
		//[_unit, _selected] call CTI_UI_Loadout_PurchaseCustomization;
		//(_unit) call CTI_UI_Loadout_UpdateCustomizations;
	};	
	case "onMusicPressed": {
		_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");		
		_arg = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_music");
		[_unit,_arg] spawn CTI_UI_Loadout_toggleMusic;
		//todo add tunes while in loadout
	};
	case "onExitPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscLoadoutMenu";
		createDialog "CTI_RscServiceMenu";
	};	
};


