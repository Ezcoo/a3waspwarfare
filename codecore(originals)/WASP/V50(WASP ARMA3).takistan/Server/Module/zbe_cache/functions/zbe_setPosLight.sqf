{
    _testpos = (formationPosition _x);
    if (!(isNil "_testpos") && (count _testpos > 0)) then {
        if (!(isPlayer _x) && (vehicle _x == _x)) then { _x setPos _testpos; };
    };
} forEach _toCache;