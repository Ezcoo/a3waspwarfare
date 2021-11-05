/*
  # HEADER #
	Script: 		Server\Functions\Server_StartUpgrade.sqf
	Alias:			CTI_SE_FNC_StartUpgrade
	Description:	Start upgrading an element, The server-side can spawn it straigh away.
					Use the PVF "CTI_PVF_SRV_RequestUpgrade" for a client-request
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	23-09-2013
	
  # PARAMETERS #
    0	[Side]: The side which requested the upgrade
    1	[Integer]: The upgrade element
    2	[Integer]: The upgrade current level
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SIDE, UPGRADE, LEVEL] spawn CTI_SE_FNC_StartUpgrade
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_GetSideUpgrades
	
  # EXAMPLE #
    [West, CTI_UPGRADE_BARRACKS, 0] spawn CTI_SE_FNC_StartUpgrade
	  -> Will bring the barracks on level 1 after the upgrade completion
*/

params ["_side", "_upgrade", "_level"];
private ["_logic", "_upgrade_time", "_upgrades","_upgrade_barracks"];

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_upgrades = (_side) call CTI_CO_FNC_GetSideUpgrades;

_upgrade_time = ((missionNamespace getVariable Format["CTI_%1_UPGRADES_TIMES", _side]) select _upgrade) select _level;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_StartUpgrade.sqf", format["The [%1] side [%2] upgrade is being researched to level [%3] and will last [%4] seconds", _side, (missionNamespace getVariable Format["CTI_%1_UPGRADES_LABELS", _side]) select _upgrade, _level+1, _upgrade_time]] call CTI_CO_FNC_Log;
};

if ((_logic getVariable ["cti_upgrade_lt",-1]) <0) then {_logic setVariable ["cti_upgrade_lt",_upgrade_time,true];};
_logic  setVariable ["cti_upgrade", _upgrade,true];
_logic  setVariable ["cti_upgrade_level", _level];

while {(_logic getVariable "cti_upgrade_lt") >0 } do{
//--- Dev mode
	if (CTI_DEV_MODE > 0) then {
		sleep 1;
		_logic setVariable ["cti_upgrade_lt", (_logic getVariable "cti_upgrade_lt") -1 , true];
	} else {
		sleep 10;
		_logic setVariable ["cti_upgrade_lt", (_logic getVariable "cti_upgrade_lt") -10 , true];
	};
};

_logic setVariable ["cti_upgrade_lt",-1, true];

_upgrades set [_upgrade, (_upgrades select _upgrade) + 1];
_upgrade_barracks = _upgrades select CTI_UPGRADE_BARRACKS;
if (_upgrade isEqualTo CTI_UPGRADE_BARRACKS) then {
	switch (_upgrade_barracks) do {
		case 0: {_logic setVariable ["cti_player_ai_skill", (CTI_UPGRADE_BARRACKS_SKILL select 0), true];};
		case 1: {_logic setVariable ["cti_player_ai_skill", (CTI_UPGRADE_BARRACKS_SKILL select 1), true];};
		case 2: {_logic setVariable ["cti_player_ai_skill", (CTI_UPGRADE_BARRACKS_SKILL select 2), true];};
		case 3: {_logic setVariable ["cti_player_ai_skill", (CTI_UPGRADE_BARRACKS_SKILL select 3), true];};
		case 4: {_logic setVariable ["cti_player_ai_skill", (CTI_UPGRADE_BARRACKS_SKILL select 4), true];};
		case 5: {_logic setVariable ["cti_player_ai_skill", (CTI_UPGRADE_BARRACKS_SKILL select 5), true];};
		case 6: {_logic setVariable ["cti_player_ai_skill", (CTI_UPGRADE_BARRACKS_SKILL select 6), true];};
	};
};
_logic setVariable ["cti_upgrades", _upgrades, true];
_logic setVariable ["cti_upgrade", -1, true];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_StartUpgrade.sqf", format["The [%1] side [%2] upgrade is now complete at level [%3]", _side, (missionNamespace getVariable Format["CTI_%1_UPGRADES_LABELS", _side]) select _upgrade]] call CTI_CO_FNC_Log;
};

if (CTI_DATABASE_TRACKING) then { // send information to update database	
	["upgradeEvent", [_side, _upgrade, _level, 0]] remoteExec ["CTI_PVF_SRV_DatabaseUpdate", CTI_PV_SERVER];
};

["upgrade-ended", [_upgrade, _level+1]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];