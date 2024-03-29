if (!isServer || time > 30) exitWith {
	diag_log Format["[WFBE (WARNING)][frameno:%1 | ticktime:%2] Init_Server: The server initialization cannot be called more than once.",diag_frameno,diag_tickTime]
};

["INITIALIZATION", Format ["Init_Server.sqf: Server initialization begins at [%1]", time]] Call EZC_fnc_Functions_Common_LogContent;

//--- Allow resistance and civilian group to be spawned without a placeholder.
createCenter resistance;
createCenter civilian;

//--- MAke res forces not friendly to all playable sides.
resistance setFriend [west,0];
resistance setFriend [east,0];
resistance setFriend [civilian,1];
civilian setFriend [west, 0];
civilian setFriend [east, 0];
civilian setFriend [resistance, 1];

//--- Check AI set

if ((missionNamespace getVariable "cti_C_AI_SYSTEM") == 2) then {
GLX_Path = "GLX_System\";
execVM (GLX_Path+"GLX_Initialize.sqf");

};



/*
//hc part
//--- Client Functions.
EZC_fnc_Functions_Client_DelegateTownAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateTownAI.sqf";
EZC_fnc_Functions_Client_DelegateAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAI.sqf";
EZC_fnc_Functions_Client_DelegateBasePatrolAI = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateBasePatrolAI.sqf";
EZC_fnc_Functions_Client_DelegateAIStaticDefence = Compile preprocessFileLineNumbers "Client\Functions\Client_DelegateAIStaticDefence.sqf";
EZC_fnc_PVFunctions_HandleSpecial = Compile preprocessFileLineNumbers "Client\PVFunctions\HandleSpecial.sqf";
EZC_fnc_Functions_Common_GetSideID = Compile preprocessFileLineNumbers "Common\Functions\Common_GetSideID.sqf";
*/




// PVF
EZC_fnc_PVFunctions_RequestVehicleLock = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestVehicleLock.sqf";
EZC_fnc_PVFunctions_RequestChangeScore = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestChangeScore.sqf";
EZC_fnc_PVFunctions_RequestCommanderVote = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestCommanderVote.sqf";
EZC_fnc_PVFunctions_RequestNewCommander = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestNewCommander.sqf";
EZC_fnc_PVFunctions_RequestStructure = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestStructure.sqf";
EZC_fnc_PVFunctions_RequestDefense = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestDefense.sqf";
EZC_fnc_PVFunctions_RequestJoin = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestJoin.sqf";
EZC_fnc_PVFunctions_RequestMHQRepair = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestMHQRepair.sqf";
EZC_fnc_PVFunctions_RequestSpecial= Compile preprocessFileLineNumbers "Server\PVFunctions\RequestSpecial.sqf";
EZC_fnc_PVFunctions_RequestTeamUpdate = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestTeamUpdate.sqf";
EZC_fnc_PVFunctions_RequestUpgrade = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestUpgrade.sqf";
EZC_fnc_PVFunctions_RequestAutoWallConstructinChange = Compile preprocessFileLineNumbers "Server\PVFunctions\RequestAutoWallConstructinChange.sqf";
// END OF PVF

EZC_fnc_AI_AI_MoveTo = Compile preprocessFile "Server\AI\Orders\AI_MoveTo.sqf";
EZC_fnc_AI_AI_Patrol = Compile preprocessFile "Server\AI\Orders\AI_Patrol.sqf";
EZC_fnc_AI_AI_TownPatrol = Compile preprocessFile "Server\AI\Orders\AI_TownPatrol.sqf";
EZC_fnc_AI_AI_WPAdd = Compile preprocessFile "Server\AI\Orders\AI_WPAdd.sqf";
EZC_fnc_AI_AI_WPRemove = Compile preprocessFile "Server\AI\Orders\AI_WPRemove.sqf";
EZC_fnc_Functions_Server_BuildingDamaged = Compile preprocessFile "Server\Functions\Server_BuildingDamaged.sqf";
EZC_fnc_Functions_Server_BuildingHandleDamages = Compile preprocessFile "Server\Functions\Server_BuildingHandleDamages.sqf";
EZC_fnc_Functions_Server_BuildingKilled = Compile preprocessFile "Server\Functions\Server_BuildingKilled.sqf";
EZC_fnc_Functions_Server_CanUpdateTeam = Compile preprocessFile "Server\Functions\Server_CanUpdateTeam.sqf";
EZC_fnc_Functions_Server_ChangeAICommanderFunds = Compile preprocessFile "Server\Functions\Server_ChangeAICommanderFunds.sqf";
EZC_fnc_Construction_Construction_StationaryDefense = Compile preprocessFile "Server\Construction\Construction_StationaryDefense.sqf";
EZC_fnc_Functions_Server_CreateDefenseTemplate = Compile preprocessFile "Server\Functions\Server_CreateDefenseTemplate.sqf";
EZC_fnc_Functions_Server_GetAICommanderFunds = Compile preprocessFile "Server\Functions\Server_GetAICommanderFunds.sqf";
EZC_fnc_Functions_Server_HandleBuildingDamage = Compile preprocessFile "Server\Functions\Server_HandleBuildingDamage.sqf";
EZC_fnc_Functions_Server_HandleDefense = Compile preprocessFile "Server\Functions\Server_HandleDefense.sqf";
EZC_fnc_Functions_Server_HandleSpecial = Compile preprocessFile "Server\Functions\Server_HandleSpecial.sqf";
EZC_fnc_Functions_Server_MHQRepair = Compile preprocessFile "Server\Functions\Server_MHQRepair.sqf";
EZC_fnc_Functions_Server_SideMessage = Compile preprocessFile "Server\Functions\Server_SideMessage.sqf";
EZC_fnc_FSM_server_patrols = compile preprocessfilelinenumbers "Server\FSM\server_patrols.sqf";
EZC_fnc_Functions_Server_UpdateTeam = Compile preprocessFile "Server\Functions\Server_UpdateTeam.sqf";

//--- Support Functions.
EZC_fnc_Support_Support_ParaAmmo = Compile preprocessFile "Server\Support\Support_ParaAmmo.sqf";
EZC_fnc_Support_Support_Paratroopers = Compile preprocessFile "Server\Support\Support_Paratroopers.sqf";
EZC_fnc_Support_Support_ParaVehicles = Compile preprocessFile "Server\Support\Support_ParaVehicles.sqf";
EZC_fnc_Support_Support_UAV = Compile preprocessFile "Server\Support\Support_UAV.sqf";

EZC_fnc_Functions_Server_AI_SetTownAttackPath = Compile preprocessFileLineNumbers "Server\Functions\Server_AI_SetTownAttackPath.sqf";
EZC_fnc_Functions_Server_AI_SetTownAttackPath_PathIsSafe = Compile preprocessFileLineNumbers "Server\Functions\Server_AI_SetTownAttackPath_PathIsSafe.sqf";
EZC_fnc_Functions_Server_AI_SetTownAttackPath_PosIsSafe = Compile preprocessFileLineNumbers "Server\Functions\Server_AI_SetTownAttackPath_PosIsSafe.sqf";
EZC_fnc_Functions_Server_AI_Com_Upgrade = Compile preprocessFileLineNumbers "Server\Functions\Server_AI_Com_Upgrade.sqf";
EZC_fnc_Functions_Server_GetTownGroups = Compile preprocessFileLineNumbers "Server\Functions\Server_GetTownGroups.sqf";
EZC_fnc_Functions_Server_GetTownGroupsDefender = Compile preprocessFileLineNumbers "Server\Functions\Server_GetTownGroupsDefender.sqf";
EZC_fnc_Functions_Server_GetTownPatrol = Compile preprocessFileLineNumbers "Server\Functions\Server_GetTownPatrol.sqf";
EZC_fnc_Functions_Server_HandleEmptyVehicle = Compile preprocessFileLineNumbers "Server\Functions\Server_HandleEmptyVehicle.sqf";
EZC_fnc_Functions_Server_HandlePVF = Compile preprocessFileLineNumbers "Server\Functions\Server_HandlePVF.sqf";
EZC_fnc_Functions_Server_ManageTownDefenses = Compile preprocessFileLineNumbers "Server\Functions\Server_ManageTownDefenses.sqf";
EZC_fnc_Functions_Server_OnHQKilled = Compile preprocessFileLineNumbers "Server\Functions\Server_OnHQKilled.sqf";
EZC_fnc_Functions_Server_OperateTownDefensesUnits = Compile preprocessFileLineNumbers "Server\Functions\Server_OperateTownDefensesUnits.sqf";
EZC_fnc_Functions_Server_ProcessUpgrade = Compile preprocessFileLineNumbers "Server\Functions\Server_ProcessUpgrade.sqf";
EZC_fnc_Functions_Server_SetCampsToSide = Compile preprocessFileLineNumbers "Server\Functions\Server_SetCampsToSide.sqf";
//unused
//cti_SE_FNC_SetLocalityOwner = Compile preprocessFileLineNumbers "Server\Functions\Server_SetLocalityOwner.sqf";

EZC_fnc_Functions_Server_SpawnTownDefense = Compile preprocessFileLineNumbers "Server\Functions\Server_SpawnTownDefense.sqf";
EZC_fnc_Functions_Server_VoteForCommander = Compile preprocessFileLineNumbers "Server\Functions\Server_VoteForCommander.sqf";
EZC_fnc_Functions_Server_AssignNewCommander = Compile preprocessFileLineNumbers "Server\Functions\Server_AssignNewCommander.sqf";
EZC_fnc_Functions_Server_CreateObjectsFromArray = Compile preprocessFileLineNumbers "Server\Functions\Server_CreateObjectsFromArray.sqf";
//EZC_fnc_Functions_Server_RunWeatherEnvironment = Compile preprocessFileLineNumbers "Server\Functions\Server_RunWeatherEnvironment.sqf";

EZC_fnc_Construction_fn_Construction_HQSite = Compile preprocessFileLineNumbers "Server\Construction\Construction_HQSite.sqf";
EZC_fnc_Construction_Construction_MediumSite = Compile preprocessFileLineNumbers "Server\Construction\Construction_MediumSite.sqf";
EZC_fnc_Construction_Construction_SmallSite = Compile preprocessFileLineNumbers "Server\Construction\Construction_SmallSite.sqf";

EZC_fnc_Functions_Server_ResBuyUnit = Compile preprocessFile "Server\Functions\Server_ResBuyUnit.sqf";

//--- Define Headless Client functions (server ones).
EZC_fnc_Functions_Server_DelegateAITownHeadless = Compile preprocessFileLineNumbers "Server\Functions\Server_DelegateAITownHeadless.sqf";
EZC_fnc_Functions_Server_DelegateAIHeadless = Compile preprocessFileLineNumbers "Server\Functions\Server_DelegateAIHeadless.sqf";
EZC_fnc_Functions_Server_DelegateAIStaticDefenceHeadless = Compile preprocessFileLineNumbers "Server\Functions\Server_DelegateAIStaticDefenceHeadless.sqf";


if ((missionNamespace getVariable "cti_C_RESISTANCE_BASES_SWITCH") == 1) then {

EZC_fnc_Functions_Server_CreateBaseComposition = Compile preprocessFileLineNumbers "Server\Functions\Server_CreateBaseComposition.sqf";
EZC_fnc_Functions_Server_ManningOfResBaseDefense = Compile preprocessFileLineNumbers "Server\Functions\Server_ManningOfResBaseDefense.sqf";
EZC_fnc_FSM_server_init_res_light = Compile preprocessFileLineNumbers "Server\FSM\server_init_res_light.sqf";
EZC_fnc_FSM_server_init_res_heavy = Compile preprocessFileLineNumbers "Server\FSM\server_init_res_heavy.sqf";
EZC_fnc_FSM_server_init_res_air = Compile preprocessFileLineNumbers "Server\FSM\server_init_res_air.sqf";
EZC_fnc_FSM_res_veh_team = Compile preprocessFileLineNumbers "Server\FSM\res_veh_team.sqf";
EZC_fnc_FSM_res_team = Compile preprocessFileLineNumbers "Server\FSM\res_team.sqf";

};


//--- Headless Clients.
missionNamespace setVariable ["cti_HEADLESSCLIENTS_ID", []];


//--- create custom radio channels




if (isServer) then
{
	 
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "RU TEAM 1", "%UNIT_NAME", [OTeamleader1,OMedic1,OEngineer1,OSpecOps1,OMachinegunner1_1,OMachinegunner1_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "RU TEAM 2", "%UNIT_NAME", [OTeamleader2,OMedic2,OEngineer2,OSpecOps2,OMachinegunner2_1,OMachinegunner2_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "RU TEAM 3", "%UNIT_NAME", [OTeamleader3,OMedic3,OEngineer3,OSpecOps3,OMachinegunner3_1,OMachinegunner3_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "RU TEAM 4", "%UNIT_NAME", [OTeamleader4,OMedic4,OEngineer4,OSpecOps4,OMachinegunner4_1,OMachinegunner4_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "RU TEAM 5", "%UNIT_NAME", [OTeamleader5,OMedic5,OEngineer5,OSpecOps5,OMachinegunner5_1,OMachinegunner5_2]];
	
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "US TEAM 1", "%UNIT_NAME", [BTeamleader1,BMedic1,BEngineer1,BSpecOps1,BMachinegunner1_1,BMachinegunner1_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "US TEAM 2", "%UNIT_NAME", [BTeamleader2,BMedic2,BEngineer2,BSpecOps2,BMachinegunner2_1,BMachinegunner2_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "US TEAM 3", "%UNIT_NAME", [BTeamleader3,BMedic3,BEngineer3,BSpecOps3,BMachinegunner3_1,BMachinegunner3_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "UK TEAM 1", "%UNIT_NAME", [BTeamleader4,BMedic4,BEngineer4,BSpecOps4,BMachinegunner4_1,BMachinegunner4_2]];
radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "UK TEAM 2", "%UNIT_NAME", [BTeamleader5,BMedic5,BEngineer5,BSpecOps5,BMachinegunner5_1,BMachinegunner5_2]];
	


	//if (_channelID == 0) exitWith {diag_log format ["Custom channel '%1' creation failed!", _channelName]};
	//[_channelID, {_this radioChannelAdd [player]}] remoteExec ["call", [0, -2] select isDedicated, _channelName];
};






//--- Server Init is now complete.
serverInitComplete = true;
["INITIALIZATION", "Init_Server.sqf: Functions are loaded."] Call EZC_fnc_Functions_Common_LogContent;

//--- Getting all locations.
startingLocations = [0,0,0] nearEntities ["LocationArea_F", 100000];
["INITIALIZATION", "Init_Server.sqf: Initializing starting locations."] Call EZC_fnc_Functions_Common_LogContent;

//--- Waiting for the common part to be executed.
waitUntil {commonInitComplete && townInit};


//--- Side logics.
_present_west = missionNamespace getVariable "cti_WEST_PRESENT";
_present_east = missionNamespace getVariable "cti_EAST_PRESENT";
_present_res = missionNamespace getVariable "cti_GUER_PRESENT";

[] Call Compile preprocessFile 'Server\Init\Init_Defenses.sqf';

//--- Weather.
if (!(isNil "EZC_fnc_Functions_Server_RunWeatherEnvironment")) then {
	[] spawn EZC_fnc_Functions_Server_RunWeatherEnvironment;
	if(cti_C_ENVIRONMENT_WEATHER_SNOWFLAKES > 0) then {
		null = [80,660,false,0,false,true,true,false,false,false] spawn cti_SE_FNC_Server_AL_SNOW;
	};
};

["INITIALIZATION", "Init_Server.sqf: Weather module is loaded."] Call EZC_fnc_Functions_Common_LogContent;

//--- Static defenses groups in main towns.
{
	missionNamespace setVariable [Format ["cti_%1_DefenseTeam", _x], createGroup [_x, true]];
	(missionNamespace getVariable Format ["cti_%1_DefenseTeam", _x]) setVariable ["cti_persistent", true];
} forEach [west,east,resistance];

//--- Select whether the spawn restriction is enabled or not.
_locationLogics = [];
if ((missionNamespace getVariable "cti_C_BASE_START_TOWN") > 0) then {
	{
		_nearLogics = _x nearEntities[["LocationArea_F"],2000];
		if (count _nearLogics > 0) then {{if !(_x in _locationLogics) then {_locationLogics pushBack _x;}} forEach _nearLogics};
	} forEach towns;
	if (count _locationLogics < 3) then {_locationLogics = startingLocations;};
	["INITIALIZATION", Format ["Init_Server.sqf: Spawn locations were refined [%1].",count _locationLogics]] Call EZC_fnc_Functions_Common_LogContent;
} else {
	_locationLogics = startingLocations;
};

WF_Logic setVariable ["cti_spawnpos", _locationLogics];

Private ["_i", "_maxAttempts", "_minDist", "_rPosE", "_rPosW", "_setEast", "_setGuer", "_setWest", "_startE", "_startW"];
_i = 0;
_maxAttempts = 2000;
_minDist = missionNamespace getVariable 'cti_C_BASE_STARTING_DISTANCE';
_startW = [0,0,0];
_startE = [0,0,0];
_rPosW = [0,0,0];
_rPosE = [0,0,0];
_setWest = if (_present_west) then {true} else {false};
_setEast = if (_present_east) then {true} else {false};
_setGuer = if (_present_res) then {true} else {false};
_total = count _locationLogics;

_use_random = false;

_spawn_north = objNull;
_spawn_south = objNull;
_spawn_central = objNull;
_skip_w = false;
_skip_e = false;
{
	if (!isNil {_x getVariable "cti_spawn"}) then {
		switch (_x getVariable "cti_spawn") do {
			case "north": {_spawn_north = _x;};
			case "south": {_spawn_south = _x;};
			case "central": {_spawn_central = _x;};
		};
	};
} forEach startingLocations;

switch (missionNamespace getVariable "cti_C_BASE_STARTING_MODE") do {
	case 0: {
		//--- West north, east south.
		if (isNull _spawn_north || isNull _spawn_south) then {
			_use_random = true;
		} else {
			_startE = _spawn_south;
			_startW = _spawn_north;
			if (cti_ISTHREEWAY) then {_skip_w = true; _skip_e = true; _setWest = false; _setEast = false; _use_random = true;};
		};
	};
	case 1: {
		//--- West south, east north.
		if (isNull _spawn_north || isNull _spawn_south) then {
			_use_random = true;
		} else {
			_startE = _spawn_north;
			_startW = _spawn_south;
			if (cti_ISTHREEWAY) then {_skip_w = true; _skip_e = true; _setWest = false; _setEast = false; _use_random = true;};
		};
	};
	case 2: {
		_use_random = true;
	};
};

if (_use_random) then {
	while {true} do {
		if (!_setWest && !_setEast && !_setGuer) exitWith {["INITIALIZATION", "Init_Server.sqf : All sides were placed [Random]."] Call EZC_fnc_Functions_Common_LogContent
};

		//--- Determine west starting location if necessary.
		if (_setWest) then {
			_rPosW = _locationLogics select floor(random _total);
			if (_rPosW distance _startE > _minDist) then {_startW = _rPosW; _setWest = false;};
		};

		// --- Determine west starting location if necessary.
		if (_setEast) then {
			_rPosE = _locationLogics select floor(random _total);
			if (_rPosE distance _startW > _minDist) then {_startE = _rPosE; _setEast = false;};
		};

		_i = _i + 1;

		if (_i >= _maxAttempts) exitWith {
			//--- Get the default locations.
			Private ["_eastDefault", "_westDefault"];
			_eastDefault = objNull;
			_westDefault = objNull;

			{
				if (!isNil {_x getVariable "cti_default"}) then {
					switch (_x getVariable "cti_default") do {
						case west: {_westDefault = _x;};
						case east: {_eastDefault = _x;};
					};
				};
			} forEach startingLocations;

			// --- Ensure that everything is set, otherwise we randomly set the spawn.
			if (isNull _eastDefault || isNull _westDefault) then {
				Private ["_tempWork"];
				_tempWork = +(startingLocations) - [_westDefault, _eastDefault];
				if (isNull _eastDefault && _present_east) then {_eastDefault = _tempWork select floor(random _total); _tempWork = _tempWork - [_eastDefault];};
				if (isNull _westDefault && _present_west) then {_westDefault = _tempWork select floor(random _total); _tempWork = _tempWork - [_westDefault];};
			};

			if (_present_east && !_skip_e) then {_startE = _eastDefault;};
			if (_present_west && !_skip_w) then {_startW = _westDefault;};

			["INITIALIZATION", "Init_Server.sqf : All sides were placed by force after that the attempts limit was reached."] Call EZC_fnc_Functions_Common_LogContent;
		};
	};
};

["INITIALIZATION", Format ["Init_Server.sqf: Starting location mode is on [%1].",missionNamespace getVariable "cti_C_BASE_STARTING_MODE"]] Call EZC_fnc_Functions_Common_LogContent;

emptyQueu = [];

//--- Global sides initialization.
{
	Private["_side","_wasptmpFun"];
	_side = _x select 1;
	_wasptmpFun = compile preprocessFile "Wasp\unsort\StartVeh.sqf";
	//--- Only use those variable if the side logic is present in the editor.
	if (_x select 0) then {
		_pos = _x select 2;
		_logik = (_side) Call EZC_fnc_Functions_Common_GetSideLogic;
		_sideID = (_side) Call EZC_fnc_Functions_Common_GetSideID;

		//--- HQ init.
		_hq = [missionNamespace getVariable Format["cti_%1MHQNAME", _side], [1,1,1], _sideID, getDir _pos, true, false, true] Call EZC_fnc_Functions_Common_CreateVehicle;
		
		_hq  spawn {_this allowDamage false; sleep 10; _this allowDamage true};
		_hq setPos (getPos _pos);
		_hq setVariable ["cti_Taxi_Prohib", true];
		_hq setVariable ["cti_side", _side];
		_hq setVariable ["cti_trashable", false];
		_hq setVariable ["cti_structure_type", "Headquarters"];
		_hq addEventHandler ['killed', {_this Spawn EZC_fnc_Functions_Server_OnHQKilled}];
		_hq addEventHandler ["hit",{_this Spawn EZC_fnc_Functions_Server_BuildingDamaged}];
       
		//--- HQ Friendly Fire handler.
		_hq addEventHandler ['handleDamage',{[_this select 0,_this select 2,_this select 3] Call BuildingHandleDamages}];

		//--- Get upgrade clearance for side.
		_clearance = missionNamespace getVariable "cti_C_GAMEPLAY_UPGRADES_CLEARANCE";
		_upgrades = false;
		if (_clearance != 0) then {
			_upgrades = switch (true) do {
				case (_clearance in [1,4,5,7] && _side == west): {true};
				case (_clearance in [2,4,6,7] && _side == east): {true};
				case (_clearance in [3,5,6,7] && _side == resistance): {true};
				default {false};
			};
		};

		if !(_upgrades) then {
			_upgrades = [];
			for '_i' from 0 to count(missionNamespace getVariable Format["cti_C_UPGRADES_%1_LEVELS", _side])-1 do {_upgrades pushBack 0};
		} else {
			_upgrades = missionNamespace getVariable Format["cti_C_UPGRADES_%1_LEVELS", _side];
		};

		//--- Logic init.
		_logik setVariable ["cti_commander", objNull, true];
		_logik setVariable ["cti_hq", _hq, true];
		_logik setVariable ["cti_hq_deployed", false, true];
		_logik setVariable ["cti_hq_repair_count", 1, true];
		_logik setVariable ["cti_hq_repairing", false, true];
		_logik setVariable ["cti_startpos", _pos, true];
		_logik setVariable ["cti_structure_lasthit", 0];
		_logik setVariable ["cti_structures", [], true];
		_logik setVariable ["cti_aicom_running", false];
		_logik setVariable ["cti_aicom_funds", round((missionNamespace getVariable Format ['cti_C_ECONOMY_FUNDS_START_%1', _side])*1.5)];
		_logik setVariable ["cti_upgrades", _upgrades, true];
		_logik setVariable ["cti_upgrading", false, true];
		_logik setVariable ["cti_votetime", missionNamespace getVariable "cti_C_GAMEPLAY_VOTE_TIME", true];
		_logik setVariable ["cti_hqinuse",false];

		WF_Logic setVariable [Format["%1UnitsCreated",_side],0,true];
		WF_Logic setVariable [Format["%1Casualties",_side],0,true];
		WF_Logic setVariable [Format["%1VehiclesCreated",_side],0,true];
		WF_Logic setVariable [Format["%1VehiclesLost",_side],0,true];

		//--- Parameters specific.
		if ((missionNamespace getVariable "cti_C_BASE_AREA") > 0) then {_logik setVariable ["cti_basearea", [], true]};
		
		_logik setVariable ["cti_supply", missionNamespace getVariable Format ["cti_C_ECONOMY_SUPPLY_START_%1", _side], true];
		//_logik setVariable ["cti_commander_percent", if ((missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX") >= 50 && (missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX") <= 100) then {missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX"} else {100}, true];
		missionNamespace setVariable ["cti_commander_percent", if ((missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX") >= 50 && (missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX") <= 100) then { missionNamespace getVariable "cti_C_ECONOMY_INCOME_PERCENT_MAX"} else {100}, true];
		

		//--- Structures limit (live).
		_str = [];
		for '_i' from 0 to count(missionNamespace getVariable Format["cti_%1STRUCTURES",_side])-2 do {_str set [_i, 0]};
		_logik setVariable ["cti_structures_live", _str, true];

		//--- Radio: Initialize the announcers entities.
		_radio_hq1 = (createGroup sideLogic) createUnit ["Logic",[0,0,0],[],0,"NONE"];
		_radio_hq2 = (createGroup sideLogic) createUnit ["Logic",[0,0,0],[],0,"NONE"];
		[_radio_hq1] joinSilent (createGroup _side);
		[_radio_hq2] joinSilent (createGroup _side);
		_logik setVariable ["cti_radio_hq", _radio_hq1, true];
		_logik setVariable ["cti_radio_hq_rec", _radio_hq2];

		//--- Radio: Pick a random announcer.
		_announcers = missionNamespace getVariable Format ["cti_%1_RadioAnnouncers", _side];
		_radio_hq_id = (_announcers) select floor(random (count _announcers));

		//--- Radio: Apply an identity.
		_radio_hq1 setIdentity _radio_hq_id;
		_radio_hq1 setRank 'COLONEL';
		_radio_hq1 setGroupId ["HQ"];
		_radio_hq1 kbAddTopic [_radio_hq_id, "Client\kb\hq.bikb","Client\kb\hq.fsm", {call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
		_logik setVariable ["cti_radio_hq_id", _radio_hq_id, true];

		//--- Starting vehicles.
		{
			_pos = [getPosATL _hq, 60] call EZC_fnc_Functions_Common_GetSafePlace;
			_vehicle = [_x, _pos, _sideID, 0, false] Call EZC_fnc_Functions_Common_CreateVehicle;
			_vehicle setVariable ["cti_Taxi_Prohib", true];
			(_vehicle) call EZC_fnc_Functions_Common_ClearVehicleCargo;
			emptyQueu pushback _vehicle;
			[_vehicle] spawn EZC_fnc_Functions_Server_HandleEmptyVehicle;
		} forEach (missionNamespace getVariable Format ['cti_%1STARTINGVEHICLES', _side]);

		//--- spawn of additional vehicles
		switch _side do{
			case west: {
				call _wasptmpFun;
				_tVeh = WEST_StartVeh select floor(random (count WEST_StartVeh));
				_pos = [getPosATL _hq, 60] call EZC_fnc_Functions_Common_GetSafePlace;
				_vehicle = [_tVeh,_pos, west, 0, false] Call EZC_fnc_Functions_Common_CreateVehicle;
				_vehicle setVariable ["cti_Taxi_Prohib", true];
				clearWeaponCargoGlobal _vehicle;
				clearMagazineCargoGlobal _vehicle;
				emptyQueu pushBack _vehicle;
				[_vehicle] Spawn EZC_fnc_Functions_Server_HandleEmptyVehicle;
				if ((missionNamespace getVariable "cti_C_UNITS_BALANCING") > 0) then {(_vehicle) Call EZC_fnc_Functions_Common_BalanceInit};
				
				if({(_vehicle isKindOf _x)} count ["Tank","Wheeled_APC"] !=0) then {_vehicle addeventhandler ['Engine',{_this execVM "Client\Module\Engines\Engine.sqf"}];
				
				_vehicle addAction ["<t color='"+"#00E4FF"+"'>STEALTH ON</t>","Client\Module\Engines\Stopengine.sqf", [], 7,false, true,"","alive _target &&(isEngineOn _target)"];};
			};
			case east:{
				call _wasptmpFun;
				_tVeh = EAST_StartVeh select floor(random (count EAST_StartVeh));
				_pos = [getPosATL _hq, 60] call EZC_fnc_Functions_Common_GetSafePlace;
				_vehicle = [_tVeh, _pos, east, 0, false] Call EZC_fnc_Functions_Common_CreateVehicle;
				_vehicle setVariable ["cti_Taxi_Prohib", true];
				clearWeaponCargoGlobal _vehicle;
				clearMagazineCargoGlobal _vehicle;
				emptyQueu pushBack _vehicle;
				[_vehicle] Spawn EZC_fnc_Functions_Server_HandleEmptyVehicle;
				if ((missionNamespace getVariable "cti_C_UNITS_BALANCING") > 0) then {(_vehicle) Call EZC_fnc_Functions_Common_BalanceInit};

				if({(_vehicle isKindOf _x)} count ["Tank","Wheeled_APC"] !=0) then {_vehicle addeventhandler ['Engine',{_this execVM "Client\Module\Engines\Engine.sqf"}];
				
				_vehicle addAction ["<t color='"+"#00E4FF"+"'>STEALTH ON</t>","Client\Module\Engines\Stopengine.sqf", [], 7,false, true,"","alive _target &&(isEngineOn _target)"];};
			};
		};

		//--- Groups init.
		_teams = [];
		{
			if !(isNil '_x') then {
				if (_x isKindOf "Man") then {
					Private ["_group"];
					_group = group _x;
					_teams pushBack _group;

					if (isNil {_group getVariable "cti_funds"}) then {_group setVariable ["cti_funds", missionNamespace getVariable Format ["cti_C_ECONOMY_FUNDS_START_%1", _side], true]};
					_group setVariable ["cti_side", _side];
					_group setVariable ["cti_persistent", true];
					_group setVariable ["cti_queue", []];
					_group setVariable ["cti_vote", -1, true];
					
					[_group, ""] Call EZC_fnc_Functions_Common_SetTeamRespawn;
					[_group, -1] Call EZC_fnc_Functions_Common_SetTeamType;
					[_group, "towns"] Call EZC_fnc_Functions_Common_SetTeamMoveMode;
					[_group, [0,0,0]] Call EZC_fnc_Functions_Common_SetTeamMovePos;
					(leader _group) enableSimulationGlobal true;

					["INITIALIZATION", Format["Init_Server.sqf: [%1] Team [%2] was initialized.", _side, _group]] Call EZC_fnc_Functions_Common_LogContent;
				};

			};
		} forEach (synchronizedObjects _logik);

		_logik setVariable ["cti_teams", _teams, true];
		_logik setVariable ["cti_teams_count", count _teams];
	};
} forEach [[_present_east, east, _startE],[_present_west, west, _startW]];

_selected_pos_array = [];
_start_position_array = [];
serverInitFull = true;

//--- Town starting mode.
if((missionNamespace getVariable "cti_DEBUG_DISABLE_TOWN_INIT") == 0)then{
	waitUntil{count towns == totalTowns};
};
// run one global server town script to process supply updates in each town
[] Spawn {[] execVM 'Server\FSM\server_town.sqf'};



[] Spawn {
	if ((missionNamespace getVariable "cti_C_TOWNS_DEFENDER") > 0 || (missionNamespace getVariable "cti_C_TOWNS_OCCUPATION") > 0) then {
		[] execVM 'Server\FSM\server_town_ai.sqf'; // for occupation forces (spawn/despawn mode)
	};
};

if ((missionNamespace getVariable "cti_C_TOWNS_STARTING_MODE") != 0) then {
	[] Call Compile preprocessFile "Server\Init\Init_Towns.sqf"
} else {
	townInitServer = true;
};


//--- Pre-initialization of the Garbage Collector & Empty vehicle collector.
WF_Logic setVariable ["emptyVehicles",[],true];

//--- Don't pause the server init script.
[] Spawn {
	waitUntil {townInit};
		[] execVM "Server\FSM\server_victory_threeway.sqf";
		["INITIALIZATION", "Init_Server.sqf: Victory Condition FSM is initialized."] Call EZC_fnc_Functions_Common_LogContent;

	[] ExecVM "Server\FSM\updateresources.sqf";
	["INITIALIZATION", "Init_Server.sqf: Resources FSM is initialized."] Call EZC_fnc_Functions_Common_LogContent;
};

[] ExecVM "Server\FSM\server_collector_garbage.sqf";
["INITIALIZATION", "Init_Server.sqf: Garbage Collector is defined."] Call EZC_fnc_Functions_Common_LogContent;
[] ExecVM "Server\FSM\emptyvehiclescollector.sqf";
["INITIALIZATION", "Init_Server.sqf: Empty Vehicle Collector is defined."] Call EZC_fnc_Functions_Common_LogContent;

/////////////////////////////////////////////////////////////////////////////////// map cleaners

// object cleaner on map
[] ExecVM "Server\FSM\cleaners\Server_ObjectCleaner.sqf";
["INITIALIZATION", "Server_ObjectCleaner.sqf: cleaner for dropped items is defined."] Call EZC_fnc_Functions_Common_LogContent;


/////////////////////////////////////////////////////////////////////////////////// end of map cleaners

//--- Base Area (grouped base)
if ((missionNamespace getVariable "cti_C_BASE_AREA") > 0) then {[] execVM "Server\FSM\basearea.sqf"};


if ((missionNamespace getVariable "cti_C_RESISTANCE_BASES_SWITCH") == 1) then {
//// Resistance base spawning
[] Call Compile preprocessFile "Server\Config\Config_GUE.sqf";
_start_location_array = [0,0,0] nearEntities [["LocationOutpost_F"], 100000];

_lfResBasePositions = [];
_hfResBasePositions = [];
_afResBasePositions = [];
for [{_c = 0;},{_c < (count _start_location_array)},{_c = _c + 1;}] do {
	_resBaseLocation = _start_location_array select _c;
	_structureType = _resBaseLocation getVariable 'StructureType';

	switch (_structureType) do {
	    case 'LF': {_lfResBasePositions pushBack [_resBaseLocation];};
	    case 'HF': {_hfResBasePositions pushBack [_resBaseLocation];};
	    case 'AF': {_afResBasePositions pushBack [_resBaseLocation];};
	};
};

[0, _lfResBasePositions, _hfResBasePositions, _afResBasePositions] spawn EZC_fnc_Functions_Server_CreateBaseComposition;

};


["INITIALIZATION", Format ["Init_Server.sqf: Server initialization ended at [%1]", time]] Call EZC_fnc_Functions_Common_LogContent;

//--- Waiting until that the game is launched.
waitUntil {time > 0};







//sleep 25;
FPS_SWITCH = 2;
[] execVM "Server\FSM\SERVER_FPS.sqf";
[] execVM "Server\FSM\Artyrequestloop.sqf";
sleep 2;
[] execVM "Server\FSM\Artyrequestloop_OPF.sqf";
sleep 2;
[] execVM "Server\FSM\Artyrequestloop_BLU.sqf";


[] execVM "Server\FSM\HQwreckkeeper.sqf";





{_x Spawn EZC_fnc_Functions_Server_VoteForCommander} forEach cti_PRESENTSIDES;