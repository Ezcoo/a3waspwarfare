private ["_skill"];
_skill = [_this,0,"",[""]] call BIS_fnc_param;
_side = _this select 1;

_skillDetails = [];

{
    if (typeName (_x select 0) == "STRING") then {
        if ((_x select 0) == _skill) exitWith {
            _skillDetails = _x;
        };
    } else {
        private ["_y"];
        _y = _x;

        {
            if ((_x select 0) == _skill) exitWith {
                _skillDetails = _x;
            };
        } foreach _y;
    };

    if (count _skillDetails != 0) exitWith  {};

} foreach ([_side] call WSW_fnc_roleList);

_skillDetails;