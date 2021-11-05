Private ["_hq","_unit"];

_unit = _this;

(_unit) Call CTI_SK_FNC_Apply;
[] spawn CTI_CL_FNC_UpdateActions;

Options = _unit addAction ["<t color='#42b6ff'>" + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf", "", 999, false, true, "", "_target == player"];

if (!isNull commanderTeam) then {
	_hq = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQ;
	if (commanderTeam == group _unit) then {HQAction = _unit addAction [localize "STR_WF_BuildMenu","Client\Action\Action_Build.sqf", [_hq], 1000, false, true, "", "hqInRange && canBuildWHQ && (_target == player)"];};
    player addAction ["<t color='#FF0000'>"+ "RECOVER HQ" + "  " + str (missionNameSpace getVariable 'CTI_C_BASE_HQ_REPAIR_PRICE_CASH') +"$" +"</t>", "Client\Action\Action_RepairMHQDepot.sqf", [], 1, false, true, "", "(!(alive ((CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQ)))&&(leader  (CTI_Client_SideJoined call CTI_CO_FNC_GetCommanderTeam) == leader (vehicle player))&&(typeOf cursorTarget in ['Fort_CAmp','CTI_C_DEPOT'])&&(cursorTarget distance player < 100)"];
};

// adjusting fatigue
if ((missionNamespace getVariable "CTI_C_GAMEPLAY_FATIGUE_ENABLED") == 1) then {
    player setCustomAimCoef 0.35;
    player setUnitRecoilCoefficient 0.75;
    player enablestamina false;
};

[CTI_Client_SideJoinedText,'UnitsCreated',1] Call CTI_CO_FNC_UpdateStatistics;