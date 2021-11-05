/*
  # HEADER #
	Script: 		Server\Functions\Database\Server_DB_ReadDatabase.sqf
	Alias:			CTI_SE_FNC_DB_ReadDatabase
	Description:	Calls sql functions to recieve commands from the database then execute them
					Function is fired via CTI_SE_DatabaseUpdate
	Author: 		ProtossMaster
	Creation Date:	21-1-2017
	Revision Date:	21-1-2017
	
  # PARAMETERS #
	None
	
  # SYNTAX #
	call CTI_SE_FNC_DB_ReadDatabase
	
*/
private ["_lockStatus"];
//Check if DB is running
_lockStatus = ("extDB3" callExtension "9:LOCK_STATUS");

//ONLY RUN IF DATABASE IS CONNECTED
if (_lockStatus isEqualTo One) then 
{
	//grab current commands for this mission
	//[status[[UID], [Command], [Sender], [Target]]]
	_result = call compile ("extDB3" callExtension format["0:logger:returnCommandList:%1", GameID]); 
	systemchat format["Command Found:%1", _result];
	//this server, 1 = Test, 0 = Prod, 2 = local
	_thisServer = 'local';
	if(CTI_DATABASE_DESTINATION isEqualTo 1) then
	{
		_thisServer = 'test';
	};
	if(CTI_DATABASE_DESTINATION isEqualTo 0) then
	{
		_thisServer = 'prod';
	};
	sleep 1;//it is best to have time after db calls
	if((_result select 0) isEqualTo 1) then
	//if the result is not an error
	{
		if((count (_result select 1)) > 0) then
		{
			//_resultList = format("");
				for [{_i=0},{_i < (count (_result select 1))},{_i=_i+1}] do
				//loops through commands that were found
				{
					//SQF is SUPER GAY, and ExtDB3 is ALSO GAY
					//So we have to handle the returned value in a super special ed way
					//systemchat format["Validating:%1", ((_result select 1) select _i)];
					//_temp = format["%1", ((_result select 1) select _i)];
					//_temp = _temp select [1,(count _temp - 2)];
					//systemchat format["Validating:%1", _temp];
					//_res = _temp splitString ',';
					_res = ((_result select 1) select _i);
					//systemchat format["Validating:%1", _res];
					
					//validate authority
					_authorized = false;//Authority denied by default
					_authLevel = 0;//No Authority by default
					_caller = call compile ("extDB3" callExtension format["0:logger:returnAuthorityLevel:%1:%2", _res select 2, _res select 2]);
					sleep 1;//it is best to have time after db calls
					if(_caller select 0 isEqualTo 1) then
					//no error
					{
						_authLevel = (_caller select 1) select 0;
						if(isNil "_authLevel") then
						{
							_authLevel = 0;
						}
						else
						{
							//systemchat format["Authority Check:%1", _authLevel];
						};
						
					};
					
					_requiredAuthority = call compile ("extDB3" callExtension format["0:logger:returnAuthorityRequired:%1", _res select 1]);
					sleep 1;//it is best to have time after db calls
					//systemchat format["Authority Required:%1", _requiredAuthority];
					if(_requiredAuthority select 0 isEqualTo 1) then
					//no error
					{
						_var = ((_requiredAuthority select 1) select 0);
						if(isNil "_var") then
						//no Authority required
						{
							_authorized = true;
							//systemchat format["Authorized:%1", _res];
						}
						else
						{
							if(((count _var) < 1)) then
							//no authority required
							{
								_authorized = true;
								//systemchat format["Authorized:%1", _res];
							}
							else
							{
								if(_authLevel >= _var) then
								//if level of authority of the sender is over or equal to the required authority for the command
								{
									_authorized = true;
									//systemchat format["Authorized:%1", _res];
								};
							};
						};
						
					};
					//systemchat format["Authorization:%1", _authorized];
					//run command
					if(_authorized) then
					{
						//get the parameters, if any
						_param = call compile ("extDB3" callExtension format["0:logger:returnParameters:%1", _res select 0]);
						sleep 1;//it is best to have time after db calls
						//systemchat format["ParamCheck:%1", _param];
						//systemchat format["0:logger:returnParameters:%1", _res select 0];
						if(_param select 0 isEqualTo 1) then
						//no error
						{
							//systemchat format["Executing:%1 ; %2", _res select 1, _param select 1];
							//[command, target, parameters]
							[_res select 1, _param select 1] spawn CTI_SE_FNC_ExecCommand;
						};

					};

					//set command completed after it has been run
					call compile ("extDB3" callExtension format["0:logger:completeCommand:%1:%2", GameID, _res select 0]);
				} 
				//foreach (_result select 1)
		};
	};
};