Private["_client","_locked","_side","_vehicle"];

_vehicle = _this select 0;
_locked = _this select 1;

_vehicle lock _locked;

[_vehicle,_locked] remoteExecCall ["EZC_fnc_PVFunctions_SetVehicleLock",-2];