Private ['_confirm'];

if(!WSW_isFirstRoleSelected && !WSW_IsRoleSelectedDialogClosed)then{
    _confirm = [
        "You have not chosen one role for FREE",
        "Close the dialog?",
        "Yes, CLOSE",
        "No, WAIT"
    ] call BIS_fnc_guiMessage;

    if (_confirm) then {
        WSW_IsRoleSelectedDialogClosed = true;
        closeDialog 0;
    }else{
        createDialog "WSW_roles_menu";
        [] call WSW_fnc_updateRolesMenu;
    };
}else{
    closeDialog 0;
}