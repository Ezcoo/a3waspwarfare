Private['_args'];

_args = _this;

switch (_args select 0) do {
	case "update-teamleader": {
		Private ["_leader","_team"];
		_team = _args select 1;
		_leader = _args select 2;

		_team setVariable ["CTI_teamleader", _leader];
	};
	case "group-query": {
		Private ["_group","_player","_side"];
		_group = _args select 1;
		_player = _args select 2;
		_side = _args select 3;

		if (alive _player) then {
			if (alive leader _group) then {
				if (isPlayer leader _group) then {
					//--- Player, forward the request.
					['group-join-request', _player] remoteExecCall ["CTI_CL_FNC_HandleSpecial", leader _group];
					
				} else {
					if (isNil {_group getVariable "CTI_uid"}) then { //--- Ensure that the group is ai-controlled.
						[_player, _group, _side] Call CTI_CO_FNC_ChangeUnitGroup;

						//--- Tell the player that his request is granted.
						["group-join-accept", _group] remoteExecCall ["CTI_CL_FNC_HandleSpecial", _player];
					};
				};
			};
		};
	};
	case "Paratroops": {
		_args spawn KAT_Paratroopers;
	};

	case "ParaVehi": {
		_args spawn KAT_ParaVehicles;
	};

	case "ParaAmmo": {
		_args spawn KAT_ParaAmmo;
	};

	case "RespawnST": {
		Private ["_side","_st"];
		_side = _args select 1;
		_st = (_side call CTI_CO_FNC_GetSideLogic) getVariable "CTI_ai_supplytrucks";
		{if (!isNull (driver _x)) then {driver _x setDammage 1};_x setDammage 1} forEach _st;
		["INFORMATION", Format ["Server_HandleSpecial.sqf: [%1] Supply Trucks were forced respawn.", str _side]] Call CTI_CO_FNC_LogContent;
	};

	case "uav": {
		_args spawn KAT_UAV;
	};

	case "upgrade-sync": {
		Private ["_side","_upgrade_id","_upgrade_level"];
		_side = _args select 1;
		_upgrade_id = _this select 2;
		_upgrade_level = _this select 3;

		if !(isNil {missionNamespace getVariable Format["CTI_upgrade_%1_%2_%3_sync", str _side, _upgrade_id, _upgrade_level]}) then {missionNamespace setVariable [Format["CTI_upgrade_%1_%2_%3_sync", str _side, _upgrade_id, _upgrade_level], true]};
	};
	case "update-clientfps": {
		Private ["_fps","_uid"];
		_uid = _args select 1;
		_fps = _args select 2;

		_get = missionNamespace getVariable format["CTI_AI_DELEGATION_%1", _uid];
		if !(isNil "_get") then {
			_get set [0, _fps];
			missionNamespace setVariable [format["CTI_AI_DELEGATION_%1", _uid], _get];
		};
	};
	case "ICBM": {
		Private ["_base","_bomb","_droppos1","_droppos2","_dropPosX","_dropPosY","_dropPosZ","_playerTeam","_side","_target"];
		_side = _args select 1;
		_base = _args select 2;
		_target = _args select 3;
		_playerTeam = _args select 4;
		["INFORMATION", Format ["Server_HandleSpecial.sqf: [%1] Team [%2] [%3] called in an ICBM Nuke.", str _side, _playerTeam, name (leader _playerTeam)]] Call CTI_CO_FNC_LogContent;
		if (isNull _target || !alive _target) exitWith {};
		_dropPosX = getPos _base select 0;
		_dropPosY = getPos _base select 1;
		_dropPosZ = getPos _base select 2;
		_droppos1 = [_dropPosX + 4, _dropPosY + 4, _dropPosZ];
		_droppos2 = [_dropPosX + 8, _dropPosY + 8, _dropPosZ];
		waitUntil {!alive _target || isNull _target};
		[_base] Spawn CTI_CO_FNC_NukeDammage;
	};
	case "process-killed-hq": {
		(_args select 1) Spawn CTI_SE_FNC_OnHQKilled;
	};
	case "connected-hc": {
		Private ["_hc","_id","_uid"];
		_hc = _args select 1;
		_id = owner _hc;
		_uid = getPlayerUID _hc;
		if(isNil "headlessClients")then{headlessClients = [];};

		["INFORMATION", Format["Server_HandleSpecial.sqf: Headless client is now connected [%1] [%2] with Owner ID [%3].", _hc, _uid, _id]] Call CTI_CO_FNC_LogContent;

		if (_id != 0) then {
			//--- Add the Headless client to our candidates.
			headlessClients pushBack _hc; 
			missionNamespace setVariable [Format["CTI_HEADLESS_%1", _uid], group _hc];
			missionNamespace setVariable ["CTI_HEADLESSCLIENTS_ID", (missionNamespace getVariable "CTI_HEADLESSCLIENTS_ID") + [group _hc]];
		} else {
			["WARNING", Format["Server_HandleSpecial.sqf: Headless client [%1] Owner ID is [0], it is server controlled.",_hc]] Call CTI_CO_FNC_LogContent;
		};
	};
	case "track-playerobject": {
		Private ["_get","_object","_uid"];
		_uid = _args select 1;
		_object = _args select 2;

		_get = missionNamespace getVariable Format ["CTI_CLIENT_%1_OBJECTS", _uid];

		if (isNil '_get') then {
			missionNamespace setVariable [Format ["CTI_CLIENT_%1_OBJECTS", _uid], [_object]];
		} else {
			_get = _get - [objNull] + [_object];
			missionNamespace setVariable [Format ["CTI_CLIENT_%1_OBJECTS", _uid], _get];
		};
	};
	case "repair-camp": {
		Private ["_camp_sideID","_logic","_repairSideID","_townModel"];
		_logic = _args select 1;
		_repairSideID = _args select 2;

		if (alive (_logic getVariable 'CTI_camp_bunker')) exitWith {};

		_townModel = (missionNamespace getVariable "CTI_C_CAMP") createVehicle (getPos _logic);
		_townModel enableDynamicSimulation true;
		_townModel setDir ((getDir _logic));
		_townModel setPos (getPos _logic);
		_townModel addEventHandler ["killed", {(_this select 0) Spawn CTI_SE_FNC_OnBuildingKilled}];
		_townModel addEventHandler ["handleDamage",{getDammage (_this select 0)+((_this select 2)/(missionNamespace getVariable "CTI_C_CAMP_HEALTH_COEF"))}];
		_logic setVariable ["CTI_camp_bunker", _townModel, true];

		//--- Do we have to update the camp SID ?
		_camp_sideID = _logic getVariable "sideID";
		if (_camp_sideID != _repairSideID) then {
			Private ["_town"];
			_logic setVariable ["sideID", _repairSideID, true];

			//--- Notify / update map if needed.
			[_logic, _repairSideID, _camp_sideID, true] remoteExecCall ["CTI_CL_FNC_CampCaptured"];
		};
	};
	case "destroy-camp": {
		Private ["_camp_sideID","_logic","_repairSideID","_townModel"];
		_logic = _args select 1;
		_repairSideID = _args select 2;		

		if (!(alive (_logic getVariable 'CTI_camp_bunker'))) exitWith {};		
		
		(_logic getVariable 'CTI_camp_bunker') allowDamage  true;
		(_logic getVariable 'CTI_camp_bunker') setDamage 1;
		
		sleep 1.3;
		deleteVehicle (_logic getVariable 'CTI_camp_bunker');
	};
};