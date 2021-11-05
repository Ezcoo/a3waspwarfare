Private ['_toCache', '_group', '_leader'];

_group = _this select 0;
_leader = _this select 1;

_toCache = (units _group) - [(_leader)];
{
    if !(alive _x) then {
        _x enablesimulation true;
        _x hideobject false;
        if (zbe_debug) then {
            diag_log format ["ZBE_Cache %1 died while cached from group %2, uncaching and removing from cache loop",_x,_group];
        };
        _toCache deleteAt _forEachIndex;
    };
} forEach _toCache;