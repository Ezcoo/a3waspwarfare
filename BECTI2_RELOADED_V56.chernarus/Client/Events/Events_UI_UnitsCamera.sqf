private ["_action"];
_action = _this select 0;
true call CTI_CL_FNC_UpdateBaseVariables;
switch (_action) do {
	case "onLoad": {
		_groups = (cti_Client_SideJoined) call CTI_CO_FNC_GetSideGroups;
		
		
		
		
		_track = player;
		showCinemaBorder false;
		
		_pitch = 0;
		_dir = 180;
		_distance = 2.5;
		_pos = [(sin _dir)*(cos _pitch * _distance),(cos _pitch) * (cos _dir * _distance),1.5-(sin _pitch * _distance)];
		
		CTI_UnitsCamera = "camera" camCreate getPos _track;
		CTI_UnitsCamera camSetTarget _track;
		CTI_UnitsCamera camSetRelPos _pos;
		CTI_UnitsCamera camCommit 0;
		
		if (difficultyOption "thirdPersonView" isEqualTo 1) then {
			uiNamespace setVariable ["cti_dialog_ui_unitscam_camview", "external"];
			CTI_UnitsCamera cameraEffect ["Internal", "back"];
			
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180021) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.01), SafeZoneY + (SafeZoneH * 0.80), SafeZoneW * 0.14, SafeZoneH * 0.04]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180021) ctrlCommit 0; //--- Bring back the button!
		} else {
			uiNamespace setVariable ["cti_dialog_ui_unitscam_camview", "internal"];
			vehicle _track switchCamera "INTERNAL";
		};
		
		uiNamespace setVariable ["cti_dialog_ui_unitscam_anchor", nil];
		uiNamespace setVariable ["cti_dialog_ui_unitscam_camview_in", cameraView];
		uiNamespace setVariable ["cti_dialog_ui_unitscam_screenselect", objNull];
		uiNamespace setVariable ["cti_dialog_ui_unitscam_pitch", 0];
		uiNamespace setVariable ["cti_dialog_ui_unitscam_dir", 180];
		uiNamespace setVariable ["cti_dialog_ui_unitscam_focus", _track];
		
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180001) ctrlAddEventHandler ["MouseButtonDown", "nullReturn = _this call CTI_UI_KeyHandler_UnitsCam_MouseButtonDown"];
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180001) ctrlAddEventHandler ["MouseButtonUp", "nullReturn = _this call CTI_UI_KeyHandler_UnitsCam_MouseButtonUp"];
		// ((uiNamespace getVariable "cti_dialog_ui_satcam") displayCtrl 170001) ctrlAddEventHandler ["MouseZChanged", "nullReturn = _this call CTI_UI_KeyHandler_SatelitteCamera_MouseZChanged"];
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180001) ctrlAddEventHandler ["MouseMoving", "nullReturn = _this call CTI_UI_KeyHandler_UnitsCam_MouseMoving"];
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180001) ctrlAddEventHandler ["MouseHolding", "nullReturn = _this call CTI_UI_KeyHandler_UnitsCam_MouseMoving"];
		
		ctrlSetFocus ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180001);
		
		
		
		_groups = (cti_Client_SideJoined) call CTI_CO_FNC_GetSideGroups;
		uiNamespace setVariable ["cti_dialog_ui_unitscam_groups", _groups];
		
		
		
		_origin = uiNamespace getVariable "cti_dialog_ui_unitscam_origin";
		if (isNil '_origin') then { _origin = objNull };
		
		
		
		{
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180100) lbAdd format ["%2 ",_x getVariable [CTI_PLAYER_DEFAULT_ALIAS], if (isPlayer leader _x) then {name leader _x} else {"AI"}];
			if (isNull _origin) then {
				if (group _track isEqualTo _x) then {((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180100) lbSetCurSel _forEachIndex};
			} else {
				if (group _origin isEqualTo _x) then {if (_origin isEqualTo leader _x) then {uiNamespace setVariable ["cti_dialog_ui_unitscam_origin", nil]}; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180100) lbSetCurSel _forEachIndex};
			};
		} forEach _groups;
		
		
		
		
		
		if (isNil {uiNamespace getVariable "cti_dialog_ui_unitscam_showgroups"}) then {uiNamespace setVariable ["cti_dialog_ui_unitscam_showgroups", true]};
		if (uiNamespace getVariable "cti_dialog_ui_unitscam_showgroups") then {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180007) ctrlSetText "Hide Teams";
		} else {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180007) ctrlSetText "Show Teams";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow false} forEach [180002, 180003, 180004, 180005, 180006, 180100, 180101];
		};
		
		if (isNil {uiNamespace getVariable "cti_dialog_ui_unitscam_showmap"}) then {uiNamespace setVariable ["cti_dialog_ui_unitscam_showmap", true]};
		if (uiNamespace getVariable "cti_dialog_ui_unitscam_showmap") then {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180008) ctrlSetText "Hide Map";
		} else {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180008) ctrlSetText "Show Map";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow false} forEach [180009, 180010];
		};
		
		if (isNil {uiNamespace getVariable "cti_dialog_ui_unitscam_showinfo"}) then {uiNamespace setVariable ["cti_dialog_ui_unitscam_showinfo", false]};
		
		/*no info needed
		if (uiNamespace getVariable "cti_dialog_ui_unitscam_showinfo") then {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180015) ctrlSetText "Hide Info";
		} else {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180015) ctrlSetText "Show Info";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow false} forEach [180016, 180018];
		};
		*/
		
		
		//--- Render in. Where the bloody hell is the dialog option to render thing invisible at first? visible = 0 ?!?!
		//{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.01), SafeZoneY + (SafezoneH * 0.06), SafeZoneW * 0.31, SafeZoneH * 0.6]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlCommit 0} forEach [180016, 180018];
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180009) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.8), SafeZoneY + (SafezoneH * 0.62), SafeZoneW * 0.19, SafeZoneH * 0.32]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180009) ctrlCommit 0;
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180010) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.805), SafeZoneY + (SafezoneH * 0.63), SafeZoneW * 0.18, SafeZoneH * 0.30]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180010) ctrlCommit 0;
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180002) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.8), SafeZoneY + (SafezoneH * 0.06), SafeZoneW * 0.19, SafeZoneH * 0.55]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180002) ctrlCommit 0;
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180003) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.805), SafeZoneY + (SafezoneH * 0.0605), SafeZoneW * 0.19, SafeZoneH * 0.03]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180003) ctrlCommit 0;
		{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.805), SafeZoneY + (SafeZoneH * 0.10), SafeZoneW * 0.18, SafeZoneH * 0.3]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlCommit 0} forEach [180004, 180100];
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180005) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.805), SafeZoneY + (SafezoneH * 0.41), SafeZoneW * 0.19, SafeZoneH * 0.03]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180005) ctrlCommit 0;
		{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.805), SafeZoneY + (SafezoneH * 0.45), SafeZoneW * 0.18, SafeZoneH * 0.15]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlCommit 0} forEach [180006, 180101];
		
		/*unflip not needed,we have 2 unitcams now
		if (call CTI_CL_FNC_IsPlayerCommander) then {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180022) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.01), SafeZoneY + (SafeZoneH * 0.75), SafeZoneW * 0.14, SafeZoneH * 0.04]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180022) ctrlCommit 0; //--- Bring back the button!
		};
		*/
		
		/*no satelite key needed
		//--- Sat cam available?
		_upgrades = (cti_Client_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		_enable = [false, true] select (CTI_Base_SatelliteInRange && _upgrades select CTI_UPGRADE_SATELLITE > 0);
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180014) ctrlEnable (if ((CTI_Base_SatelliteInRange && _upgrades select CTI_UPGRADE_SATELLITE > 0)) then {true} else {false});
		if (_enable) then {((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180014) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.31), SafeZoneY + (SafeZoneH * 0.95), SafeZoneW * 0.14, SafeZoneH * 0.04]; ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180014) ctrlCommit 0};
		*/
		
		
		if (isNil {uiNamespace getVariable "cti_dialog_ui_unitscam_viewmode"}) then {uiNamespace setVariable ["cti_dialog_ui_unitscam_viewmode", 0]};
		_mode = "Normal";
		switch (uiNamespace getVariable "cti_dialog_ui_unitscam_viewmode") do { case 1: {_mode = "NVG"; camUseNVG true }; };
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180013) ctrlSetText _mode;
		
		
		// Remote Control
		//((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180024) ctrlEnable false;
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180024) ctrlEnable (_ai call CTI_CL_FNC_CanRemoteUnit);
		
		
		/*
		//disable unflip key
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180022) ctrlEnable false;
		
		//disable satelite key
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180014) ctrlEnable false;
		*/
		
		// Paradrop
		_track call CTI_UI_UnitsCam_UpdateParaButton;
		
		
		execVM "Client\GUI\GUI_UnitsCamera.sqf";
	};
	case "onUnitsLBSelChanged": {
		_changeto = _this select 1;
	
		_group = (uiNamespace getVariable "cti_dialog_ui_unitscam_groups") select _changeto;
		lbClear ((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180101);
		
		_origin = uiNamespace getVariable "cti_dialog_ui_unitscam_origin";
		if (isNil '_origin') then { _origin = objNull };
		
		//--- Load the AI Members
		_ais = (units _group - [leader _group]) call CTI_CO_FNC_GetLiveUnits;
		
		uiNamespace setVariable ["cti_dialog_ui_unitscam_groups_ai", _ais];
		{
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180101) lbAdd format["%1", _x];
			if (alive _origin && _x isEqualTo _origin) then {((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180101) lbSetCurSel _forEachIndex};
		} forEach (_ais);
		
		if !(isNil {uiNamespace getVariable "cti_dialog_ui_unitscam_origin"}) then {
			uiNamespace setVariable ["cti_dialog_ui_unitscam_origin", nil];
		} else {
			if !(isNull (uiNamespace getVariable "cti_dialog_ui_unitscam_screenselect")) then {
				((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180101) lbSetCurSel (_ais find (uiNamespace getVariable "cti_dialog_ui_unitscam_screenselect"));
				uiNamespace setVariable ["cti_dialog_ui_unitscam_screenselect", objNull];
			} else {
				if (alive leader _group) then {
					switch (uiNamespace getVariable "cti_dialog_ui_unitscam_camview") do { case "internal": {(vehicle leader _group) switchCamera "INTERNAL"}; case "ironsight": {(vehicle leader _group) switchCamera "GUNNER"}};
					((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180011) ctrlSetText format["Feed: %1", leader _group];
					uiNamespace setVariable ["cti_dialog_ui_unitscam_focus", leader _group];
					[leader _group, "cti_dialog_ui_unitscam", 180017] call CTI_UI_SatelitteCamera_LoadEntityInformation;
				};
			};
		};
		
		// Remote Control
		//((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180024) ctrlEnable false;
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180024) ctrlEnable (_ai call CTI_CL_FNC_CanRemoteUnit);
		
		
		/*
		//disable unflip key
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180022) ctrlEnable false;
		
		//disable satelite key
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180014) ctrlEnable false;
		*/
		
		// Paradropping
		(leader _group) call CTI_UI_UnitsCam_UpdateParaButton;
	};
	case "onUnitsAILBSelChanged": {
		_changeto = _this select 1;
		
		
		
		_ai = (uiNamespace getVariable "cti_dialog_ui_unitscam_groups_ai") select _changeto;
		if (alive _ai) then {
			uiNamespace setVariable ["cti_dialog_ui_unitscam_focus", _ai];
			switch (uiNamespace getVariable "cti_dialog_ui_unitscam_camview") do { case "internal": {vehicle _ai switchCamera "INTERNAL"}; case "ironsight": {vehicle _ai switchCamera "GUNNER"}};
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180011) ctrlSetText format["Feed: %1", _ai];
			[_ai, "cti_dialog_ui_unitscam", 180017] call CTI_UI_SatelitteCamera_LoadEntityInformation;
		};
		// Remote Control
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180024) ctrlEnable (_ai call CTI_CL_FNC_CanRemoteUnit);
		/*
		//disable unflip key
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180022) ctrlEnable false;
		
		//disable satelite key
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180014) ctrlEnable false;
		*/
		
		// Paradropping
		_ai call CTI_UI_UnitsCam_UpdateParaButton;
	};
	case "onToggleGroup": {
		_changeto = !(uiNamespace getVariable "cti_dialog_ui_unitscam_showgroups");
		uiNamespace setVariable ["cti_dialog_ui_unitscam_showgroups", _changeTo];
		
		if (_changeto) then {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180007) ctrlSetText "Hide Teams";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow true} forEach [180002, 180003, 180004, 180005, 180006, 180100, 180101];
		} else {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180007) ctrlSetText "Show Teams";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow false} forEach [180002, 180003, 180004, 180005, 180006, 180100, 180101];
		};
	};
	case "onToggleMap": {
		_changeto = !(uiNamespace getVariable "cti_dialog_ui_unitscam_showmap");
		uiNamespace setVariable ["cti_dialog_ui_unitscam_showmap", _changeTo];
		
		if (_changeto) then {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180008) ctrlSetText "Hide Map";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow true} forEach [180009, 180010];
		} else {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180008) ctrlSetText "Show Map";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow false} forEach [180009, 180010];
		};
	};
	/*not needed
	case "onToggleInfo": {
		_changeto = !(uiNamespace getVariable "cti_dialog_ui_unitscam_showinfo");
		uiNamespace setVariable ["cti_dialog_ui_unitscam_showinfo", _changeTo];
		
		if (_changeto) then {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180015) ctrlSetText "Hide Info";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow true} forEach [180016, 180018];
		} else {
			((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180015) ctrlSetText "Show Info";
			{((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl _x) ctrlShow false} forEach [180016, 180018];
		};
	};
	*/
	case "onViewModeChanged": {
		_mode = (uiNamespace getVariable "cti_dialog_ui_unitscam_viewmode") + 1;
		if (_mode > 1) then { _mode = 0 };
		uiNamespace setVariable ["cti_dialog_ui_unitscam_viewmode", _mode];
		switch (_mode) do { 
			case 1: {_mode = "NVG"; camUseNVG true}; 
			default {_mode = "Normal"; camUseNVG false};
		};
		((uiNamespace getVariable "cti_dialog_ui_unitscam") displayCtrl 180013) ctrlSetText _mode;
	};
	case "onSatelliteCameraJump": {
		_upgrades = (cti_Client_SideJoined) call CTI_CO_FNC_GetSideUpgrades;		
		_track = uiNamespace getVariable "cti_dialog_ui_unitscam_focus";
		if !(isNil '_track') then {
			if (alive _track) then {
				titleCut["","BLACK IN",1];
				closeDialog 0;
				if (_upgrades select CTI_UPGRADE_SATELLITE > 1) then {
					uiNamespace setVariable ["cti_dialog_ui_satcam_origin", _track];
					createDialog "CTI_RscSatelitteCamera";
				} else {
					uiNamespace setVariable ["cti_dialog_ui_basecam_origin", _track];
					createDialog "CTI_RscBaseCamera";
				};
			};
		};
	};
	case "onRemote": {
		_who = uiNamespace getVariable "cti_dialog_ui_unitscam_focus";
		if (_who call CTI_CL_FNC_CanRemoteUnit) then {
			closeDialog 0;
			(_who) spawn CTI_CL_FNC_RemoteControl;
		};
	};
	case "onParadrop": {
		_who = uiNamespace getVariable "cti_dialog_ui_unitscam_focus";
		_flag = "";
		
		
		if !(typeOf vehicle _who in CTI_PARADROP_PODS) then {
			_flag = "Cannot paradrop. Unit must be in a valid pod";
		};
		
		if (_flag isEqualTo "" && alive _who) then {
			closeDialog 0;
			(_who) spawn {
				_vehicle = vehicle _this;
				_dropPoint = (_vehicle call CTI_CL_FNC_MarkParadropLocation);
				if (!isNil "_dropPoint" && _vehicle == vehicle _this && alive _this) then {
					_price = _this call CTI_UI_UnitsCam_CalculatePodCost;
					if (call CTI_CL_FNC_GetPlayerFunds >= _price) then {
						{
							_x setVariable ["cti_last_pos", [(_dropPoint) select 0, (_dropPoint) select 1, 0], true];
							_x setVariable ["cti_last_town", _dropPoint call CTI_CO_FNC_GetClosestTown, true];
						} forEach crew vehicle _this;
						
						
						[group player, - _price] call CTI_CO_FNC_ChangeFunds;
						if (local _vehicle) then {
							[_vehicle, _dropPoint] spawn CTI_CO_FNC_ParadropVehicle;
						} else {
							[_vehicle, _dropPoint] remoteExec ["CTI_PVF_CO_RequestParadropVehicle", _vehicle];
						};
					};
				};
			};
		} else {
			hint _flag;
		};
	};
	case "onCamChange": {
		_changeto = _this select 1;
		_track = uiNamespace getVariable "cti_dialog_ui_unitscam_focus";
		
		if !(isNil '_track') then {
			switch (_changeto) do {
				case "ironsight": {
					CTI_UnitsCamera cameraEffect["TERMINATE","BACK"];
					vehicle _track switchCamera "INTERNAL";
					vehicle _track switchCamera "GUNNER";
					uiNamespace setVariable ["cti_dialog_ui_unitscam_camview", "ironsight"];
				};
				case "internal": {
					CTI_UnitsCamera cameraEffect["TERMINATE","BACK"];
					vehicle _track switchCamera "INTERNAL";
					uiNamespace setVariable ["cti_dialog_ui_unitscam_camview", "internal"];
				};
				case "external": {
					if (difficultyOption "thirdPersonView" isEqualTo 1) then {
						vehicle _track switchCamera (uiNamespace getVariable "cti_dialog_ui_unitscam_camview_in");
						CTI_UnitsCamera cameraEffect ["Internal", "back"];
						uiNamespace setVariable ["cti_dialog_ui_unitscam_camview", "external"];
					};
				};
			};
		};
	};
	case "onUnitDisband": {
		_who = uiNamespace getVariable "cti_dialog_ui_unitscam_focus";
		if (!(isPlayer _who) && (alive _who)) then {
			_who setDammage 1;
		};
	};
	
	case "onUnitUnflip": {
		_who = uiNamespace getVariable "cti_dialog_ui_unitscam_focus";
		_who_vehicle = vehicle _who;
		if (alive _who && speed _who_vehicle < 5 && (getPos _who_vehicle select 2) < 5 && !isPlayer _who) then {
			_unflip = false;
			if (call CTI_CL_FNC_IsPlayerCommander) then {
				_unflip = true
			} else {
				if (_who in units player) then {_unflip = true};
			};

			if (_unflip) then {
				_who_vehicle setPos [getPos _who_vehicle select 0, getPos _who_vehicle select 1, 1];
				_who_vehicle setVelocity [0,0,1];
			};
		};
	};
	case "onUnload": {
		CTI_UnitsCamera cameraEffect["TERMINATE","BACK"];
		camDestroy CTI_UnitsCamera;
		vehicle player switchCamera (uiNamespace getVariable "cti_dialog_ui_unitscam_camview_in");
		showCinemaBorder true;
	};
};