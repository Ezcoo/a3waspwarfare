/*
  # HEADER #
	Script: 		Server\Functions\Server_OnPlayerDisconnected.sqf
	Alias:			CTI_SE_FNC_OnPlayerDisconnected
	Description:	Triggered when a player leave the server
					Note this function is MP only.
					Also note that the server (in MP) will also trigger this script with a name of __SERVER__
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	15-10-2013
	
  # PARAMETERS #
    0	[Object]: The Player's unit object
    1	[Number]: The Player's seed ID
    2	[Number]: The Player's UID
    3	[String]: The Player's name
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UID, NAME, ID] call CTI_SE_FNC_OnPlayerDisconnected
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetClosestEntity
	Common Function: CTI_CO_FNC_GetFunds
	Common Function: CTI_CO_FNC_GetRandomPosition
	Common Function: CTI_CO_FNC_GetSideCommanderTeam
	Common Function: CTI_CO_FNC_GetSideHQ
	Common Function: CTI_CO_FNC_GetSideStructures
	
  # EXAMPLE #
    onPlayerDisconnected {[_uid, _name, _id] call CTI_SE_FNC_OnPlayerDisconnected};
*/

params ["_unit", "_id", "_uid", "_name"];

_team = group _unit;

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] with unit [%3] in group [%4] has left the current session", _name, _uid, _unit, _team]] call CTI_CO_FNC_Log};
if (CTI_DATABASE_TRACKING) then { // send information to update database
	["playerDisconnected", [_uid, _name, _id]] call CTI_SE_FNC_DatabaseUpdate;
};
if (_name isEqualTo '__SERVER__' || _uid isEqualTo '') exitWith {}; //--- We don't care about the server!

waitUntil {!isNil 'CTI_Init_Common'};

//--- Was it an Headless Client?
_candidates = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";
if !(isNil '_candidates') then {
	_index = -1;
	{if (_x select 2 isEqualTo _uid) exitWith {_index = _forEachIndex}} forEach _candidates;
	if (_index > -1) then {
		// _candidates set [_index, "!nil!"]; _candidates = _candidates - ["!nil!"];
		_candidates deleteAt _index;
		missionNamespace setVariable ["CTI_HEADLESS_CLIENTS", _candidates, true];
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Headless Client [%1] [%2] has been disconnected and was removed from the registered clients. There is now [%3] Headless Clients.", _uid, _name, count _candidates]] call CTI_CO_FNC_Log};
	};
};

//--- We attempt to get the player information in case that he joined before
_get = missionNamespace getVariable format["CTI_SERVER_CLIENT_%1", _uid];
if (isNil '_get') exitWith {if (CTI_Log_Level >= CTI_Log_Warning) then {["WARNING", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Disconnected Player [%1] [%2] information couldn't be retrieved", _name, _uid]] call CTI_CO_FNC_Log}};

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Retrieved Player [%1] [%2] previous informations [%3]", _name, _uid, _get]] call CTI_CO_FNC_Log};

//--- Make sure that the group is valid
if (isNull _team) exitWith {if (CTI_Log_Level >= CTI_Log_Error) then {["ERROR", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Disconnected Player [%1] [%2] group couldn't be found among the current playable units", _name, _uid]] call CTI_CO_FNC_Log}};

_side = _get select 3; //--- Get the last side joined

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] group is [%3] on last side [%4]", _name, _uid, _team, _side]] call CTI_CO_FNC_Log};

_funds = (_team) call CTI_CO_FNC_GetFundsTeam;
_is_commander = _team call CTI_CO_FNC_IsGroupCommander;
_hq = (_side) call CTI_CO_FNC_GetSideHQ;

//--- We force the unit out of it's vehicle.
if !(isNull assignedVehicle _unit) then { unassignVehicle _unit; [_unit] orderGetIn false; [_unit] allowGetIn false };
if (vehicle _unit isEqualTo _hq) then { _unit action ["EJECT", vehicle _unit] }; //--- Is it the HQ?

_get set [1, _funds];

//-- Only store the client's gear if he didn't teamswap and if teamswaping is prohibed
if ((_side isEqualTo (_get select 2)) && (missionNamespace getVariable "CTI_TEAMSWAP") > 0) then {
	_loadout = (_unit) call CTI_CO_FNC_GetUnitLoadout;
	_get set [4, _loadout];
	
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] loadout has been retrieved upon disconnect [%3]", _name, _uid, _loadout]] call CTI_CO_FNC_Log};
};

missionNamespace setVariable [format["CTI_SERVER_CLIENT_%1", _uid], _get];
	
if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Updated Player [%1] [%2] funds to [%3]", _name, _uid, _funds]] call CTI_CO_FNC_Log};

_unit setPos ([markerPos format["CTI_%1Respawn",_side], 3, 15] call CTI_CO_FNC_GetRandomPosition);
_unit enableSimulationGlobal false;
_unit hideObjectGlobal true;
_unit disableAI "FSM";

switch (CTI_AI_TEAMS_UNITS_ON_DISCONNECT_MODE) do {
	case 0: {
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] has disconnected, deleting units and vehicles", _name, _uid]] call CTI_CO_FNC_Log};
		{if (!isPlayer _x && !(_x in playableUnits)) then {deleteVehicle _x}} forEach (units _team + ([_team, false] call CTI_CO_FNC_GetTeamVehicles) - [_hq]);

	};
	case 1: {
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] has disconnected, deleting units and vehicles in %3 seconds", _name, _uid, CTI_AI_TEAMS_UNITS_DELETE_AFTER]] call CTI_CO_FNC_Log};
			_suspendedTeams = missionNamespace getVariable ["CTI_SUSPENDED_TEAMS", []];
			_tempteam = createGroup [(side _team), true];
			((units _team) select {!(isPlayer _x) && !(_x in playableUnits) && (alive _x)}) joinSilent _tempteam;
			_suspendedTeams pushBack [_uid, _tempteam];

			missionNameSpace setVariable ["CTI_SUSPENDED_TEAMS", _suspendedTeams];
			[_uid, _tempteam] spawn {
				private _ownerUID = _this select 0;
				private _tempteam = _this select 1;
				private _time = 0;
				private _suspendedTeams = missionNamespace getVariable ["CTI_SUSPENDED_TEAMS", []];

				while {_tempteam in _suspendedTeams} do {
					if (_time >= CTI_AI_TEAMS_UNITS_DELETE_AFTER) then {
						if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] has not rejoined in %3 seconds, deleting units and vehicles", _name, _uid, CTI_AI_TEAMS_UNITS_DELETE_AFTER]] call CTI_CO_FNC_Log};
						{if (!isPlayer _x && !(_x in playableUnits)) then {deleteVehicle _x}} forEach (units _tempteam + ([_tempteam, false] call CTI_CO_FNC_GetTeamVehicles) - [_hq]);
						_suspendedTeams = missionNamespace getVariable ["CTI_SUSPENDED_TEAMS", []];
						_suspendedTeams deleteAt (_suspendedTeams find [_ownerUID, _tempteam]);
						missionNameSpace setVariable ["CTI_SUSPENDED_TEAMS", _suspendedTeams];
						publicVariable "CTI_SUSPENDED_TEAMS";
					};

					sleep 5;
					_time = _time + 5;
					_suspendedTeams = missionNamespace getVariable ["CTI_SUSPENDED_TEAMS", []];
				};
			};
	};
	case 2: {
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] has disconnected, keeping units and vehicles", _name, _uid]] call CTI_CO_FNC_Log};
		_suspendedTeams = missionNamespace getVariable ["CTI_SUSPENDED_TEAMS", []];
		_tempteam = createGroup [(side _team), true];
		((units _team) select {!(isPlayer _x) && !(_x in playableUnits) && (alive _x)}) joinSilent _tempteam;
		_suspendedTeams pushBack [_uid, _tempteam];
		missionNameSpace setVariable ["CTI_SUSPENDED_TEAMS", _suspendedTeams];
		publicVariable "CTI_SUSPENDED_TEAMS";
	};
};

//--- Was it the commander?
if (_is_commander && !isNull _team) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] was commander, sending a notification to side [%3]", _name, _uid, _side]] call CTI_CO_FNC_Log};
	
	//--- Send a message!
	["commander-disconnected"] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
	
};

//--- Update the global teams if needed
(_side) spawn {
	sleep 10;
	_logic = (_this) call CTI_CO_FNC_GetSideLogic;
	_teams = _logic getVariable "cti_teams";
	if ({isNull _x} count _teams > 0) then {
		_teams = _teams - [objNull];
		_logic setVariable ["cti_teams", _teams];
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Removed some null groups from the Global Teams for side [%1]", _this]] call CTI_CO_FNC_Log};
	};
};