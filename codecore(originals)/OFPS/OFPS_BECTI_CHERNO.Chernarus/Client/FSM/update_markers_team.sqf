private ["_track_leader","_group","_marker","_color","_label","_tracker"];

_track_leader = {
	_group = _this;
	
	sleep 1;
	
	_marker = Format["cti_teammarker_%1", CTI_P_MarkerIterator]; CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
	createMarkerLocal [_marker, [0,0,0]];
	_marker setMarkerTypeLocal (CTI_P_MarkerPrefix+"inf");
	_marker setMarkerColorLocal CTI_P_SideColor;
	_marker setMarkerSizeLocal [0.75, 0.75];
	
	while {!isNull _group} do {
		_color = CTI_P_SideColor;
		_marker setMarkerAlphaLocal (if !(isPlayer leader _group) then {0} else {1});

		if (alive leader _group) then {
			_label = if (isPlayer leader _group) then { format["%1 [%2]", _group getVariable ["cti_alias",CTI_PLAYER_DEFAULT_ALIAS], name (leader _group)] } else { format["%1 [AI]", _group getVariable ["cti_alias",CTI_PLAYER_DEFAULT_ALIAS]] };
			_marker setMarkerTextLocal _label;
			_marker setMarkerPosLocal visiblePosition (leader _group);
		} else {
			_color = "ColorBlack";
		};
	
		_marker setMarkerColorLocal _color;
		
		sleep 1;
	};
	
	deleteMarkerLocal _marker;
};

_tracker = [];


while {!CTI_GameOver} do {

	{
		if !(_x in _tracker) then {
			_tracker = _tracker - [objNull];
			_tracker pushBack _x;
			(_x) spawn _track_leader;
		};
	} forEach (CTI_P_SideJoined call CTI_CO_FNC_GetSideGroups);
	
	sleep 4;
};