/*
  # HEADER #
	Script: 		Server\Functions\Database\Server_DB_ExecCommand.sqf
	Alias:			CTI_SE_FNC_ExecCommand
	Description:	Handles Database Command Execution
	Creation Date:	20-08-2017
	Revision Date:	20-08-2017
	
  # PARAMETERS #
    0	[String]: Type of exec request
    1	[Array]: exec information
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[String, Array] call CTI_SE_FNC_DatabaseUpdate;
	
  # EXAMPLE #
		//-- ["systemChat", [_shitToChat]] spawn CTI_SE_FNC_ExecCommand;
*/
//private [];
private _command = _this select 0;
private _param = _this select 1;
//systemchat format["Command:%1 ; Param:%2", _command, _param];
switch (_command) do 
{
	case "message":
	//push chat to systemChat to every client
	{
		private _message = _param select 0;
		_message remoteExec ["systemChat", 0]; //execed on every client
	};
/*	case "sideChat": {
	//https://community.bistudio.com/wiki/Side for side
		private _shitToChat = _execInfo select 0;
		private _side = _execInfo select 1;
		_shitToChat remoteExec ["systemChat", _side]; //execed on every client
	};*/
	case "isActive-request":
	//query if game is currently active
	{
		//systemchat format["Checking: isActive"];
		_replyCommand = format["isActive-response"];
		_replySender = format["game-%1", GameID];
		_replyTarget = "";
		//Param structure [sender channel/player]
		if(!isNil "_param") then
		{
			_tmp = _param select 0;
			if(!isNil "_tmp") then
			{
				_replyTarget = format["discord-%1", _param select 0];
			};
			_replyTarget = format["discord"];
		}
		else
		{
			_replyTarget = format["discord"];
		};
		
		//[Command, Sender, Target]
		_result = call compile ("extDB3" callExtension format["0:logger:addCommand:%1:%2:%3:%4", _replyCommand, _replySender, _replyTarget, GameID]);
		//systemchat format["Adding Command: %1", _param];
		sleep 1;//it is best to have time after db calls

		//add parameter
		//_replyParam = format["true"];
		//_result2 = call compile ("extDB3" callExtension format["0:logger:addParameter:%1:%2", _replyParam, (_result select 1) select 0]);
		//systemchat format["Adding Param: %:%1:%2", _replyParam, (_result select 1) select 0];
		//sleep 1;//it is best to have time after db calls
		
	};
	case "playerCount":
	//return number of players
	{

	};
	case "playerList":
	//return list of players
	{

	};
	case "teamList":
	//return a list of players on each team
	{

	};
	case "teamScores":
	//return the scores for both teams
	{

	};
	case "playerScores":
	//return list of players and their scores
	{

	};
	case "playerTeamScores":
	//return list of players, their scores, and which team they are on
	{

	};
	case "currMap":
	//return current map
	{

	};
};//switch end