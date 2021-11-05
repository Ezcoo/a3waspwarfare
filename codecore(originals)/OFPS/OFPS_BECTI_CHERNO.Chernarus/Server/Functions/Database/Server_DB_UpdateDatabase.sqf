/*
  # HEADER #
	Script: 		Server\Functions\Database\Server_DB_UpdateDatabase.sqf
	Alias:			CTI_SE_FNC_DatabaseUpdate
	Description:	Request an update to the database
	Creation Date:	20-08-2017
	Revision Date:	20-08-2017
	
  # PARAMETERS #
    0	[String]: Type of update request
    1	[Array]: Update information
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[String, Array] call CTI_SE_FNC_DatabaseUpdate;
	
  # EXAMPLE #
		//-- when a player is killed
		//-- ["playerKilled", [_killed, _killer]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
*/

private ["_aiCountLocal","_requestType","_killed","_killer","_uid","_playerCount","_killer_vehicle_type","_killed_vehicle_type","_group_killer","_name","_id","_jip","_ownerID","_killerUid", "_informationArray","_fps","_justPlayers","_totalentities","_serverTime","_aiCount","_uptime","_headless"];
_requestType = _this select 0;
_informationArray = _this select 1;

//Check if DB is running
_lockStatus = ("extDB3" callExtension "9:LOCK_STATUS");

//ONLY RUN IF DATABASE IS CONNECTED
if (_lockStatus isEqualTo One) then
{
sleep 1;//initial sleep, just in case

//call compile ("extDB3" callExtension format["0:logger:logDebugLog:Logged Game Creation UID:%1", GameID]);
//sleep 1;//sadly we need a sleep after each call atm to give them time to complete

switch (_requestType) do {
	case "gameOver": 
	{
		call compile ("extDB3" callExtension format["0:logger:gameOver:%1", GameID]);
		sleep 1;
		call compile ("extDB3" callExtension format["0:logger:logGameOver:%1", GameID]);
	};
	case "gameStart": 
	{
		call compile ("extDB3" callExtension format["0:logger:gameStart:%1", GameID]);
		sleep 1;
		call compile ("extDB3" callExtension format["0:logger:logSidesForNewGame:%1:%2", "OPFOR", GameID]);
		sleep 1;
		call compile ("extDB3" callExtension format["0:logger:logSidesForNewGame:%1:%2", "BLUFOR", GameID]);
		sleep 1;
		SideOpfor = ((call compile ("extDB3" callExtension format["0:logger:selectOpforID:%1", GameID])) select 1 select 0 select 0);
		sleep 1;
		SideBlufor = ((call compile ("extDB3" callExtension format["0:logger:selectBluforID:%1", GameID])) select 1 select 0 select 0);
	};
	case "playerKilled": 
	{
	
		//-- when a player is killed
		//-- ["playerKilled", [_killed, _killer]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
		_killed = _informationArray select 0;
		_killer = _informationArray select 1;
		_killedUid = getPlayerUID _killed;
		if (isPlayer _killer) then 
		//Killer is Player
		{
			_killerUid = getPlayerUID _killer;
			_killerName = (getDescription _killer) select 0;
			_killedName = (getDescription _killed) select 0;
			_tker = 0;//0 = no, 1 = yes
			if((side _killer) isEqualTo (side _killed)) then
			{
				_tker = 1;
			}
			else
			{
				_tker = 0;
			};
			
			call compile ("extDB3" callExtension format["0:logger:logPvPKill:%1:%2:%3:%4:%5:%6:%7", 1, _killerName, _killedName, _tker, _killerUid, _killedUid, GameID]);
		} 
		else 
		//Killer is AI
		{
			_killerName = (getDescription _killer) select 0;
			_killedName = (getDescription _killed) select 0;
			_tker = 0;//0 = no, 1 = yes
			if((side _killer) isEqualTo (side _killed)) then
			{
				_tker = 1;
			}
			else
			{
				_tker = 0;
			};
			call compile ("extDB3" callExtension format["0:logger:logEvPKill:%1:%2:%3:%4:%5:%6", 0, _killerName, _killedName, _tker, _killedUid, GameID]);
		};
		
	};
	case "playerConnected": 
	{
		//["playerConnected", [_uid, _name, _id, _jip, _ownerID]] call CTI_SE_FNC_DatabaseUpdate;
		_uid = _informationArray select 0;
		_name = _informationArray select 1;
		_id = _informationArray select 2;
		_jip = _informationArray select 3; // not used for db, yet atleast
		_ownerID = _informationArray select 4; // not used for db, yet atleast

		

		//Check if DB contains player or if player is new player
		//returnSteamID format [SteamID]
		_dbContains = call compile ("extDB3" callExtension format["0:logger:returnSteamID:%1", _uid]);
		sleep 1;//give sql query time to return before using


		if ((count (_dbContains select 1) isEqualTo 0)) then
		//there are no returned values, assume failure(new player) and end
		{
			_dbContains = '';
		}
		else
		//there are returned values
		{
			if ((_dbContains select 0) isEqualTo 0) then
			//error
			{
				_dbContains = '';
			}
			else
			//something other than error
			{
				if((_dbContains select 0) isEqualTo 1) then
				//success
				{
					//assign steamID to _dbContains of player, player has joined server
					_dbContains = ((_dbContains select 1) select 0) select 0;
				}
				else
				//something other than error or success
				{
					_dbContains = '';
				};
			};
		};
		
		if (_dbContains isEqualTo _uid) then 
		//if this matches, then this player has joined server at least once before
		{
			//check if user has ever used this screenname
			//returnPlayerNameBySteamIDCount [name, steamid]
			_dbName = call compile ("extDB3" callExtension format["0:logger:returnPlayerNameBySteamIDCount:%1:%2", _name, _uid]);
			sleep 1;//give sql query time to return before using
			if (count (_dbName select 1) isEqualTo 0)  then
			//if there are no returns, than this is a new name used by this player
			{
				_dbName = '';
			}
			else
			//if there are returns, than this name has been used before
			{
				if ((_dbName select 0) isEqualTo 0)  then
				//error
				{
					_dbName = '';
				}
				else
				//something other than an error
				{
					if((_dbName select 0) isEqualTo 1) then
					//success
					{
						//This name is not unique, assign the number of matches of this name
						_dbName = ((_dbName select 1) select 0) select 0;
					}
					else
					//neither error nor success
					{
						_dbName = '';
					};
				};
			};
			
			if (_dbName > 0) then 
			//this is a count of matches, so if there are any than this name existed before
			{
				//Log the time of this new join and which name was used

			}
			else 
			//player has never used this name before, so lets store it
			{
				//Insert users name into DB
				call compile ("extDB3" callExtension format["0:logger:logPlayerNameBySteamID:%1:%2", _name, _uid]);
			};
		}
		else 
		//if there is no match then this is a new player, we need to store their steamid and name
		{
			//Insert SteamID into PlayerTB
			//logSteamID [steamid]
			call compile ("extDB3" callExtension format["0:logger:logSteamID:%1", _uid]);
			sleep 1;
			//Insert users name into DB
			//logPlayerNameBySteamID [name, steamid]
			call compile ("extDB3" callExtension format["0:logger:logPlayerNameBySteamID:%1:%2", _name, _uid]);
		};

		//check if player has been in this particular game or not
		//returnPlayerNameUID [GameID, SteamID]
		_dbJoined = call compile ("extDB3" callExtension format["0:logger:returnPlayerUIDCount:%1:%2", GameID, _uid]);
		sleep 1;//give sql query time to return before using
		if (count (_dbJoined select 1) isEqualTo 0) then
		//if there are no returns, than this player has never joined this particular game
		{
			_dbJoined = 0;
		}
		else
		//there are returns, this player may have joined this game before
		{
			if ((_dbJoined select 0) isEqualTo 0) then
			//error
			{
				_dbJoined = 0;
			}
			else
			//not an error
			{
				if((_dbJoined select 0) isEqualTo 1) then
				//success
				{
					//assign count of matches for this player for this game
					_dbJoined = ((_dbJoined select 1) select 0) select 0;
				}
				else
				//something other than success
				{
					_dbJoined = 0;
				};
				
			};
		};
		
		if (_dbJoined > 0) then 
		//This player has been in this particular game
		{
			//Log the time of this particular join
			//[PlayerGameTB_UID, PlayerNameTB_UID]
			call compile ("extDB3" callExtension format["0:logger:logPlayerJoinTimes:%1:%2", GameID, _uid]);
		}
		else 
		//This player has not been in this particular game ever
		{
			//Log this combination of game and player
			//logPlayerandGame [gameid, steamid]
			call compile ("extDB3" callExtension format["0:logger:logPlayerandGame:%1:%2", GameID, _uid]);
		};

		//these get assigned the instance of the name the player is using, and game they have just joined;
		//[Name, SteamID]
		_playerGameUID = call compile ("extDB3" callExtension format["0:logger:returnPlayerGameUID:%1:%2", GameID, _uid]);
		sleep 1;//give sql query time to return before using
		//[GameUID, SteamID]
		_playerNameUID = call compile ("extDB3" callExtension format["0:logger:returnPlayerNameUID:%1:%2", _name, _uid]);
		sleep 1;//give sql query time to return before using
		if(((_playerNameUID select 0) isEqualTo 1) && ((_playerGameUID select 0) isEqualTo 1)) then
		//if both are successful
		{
			if( ( (count (_playerNameUID select 1)) > 0) && ( (count (_playerGameUID select 1)) > 0) ) then
			//ensure both have actual returned values
			{
				//[PlayerGameTB_UID, PlayerNameTB_UID]
				call compile ("extDB3" callExtension format["0:logger:logPlayerJoinTimes:%1:%2", (_playerGameUID select 1) select 0, (_playerNameUID select 1) select 0]);
			}
			else
			{
				
			};
			
		}
		else
		{
			
		};
		

	};
	case "playerDisconnected": 
	{
		//["playerDisconnected", [_uid, _name, _id] call CTI_SE_FNC_DatabaseUpdate;
		_uid = _informationArray select 0;
		_name = _informationArray select 1;
		_id = _informationArray select 2;
	};

	case "unitKilled": 
	{
	
		//["unitKilled", [_killed, _killer, _sideID_killed]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
		// for when a unit is killed
		// check for if killer is in side enemy before incrementing
		_killer = _informationArray select 1;
		_killed = _informationArray select 0;
		_side_ID_killed = _informationArray select 2;
		//_group_killer = (group _killer);

		if (isPlayer _killer) then 
		//Killer is Player
		{
			_killerUid = getPlayerUID _killer;
			_killerName = (getDescription _killer) select 0;
			_killedName = (getDescription _killed) select 0;
			_tker = 0;//0 = no, 1 = yes
			if((side _killer) isEqualTo (side _killed)) then
			{
				_tker = 1;
			}
			else
			{
				_tker = 0;
			};
			
			call compile ("extDB3" callExtension format["0:logger:logPvEKill:%1:%2:%3:%4:%5:%6", 1, _killerName, _killedName, _tker, _killerUid, GameID]);
		} 
		else 
		//Killer is AI
		{
			_killerName = (getDescription _killer) select 0;
			_killedName = (getDescription _killed) select 0;
			_tker = 0;//0 = no, 1 = yes
			if((side _killer) isEqualTo (side _killed)) then
			{
				_tker = 1;
			}
			else
			{
				_tker = 0;
			};
			call compile ("extDB3" callExtension format["0:logger:logEvEKill:%1:%2:%3:%4:%5", 0, _killerName, _killedName, _tker, GameID]);
		};

		/*
		if (!((vehicle _killer) isKindOf "Infantry")) then 
		{
		// killer is in a vehicle!
			_killer_vehicle_type = type (vehicle _killer); //string
		} 
		else 
		{
			// killer is on foot!
			_killer_vehicle_type = "Infantry";
		};

		if (!((vehicle _killer) isKindOf "Infantry")) then 
		{
			// killed is in a vehicle!
			_killed_vehicle_type = typeof (vehicle _killed);// string
		} 
		else 
		{
			// killed is on foot!
			_killed_vehicle_type = "Infantry";
		};
		_killed_vehicle_type = typeof (vehicle _killed);
		if (isPlayer _killer) then 
		{
			// killer is a player
			_killerUid = getPlayerUID _killer;
			// extDB extentension here
		} 
		else 
		{
			// killer is an AI
			//ext db extentsion here
		};
		*/
	};
	/*
	//base structure kill tracking will be on hold for now
	case "baseStructureKilled": {
	// for when an structure is killed
	// check for if killer is in side enemy before incrementing
	};
	
	case "baseBuildingKilled": {
		// for when an building is killed
		["buildingDestroyed", [_killed, _killer, _variable, _sideID, _position, _direction, _completion_ratio]] call CTI_PVF_SRV_DatabaseUpdate;
		// only get update request if the building is not a team killed. ALSO does not record if building is sold
		// also means if killer is null, there will be no database update
		// could in the future increase complexity to record team kills and if a building is sold, however I feel this is out of the scope for this project. - protossmaster
		// may not update if building's killer is not a player
		_informationArray select 0 = _killed; // object -> may not be used for DB update
		_informationArray select 1 = _killer; //  object and wont be null
		_informationArray select 2 = _variable; // string -> variable name for building killed. Probably what we will use
		_informationArray select 3 = _sideID; // integer
		_informationArray select 4 = _position; // wont be used for DB, but we pass it here incase we do in the future
		_informationArray select 5 = _direction; // wont be used for DB, but we pass it here incase we do in the future
		_informationArray select 6 = _completion_ratio; // wont be used for DB, but we pass it here incase we do in the future
		_informationArray select 7 = _side; // string
		// next we get killer's information
		side _killer = _killer_side; // this is a string
		getPlayerUID _killer = _uid; // number
		if (vehicle _killer != _killer) then {
			// player is in a vehicle
			type (vehicle _killer) = _killer_vehicle_type; //string
		} else {
			_killer_vehicle_type = "Infantry"; //player is not in a vehicle and is on foot
		};
	};
	*/
	case "serverFps": {
		//["serverFps", [_fps, _playerCount, _aiCount, _aiCountLocal, _serverTime]] call CTI_PVF_SRV_DatabaseUpdate;

		_fps = _informationArray select 0;
		_playerCount = _informationArray select 1;
		_aiCount = _informationArray select 2;
		_aiCountLocal = _informationArray select 3;
		_uptime = _informationArray select 4;
		_spawnedScriptCount = _informationArray select 5;
		_execVMScriptCount = _informationArray select 6;
		_execScriptCount = _informationArray select 7;
		_fsmScriptCount = _informationArray select 8;
		
		//[GameTB_UID, LocalAI, PlayerCount, serverfps, aicount, SpawnedScripts, ExecVMScripts, ExecScripts, FSMScripts]
		call compile ("extDB3" callExtension format["0:logger:logGameInstance:%1:%2:%3:%4:%5:%6:%7:%8:%9",
			 GameID, _aiCountLocal, _playerCount, _fps, _aiCount, _spawnedScriptCount, _execVMScriptCount, _execScriptCount, _fsmScriptCount]);

	};

	case "clientFps": {
		//["clientFps", [_fps, _serverTime, _uid, _aiCount, _aiCountLocal]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
		_fps = _informationArray select 0;
		//_uptime = _informationArray select 1;
		_uptime = diag_tickTime;
		_uid = _informationArray select 2;
		_aiCount = _informationArray select 3;
		_aiCountLocal = _informationArray select 4;
		_spawnedScriptCount = _informationArray select 5;
		_execVMScriptCount = _informationArray select 6;
		_execScriptCount = _informationArray select 7;
		_fsmScriptCount = _informationArray select 8;
		//returnUID format [GameID, uid]
		_tbuid = call compile ("extDB3" callExtension format["0:logger:returnUID:%1:%2", GameID, _uid]);
		sleep 1;
		
		
		//[PlayerGameStatsTB_UID, FPS, LocalAI, SpawnedScripts, ExecVMScripts, ExecScripts, FSMScripts]
		call compile ("extDB3" callExtension format["0:logger:logPlayerGame:%1:%2:%3:%4:%5:%6:%7", ((_tbuid select 1) select 0) select 0, _fps, _aiCountLocal, _spawnedScriptCount, _execVMScriptCount, _execScriptCount, _fsmScriptCount]);
	};
	case "headlessFps": {
		//["headlessFps", [_fps, _serverTime, _aiCount, _aiCountLocal]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
		_fps = _informationArray select 0;
		//_uptime = _informationArray select 1;
		_uptime = diag_tickTime;
		_aiCount = _informationArray select 2;
		_aiCountLocal = _informationArray select 3;
		_spawnedScriptCount = _informationArray select 4;
		_execVMScriptCount = _informationArray select 5;
		_execScriptCount = _informationArray select 6;
		_fsmScriptCount = _informationArray select 7;
		_hc = call compile ("extDB3" callExtension format["0:logger:returnLatestHC:%1", GameID]);
		sleep 1;
		//[LocalAI, FPS, HeadlessClientTB_UID,SpawnedScripts,ExecVMScripts, ExecScripts, FSMScripts]
		call compile ("extDB3" callExtension format["0:logger:logHeadlessClientInstance:%1:%2:%3:%4:%5:%6:%7", _aiCountLocal, _fps, ((_hc select 1) select 0) select 0, _spawnedScriptCount, _execVMScriptCount, _execScriptCount, _fsmScriptCount]);
	};
	case "chatLog": {
		//["chatLog", [_chatArr,player]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
		_chatArr = _informationArray select 0;
		_spammer = _informationArray select 1;
		_uid = getPlayerUID _spammer;//steamID
		
		//returnUID format [GameID, uid]
		_playerGameUID = call compile ("extDB3" callExtension format["0:logger:returnUID:%1:%2", GameID, _uid]);
		sleep 1;
		if(!((_playerGameUID select 0) isEqualTo 1)) then
		{
			//systemChat "Error logging message, retrying";
			_playerGameUID = call compile ("extDB3" callExtension format["0:logger:returnUID:%1:%2", GameID, _uid]);
			if(!((_playerGameUID select 0) isEqualTo 1)) then
			{
				//systemChat "Error logging message, retrying one more time";
				_playerGameUID = call compile ("extDB3" callExtension format["0:logger:returnUID:%1:%2", GameID, _uid]);
				if(!((_playerGameUID select 0) isEqualTo 1)) then
				{
					//systemChat "Error logging message";
				}
				else
				{
					//logChat format [Message, PlayerGameUID]
					call compile ("extDB3" callExtension format["0:logger:logChat:%1:%2", toString _chatArr, _playerGameUID select 1 select 0 select 0]);
				};
			}
			else
			{
			//logChat format [Message, PlayerGameUID]
			call compile ("extDB3" callExtension format["0:logger:logChat:%1:%2", toString _chatArr, _playerGameUID select 1 select 0 select 0]);
			};

		}
		else
		{
		//logChat format [Message, PlayerGameUID]
		call compile ("extDB3" callExtension format["0:logger:logChat:%1:%2", toString _chatArr, _playerGameUID select 1 select 0 select 0]);
		};
		sleep 1;
	};
	case "upgradeEvent": {
		_side = _informationArray select 0;
		_upgradeName = _informationArray select 1;
		_upgradeLevel = _informationArray select 2;
		_upgradeCost = _informationArray select 3;
		if (_side isEqualTo east) then
		{
			call compile ("extDB3" callExtension format["0:logger:logUpgrade:%1:%2:%3:%4", _upgradeName, _upgradeLevel, _upgradeCost, SideOpfor]);
		}
		else
		{
			if(_side isEqualTo west) then
			{
				call compile ("extDB3" callExtension format["0:logger:logUpgrade:%1:%2:%3:%4", _upgradeName, _upgradeLevel, _upgradeCost, SideBlufor]);
			}
			else
			{
				//this would be resistance
			};
		};
	};
	default {
	hint "invalid input";
	};
};//switch end
};//if database is running end