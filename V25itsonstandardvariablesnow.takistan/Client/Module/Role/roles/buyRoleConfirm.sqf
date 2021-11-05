private ["_role","_status","_skilllist"];

if!(isNil 'WSW_newBuyRolerequest')then{
    if(WSW_newBuyRolerequest)then{
        _role = [_this,0,"",[""]] call BIS_fnc_param;
        _status = [_this,1,"",[""]] call BIS_fnc_param;
        _rolelist = [_this,2,[],[[]]] call BIS_fnc_param;

        if (_role == "" || _status == "") exitWith {
            if (!isNull (findDisplay 2800)) then {
                ctrlEnable[2804, true];
            };
        };

        // get the skill details
        _roleDetails = [_role, side player] call WSW_fnc_getRoleDetails;
        WSW_gbl_boughtRoles = _rolelist;

        // Role not found/invalid
        if (count _roleDetails == 0) exitWith {
            if (!isNull (findDisplay 2800)) then {
                ctrlEnable[2804, true];
            };
        };

        switch (_status) do {
            case "owned": {
                hint format["You have already selected the ""%1"" role.", (_roleDetails select 1)];
                if (!isNull (findDisplay 2800)) then { ctrlEnable[2804, true]; };
            };

            case "maxRoleLimit": {
                hint format["Maximum limit is reached for ""%1"" role in team.", (_roleDetails select 1)];
                if (!isNull (findDisplay 2800)) then { ctrlEnable[2804, true]; };
            };

            case "money": {
                hint format["You do not have enough money to buy the ""%1"" role.", (_roleDetails select 1)];
                if (!isNull (findDisplay 2800)) then { ctrlEnable[2804, true]; };
            };

            case "success": {                
				HINT parseText(format[localize 'STR_WF_RoleSelector_Text', (_roleDetails select 1)]);
                [] call WSW_fnc_updateRolesMenu;
                removeAllActions player;
                player addAction ["<t color='#42b6ff'>" + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf",
                                    "", 1, false, true, "", "_target == player"];

                if (!isNull(commanderTeam)) then {
                    if (commanderTeam == Group player) then {
                        _MHQ = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQ;
                        HQAction = leader(group player) addAction [localize "STR_WF_BuildMenu","Client\Action\Action_Build.sqf", [_MHQ], 100, false, true, "", "hqInRange && canBuildWHQ && (_target == player)"];
                    };
                };

                if (_role == WSW_SOLDIER) then {
                    missionNamespace setVariable ['CTI_C_PLAYERS_AI_MAX',ceil (1.5*(missionNamespace getVariable "CTI_C_PLAYERS_AI_MAX"))]
                 };

                CTI_SK_V_Type = _roleDetails select 0;
                (player) Call CTI_SK_FNC_Apply;
                [] spawn CTI_CL_FNC_UpdateActions;
                if (!isNull (findDisplay 2800)) then { ctrlEnable[2805, true]; };
                _selectRole = [] spawn WSW_fnc_selectRole;
                waituntil{scriptDone _selectRole};

                if(!WSW_isFirstRoleSelected)then {
                    _roleDefaultGear = [];
                    switch (CTI_SK_V_Type) do {
                        case WSW_SNIPER: {_roleDefaultGear = missionNamespace getVariable Format["CTI_%1_DefaultGearSpot", CTI_Client_SideJoinedText];};
                        case WSW_SOLDIER: {_roleDefaultGear = missionNamespace getVariable Format["CTI_%1_DefaultGearSoldier", CTI_Client_SideJoinedText];};
                        case WSW_ENGINEER: {_roleDefaultGear = missionNamespace getVariable Format["CTI_%1_DefaultGearEngineer", CTI_Client_SideJoinedText];};
                        case WSW_SPECOPS: {_roleDefaultGear = missionNamespace getVariable Format["CTI_%1_DefaultGearLock", CTI_Client_SideJoinedText];};
                        case WSW_ARTY_OPERATOR: {_roleDefaultGear = missionNamespace getVariable Format["CTI_%1_DefaultGearArtOperator", CTI_Client_SideJoinedText];};
                        case WSW_UAV_OPERATOR: {_roleDefaultGear = missionNamespace getVariable Format["CTI_%1_DefaultGearUAVOperator", CTI_Client_SideJoinedText];};
                    };
                    [player, _roleDefaultGear] call CTI_CO_FNC_EquipUnit;
                    CTI_P_CurrentGear = (player) call CTI_CO_FNC_GetUnitLoadout;
                    WSW_isFirstRoleSelected = true;
                    closeDialog 0;
                };
            };
        };
        WSW_newBuyRolerequest = false;
    };
};

