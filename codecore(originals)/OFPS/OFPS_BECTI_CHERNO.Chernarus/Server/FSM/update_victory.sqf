private ["_side","_hq","_structures","_towns","_factories"];

while {!CTI_GameOver} do {

		{
		_side = _x;
		_hq = (_x) call CTI_CO_FNC_GetSideHQ;
		_structures = (_x) call CTI_CO_FNC_GetSideStructures;
		_towns = (_x) call CTI_CO_FNC_GetSideTownCount;
		
		_factories = 0;
		{_factories = _factories + count([_x, _structures] call CTI_CO_FNC_GetSideStructuresByType)} forEach (missionNamespace getVariable format["CTI_%1_Factories", _side]);
		
		if (!(alive _hq) && _factories isEqualTo 0 && !CTI_GameOver) exitWith {
			[_x, "loose"] remoteExec ["CTI_PVF_CLT_OnMissionEnding", CTI_PV_CLIENTS];
			CTI_GameOver = true;
		};
		if (_towns >= round (CTI_TOWN_WIN_MODE / 100 * count CTI_Towns) && !CTI_GameOver) exitWith {
			[_x, "win"] remoteExec ["CTI_PVF_CLT_OnMissionEnding", CTI_PV_CLIENTS];
			CTI_GameOver = true;
		};
	} forEach [west, east];

	//--- Send the server FPS to the clients at each cycles
	(round diag_fps) remoteExec ["CTI_PVF_CLT_OnServerFPSUpdate", CTI_PV_CLIENTS];
	
	sleep 15;
};

//delay end for outro sequence
if (isDedicated) then {
    0 spawn {
		if (CTI_SERVER_RESTART isEqualTo 1) then {
			//Calling restart function that uses intercept to run powershell file that runs pipeline autostart url --- Takes about 4 min.
			call compile ps_launchpostgamepsfile;
		};
		sleep 240;
		"SideScore" call BIS_fnc_endMissionServer;
	};
};
//todo add some delay before ending the game (calc the client win time)