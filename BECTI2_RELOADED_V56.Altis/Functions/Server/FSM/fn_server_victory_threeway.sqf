private["_victory","_total","_side","_hq","_structures","_towns","_factories"];

_victory = missionNamespace getVariable "cti_C_VICTORY_THREEWAY";
_total = totalTowns;
//_innerTimer = 0;
_loopTimer = 60;

while {!cti_GameOver} do {

	if (_victory == 0) then {
		{
			_side = _x;
			_hq = (_x) Call EZC_fnc_Functions_Common_GetSideHQ;
			_structures = (_x) Call EZC_fnc_Functions_Common_GetSideStructures;
			_towns = (_x) Call EZC_fnc_Functions_Common_GetTownsHeld;
	
			_factories = 0;
			{
				_factories = _factories + count([_side,missionNamespace getVariable Format ["cti_%1%2TYPE",_side,_x], _structures] Call EZC_fnc_Functions_Common_GetFactories);
			} forEach ["BARRACKS","LIGHT","HEAVY","AIRCRAFT"];

			if (!(alive _hq)  && _factories == 0 || _towns == _total && !cti_GameOver) then {
				["endgame", (_x) Call EZC_fnc_Functions_Common_GetSideID] remoteExecCall ["EZC_fnc_PVFunctions_HandleSpecial"];
				WF_Logic setVariable ["WF_Winner", _x];
				cti_GameOver = true;
			};
		} forEach cti_PRESENTSIDES - [cti_DEFENDER];
	};
	sleep _loopTimer;
};

sleep 5;
diag_log Format["[WFBE (OUTRO)][frameno:%1 | ticktime:%2] server_victory_threeway.sqf: Mission end - [Done]",diag_frameno,diag_tickTime];
failMission "END1";