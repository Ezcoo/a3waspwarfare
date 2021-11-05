private["_units", "_unit", "_dist", "_udist"];
_units = _this select 0;
_unit = _this select 1;
_dist = 10^5;
{_udist = _x distance _unit;
    if (_udist < _dist) then {
        _dist = _udist;};
    } forEach _units;
_dist;