Private ['_toCache', '_group', '_leader'];

_group = _this select 0;
_leader = _this select 1;

_toCache = (units _group) - [(_leader)];
{
    if (!(isPlayer _x) && {!("driver" in assignedVehicleRole _x)}) then {
    _x enablesimulationglobal false;
    _x hideobjectglobal true;};
} forEach _toCache;