private ["_role","_cost","_roleDetails","_c","_l"];
_role = lbData [2801, lbCurSel(2801)];
_cost = lbValue [2801, lbCurSel(2801)];
WSW_newBuyRolerequest = true;
if (_role == "") exitWith {};

ctrlEnable[2804, false];

// get the skill details
_roleDetails = [_role, side player] call WSW_fnc_getRoleDetails;

// Role not found/invalid
if ((count _roleDetails) == 0) exitWith {
    ctrlEnable[2804, true];
};

// check if the user already have that role
if (_role in WSW_gbl_boughtRoles) exitWith {
    [_role,"owned",_funds,WSW_gbl_boughtRoles] spawn WSW_fnc_buyRoleConfirm;
};

_result = true;
if ((count WSW_gbl_boughtRoles) >= 1) then {
    _result = [false] call WSW_fnc_resetRoles;
};

if(_result)then{
    waituntil{count WSW_gbl_boughtRoles == 0};
    // Check if the player have the required skills.
    _c = 0;
    _l = 0;
    {
        _c = _c + 1;
        if (_x in WSW_gbl_boughtRoles) then {
            _l = _l + 1;
        };
    } foreach (_roleDetails select 3);

    if(!WSW_isFirstRoleSelected)then{
        hint "Buying role first time for FREE...";
        WSW_IsRoleSelectedDialogClosed = true;
    }else{
        // check if the user have enough money
        _funds = call WFBE_CL_FNC_GetPlayerFunds;
        if (_funds < _cost) exitWith {
            [_role,"money",_funds,WSW_gbl_boughtRoles] spawn WSW_fnc_buyRoleConfirm;
        };
        -(_cost) Call WFBE_CL_FNC_ChangePlayerFunds;
        hint "Buying role, please wait..";
    };

    [[[player,_role], "Server\Module\Role\svrBuyRole.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;
};