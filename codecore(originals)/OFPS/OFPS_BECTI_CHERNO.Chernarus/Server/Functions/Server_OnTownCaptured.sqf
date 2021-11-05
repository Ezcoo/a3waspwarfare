/*
  # HEADER #
	Script: 		Server\Functions\Server_OnTownCaptured.sqf
	Alias:			CTI_SE_FNC_OnTownCaptured
	Description:	Triggered when town is captured by a given side
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	23-09-2013
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Side]: The side which captured the town
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_OnTownCaptured
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ChangeFunds
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideLogic
	Server Function: CTI_SE_FNC_AddScore
	
  # EXAMPLE #
    [Town0, West] call CTI_SE_FNC_OnTownCaptured
	  -> Town0 is now captured by West
*/

params ["_town", "_newSide"];
private ["_currentSideID", "_flagTexture","_newSideID","_entities","_hostiles"];

_newSideID = (_newSide) call CTI_CO_FNC_GetSideID;
_currentSideID = _town getVariable "cti_town_sideID";

//--- Remove the town defenses first of all
if !(isNil {_town getVariable "cti_town_hasdefenses"}) then {
	[_town, (_currentSideID) call CTI_CO_FNC_GetSideFromID] call CTI_SE_FNC_RemoveTownDefenses;
};

//--- Remove the static town defenses
if !(isNil {_town getVariable "cti_town_static_defenses_active"}) then {
	[_town, (_currentSideID) call CTI_CO_FNC_GetSideFromID] call CTI_SE_FNC_RemoveStaticTownDefenses;
};

_town setVariable ["cti_town_sideID", _newSideID, true];
_town setVariable ["cti_town_lastSideID", _currentSideID, true];

//--- Set the town in a peace mode if needed for the specified amount of time
_flagTexture = missionNamespace getVariable [format["%1_TOWNS_FLAG_TEXTURE", _newSide], CTI_TOWNS_FLAG_TEXTURE_PEACE];
if (missionNamespace getVariable "CTI_TOWNS_PEACE" > 0) then {
	//--- Check if we still have hostiles around the town before triggering the peace time
	_entities = [];
	{if (((ASLToAGL getPosASL _x) select 2) <= 30) then {_entities pushBack _x}} forEach (_town nearEntities ["AllVehicles", CTI_TOWNS_CAPTURE_PEACE_SCAN_RANGE]);
	_hostiles = {_x countSide _entities > 0} count ([west, east, resistance] - [_newSide]);
	
	//---- If no hostiles are present, the peace mode may be triggered
	if (_hostiles < 1) then {
		_town setVariable ["cti_town_peace", time + (missionNamespace getVariable "CTI_TOWNS_PEACE"), true];
		_flagTexture = CTI_TOWNS_FLAG_TEXTURE_PEACE;
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\Functions\Server_OnTownCaptured.sqf", format["Peace time is triggered for Town [%1] since there are no hostiles within [%2] meters", _town getVariable "cti_town_name", CTI_TOWNS_CAPTURE_PEACE_SCAN_RANGE]] call CTI_CO_FNC_Log;
		};
		
		//--- Thread spawn, Update the flag textures upon peace mode expiration if applicable
		if (typeOf _town isEqualTo "FlagPole_F") then {
			[_town, _newSide] spawn {
				params ["_town","_newSide"];
				while {time < (_town getVariable "cti_town_peace")} do { sleep .5 };
				
				//--- Only update if the new side ID match the current side ID
				if ((_newSide call CTI_CO_FNC_GetSideID) isEqualTo (_town getVariable "cti_town_sideID")) then {
					_town setFlagTexture (missionNamespace getVariable [format["%1_TOWNS_FLAG_TEXTURE", _newSide], CTI_TOWNS_FLAG_TEXTURE_PEACE]);
				};
			};
		};
	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\Functions\Server_OnTownCaptured.sqf", format["Peace time will not be triggered for Town [%1] since there are [%2] hostiles within [%3] meters", _town getVariable "cti_town_name", _hostiles, CTI_TOWNS_CAPTURE_PEACE_SCAN_RANGE]] call CTI_CO_FNC_Log;
		};
	};
};

//--- Update the flag texture
if (typeOf _town isEqualTo "FlagPole_F") then {_town setFlagTexture _flagTexture};

//--- Update the camps if needed
{
	_x setVariable ["cti_camp_lastSideID", (_x getVariable "cti_camp_sideID"), true];
	_x setVariable ["cti_camp_sideID", _newSideID, true];
	_x setVariable ["cti_camp_sv", _town getVariable "cti_town_sv_default", true];
	
	if (CTI_Log_Level >= CTI_Log_Debug) then {
		["DEBUG", "FILE: Server\Functions\Server_OnTownCaptured.sqf", format ["Town [%1] camp [%2] has changed from side [%3] to side [%4]", _town getVariable "cti_town_name", _x, (_x getVariable "cti_camp_lastSideID") call CTI_CO_FNC_GetSideFromID, _newSide]] call CTI_CO_FNC_Log;
	};
} forEach (_town getVariable ["cti_town_camps", []]);

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_OnTownCaptured.sqf", format["Town [%1] has been captured, from [%2] to [%3]", _town getVariable "cti_town_name", (_currentSideID) call CTI_CO_FNC_GetSideFromID, _newSide]] call CTI_CO_FNC_Log;
};

[_town, _newSideID, _currentSideID] remoteExec ["CTI_PVF_CLT_OnTownCaptured", CTI_PV_CLIENTS];

//--- Determine whether to remove the town forces or not
switch (CTI_TOWNS_CAPTURE_DELETE_FORCES) do {
	case 1: { //--- West & East
		if !(_currentSideID isEqualTo CTI_RESISTANCE_ID) then {[_town, (_currentSideID) call CTI_CO_FNC_GetSideFromID, CTI_TOWNS_CAPTURE_DELETE_TIME] spawn CTI_SE_FNC_OnTownDeactivation};
	}; 
	case 2: {[_town, (_currentSideID) call CTI_CO_FNC_GetSideFromID, CTI_TOWNS_CAPTURE_DELETE_TIME] spawn CTI_SE_FNC_OnTownDeactivation}; //--- All
};

// Econ Updates
// Required towns to win: round (CTI_TOWN_WIN_MODE / 100 * count CTI_Towns)
//{(10) remoteExec ["CTI_PVF_CLT_OnAirUnitTracked", _x]} forEach CTI_PLAYABLE_SIDES - [_side];
switch (true) do { 
	case (_newSide call CTI_CO_FNC_GetSideTownCount == round (0.6 * round (CTI_TOWN_WIN_MODE / 100 * count CTI_Towns))): {
		["econ-alert", [_newSide, 60]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS]; 
	};
	case (_newSide call CTI_CO_FNC_GetSideTownCount == round (0.8 * round (CTI_TOWN_WIN_MODE / 100 * count CTI_Towns))): {
		["econ-alert", [_newSide, 80]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
	};
	case (_newSide call CTI_CO_FNC_GetSideTownCount == round (0.9 * round (CTI_TOWN_WIN_MODE / 100 * count CTI_Towns))): {
		["econ-alert", [_newSide, 90]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
	};
	case (_newSide call CTI_CO_FNC_GetSideTownCount == round (0.95 * round (CTI_TOWN_WIN_MODE / 100 * count CTI_Towns))): {
		["econ-alert", [_newSide, 95]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
	};
	case (_newSide call CTI_CO_FNC_GetSideTownCount == round (CTI_TOWN_WIN_MODE / 100 * count CTI_Towns)): {
		["econ-alert", [_newSide, 100]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
	};
};