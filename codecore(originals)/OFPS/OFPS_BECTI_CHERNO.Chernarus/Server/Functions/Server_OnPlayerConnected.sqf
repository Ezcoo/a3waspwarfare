/*
  # HEADER #
	Script: 		Server\Functions\Server_OnPlayerConnected.sqf
	Alias:			CTI_SE_FNC_OnPlayerConnected
	Description:	Triggered when a player joins the server
					Note this function is MP only.
					Also note that the server (in MP) will also trigger this script with a name of __SERVER__
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	15-10-2013
	
  # PARAMETERS #
    0	[String]: The Player's UID
    1	[String]: The Player's name
    2	[Number]: The Player's seed ID
    3	[Boolean]: The Player's JIP status
    4	[Number]: The Player's owner ID
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UID, NAME, ID] spawn CTI_SE_FNC_OnPlayerConnected
	
  # EXAMPLE #
    onPlayerConnected {[_uid, _name, _id] spawn CTI_SE_FNC_OnPlayerConnected};
*/

params ["_uid", "_name", "_id", "_jip", "_ownerID"];

waitUntil {!isNil 'CTI_Init_Common'};

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] has joined the current session, jip? [%3]", _name, _uid, _jip]] call CTI_CO_FNC_Log};
if (CTI_DATABASE_TRACKING) then { // send information to update database
	if (_name isEqualTo '__SERVER__' || _uid isEqualTo '') exitWith {}; //--- We don't care about the server!	
	["playerConnected", [_uid, _name, _id, _jip, _ownerID]] spawn CTI_SE_FNC_DatabaseUpdate;
};