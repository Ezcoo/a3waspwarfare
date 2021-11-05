
private ["_towns_territorial_marker_size","_towns_capture_range","_is_naval","_marker","_neighbor","_middle","_dir","_marker_length","_hq_closest_town","_marker_cap","_safe","_town","_objects","_count_enemies"];


//--- Initialize the markers for each towns as invisible
{
	_towns_territorial_marker_size = CTI_TOWNS_TERRITORIAL_MARKER_SIZE;
	_towns_capture_range =CTI_TOWNS_CAPTURE_RANGE;
	_is_naval = _x getVariable ["cti_naval", false];
	if (_is_naval) then {
		_towns_territorial_marker_size = CTI_TOWNS_NAVAL_TERRITORIAL_MARKER_SIZE;
		_towns_capture_range =CTI_TOWNS_NAVAL_CAPTURE_RANGE;
	};

	//--- Territorial Marker
	_marker = format["cti_town_territorial_%1", _x];
	createMarkerLocal [_marker, getPos _x];
	_marker setMarkerAlphaLocal 0;
	_marker setMarkerColorLocal "ColorOrange";
	_marker setMarkerShapeLocal "ELLIPSE";
	_marker setMarkerBrushLocal "SolidBorder";
	_marker setMarkerSizeLocal _towns_territorial_marker_size;
	
	//--- Capture marker
	_marker = format["cti_town_territorial_%1_capture", _x];
	createMarkerLocal [_marker, getPos _x];
	_marker setMarkerAlphaLocal 0;
	_marker setMarkerColorLocal "ColorBlack";
	_marker setMarkerShapeLocal "ELLIPSE";
	_marker setMarkerBrushLocal "SolidBorder";
	_marker setMarkerSizeLocal [_towns_capture_range, _towns_capture_range]; 

	//--- Camp markers
	private _town = _x;
	{
		_marker = format["cti_town_territorial_%1_camp_%2", _town, _x];
		createMarkerLocal [_marker, getPos _x];
		_marker setMarkerAlphaLocal 0;
		_marker setMarkerColorLocal "ColorBlack";
		_marker setMarkerShapeLocal "ELLIPSE";
		_marker setMarkerBrushLocal "SolidBorder";
		_marker setMarkerSizeLocal [CTI_TOWNS_CAMPS_CAPTURE_RANGE, CTI_TOWNS_CAMPS_CAPTURE_RANGE]; 
	} forEach (_town call CTI_CO_FNC_GetTownCamps);

	//--- Town connection lines (2 of them between each pair of towns)
	{
		_neighbor = _x;
		_middle = [ ((getPos _town select 0) + (getPos _neighbor select 0)) / 2, ((getPos _town select 1) + (getPos _neighbor select 1)) / 2, 0];
		_dir = [_town, _neighbor] call BIS_fnc_dirTo;
		_marker_length = (_town distance _neighbor) - 2 * (CTI_TOWNS_TERRITORIAL_MARKER_SIZE select 0) - 200;

		if (_marker_length > 0) then {
			_marker = createMarkerLocal [format["cti_town_connections_%1_%2", _town, _neighbor], _middle]; 
			_marker setMarkerShapeLocal "RECTANGLE"; 
			_marker setMarkerSizeLocal [25, _marker_length / 2];
			_marker setMarkerDirLocal _dir;
			_marker setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA * 3/4;	// Correct alpha due to 2 markers per pair of towns
		} else {
			if (CTI_Log_Level >= CTI_Log_Error) then {
				["ERROR", "FSM: town_territorial_helper.fsm", format["2 Town area markers are too close, connections cannot be drawn: %1 - %2", _town, _neighbor]] call CTI_CO_FNC_Log
			};
		};
	} forEach (_town getVariable "cti_town_neighbors");

} forEach CTI_Towns;

while {!CTI_GameOver || CTI_P_TerritorialUpdate} do {

	if (CTI_P_TerritorialUpdate) then {CTI_P_TerritorialUpdate = false};

	//--- Our side hold at least one town? if not the closest town to the HQ is our objective
	_hq_closest_town = objNull;
	if ((CTI_P_SideID call CTI_CO_FNC_GetSideTownCount) < 1) then {
		_hq_closest_town = [CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ, CTI_P_SideJoined] call CTI_CO_FNC_GetClosestEnemyTown;
	};

	setCampMarkers = { 
		params["_town", "_alpha"];
		{
			private _marker_camp = format["cti_town_territorial_%1_camp_%2", _town, _x];
			_marker_camp setMarkerAlphaLocal _alpha;
		} forEach (_town call CTI_CO_FNC_GetTownCamps);
	};

	//--- Generic, towns
	{
		_marker = format["cti_town_territorial_%1", _x];
		_marker_cap = format["cti_town_territorial_%1_capture", _x];
		
		//--- Town is held by the player side
		if ((_x getVariable "cti_town_sideID") isEqualTo CTI_P_SideID) then {
			//--- Can we capture it?
			_safe = true;
			{
				if !((_x getVariable "cti_town_sideID") isEqualTo CTI_P_SideID) exitWith {_safe = false};
			} forEach (_x getVariable "cti_town_neighbors");
			
			//--- Safe, it cannot be captured
			if (_safe) then {
				_marker setMarkerAlphaLocal 0;
				_marker_cap setMarkerAlphaLocal 0;
				[_x, 0] call setCampMarkers;
			} else {
				_town = _x;
				_objects = _town nearEntities CTI_TOWNS_MARKERS_MAP_RANGE;
				_count_enemies = [_objects, CTI_P_SideJoined] call CTI_CO_FNC_GetAreaEnemiesCount;
				
				//--- Unsafe, our friendly town may be captured
				if (missionNamespace getVariable "CTI_TOWNS_PEACE" > 0) then { //--- Peace mode
					if (time < (_x getVariable "cti_town_peace")) then { //--- Peace mode is enabled
						if (_count_enemies > 0) then {
							_marker setMarkerColorLocal CTI_TOWNS_MARKERS_ALERT_COLOR;
							_marker setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA_ACTIVE;
							_marker_cap setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA;
							[_x, CTI_TOWNS_MARKERS_ALPHA] call setCampMarkers;
						} else {
							_marker setMarkerColorLocal CTI_TOWNS_MARKERS_PEACE_COLOR;
							_marker setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA;
							_marker_cap setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA;
							[_x, CTI_TOWNS_MARKERS_ALPHA] call setCampMarkers;
						};
					} else {
						if (_count_enemies > 0) then {
							_marker setMarkerColorLocal CTI_TOWNS_MARKERS_ALERT_COLOR;
							_marker setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA_ACTIVE;
							_marker_cap setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA;
							[_x, CTI_TOWNS_MARKERS_ALPHA] call setCampMarkers;
						} else {
							_marker setMarkerColorLocal (markerColor format["cti_town_marker_%1", _x]);
							_marker setMarkerAlphaLocal 0;
							_marker_cap setMarkerAlphaLocal 0;
							[_x, 0] call setCampMarkers;
						};
					};
				} else { //--- Standard mode
					if (_count_enemies > 0) then {
						_marker setMarkerColorLocal CTI_TOWNS_MARKERS_ALERT_COLOR;
						_marker setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA_ACTIVE;
						_marker_cap setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA;
						[_x, CTI_TOWNS_MARKERS_ALPHA] call setCampMarkers;
					} else {
						_marker setMarkerColorLocal (markerColor format["cti_town_marker_%1", _x]);
						_marker setMarkerAlphaLocal 0;
						_marker_cap setMarkerAlphaLocal 0;
						[_x, 0] call setCampMarkers;
					};
				};
			};
		} else {
			//--- Hostile held, can we capture it?
			_safe = true;
			{
				if ((_x getVariable "cti_town_sideID") isEqualTo CTI_P_SideID) exitWith {_safe = false};
			} forEach (_x getVariable "cti_town_neighbors");
			
			//--- If we have no towns, the closest town to the HQ is capturable
			if !(isNull _hq_closest_town) then {
				if (_hq_closest_town isEqualTo _x) then {_safe = false};
			};
			
			//--- Safe, it cannot be captured
			if (_safe) then {
				_marker setMarkerAlphaLocal 0;
				_marker_cap setMarkerAlphaLocal 0;
				[_x, 0] call setCampMarkers;
			} else {
				//--- Unsafe, this enemy town may be captured
				_marker setMarkerColorLocal (markerColor format["cti_town_marker_%1", _x]);
				_marker setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA;
				_marker_cap setMarkerAlphaLocal CTI_TOWNS_MARKERS_ALPHA;
				[_x, CTI_TOWNS_MARKERS_ALPHA] call setCampMarkers;
			};
		};
	} forEach CTI_Towns;

	sleep 10;
};