private ["_xpos", "_ypos"];

_xpos = _this select 0;
_ypos = _this select 1;

if ( [_xpos, _ypos, 0] distance player < (NUKE_BLAST_WAVE_RADIUS * 1) ) then
{
  0 faderadio 0.3;
  0 fadesound 0.3;
  0 fademusic 0.3;

  sleep 8;

  16 faderadio 1;
  16 fadesound 1;
  16 fademusic 0.5;
};