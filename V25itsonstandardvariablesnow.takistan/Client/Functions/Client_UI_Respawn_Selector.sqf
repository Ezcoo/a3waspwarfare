/*
	Marker selector for a selected respawn location.
*/

Private ["_erase","_marker","_marker_difference","_marker_expand","_marker_dir","_marker_min_size","_marker_max_size","_marker_size","_target"];

_marker_size = 1.4;
_marker_min_size = 1.4;
_marker_max_size = 1.8;
_marker_dir = 0;
_marker_difference = (_marker_max_size - _marker_min_size)/10;
_marker_expand = true;

_marker = createMarkerLocal ["CTI_respawn_selector", [0,0,0]];
_marker setMarkerTypeLocal "Select";
_marker setMarkerColorLocal CTI_Client_Color;
_marker setMarkerSizeLocal [_marker_size, _marker_size];

while {!isNil 'CTI_MarkerTracking'} do {
	sleep .03;

	_marker_dir = (_marker_dir + 1) % 360;
	_marker setMarkerDirLocal _marker_dir;
	_marker setMarkerSizeLocal [_marker_size, _marker_size];

	if (_marker_size > _marker_max_size) then {_marker_expand = false};
	if (_marker_size < _marker_min_size) then {_marker_expand = true};
	if (_marker_expand) then {_marker_size = _marker_size + _marker_difference} else {_marker_size = _marker_size - _marker_difference};

	if (!isNil 'CTI_MarkerTracking') then {
		if (getMarkerPos _marker distance CTI_MarkerTracking > 1) then {_marker setMarkerPosLocal getPos CTI_MarkerTracking};
	};
};

deleteMarkerLocal "CTI_respawn_selector";