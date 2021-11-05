Private ['_toCache','_group','_leader'];

_group = _this select 0;
_leader = _this select 1;

_toCache = (units _group) - [(_leader)];
{
    if (!(isPlayer _x) && {!("driver" in assignedVehicleRole _x)}) then {
        if(alive _x && vehicle _leader == _x )then{
            _position = ([getPosATL _leader, 20] call WFBE_CO_FNC_GetSafePlace);
            _x setPosATL _position;
        };
        _x enablesimulationglobal true;
        _x hideobjectglobal false;
    };
} forEach _toCache;