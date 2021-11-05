Private ["_lock","_MHQ"];

_MHQ = _this select 0;

_lock = if (locked _MHQ) then {false} else {true};

// CTI_RequestVehicleLock = ['SRVFNCREQUESTVEHICLELOCK',[_MHQ,_lock]];
// publicVariable 'CTI_RequestVehicleLock';
// if (isHostedServer) then {['SRVFNCREQUESTVEHICLELOCK',[_MHQ,_lock]] Spawn HandleSPVF};

//--- If HQ is local to the client, then just perform the action locally.
if (local _MHQ) then {
	_MHQ lock _lock;
} else {
	[_MHQ,_lock] remoteExecCall ["CTI_SE_PVF_RequestVehicleLock",2];
};