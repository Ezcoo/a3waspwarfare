private["_item","_array"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
_array = [_this,1,[],[[]]] call BIS_fnc_param;
_index = -1;

{
    if (typeName _x != "ARRAY") then {
        _x = [_x];
    };

    if(_item in _x) exitWith {
        _index = _forEachIndex;
    };
} foreach _array;

_index;