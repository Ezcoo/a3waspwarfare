/*
  # HEADER #
	Script: 		Server\Functions\Database\Server_DB_getServerFPS.sqf
	Alias:			CTI_SE_FNC_FPS_DatabaseInformationRequest
	Description:	Gathers information needed for Database update
					Function is fired via CTI_SE_DatabaseUpdate
	Author: 		ProtossMaster
	Creation Date:	20-08-2017
	Revision Date:	20-08-2017
	
  # PARAMETERS #
	None
	
  # SYNTAX #
	call CTI_SE_FNC_FPS_DatabaseInformationRequest
	
*/
private ["_fps","_justPlayers","_playerCount","_totalentities","_aiCount","_aiCountLocal","_uptime", "_serverTime"];
_fps = diag_fps;
_justPlayers = allPlayers - entities "HeadlessClient_F";
_playerCount = count _justPlayers; 
//_totalentities = entities [[], ["Logic"], true];
_aiCount = {!(isPlayer _x)} count allUnits; //get ai count here
_aiCountLocal = {local _x} count allUnits;//get local ai count here
_uptime = diag_tickTime;

_scriptCounts = [-1,-1,-1,-1];
if(DIAG_DB_SCRIPTCHECKS) then
//toggle for diag(this prob has a big performance cost)
{
	_scriptCounts = diag_activeScripts;
};
["serverFps", [_fps, _playerCount, _aiCount, _aiCountLocal, _uptime] + _scriptCounts] call CTI_PVF_SRV_DatabaseUpdate;