Private ['_roleList','_role'];

_roleList = [CTI_Client_SideJoined] call WSW_fnc_roleList;
_role = _roleList select (_this select 0);
_role set [7, _this select 1];

_roleName = _role select 0;
_roleDetails = [_roleName, CTI_Client_SideJoined] call WSW_fnc_getRoleDetails;
((findDisplay 2800) displayCtrl 2822) ctrlSetStructuredText parseText format[
    "<t size='1.8' color='#ffae2b'>Available Slots:</t> <t size='1.8'>%1</t><br/>",
   ((_roleDetails select 6) - (_roleDetails select 7))
];