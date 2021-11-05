private ["_action","_upgrades","_enable"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		(CTI_P_SideJoined) call CTI_UI_DefenseMenu_GetDefensiveUnits;
		execVM "Client\GUI\GUI_DefenseMenu.sqf";	
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
};