if(isNil 'commonInitComplete')then{
	commonInitComplete = false;
};

waitUntil {commonInitComplete}; //--- Wait for the common part.

if (local player) then {
	Private["_color","_hq","_marker" ,"_markercc","_structure","_text","_type","_side","_sideID","_voteTime","_radius"];

	_structure = _this select 0;
	_hq = _this select 1;
	_sideID = _this select 2;
	_side = (_sideID) Call EZC_fnc_Functions_Common_GetSideFromID;
    _radius = missionNameSpace getVariable "cti_C_STRUCTURES_COMMANDCENTER_RANGE";
	waitUntil {clientInitComplete};
	if (_side != cti_Client_SideJoined) exitWith {};

	sleep 2;

	_marker = Format["BaseMarker%1",buildingMarker];
	buildingMarker = buildingMarker + 1;
	_markercc= Format["CCrange%1",CCMarker];
    CCMarker = CCMarker + 1;
	createMarkerLocal [_marker,getPos _structure];
	if(typeOf _structure isKindOf "Base_WarfareBUAVterminal") then {

	          createMarkerLocal [_markercc,getPos _structure];
			  _markercc setMarkerBrushLocal "Border";
			  _markercc setMarkerShapeLocal "Ellipse";
              _markercc setMarkerColorLocal "ColorBlack";
              _markercc setMarkerSizeLocal [_radius,_radius];
	};
	_type = "mil_box";
	_color = "ColorBlue";
	if (_hq) then {_type = "b_hq"};
	_marker setMarkerTypeLocal _type;
	_text = "HQ";
	if (!_hq) then {_text = [_structure, _side] Call EZC_fnc_Functions_Client_GetStructureMarkerLabel;_marker setMarkerSizeLocal [0.5,0.5]};
	if!(isNil '_text')then{
	if (_text != "") then {_marker setMarkerTextLocal _text};
	};

	_marker setMarkerColorLocal _color;

	while {!isNull _structure && alive _structure} do {sleep 2};

	deleteMarkerLocal _marker;
	if(typeOf _structure isKindOf "Base_WarfareBUAVterminal") then {deleteMarkerLocal _markercc};
};