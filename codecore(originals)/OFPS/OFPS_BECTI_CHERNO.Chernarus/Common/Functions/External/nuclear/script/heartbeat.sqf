private ["_xpos", "_ypos", "_x"];

_xpos = _this select 0;
_ypos = _this select 1;

if ( player distance [_xpos, _ypos] < NUKE_BLAST_WAVE_RADIUS * 1.5 ) then
{
  _x = 0;
  while { alive player && _x < 50 } do
  {
	playsound CTI_SOUND_nuclear_heartbeat;
	sleep 3.2;
	_x = _x + 1;
  };
};