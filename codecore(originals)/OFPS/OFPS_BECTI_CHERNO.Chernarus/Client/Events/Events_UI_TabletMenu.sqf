private ["_action","_upgrades","_enable"];
_action = _this select 0;
true call CTI_CL_FNC_UpdateBaseVariables;
switch (_action) do {
	case "onLoad": {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		
		//--- Gear available?
		//((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777101) ctrlEnable (if ((CTI_Base_GearInRange || CTI_Base_GearInRange_Mobile || CTI_Base_GearInRange_FOB || CTI_Base_GearInRange_LARGE_FOB || CTI_Base_GearInRange_Depot)) then {true} else {false});
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777101) ctrlEnable (if ((CTI_Base_ControlCenterInRange || CTI_Base_GearInRange_Depot ||CTI_Base_GearInRange || CTI_Base_GearInRange_Mobile || CTI_Base_GearInRange_AmmoPod || CTI_Base_GearInRange_FOB || CTI_Base_GearInRange_LARGE_FOB )) then {true} else {false}); //gear available everywhere. if cc destroyed then cannot access equipment unless near depot or barracks
		//--- Factory available?
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777102) ctrlEnable (if ((CTI_Base_BarracksInRange || CTI_Base_LightInRange || CTI_Base_HeavyInRange || CTI_Base_AirRotaryInRange || CTI_Base_AirFixedInRange || CTI_Base_AmmoInRange || CTI_Base_RepairInRange || CTI_Base_NavalInRange || CTI_Base_DepotInRange || CTI_Base_NavalDepotInRange || CTI_Base_LargeFOBInRange)) then {true} else {false});
		//--- Build available?
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777103) ctrlEnable (if ((call CTI_CL_FNC_IsPlayerCommander && CTI_Base_HQInRange && (CTI_P_SideLogic getVariable ['cti_hq_ready', true])) || CTI_Base_RepairInRange_Mobile || CTI_Base_DefenseTruckInRange_Mobile) then {true} else {false});
		//--- Halo available?
		
		_ctrl_halo_enable = false;
		_ctrl_halo_tooltip = "HALO Jump is unavailable";
		
		//--- Make sure that the cooldown is done
		if (time - CTI_HALO_LASTTIME >= CTI_HALO_COOLDOWN) then {
			_upgrade_halo = _upgrades select CTI_UPGRADE_HALO;
			
			_cost = CTI_HALO_COST;
			//--- Check whether we're dealing with a Man or a Vehicle
			if (player isEqualTo vehicle player) then {
				//--- Man
				if ((CTI_Base_AirRotaryInRange && _upgrade_halo > 0) || (CTI_Base_AirFixedInRange && _upgrade_halo > 0) || (CTI_Base_DepotInRange && _upgrade_halo > 1) || (CTI_Base_GearInRange_LARGE_FOB && _upgrade_halo > 1)) then {
					_ctrl_halo_tooltip = format["HALO Jump ($%1.)", CTI_HALO_COST];
					_ctrl_halo_enable = true;
				};
			} else {
				//--- Vehicle (not in blacklist, not HQ, not attached to ropes)
				if ((CTI_Base_AirRotaryInRange && _upgrade_halo > 0) || (CTI_Base_AirFixedInRange && _upgrade_halo > 0) || (CTI_Base_DepotInRange && _upgrade_halo > 1)) then {
					if !((typeOf (vehicle player) in CTI_HALO_BLACKLIST) && (vehicle player isEqualTo ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ)) && (isNull (ropeAttachedTo vehicle player))) then {
						//--- Vehicle (HALO 3 Required)
						if (_upgrade_halo >= 3) then {
							if (speed (vehicle player) < 20) then {
								_var = missionNamespace getVariable typeOf(vehicle player);
								_vehicle_cost = [CTI_HALO_COST, _var select CTI_UNIT_PRICE] select !(isNil '_var');
								_cost = round(CTI_HALO_COST + (_vehicle_cost * (CTI_HALO_COST_VEHICLE_PERCENTAGE / 100)));
								
								_ctrl_halo_tooltip = format["HALO Jump - Vehicle ($%1.)", _cost];
								_ctrl_halo_enable = true;
							};
						};
					} else {
						_ctrl_halo_tooltip = "This vehicle may not be used for HALO Jump";
					};
				};
			};
		} else {
			_ctrl_halo_tooltip = format ["HALO Jump (%1s)", floor (CTI_HALO_COOLDOWN - (time - CTI_HALO_LASTTIME))];
		};
		
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777106) ctrlEnable _ctrl_halo_enable;
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl (777106)) ctrlSetTooltip _ctrl_halo_tooltip;
		
		//--- Sat cam available?
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 779104) ctrlEnable (if ((CTI_Base_SatelliteInRange && _upgrades select CTI_UPGRADE_SATELLITE > 0)) then {true} else {false});
		//CommandingMenu
		if !(CTI_Base_ControlCenterInRange) then {
			{((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl _x) ctrlEnable false} forEach [780106,780102,780101,780108];
		};
		if !(call CTI_CL_FNC_IsPlayerCommander) then {
			{((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl _x) ctrlEnable false} forEach [780106,780102,780103,780107,780104];
		};
		if ((missionNamespace getVariable "CTI_ARTILLERY_SETUP") < 0) then {
			((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 780108) ctrlEnable false;
		};
		if (group player isEqualTo ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideCommanderTeam) && (CTI_P_SideLogic getVariable ["cti_votetime", -1]) < 0) then {
			((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 779105) ctrlSetText "GIVE UP COMMAND";
		};
		
		execVM "Client\GUI\GUI_TabletMenu.sqf";
		
	};
	case "onServicePressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscServiceMenu";
	};
	case "onTransferPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscTransferResourcesMenu";
	};
	case "onClosePressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
	};
	case "onHomePressed": {
		closeDialog 0;
		createDialog "CTI_RscTabletDialog";
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
	};
	case "onBackPressed": {
		closeDialog 0;
		createDialog CTI_P_LastRootMenu;
	};
	//HOMEPAGE ITEMS
	case "onEquipmentPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscGearMenu";
	};
	case "onFactoryPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscPurchaseMenu";
	};
	case "onBuildPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		execVM "Client\Actions\Action_TabletCoinBuild.sqf";
	};
	case "onCommandPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscTabletCommandMenu";
	};
	case "onOptionsPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscTabletDialogOptions";
	};
	case "onHaloPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		execVM "Client\Functions\Externals\ATM_airdrop\atm_airdrop.sqf";
	};
	//OPTIONS
	case "onVideoSettingsPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletOptions";
		createDialog "CTI_RscVideoSettingsMenu";
	};
	case "onOnlineHelpPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletOptions";
		createDialog "CTI_RscOnlineHelpMenu";
	};
	case "onUnflipPressed": { //--- Unflip the nearest vehicle
		_vehicle = vehicle player;
		if (player != _vehicle) then {
			if (speed _vehicle < 5 && getPos _vehicle select 2 < 5) then {
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 1];
				_vehicle setVelocity [0,0,1];
			};
		} else {
			{
				if (speed _x < 5 && getPos _x select 2 < 5) then {
					_x setPos [getPos _x select 0, getPos _x select 1, 1];
					_x setVelocity [0,0,1];
				};
			} forEach (player nearEntities[["Car","Motorcycle","Ship","Tank"],10]);
		};
	};
	case "onAIMicroPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletOptions";
		createDialog "CTI_RscAIMicromanagementMenu";
	};
	case "onUnitsCamPressed": {
		if (CTI_Base_ControlCenterInRange) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletOptions";
			createDialog "CTI_RscUnitsCamera";
		};
	};
	case "onSatCamPressed": {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_Base_SatelliteInRange && _upgrades select CTI_UPGRADE_SATELLITE > 0) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletOptions";
			if (_upgrades select CTI_UPGRADE_SATELLITE > 1) then {
				createDialog "CTI_RscSatelitteCamera";
			} else {
				createDialog "CTI_RscBaseCamera";
			};
		};
	};
	case "onCommanderVotePressed": {
		if (CTI_P_SideLogic getVariable ["cti_votetime", -1] < 0) then { //--- No vote's running
		
			//--- Close this menu and let the server-to-client PVF open the Vote menu
			closeDialog 0;
			
			if (group player isEqualTo ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideCommanderTeam)) then {
				// If it's the current comm, let him pick who he wants to succeed him.
				createDialog "CTI_RscVoteMenu";
			} else {
				
				//--- Request a new vote
				[CTI_P_SideJoined, name player] remoteExec ["CTI_PVF_SRV_RequestCommanderVote", CTI_PV_SERVER];
				
				//--- Don't lock this script
				0 spawn {
					(name player) remoteExec ["CTI_PVF_CLT_OnNewCommanderVote", CTI_P_SideJoined];
				};
			};
		} else {
			closeDialog 0;
			createDialog "CTI_RscVoteMenu";
		};
	};
	case "onMusicPressed": { //--- Play some music
		player sidechat "lalalalaaaaaaaaaa lalalalaaaaaaaa laaaa";
	};
	//COMMANDING
	case "onMapPressed": {
		if (CTI_Base_ControlCenterInRange && call CTI_CL_FNC_IsPlayerCommander) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscMapCommandMenu";
		};
	};
	case "onTeamsPressed": {
		if (CTI_Base_ControlCenterInRange && call CTI_CL_FNC_IsPlayerCommander) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscTeamsMenu";
		};
	};
	case "onUpgradesPressed": {
		if (CTI_Base_ControlCenterInRange) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscUpgradeMenu";
		};
	};
	case "onWorkersPressed": {
		if (call CTI_CL_FNC_IsPlayerCommander) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscWorkersMenu";
		};
	};
	case "onDefensesPressed": {
		if (call CTI_CL_FNC_IsPlayerCommander) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscDefenseMenu";
		};
	};
	case "onRequestMenuPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
		createDialog "CTI_RscRequestMenu";
	};
	case "onArtilleryMenuPressed": {
		if ((missionNamespace getVariable "CTI_ARTILLERY_SETUP") > -1 && CTI_Base_ControlCenterInRange) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscArtilleryMenu";
		};
	};
};