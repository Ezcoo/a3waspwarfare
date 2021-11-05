scriptName "Client\GUI\GUI_RespawnMenu.sqf";

uiNamespace setVariable ["wfbe_display_respawn", _this select 0];

//--- Focus on the player death location.
((uiNamespace getVariable "wfbe_display_respawn") displayCtrl 511001) ctrlMapAnimAdd [0, .095, WFBE_DeathLocation];
ctrlMapAnimCommit ((uiNamespace getVariable "wfbe_display_respawn") displayCtrl 511001);

//--- Recall the last gear mode.
ctrlSetText [511004, if (WFBE_RespawnDefaultGear) then {localize "STR_WF_RESPAWN_GearDefault"} else {localize "STR_WF_RESPAWN_GearCurrent"}];

//--- Register the UI (if needed).
if (isNil 'WFBE_RespawnTime') then {
	WFBE_RespawnTime = missionNamespace getVariable "WFBE_C_RESPAWN_DELAY";
	[] Spawn {
		while {WFBE_RespawnTime > 0} do {
			sleep 1;			
			WFBE_RespawnTime = WFBE_RespawnTime - 1;
			if(WFBE_GameOver) then {WFBE_RespawnTime = 0};
		};
	};
};

_spawn_time = -1;_spawn_last_get = 0;
_spawn_at = objNull;_spawn_at_current = objNull;
_spawn_locations = [];
_spawn_locations_last = [];
_spawn_markers = [];
WFBE_MenuAction = -1;mouseButtonDown = -1;mouseButtonUp = -1;

//--- Start the tracker.
WFBE_MarkerTracking = objNull;
[] Spawn WFBE_CL_FNC_UI_Respawn_Selector;

while {WFBE_RespawnTime > 0 && dialog && alive player && !WFBE_GameOver} do 
{
	//--- Toggle default gear.
	if (WFBE_MenuAction == 1) then {
		WFBE_MenuAction = -1;
		WFBE_RespawnDefaultGear = if (WFBE_RespawnDefaultGear) then {false} else {true};
		ctrlSetText [511004, if (WFBE_RespawnDefaultGear) then {localize "STR_WF_RESPAWN_GearDefault"} else {localize "STR_WF_RESPAWN_GearCurrent"}];
	};
	
	//--- Refresh all
	if (time - _spawn_last_get > 1) then {
		_spawn_last_get = time;
		
		//--- Return the available spawn locations
		_spawn_locations = [WFBE_Client_SideJoined, WFBE_DeathLocation] Call WFBE_CL_FNC_GetRespawnAvailable;

		//---No spawn available at frist? get one!
		if (isNull _spawn_at_current) then {
			_spawn_at_current = [WFBE_DeathLocation, _spawn_locations] Call WFBE_CO_FNC_GetClosestEntity;
		};
		
		//--- Remove some old spawn location if needed.
		_found = false;
		{
			if !(_x in _spawn_locations) then {
				_marker_id = _x getVariable 'wfbe_respawn_marker';
				_index = _spawn_markers find _marker_id;
				if(_index > -1)then{_spawn_markers deleteAt _index};

				deleteMarkerLocal _marker_id;
				_x setVariable ['wfbe_respawn_marker', nil];
				if (_x == _spawn_at_current && !_found) then {
					_found = true;
					_spawn_at_current = [WFBE_DeathLocation, _spawn_locations] Call WFBE_CO_FNC_GetClosestEntity;
				};
			};
		} forEach _spawn_locations_last;
		
		//--- Add markers to the spawn if needed.
		{
            if !(_x in _spawn_locations_last) then {
                _marker = createMarkerLocal [Format ["wfbe_cli_respawn_m%1", unitMarker], getPosATL _x];
                unitMarker = unitMarker + 1;
                diag_log format ["_marker: %1", _marker];
                _spawn_markers pushBack _marker;
                //diag_log format ["count _spawn_markers: %1", count _spawn_markers];
                _marker setMarkerTypeLocal "Select";
                _marker setMarkerColorLocal "ColorYellow";
                _marker setMarkerSizeLocal [1,1];
                _x setVariable ['wfbe_respawn_marker', _marker];
            } else {
                _marker_id = _x getVariable 'wfbe_respawn_marker';
                if (getMarkerPos _marker_id distance _x > 1) then {_marker_id setMarkerPosLocal (getPosATL _x)};
            };
		} forEach _spawn_locations;
		_spawn_locations_last = _spawn_locations;
	};
    //diag_log format ["_spawn_markers: %1", _spawn_markers];
	//--- Update timer.
	if (_spawn_time != WFBE_RespawnTime) then {		
		_spawn_time = WFBE_RespawnTime;
		((uiNamespace getVariable "wfbe_display_respawn") displayCtrl 511002) ctrlSetStructuredText parseText Format[localize "STR_WF_RESPAWN_Status", WFBE_RespawnTime];
	};
	
	//--- Update spawn location.
	if (_spawn_at != _spawn_at_current) then {
		_spawn_at = _spawn_at_current;
		_spawn_label = getText(configFile >> 'CfgVehicles' >> typeOf _spawn_at >> 'displayname');
		((uiNamespace getVariable "wfbe_display_respawn") displayCtrl 511003) ctrlSetStructuredText parseText Format[localize "STR_WF_RESPAWN_Status_AT", _spawn_label];
		WFBE_MarkerTracking = _spawn_at;
	};
	
	//--- A Minimap click has been performed.
	if (mouseButtonDown == 0 && mouseButtonUp == 0) then {
		mouseButtonDown = -1;
		mouseButtonUp = -1;
		//--- Attempt to get the nearest respawn of the click.
		_clicked_at = ((uiNamespace getVariable "wfbe_display_respawn") displayCtrl 511001) ctrlMapScreenToWorld [mouseX, mouseY];
		_nearest = [_clicked_at, _spawn_locations] Call WFBE_CO_FNC_GetClosestEntity;
		if (_nearest distance _clicked_at < 500) then {_spawn_at_current = _nearest};
	};

	sleep .01;
};

//--If game is over while RespMenu is shown, close it--
if(WFBE_GameOver) then
{

	//--- Destroy the camera.
	if !(isNil 'WFBE_DeathCamera') then {
		WFBE_DeathCamera cameraEffect ["TERMINATE", "BACK"];
		camDestroy WFBE_DeathCamera;
	};
	
	//--- Remove PP FX.
	"dynamicBlur" ppEffectEnable false;
	"colorCorrections" ppEffectEnable false;
	
	//--- Fade out.
	titleCut["","BLACK IN",1];
	
	//--- Reload the overlay if enabled.
	[currentFX] Spawn WFBE_CL_FNC_FX;
	
	WFBE_MarkerTracking = nil;
	{deleteMarkerLocal _x} forEach _spawn_markers;

	//--- Close dialog if opened.
	if (dialog) then {closeDialog 0};
	
	//--- Release the UI.
	uiNamespace setVariable ["wfbe_display_respawn", nil];
	
	if(WFBE_GameOver)exitWith{};		
}
else
{
	//--- Process if alive.
	if (alive player) then {
		//--- Exit mode.
		if (WFBE_RespawnTime > 0) then {
			//--- Premature exit.
			(_spawn_at_current) Spawn {
				sleep 1;
				if (WFBE_RespawnTime > 0) then {
					createDialog "WFBE_RespawnMenu";
				} else {
					//--- Normal exit.
					WFBE_DeathLocation = nil;
					WFBE_RespawnTime = nil;
					
					//--- Execute actions on respawn.
					[player,_this] Call WFBE_CL_FNC_OnRespawnHandler;
					
					//--- Destroy the camera.
					if !(isNil 'WFBE_DeathCamera') then {
						WFBE_DeathCamera cameraEffect ["TERMINATE", "BACK"];
						camDestroy WFBE_DeathCamera;
					};
					
					//--- Remove PP FX.
					"dynamicBlur" ppEffectEnable false;
					"colorCorrections" ppEffectEnable false;
					
					//--- Fade out.
					titleCut["","BLACK IN",1];
					
					//--- Reload the overlay if enabled.
					[currentFX] Spawn WFBE_CL_FNC_FX;
				};
			};
		} else {
			//--- Normal exit.
			WFBE_DeathLocation = nil;
			WFBE_RespawnTime = nil;
			
			//--- Execute actions on respawn.
			[player,_spawn_at_current] Call WFBE_CL_FNC_OnRespawnHandler;
			
			//--- Destroy the camera.
			if !(isNil 'WFBE_DeathCamera') then {
				WFBE_DeathCamera cameraEffect ["TERMINATE", "BACK"];
				camDestroy WFBE_DeathCamera;
			};
			
			//--- Remove PP FX.
			"dynamicBlur" ppEffectEnable false;
			"colorCorrections" ppEffectEnable false;
			
			//--- Fade out.
			titleCut["","BLACK IN",1];
			
			//--- Reload the overlay if enabled.
			[currentFX] Spawn WFBE_CL_FNC_FX;
		};
	} else {
		//--- Died while respawning.
		WFBE_DeathLocation = nil;
		WFBE_RespawnTime = nil;
		
		//--- Destroy the camera.
		if !(isNil 'WFBE_DeathCamera') then {
			WFBE_DeathCamera cameraEffect ["TERMINATE", "BACK"];
			camDestroy WFBE_DeathCamera;
		};
		
		//--- Remove PP FX.
		"dynamicBlur" ppEffectEnable false;
		"colorCorrections" ppEffectEnable false;
		
		//--- Reload the overlay if enabled.
		[currentFX] Spawn WFBE_CL_FNC_FX;
	};

	WFBE_MarkerTracking = nil;
	{deleteMarkerLocal _x} forEach _spawn_markers;

	//--- Close dialog if opened.
	if (dialog) then {closeDialog 0};

	//--- Release the UI.
	uiNamespace setVariable ["wfbe_display_respawn", nil];
};