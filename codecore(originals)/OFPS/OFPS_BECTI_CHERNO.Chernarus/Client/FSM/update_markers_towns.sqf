private ["_units","_last_areas","_town","_visible","_areas","_marker"];

_last_areas = [];


while {!CTI_GameOver} do {


	//--- Towns
	_units = (units group player) call CTI_CO_FNC_GetLiveUnits;
	{
		_town = _x;
		_visible = false;
		if (isNil {_town getVariable "cti_naval"}) then {
			if ((_town getVariable "cti_town_sideID") isEqualTo CTI_P_SideID) then {_visible = true} else {{if (_town distance _x < CTI_TOWNS_MARKERS_MAP_RANGE) then {_visible = true}} forEach _units};
		} else {
			if ((_town getVariable "cti_town_sideID") isEqualTo CTI_P_SideID) then {_visible = true} else {{if (_town distance _x < CTI_TOWNS_NAVAL_MARKERS_MAP_RANGE) then {_visible = true}} forEach _units};
		};
		
		if (_visible) then {
			(format["cti_town_marker_%1", _town]) setMarkerTextLocal Format["  %1 | SV: %2/%3", _town getVariable "cti_town_name", _town getVariable "cti_town_sv", _town getVariable "cti_town_sv_max"];
		} else {
			(format["cti_town_marker_%1", _town]) setMarkerTextLocal format["  %1", _town getVariable "cti_town_name"];
		};
	} forEach CTI_Towns;

	//--- Base areas
	_areas = CTI_P_SideLogic getVariable["cti_structures_areas", []];

	//--- Remove potential old areas
	{
		if !(_x in _areas) then {
			deleteMarkerLocal format["cti_base_area_%1%2", round (_x select 0), round (_x select 1)];
		};
	} forEach _last_areas;

	//--- Add potential new areas
	{
		if !(_x in _last_areas) then {
			_marker = createMarkerLocal [format["cti_base_area_%1%2", round (_x select 0), round (_x select 1)], _x];
			_marker setMarkerAlphaLocal 0.2;
			_marker setMarkerColorLocal CTI_P_SideColor;
			_marker setMarkerShapeLocal "ELLIPSE";
			_marker setMarkerBrushLocal "Solid";
			_marker setMarkerSizeLocal [CTI_BASE_AREA_RANGE, CTI_BASE_AREA_RANGE];
		};
	} forEach _areas;

	_last_areas = +_areas;
	
sleep 5;

};