private ["_scan"];

while {!CTI_GameOver} do {

	_scan = vehicles;
	if (missionNamespace getVariable "CTI_MARKERS_INFANTRY" isEqualTo 1) then {_scan =_scan + allUnits};

	{
		if (alive _x && !isNil{_x getVariable "cti_net"} && isNil{_x getVariable "cti_initialized"}) then {
			_x setVariable ["cti_initialized", true];
			[_x, _x getVariable "cti_net"] spawn CTI_CO_FNC_InitializeNetVehicle;
		};
	} forEach _scan;

	sleep 8;

};