private ["_skill","_player","_playerRoles","_skillDetails","_newSkillArray","_c","_l"];
_player = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_role = [_this,1,"",[""]] call BIS_fnc_param;
_roleDetails = [];
_playerRoles = [];


if (isNull _player || _role == "") exitWith {};

// get the skill details
waitUntil{!isNil 'WSW_fnc_getRoleDetails'};
_roleDetails = [_role, side _player] call WSW_fnc_getRoleDetails;

// Skill not found/invalid
if (count _roleDetails == 0) exitWith {};

// check if the user already have that skill
if (_role in _playerRoles) exitWith {
    [[_role,"owned",_playerRoles],"WSW_fnc_buyRoleConfirm",(owner _player),false] spawn BIS_fnc_MP;
};

// check if role limit allows to take requested role by player
if ((_roleDetails select 7) >= (_roleDetails select 6)) exitWith {
    [[_role,"maxRoleLimit",_playerRoles],"WSW_fnc_buyRoleConfirm",(owner _player),false] spawn BIS_fnc_MP;
};

// check if player has already bought some other role
if ((count _playerRoles) >= 1) exitWith {
    [[_role,"limit",_playerRoles],"WSW_fnc_buyRoleConfirm",(owner _player),false] spawn BIS_fnc_MP;
};

_playerRoles pushBack _role;
_currentOcuupiedRoleAmount = (_roleDetails select 7) + 1;
_roleDetails set [7, _currentOcuupiedRoleAmount];

_uid = getPlayerUID(_player);
_team = grpNull;

waitUntil{!isNil 'CTI_PRESENTSIDES'};
{
	{
		if !(isNil {_x getVariable "CTI_uid"}) then {if ((_x getVariable "CTI_uid") == _uid) then {_team = _x}};
		if !(isNull _team) exitWith {};
	} forEach ((_x Call CTI_CO_FNC_GetSideLogic) getVariable "CTI_teams");
	if !(isNull _team) exitWith {};
} forEach CTI_PRESENTSIDES;
_team setVariable ["wsw_role", _role, true];

[[_role,"success",_playerRoles],"WSW_fnc_buyRoleConfirm",(owner _player),false] spawn BIS_fnc_MP;