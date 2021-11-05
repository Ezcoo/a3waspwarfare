private["_whq","_ehq"];

while {!CTI_GameOver} do {
	_whq = (west) Call CTI_CO_FNC_GetSideHQ;
	_ehq = (east) Call CTI_CO_FNC_GetSideHQ;

	if (isNil "gc_collector") then { gc_collector = []; };

	gc_collector = gc_collector - [objNull];
	{
		if (isNil {_x getVariable "CTI_trashable"} && !(_x in gc_collector)  && (_x != _whq) && (_x != _ehq)) then {
			_x spawn CTI_CO_FNC_TrashObject;
			gc_collector pushBack _x;
		};
	} forEach allDead;
	sleep 0.5;
};