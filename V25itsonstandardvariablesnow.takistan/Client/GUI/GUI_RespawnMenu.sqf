scriptName "Client\GUI\GUI_RespawnMenu.sqf";

uiNamespace setVariable ["CTI_display_respawn", _this select 0];

//--- Focus on the player death location.
((uiNamespace getVariable "CTI_display_respawn") displayCtrl 511001) ctrlMapAnimAdd [0, .095, CTI_DeathLocation];
ctrlMapAnimCommit ((uiNamespace getVariable "CTI_display_respawn") displayCtrl 511001);

//--- Recall the last gear mode.
ctrlSetText [511004, if (CTI_RespawnDefaultGear) then {localize "STR_WF_RESPAWN_GearDefault"} else {localize "STR_WF_RESPAWN_GearCurrent"}];

//--- Register the UI (if needed).
if (isNil 'CTI_RespawnTime') then {
	CTI_RespawnTime = missionNamespace getVariable "CTI_C_RESPAWN_DELAY";
	[] Spawn {
		while {CTI_RespawnTime > 0} do {
			sleep 1;			
			CTI_RespawnTime = CTI_RespawnTime - 1;
			if(CTI_GameOver) then {CTI_RespawnTime = 0};
		};
	};
};

_spawn_time = -1;_spawn_last_get = 0;
_spawn_at = objNull;_spawn_at_current = objNull;
_spawn_locations = [];
_spawn_locations_last = [];
_spawn_markers = [];
CTI_MenuAction = -1;mouseButtonDown = -1;mouseButtonUp = -1;

//--- Start the tracker.
CTI_MarkerTracking = objNull;
[] Spawn CTI_CL_FNC_UI_Respawn_Selector;

while {CTI_RespawnTime > 0 && dialog && alive player && !CTI_GameOver} do 
{
	//--- Toggle default gear.
	if (CTI_MenuAction == 1) then {
		CTI_MenuAction = -1;
		CTI_RespawnDefaultGear = if (CTI_RespawnDefaultGear) then {false} else {true};
		ctrlSetText [511004, if (CTI_RespawnDefaultGear) then {localize "STR_WF_RESPAWN_GearDefault"} else {localize "STR_WF_RESPAWN_GearCurrent"}];
	};
	
	//--- Refresh all
	if (time - _spawn_last_get > 1) then {
		_spawn_last_get = time;
		
		//--- Return the available spawn locations
		_spawn_locations = [CTI_Client_SideJoined, CTI_DeathLocation] Call CTI_CL_FNC_GetRespawnAvailable;

		//---No spawn available at frist? get one!
		if (isNull _spawn_at_current) then {
			_spawn_at_current = [CTI_DeathLocation, _spawn_locations] Call CTI_CO_FNC_GetClosestEntity;
		};
		
		//--- Remove some old spawn location if needed.
		_found = false;
		{
			if !(_x in _spawn_locations) then {
				_marker_id = _x getVariable 'CTI_respawn_marker';
				_index = _spawn_markers find _marker_id;
				if(_index > -1)then{_spawn_markers deleteAt _index};

				deleteMarkerLocal _marker_id;
				_x setVariable ['CTI_respawn_marker', nil];
				if (_x == _spawn_at_current && !_found) then {
					_found = true;
					_spawn_at_current = [CTI_DeathLocation, _spawn_locations] Call CTI_CO_FNC_GetClosestEntity;
				};
			};
		} forEach _spawn_locations_last;
		
		//--- Add markers to the spawn if needed.
		{
            if !(_x in _spawn_locations_last) then {
                _marker = createMarkerLocal [Format ["CTI_cli_respawn_m%1", unitMarker], getPosATL _x];
                unitMarker = unitMarker + 1;
                diag_log format ["_marker: %1", _marker];
                _spawn_markers pushBack _marker;
                //diag_log format ["count _spawn_markers: %1", count _spawn_markers];
                _marker setMarkerTypeLocal "Select";
                _marker setMarkerColorLocal "ColorYellow";
                _marker setMarkerSizeLocal [1,1];
                _x setVariable ['CTI_respawn_marker', _marker];
            } else {
                _marker_id = _x getVariable 'CTI_respawn_marker';
                if (getMarkerPos _marker_id distance _x > 1) then {_marker_id setMarkerPosLocal (getPosATL _x)};
            };
		} forEach _spawn_locations;
		_spawn_locations_last = _spawn_locations;
	};
    //diag_log format ["_spawn_markers: %1", _spawn_markers];
	//--- Update timer.
	if (_spawn_time != CTI_RespawnTime) then {		
		_spawn_time = CTI_RespawnTime;
		((uiNamespace getVariable "CTI_display_respawn") displayCtrl 511002) ctrlSetStructuredText parseText Format[localize "STR_WF_RESPAWN_Status", CTI_RespawnTime];
	};
	
	//--- Update spawn location.
	if (_spawn_at != _spawn_at_current) then {
		_spawn_at = _spawn_at_current;
		_spawn_label = getText(configFile >> 'CfgVehicles' >> typeOf _spawn_at >> 'displayname');
		((uiNamespace getVariable "CTI_display_respawn") displayCtrl 511003) ctrlSetStructuredText parseText Format[localize "STR_WF_RESPAWN_Status_AT", _spawn_label];
		CTI_MarkerTracking = _spawn_at;
	};
	
	//--- A Minimap click has been performed.
	if (mouseButtonDown == 0 && mouseButtonUp == 0) then {
		mouseButtonDown = -1;
		mouseButtonUp = -1;
		//--- Attempt to get the nearest respawn of the click.
		_clicked_at = ((uiNamespace getVariable "CTI_display_respawn") displayCtrl 511001) ctrlMapScreenToWorld [mouseX, mouseY];
		_nearest = [_clicked_at, _spawn_locations] Call CTI_CO_FNC_GetClosestEntity;
		if (_nearest distance _clicked_at < 500) then {_spawn_at_current = _nearest};
	};

	sleep .01;
};

//--If game is over while RespMenu is shown, close it--
if(CTI_GameOver) then
{

	//--- Destroy the camera.
	if !(isNil 'CTI_DeathCamera') then {
		CTI_DeathCamera cameraEffect ["TERMINATE", "BACK"];
		camDestroy CTI_DeathCamera;
	};
	
	//--- Remove PP FX.
	"dynamicBlur" ppEffectEnable false;
	"colorCorrections" ppEffectEnable false;
	
	//--- Fade out.
	titleCut["","BLACK IN",1];
	
	//--- Reload the overlay if enabled.
	[currentFX] Spawn CTI_CL_FNC_FX;
	
	CTI_MarkerTracking = nil;
	{deleteMarkerLocal _x} forEach _spawn_markers;

	//--- Close dialog if opened.
	if (dialog) then {closeDialog 0};
	
	//--- Release the UI.
	uiNamespace setVariable ["CTI_display_respawn", nil];
	
	if(CTI_GameOver)exitWith{};		
}
else
{
	//--- Process if alive.
	if (alive player) then {
		//--- Exit mode.
		if (CTI_RespawnTime > 0) then {
			//--- Premature exit.
			(_spawn_at_current) Spawn {
				sleep 1;
				if (CTI_RespawnTime > 0) then {
					createDialog "CTI_RespawnMenu";
				} else {
					//--- Normal exit.
					CTI_DeathLocation = nil;
					CTI_RespawnTime = nil;
					
					//--- Execute actions on respawn.
					[player,_this] Call CTI_CL_FNC_OnRespawnHandler;
					
					//--- Destroy the camera.
					if !(isNil 'CTI_DeathCamera') then {
						CTI_DeathCamera cameraEffect ["TERMINATE", "BACK"];
						camDestroy CTI_DeathCamera;
					};
					
					//--- Remove PP FX.
					"dynamicBlur" ppEffectEnable false;
					"colorCorrections" ppEffectEnable false;
					
					//--- Fade out.
					titleCut["","BLACK IN",1];
					
					//--- Reload the overlay if enabled.
					[currentFX] Spawn CTI_CL_FNC_FX;
				};
			};
		} else {
			//--- Normal exit.
			CTI_DeathLocation = nil;
			CTI_RespawnTime = nil;
			
			//--- Execute actions on respawn.
			[player,_spawn_at_current] Call CTI_CL_FNC_OnRespawnHandler;
			
			//--- Destroy the camera.
			if !(isNil 'CTI_DeathCamera') then {
				CTI_DeathCamera cameraEffect ["TERMINATE", "BACK"];
				camDestroy CTI_DeathCamera;
			};
			
			//--- Remove PP FX.
			"dynamicBlur" ppEffectEnable false;
			"colorCorrections" ppEffectEnable false;
			
			//--- Fade out.
			titleCut["","BLACK IN",1];
			
			//--- Reload the overlay if enabled.
			[currentFX] Spawn CTI_CL_FNC_FX;
		};
	} else {
		//--- Died while respawning.
		CTI_DeathLocation = nil;
		CTI_RespawnTime = nil;
		
		//--- Destroy the camera.
		if !(isNil 'CTI_DeathCamera') then {
			CTI_DeathCamera cameraEffect ["TERMINATE", "BACK"];
			camDestroy CTI_DeathCamera;
		};
		
		//--- Remove PP FX.
		"dynamicBlur" ppEffectEnable false;
		"colorCorrections" ppEffectEnable false;
		
		//--- Reload the overlay if enabled.
		[currentFX] Spawn CTI_CL_FNC_FX;
	};

	CTI_MarkerTracking = nil;
	{deleteMarkerLocal _x} forEach _spawn_markers;

	//--- Close dialog if opened.
	if (dialog) then {closeDialog 0};

	//--- Release the UI.
	uiNamespace setVariable ["CTI_display_respawn", nil];
};