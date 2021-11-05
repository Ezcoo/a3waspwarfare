Private ['_group','_leader','_pos','_toCache'];

_group = _this select 0;
_leader = _this select 1;

_toCache = (units _group) - [(_leader)];
{
    _pos = (formationPosition _x);
	if (!(isNil "_testpos") && (count _pos > 0)) then {
		if (!(isPlayer _x) && (vehicle _x == _x)) then {
            _x setPos _pos;
            _x allowDamage false;
            [_x]spawn {sleep 3;(_this select 0) allowDamage true;};
        };
	};
} forEach _toCache;