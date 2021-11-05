private ["_misc","_delete","_missionObject"];

CTI_GarbageCollector = [];

while {!CTI_GameOver} do {
	//CTI_GarbageCollector = CTI_GarbageCollector - [objNull];
	for '_i' from count(CTI_GarbageCollector)-1 to 0 step -1 do {if (isNull(CTI_GarbageCollector select _i)) then {CTI_GarbageCollector deleteAt _i}};

	//--- Add things here that dont get deleted.
	_misc = ((entities [["Slingload_base_F","ReammoBox_F"], [], false, false]) - (entities [["Slingload_base_F","ReammoBox_F"], [], false, true]));

	{
		if (!(_x in CTI_GarbageCollector) && isNil {_x getVariable "cti_gc_noremove"}) then {
			CTI_GarbageCollector pushback _x;
			[_x] spawn CTI_SE_FNC_TrashObject;
		};
	} forEach (allDead + _misc);

	//--- GC: Objects, one object deleted per cycle
	_delete = false;
	{
		_missionObject = _x;
		
		{
			if (_missionObject isKindOf _x) then { //--- Match
				if (count(_missionObject nearEntities ["Man", CTI_GC_GROUND_CLEANUP_DISTANCE_UNIT]) < 1) then {deleteVehicle _missionObject; _delete = true};
			};
	} forEach CTI_GC_GROUND_CLEANUP_KIND;

		if (_delete) exitWith {};
	} forEach allMissionObjects "";

	sleep 30;

};