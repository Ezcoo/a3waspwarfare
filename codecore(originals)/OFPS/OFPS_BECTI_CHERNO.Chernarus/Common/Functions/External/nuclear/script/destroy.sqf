private ["_object", "_bomb", "_pos"];

_object = _this select 0;

_pos = getpos _object;
_bomb = "Bo_GBU12_LGB" createvehicle [_pos select 0, _pos select 1, (_pos select 2) + 0.1];
_bomb setvelocity [0, 0, -100];
_object setdammage 1;

sleep 3;

_bomb = "Land_HelipadEmpty_F" createvehicle _pos;
_bomb allowdammage false;
//[_bomb,CTI_SOUND_nuke, NUKE_BLAST_WAVE_RADIUS * 2] call CTI_CO_FNC_Say3D;
[_bomb,CTI_SOUND_nuclear_boom, NUKE_BLAST_WAVE_RADIUS * 2] call CTI_CO_FNC_Say3D;

enableCamShake true;
addCamShake [5, 20, 10];

sleep 10;
deletevehicle _object;
deletevehicle _bomb;