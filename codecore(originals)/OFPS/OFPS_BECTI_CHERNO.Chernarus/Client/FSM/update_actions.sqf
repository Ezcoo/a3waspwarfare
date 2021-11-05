private ["_commander_last","_hq","_commander","_vehicle"];

_commander_last = grpNull;

while {!CTI_GameOver} do {
	

	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;

	//--- Commander checks
	_commander = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideCommanderTeam;
	if !(_commander isEqualTo _commander_last) then {
		_commander_last = _commander;
		//--- If the player is not the commander, we remove the hq actions if necessary (otherwise we add it)
		if !(_commander isEqualTo group player) then {
			if (alive _hq) then {
				for '_i' from 0 to 3 do {_hq removeAction _i};
			};
			if !(isNil "CTI_HQ_BuildAction") then {player removeAction CTI_HQ_BuildAction};
		} else {
			(_hq) spawn (missionNamespace getVariable "CTI_PVF_CLT_AddHQActions");
		};
	};

	//--- Generic base checks
	//--- Went into Client_UpdateBaseVariables.sqf

	//--- Update player's last held gear
	if (CTI_GEAR_RESPAWN_WITH_LAST > 0) then {
		if (alive player && !CTI_P_Respawning && !CTI_P_HALOJumping) then {CTI_P_CurrentGear = (player) call CTI_CO_FNC_GetUnitLoadout};
	};

	//--- Actions
	if ("ToolKit" in items player && player isEqualTo vehicle player) then {
		if (count(vehicle player nearEntities [["Car","Air","Tank","Ship"], 5]) > 0) then {
			if !(CTI_P_ActionLockPick) then {CTI_P_ActionLockPick = true};
			if !(CTI_P_ActionRepair) then {CTI_P_ActionRepair = true};
		} else {
			if (CTI_P_ActionLockPick) then {CTI_P_ActionLockPick = false};
			if (CTI_P_ActionRepair) then {CTI_P_ActionRepair = false};
		};
	} else {
		if (CTI_P_ActionLockPick) then {CTI_P_ActionLockPick = false};
		if (CTI_P_ActionRepair) then {CTI_P_ActionRepair = false};
	};

	//--- Low Gear
	_vehicle = vehicle player;// ---get the vehicle the player is currently inside?
	if (_vehicle isKindOf "Tank" || _vehicle isKindOf "Car" && (player isEqualTo driver _vehicle)) then {
		CTI_P_ActionLowGear = true; } else { CTI_P_ActionLowGear = false;
	};

	//--- Push
	if (_vehicle isKindOf "Ship" && (player isEqualTo driver _vehicle)) then { 
		CTI_P_ActionPush = true; } else { CTI_P_ActionPush = false;
	};

sleep 3;

};