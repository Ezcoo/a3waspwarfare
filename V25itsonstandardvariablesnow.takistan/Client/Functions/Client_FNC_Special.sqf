/*
	Client Special Handled events (HandleSpecial.sqf)
	 Scope: Client.
*/

CTI_CL_FNC_Commander_Assigned = {
	Private["_commanderTeam","_text"];
	_commanderTeam = _this select 0;
	_text = Localize "STR_WF_CHAT_AI_Commander";

	if (!isNull _commanderTeam) then {
		_text = Format[localize "STR_WF_CHAT_VoteForNewCommander",name (leader _commanderTeam)];
		if (group player == _commanderTeam) then {_text = localize "STR_WF_CHAT_PlayerCommander"};
	}else{
		_logic = (side player) Call CTI_CO_FNC_GetSideLogic;
		_logic setVariable ["CTI_commander", _commanderTeam, true];
	};

	[_text] Call CTI_CL_FNC_TitleTextMessage;
};


CTI_CL_FNC_Commander_VoteEnd = {
	Private["_commanderTeam","_text"];
	_commanderTeam = _this select 0;
	_text = Localize "STR_WF_CHAT_AI_Commander";

	if (!isNull _commanderTeam) then {
		_text = Format[localize "STR_WF_CHAT_VoteForNewCommander",name (leader _commanderTeam)];
		if (group player == _commanderTeam) then {_text = localize "STR_WF_CHAT_PlayerCommander"};
	};
	_logic = (side player) Call CTI_CO_FNC_GetSideLogic;
    _logic setVariable ["CTI_commander", _commanderTeam, true];
	[_text] Call CTI_CL_FNC_TitleTextMessage;
};

CTI_CL_FNC_Commander_VoteStart = {
	Private ["_name"];
	_name = _this select 0;

	if (votePopUp) then {
		waitUntil {!isNil {CTI_Client_Logic getVariable "CTI_votetime"}};
		if ((CTI_Client_Logic getVariable "CTI_votetime") > 0 && !voted) then {
			createDialog "CTI_VoteMenu"
		};
		if (voted) then {voted = false};
	};

	if (isMultiplayer) then {[Format[localize "STR_WF_CHAT_HasVotedForNewCommander", _name]] Call CTI_CL_FNC_TitleTextMessage};
};

CTI_CL_FNC_Display_ICBM = {
	Private ["_cruise", "_obj"];
	_obj = _this select 0;
	_cruise = _this select 1;

	waitUntil {!alive _cruise};

	[_obj] Spawn CTI_CO_FNC_Nuke;
};

CTI_CL_FNC_EndGame = {
	Private["_sideValue"];
	_sideValue = _this select 0;
	CTI_GameOver = true;

	(_sideValue Call CTI_CO_FNC_GetSideFromID) ExecVM "Client\Client_EndGame.sqf";
};

CTI_CL_FNC_HQ_SetStatus = {
	if (_this select 0) then {
		[missionNamespace getVariable "CTI_C_BASE_COIN_AREA_HQ_DEPLOYED",true,MCoin] Call Compile preprocessFile "Client\Init\Init_Coin.sqf";
	} else {
		[missionNamespace getVariable "CTI_C_BASE_COIN_AREA_HQ_UNDEPLOYED",false,MCoin] Call Compile preprocessFile "Client\Init\Init_Coin.sqf";
	};
};

CTI_CL_FNC_Perform_Action = {
	Private ['_action','_from','_unit'];
	_unit = _this select 0;
	_action = _this select 1;
	_from = _this select 2;

	_unit action [_action, _from];

	switch (_action) do {
		case "EJECT": {unassignVehicle _unit};
	};
};

CTI_CL_FNC_Reveal_UAV = {
	Private ['_marker','_size','_target','_uav'];
	_uav = _this select 0;
	_target = _this select 1;

	if (typeName _uav != 'OBJECT' || typeName _target != 'OBJECT') exitWith {["ERROR", Format ["uav-reveal: An object is expected for both parameters given (UAV: [%1]  Target: [%2]).",_uav,_target]] Call CTI_CO_FNC_LogContent};

	_size = round((_uav distance _target) / 16);
	_marker = Format["CTI_UAV_SPOTTED_%1",unitMarker];
	unitMarker = unitMarker + 1;
	createMarkerLocal [_marker,[(getPos _target select 0) - random(_size) + random(_size),(getPos _target select 1) - random(_size) + random(_size),0]];
	_marker setMarkerShapeLocal "Ellipse";
	_marker setMarkerColorLocal "ColorOrange";
	_marker setMarkerSizeLocal [_size,_size];

	sleep ((missionNamespace getVariable "CTI_C_PLAYERS_UAV_SPOTTING_DELAY")*3);

	deleteMarkerLocal _marker;
};

CTI_CL_FNC_Upgrade_Started = {
	Private ["_upgrade","_level"];
	_upgrade = _this select 0;
	_level = _this select 1;

	(Format [Localize "STR_WF_CHAT_Upgrade_Started_Message",(missionNamespace getVariable "CTI_C_UPGRADES_LABELS") select _upgrade, _level]) Call CTI_CL_FNC_CommandChatMessage;
};

CTI_CL_FNC_Upgrade_Complete = {
	Private ["_upgrade","_level"];
	_upgrade = _this select 0;
	_level = _this select 1;

	(Format [Localize "STR_WF_CHAT_Upgrade_Complete_Message",(missionNamespace getVariable "CTI_C_UPGRADES_LABELS") select _upgrade, _level]) Call CTI_CL_FNC_CommandChatMessage;

	if !(isNull commanderTeam) then { //--- Commander reward (if the player is the commander)
		if (commanderTeam == group player) then {
			[player, score player + (missionNamespace getVariable "CTI_C_PLAYERS_COMMANDER_SCORE_UPGRADE")] remoteExecCall ["CTI_SE_PVF_RequestChangeScore",2];
		};
	};
};