private ["_player","_playerRoles","_skillDetails","_index","_newSkillArray","_c"];
_player = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_role = [_this,1,"",[""]] call BIS_fnc_param;

if (isNull _player) exitWith {};
if(_role == "") exitwith {};

_roleDetails = [_role, side _player] call WSW_fnc_getRoleDetails;
_currentRoleAmount = (_roleDetails select 7);
if(_currentRoleAmount > 0)then{
    _roleDetails set [7, _currentRoleAmount - 1];
};

_uid = getPlayerUID(_player);
_team = grpNull;
{
	{
		if !(isNil {_x getVariable "CTI_uid"}) then {if ((_x getVariable "CTI_uid") == _uid) then {_team = _x}};
		if !(isNull _team) exitWith {};
	} forEach ((_x Call CTI_CO_FNC_GetSideLogic) getVariable "CTI_teams");
	if !(isNull _team) exitWith {};
} forEach CTI_PRESENTSIDES;
_team setVariable ["wsw_role", "", true];


[[],"WSW_fnc_resetRolesConfirm",(owner _player),false] spawn BIS_fnc_MP;