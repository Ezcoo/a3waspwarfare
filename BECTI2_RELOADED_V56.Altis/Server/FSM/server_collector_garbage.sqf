private["_whq","_ehq"];

while {!cti_GameOver} do {
	_whq = (west) Call EZC_fnc_Functions_Common_GetSideHQ;
	_ehq = (east) Call EZC_fnc_Functions_Common_GetSideHQ;

	if (isNil "gc_collector") then { gc_collector = []; };

	gc_collector = gc_collector - [objNull];
	{
		if (isNil {_x getVariable "cti_trashable"} && !(_x in gc_collector)  && (_x != _whq) && (_x != _ehq)) then {
			_x spawn EZC_fnc_Functions_Common_TrashObject;
			gc_collector pushBack _x;
		};
	} forEach allDead;
	sleep 0.5;
};