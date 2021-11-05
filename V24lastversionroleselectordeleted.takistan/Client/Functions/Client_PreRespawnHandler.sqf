Private ["_hq","_unit"];

_unit = _this;

(_unit) Call cti_SK_FNC_Apply;
[] spawn cti_CL_FNC_UpdateActions;

Options = _unit addAction ["<t color='#42b6ff'>" + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf", "", 999, false, true, "", "_target == player"];

if (!isNull commanderTeam) then {
	_hq = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideHQ;
	if (commanderTeam == group _unit) then {HQAction = _unit addAction [localize "STR_WF_BuildMenu","Client\Action\Action_Build.sqf", [_hq], 1000, false, true, "", "hqInRange && canBuildWHQ && (_target == player)"];};
    player addAction ["<t color='#FF0000'>"+ "RECOVER HQ" + "  " + str (missionNameSpace getVariable 'cti_C_BASE_HQ_REPAIR_PRICE_CASH') +"$" +"</t>", "Client\Action\Action_RepairMHQDepot.sqf", [], 1, false, true, "", "(!(alive ((cti_Client_SideJoined) Call cti_CO_FNC_GetSideHQ)))&&(leader  (cti_Client_SideJoined call cti_CO_FNC_GetCommanderTeam) == leader (vehicle player))&&(typeOf cursorTarget in ['Fort_CAmp','cti_C_DEPOT'])&&(cursorTarget distance player < 100)"];
};

// adjusting fatigue
if ((missionNamespace getVariable "cti_C_GAMEPLAY_FATIGUE_ENABLED") == 1) then {
    player setCustomAimCoef 0.35;
    player setUnitRecoilCoefficient 0.75;
    player enablestamina false;
};

[cti_Client_SideJoinedText,'UnitsCreated',1] Call cti_CO_FNC_UpdateStatistics;