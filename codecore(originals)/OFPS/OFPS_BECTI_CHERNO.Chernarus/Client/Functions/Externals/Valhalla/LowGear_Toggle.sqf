Private ["_vehicle"];

//_vehicle = _this select 0;
_vehicle = vehicle player;
Local_HighClimbingModeOn=!Local_HighClimbingModeOn;

if (Local_HighClimbingModeOn) then {(_vehicle) spawn VALHALLA_FNC_LowGear};