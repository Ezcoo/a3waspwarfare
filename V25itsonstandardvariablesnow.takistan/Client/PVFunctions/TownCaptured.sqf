/*
	Triggered everytime a capture is done (town captured or lost).
	 Parameters:
		- Town
		- Old side ID.
		- New side ID.
*/

Private ["_color","_town","_townMarker","_town_side_value","_town_side_value_new","_sv"];

_town = _this select 0;
_town_side_value = _this select 1;
_town_side_value_new = _this select 2;
_sv = _town getVariable "supplyValue";
//--- Make sure that the client is concerned by the capture either by capturing or having a town captured.
if !(CTI_Client_SideID in [_town_side_value,_town_side_value_new]) exitWith {};

_side_captured = (_town_side_value_new) Call CTI_CO_FNC_GetSideFromID;

//--- Color the town depending on the side which captured.
_color = missionNamespace getVariable (Format ["CTI_C_%1_COLOR", _side_captured]);
_townMarker = Format ["CTI_%1_CityMarker", _town];
_townMarker setMarkerColorLocal _color;

//--- Display a title message.
_side_label = switch (_side_captured) do {case west: {localize "STR_WF_PARAMETER_Side_West"}; case east: {localize "STR_WF_PARAMETER_Side_East"}; case resistance: {localize "STR_WF_Side_Resistance"};	default {"Civilian"}};
[Format[Localize "STR_WF_CHAT_Town_Captured", _town getVariable "name", _side_label]] Call CTI_CL_FNC_TitleTextMessage;

//--- Task.
_task = _town getVariable 'taskLink';
_ptask = currentTask player;
if (isNil '_task') then {_task = objNull};

//--- Taskman
["TownUpdate", _town] Spawn CTI_CL_FNC_TaskSystem;

//--- Client side capture.
if (_town_side_value_new == CTI_Client_SideID) then {
	//--- Retrieve the closest unit of the town.
	_closest = [_town, (units group player) Call CTI_CO_FNC_GetLiveUnits] Call CTI_CO_FNC_GetClosestEntity;
	
	//--- Client reward.
	if !(isNull _closest) then {
		//--- Check if the closest unit of the town in in range.
		_distance = _closest distance _town;
		
		_bonus = -1;
		_score = -1;
		if (_distance <= (missionNamespace getVariable "CTI_C_TOWNS_CAPTURE_RANGE")) then {
			//--- Capture
			// _bonus = if (_task == _ptask) then {missionNamespace getVariable "CTI_C_PLAYERS_BOUNTY_CAPTURE_MISSION"} else {missionNamespace getVariable "CTI_C_PLAYERS_BOUNTY_CAPTURE"};
			_bonus= 150*_sv;
			_score = missionNamespace getVariable "CTI_C_PLAYERS_SCORE_CAPTURE";
		} else {
			//--- Is it an assist?.
			if (_distance <= (missionNamespace getVariable "CTI_C_TOWNS_CAPTURE_ASSIST")) then {
				//--- Assist.
				// _bonus = if (_task == _ptask) then {missionNamespace getVariable "CTI_C_PLAYERS_BOUNTY_CAPTURE_MISSION_ASSIST"} else {missionNamespace getVariable "CTI_C_PLAYERS_BOUNTY_CAPTURE_ASSIST"};
				_bonus= 150*_sv;
				_score = missionNamespace getVariable "CTI_C_PLAYERS_SCORE_CAPTURE_ASSIST";
			};
		};
		
		//--- Update the funds if necessary.
		if (_bonus != -1) then {
			(_bonus) Call CTI_CL_FNC_ChangePlayerFunds;
			Format[Localize "STR_WF_CHAT_Town_Bounty_Full", _town getVariable "name", _bonus] Call CTI_CL_FNC_CommandChatMessage;
		};
		
		//--- Update the score necessary.
		if (_score != -1) then {
			[player,score player + _score] remoteExecCall ["CTI_SE_PVF_RequestChangeScore",2];
		};
	};
	
	//--- Commander reward (if the player is the commander)
	if !(isNull commanderTeam) then {
		if (commanderTeam == group player) then {
			_bonus = (_town getVariable "startingSupplyValue") * (missionNamespace getVariable "CTI_C_PLAYERS_COMMANDER_BOUNTY_CAPTURE_COEF");
			(_bonus) Call CTI_CL_FNC_ChangePlayerFunds;
			[player,score player + (missionNamespace getVariable "CTI_C_PLAYERS_COMMANDER_SCORE_CAPTURE")] remoteExecCall ["CTI_SE_PVF_RequestChangeScore",2];
			Format[Localize "STR_WF_CHAT_Commander_Bounty_Town", _bonus, _town getVariable "name"] Call CTI_CL_FNC_CommandChatMessage;
		};
	};
	
	//--- Taskman
	if !(isNull _task) then {
		if (_ptask == _task) then {
			["TownAssignClosest"] Spawn CTI_CL_FNC_TaskSystem;
		};
	};
};