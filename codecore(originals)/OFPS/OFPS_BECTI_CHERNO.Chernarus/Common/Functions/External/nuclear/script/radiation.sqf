private ["_xpos", "_ypos", "_blast_time", "_all_radius", "_radius", "_current_radius", "_v", "_distance", "_radiation", "_damage", "_dmg", "_x"];

_xpos = _this select 0;
_ypos = _this select 1;
_blast_time = _this select 2;

_all_radius  = NUKE_RADIATION_RADIUS * 1.5;
_radius = _all_radius;
_v = _radius / (2 * NUKE_HALF_LIFE);

while {_radius > 1} do
{
  _current_radius = _radius - (time - _blast_time) * _v;
  {
    if ( (_x iskindof "Man") || count (crew _x) > 0 ) then
    {
      _distance = [_xpos, _ypos] distance _x;  
      if ( _distance < _current_radius ) then
      {
        _radiation = (1 - _distance / _current_radius) * _current_radius / _all_radius;
        if ( _x iskindof "Man" ) then
        {
          _damage = NUKE_RADIATION_DAMAGE * _radiation;
          _damage = _damage + random _damage;
          _x setdammage ((getdammage _x) + _damage);
          if ( _x isEqualTo player && _damage > 0.01 ) then {titletext ["", "BLACK IN"]};
        } else
        {
          _radiation = NUKE_CAR_ARMOUR * _radiation;
          _damage = NUKE_RADIATION_DAMAGE * _radiation;
	  {
	    _dmg = _damage + random _damage;
	    _x setdammage ((getdammage _x) + _dmg);
            if ( _x isEqualTo player && _dmg > 0.01 ) then {titletext ["", "BLACK IN"]};
	  } foreach (crew _x);
        };
      };
    };
  } foreach ([_xpos, _ypos, 0] nearobjects ["All", _current_radius]);
  sleep (1 + random 1);
  if ( (time - _blast_time) > NUKE_HALF_LIFE ) then
  {
    _radius = _radius / 2;
    _blast_time = _blast_time + NUKE_HALF_LIFE;
    _v = _radius / (2 * NUKE_HALF_LIFE);
  };
};