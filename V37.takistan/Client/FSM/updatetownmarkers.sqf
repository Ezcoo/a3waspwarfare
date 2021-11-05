private["_tcarm","_units"];

_tcarm = missionNamespace getVariable "WFBE_C_PLAYERS_MARKER_TOWN_RANGE";

while {!WFBE_GameOver} do {
	_units = (Units Group player) Call WFBE_CO_FNC_GetLiveUnits;

	{
		_town = _x;
		_range = (_town getVariable "range") * _tcarm;
		_visible = false;
		if ((_town getVariable "sideID") == sideID) then {_visible = true} else {{if (_town distance _x < _range) then {_visible = true}} forEach _units};
		_marker = Format ["WFBE_%1_CityMarker", str _town];
		if (_visible) then {
		    _marker setMarkerTextLocal Format["%1 SV: %2/%3",_x getVariable "name", _town getVariable "supplyValue",_town getVariable "maxSupplyValue"]
		} else {
		    _marker setMarkerTextLocal (_x getVariable "name")
		};
	} forEach towns;
	sleep 5;
};