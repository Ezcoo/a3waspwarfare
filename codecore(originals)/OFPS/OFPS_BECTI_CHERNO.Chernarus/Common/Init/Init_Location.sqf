params ["_town", "_town_name", "_town_side", "_town_sv_default", "_town_sv_max", ["_town_defenses", []]];
private ["_sideID", "_sideID_last"];

_town setVariable ["cti_town_name", _town_name];
_town setVariable ["cti_town_sv_default", _town_sv_default];
_town setVariable ["cti_town_sv_max", _town_sv_max];

waitUntil {!isNil 'CTI_Init_JIP' && !isNil 'CTI_Init_Common'};

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Location.sqf", format["Initializing town [%1] (%2) for side [%3] with the SV [%4/%5]", _town, _town_name, _town_side, _town_sv_default, _town_sv_max]] call CTI_CO_FNC_Log;
};

_sideID = _town_side call CTI_CO_FNC_GetSideID;
_sideID_last = _sideID;

if (CTI_IsServer) then {
	_town setVariable ["cti_town_sv", _town_sv_default, true];

	//--- Blitz mode, only proc with a value above 0
	if ((missionNamespace getVariable "CTI_TOWNS_STARTING_MODE") > 0) then {
		waitUntil {!isNil 'CTI_Init_TownsDistribution'};
		if (_town in CTI_WEST_STARTING_TOWNS) then {
			_sideID = CTI_WEST_ID;
			// Reveal towns to both teams if param is past this threshold
			if (missionNamespace getVariable "CTI_TOWN_AMOUNT" >= 40) then {
				_sideID_last = CTI_EAST_ID;
			};
		} else {
			if (_town in CTI_EAST_STARTING_TOWNS) then {
				_sideID = CTI_EAST_ID;
				if (missionNamespace getVariable "CTI_TOWN_AMOUNT" >= 40) then {
					_sideID_last = CTI_WEST_ID;
				};
			};
		};
	};
	
	_town setVariable ["cti_town_lastSideID", _sideID_last, true];
	_town setVariable ["cti_town_sideID", _sideID, true];
	
	//--- Town Statics
	if (count _town_defenses > 0) then { 
		if (typeName (_town_defenses select 0) isEqualTo "STRING") then {_town_defenses = [_town_defenses]};
		_town setVariable ["cti_town_defenses", _town_defenses];
		if (isNil {_town getVariable "cti_town_hasdefenses"}) then {_town setVariable ["cti_town_hasdefenses", true]};
	};
	
	//--- Update the flag texture
	if (typeOf _town isEqualTo "FlagPole_F") then {_town setFlagTexture (missionNamespace getVariable [format["%1_TOWNS_FLAG_TEXTURE", _town_side], CTI_TOWNS_FLAG_TEXTURE_PEACE])};
	
	(_town) execVM "Server\FSM\town_capture.sqf";
	(_town) execVM "Server\FSM\town_resistance.sqf";
	if (missionNamespace getVariable "CTI_TOWNS_OCCUPATION" > 0) then {(_town) execVM "Server\FSM\town_occupation.sqf"};
	if (missionNamespace getVariable "CTI_TOWNS_PEACE" > 0) then {(_town) setVariable ["cti_town_peace", -5000, true]};
};

if (CTI_IsClient) then {
	//--- The client awaits for the MP variable to be available
	waitUntil {!isNil "CTI_Init_Client"};
	
	waitUntil {!(isNil {_town getVariable "cti_town_sideID"}) && !(isNil {_town getVariable "cti_town_lastSideID"})};
	
	_coloration = CTI_RESISTANCE_COLOR;
	if (CTI_P_SideID in [_town getVariable "cti_town_lastSideID", _town getVariable "cti_town_sideID"]) then { //--- Environment awareness
		_coloration = ((_town getVariable "cti_town_sideID") call CTI_CO_FNC_GetSideFromID) call CTI_CO_FNC_GetSideColoration;
	};
	
	//--- Area marker
	/*_marker = createMarkerLocal [format ["cti_town_areaMarker_%1", _town], getPos _town];
	_marker setMarkerShapeLocal "ELLIPSE"; 
	_marker setMarkerBrushLocal "SolidBorder"; 
	_marker setMarkerSizeLocal [CTI_MARKERS_TOWN_AREA_RANGE, CTI_MARKERS_TOWN_AREA_RANGE]; 
	_marker setMarkerColorLocal _coloration;
	_marker setMarkerAlphaLocal 0;*/
	
	//--- Center marker
	_marker = createMarkerLocal [format ["cti_town_marker_%1", _town], getPos _town];
	_marker setMarkerTypeLocal "mil_flag";
	_marker setMarkerColorLocal _coloration;
	_marker setMarkerSizeLocal [0.5, 0.5]; 
	
	//--- Naval Depot markers
	if !(isNil {_town getVariable "cti_naval_depot"}) then {
		_marker = createMarkerLocal [format["cti_naval_depot_marker_%1", _town], getPos(_town getVariable "cti_naval_depot")];
		_marker setMarkerTypeLocal "respawn_naval";
		_marker setMarkerColorLocal _coloration;
		_marker setMarkerSizeLocal [0.6, 0.6]; 
		
		_town setVariable ["cti_naval_depot_marker", _marker];
	};
};