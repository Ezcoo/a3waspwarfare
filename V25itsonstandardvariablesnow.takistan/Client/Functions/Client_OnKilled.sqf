/*
	Triggered whenever the player die
	 Parameters:
		- Killed
*/

Private ["_body"];

_body = _this select 0;

//--- EH are flushed on unit death, still, just make sure.
player removeEventHandler ["killed", CTI_PLAYERKEH];

CTI_Client_IsRespawning = true;

{player removeAction _x} forEach [0,1,2,3,4,5];
if !(isNil "HQAction") then {player removeAction HQAction};
player removeAction Options;

//--- Close any existing dialogs.
if (dialog) then {closeDialog 0};

if(!CTI_GameOver) then
{
	CTI_DeathLocation = getPos _body;

	//--- Fade transition.
	titleCut["","BLACK OUT",1];
	waitUntil {alive player};

	//--- Update the player.
	["update-teamleader", CTI_Client_Team, player] remoteExecCall ["CTI_SE_PVF_RequestSpecial",2];
	//--- Make sure that player is always the leader (of his group).
	if (group player == CTI_Client_Team) then {
		if (leader(group player) != player) then {(group player) selectLeader player};
	};

	titleCut["","BLACK IN",1];

	//--- Re-add the KEH to the client.
	CTI_PLAYERKEH = player addEventHandler ['Killed', {[_this select 0,_this select 1] Spawn CTI_CL_FNC_OnKilled; [_this select 0,_this select 1, sideID] Spawn CTI_CO_FNC_OnUnitKilled}];

	//--- Call the pre respawn routine.
	(player) Call CTI_CL_FNC_PreRespawnHandler;

	//--- Camera & PP thread
	[] Spawn {
		Private ["_delay"];
		_delay = missionNamespace getVariable "CTI_C_RESPAWN_DELAY";

		"dynamicBlur" ppEffectEnable true;
		"dynamicBlur" ppEffectAdjust [1];
		"dynamicBlur" ppEffectCommit _delay/3;  
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0.1, 0.0, 0.0, 1], [1.0, 0.5, 0.5, 0.1], [0.199, 0.587, 0.114, 0.0]];
		"colorCorrections" ppEffectCommit 0.1;
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0.1, 0.0, 0.0, 0.5], [1.0, 0.5, 0.5, 0.1], [0.199, 0.587, 0.114, 0.0]];
		"colorCorrections" ppEffectCommit _delay/3;

		CTI_DeathCamera = "camera" camCreate CTI_DeathLocation;
		//CTI_DeathCamera camSetDir 0;
		CTI_DeathCamera camSetFov 0.7;
		CTI_DeathCamera cameraEffect["Internal","TOP"];

		CTI_DeathCamera camSetTarget CTI_DeathLocation;
		CTI_DeathCamera camSetPos [CTI_DeathLocation select 0,(CTI_DeathLocation select 1) + 2,5];
		CTI_DeathCamera camCommit 0;

		waitUntil {camCommitted CTI_DeathCamera};

		CTI_DeathCamera camSetPos [CTI_DeathLocation select 0,(CTI_DeathLocation select 1) + 2,30];
		CTI_DeathCamera camCommit _delay+2;
	};

	sleep random 1;

	//--- Create a respawn menu.
	createDialog "CTI_RespawnMenu";
};