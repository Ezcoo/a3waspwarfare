private ["_experience","_skilllist"];

if!(isNil 'WSW_resetRoleRequest')then{
    if(WSW_resetRoleRequest)then{
        _role = [_this,1,"",[""]] call BIS_fnc_param;

        WSW_gbl_boughtRoles = [];

        hint "Your skills have been reset.";

        [] call WSW_fnc_updateRolesMenu;
        [] spawn WSW_fnc_selectRole;

        if (!isNull (findDisplay 2800)) then {
            ctrlEnable[2804, true];
            ctrlEnable[2805, true];
        };
        WSW_resetRoleRequest = false;
        WSW_gbl_boughtRoles = [];
    };
};