private ["_xpos", "_ypos", "_dis", "_a", "_bomb", "_bombs", "_volume"];

_xpos = _this select 0;
_ypos = _this select 1;
_dis = _this select 2;

_bombs = [];
_volume = 15 * ((argt_nuclear_radius - _dis) / argt_nuclear_radius);
for [{_a = 0}, {_a < 360}, {_a = _a + 45}] do
{
  _bomb = "Radio" createvehicle [_xpos + _dis * cos _a, _ypos + _dis * sin _a, 0];
  _bomb allowdammage false;
  _bomb say ["nuclear_boom", _volume];
  _bombs = _bombs + [_bomb];
};

sleep 17;

{deletevehicle _x} foreach _bombs;