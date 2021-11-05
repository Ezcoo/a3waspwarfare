Private ['_side', '_player','_roleName','_roleList','_mannedRoles'];

_side = _this select 0;
_player = _this select 1;
_roleName = _this select 2;

waitUntil{!isNil 'WSW_fnc_roleList'};
_roleList = [_side] call WSW_fnc_roleList;

_mannedRoles = -1;
_index = 0;
{
    if(_x select 0 == _roleName)exitWith{
        _mannedRoles = _x select 7;
        _index = _forEachIndex;
    };
}forEach _roleList;

[[_index, _mannedRoles],"WSW_fnc_updateRoleList",side _player,false] spawn BIS_fnc_MP;

