{
	if (alive _x) then {
		_var = missionNamespace getVariable format ["CTI_%1_%2", CTI_P_SideJoined, typeOf _x];
		if !(isNil '_var') then {[_x, _var] call CTI_CL_FNC_InitializeStructure};
	};
} forEach (CTI_P_SideJoined call CTI_CO_FNC_GetSideStructures);

0 spawn {
	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	_marker = createMarkerLocal ["HQ", getPos _hq];
	_marker setMarkerTypeLocal (CTI_P_MarkerPrefix+"hq");
	_marker setMarkerTextLocal "HQ";
	_marker setMarkerColorLocal CTI_P_SideColor;
	_marker setMarkerSizeLocal [0.8,0.8];
	
	while {!CTI_GameOver} do {
		_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
		_side = CTI_P_SideJoined;
		_logic = (_side) call CTI_CO_FNC_GetSideLogic;

		_marker setMarkerPosLocal getPos _hq;
		_marker setMarkerColorLocal CTI_P_SideColor;
		_marker setMarkerTextLocal "HQ";

		if !(alive _hq) then {
			if !(markerColor _marker isEqualTo "ColorBlack") then {_marker setMarkerColorLocal "ColorBlack"; _marker setMarkerTextLocal "HQ Wreck"};

		} else {

			//--- Only show damage if HQ is a Structure
			if (_logic getVariable "cti_hq_deployed") then {
				_hpp = _hq call CTI_CO_FNC_Buildinghealth;
				_hp = _hpp select 0;
				_clr = _hpp select 1;

				_marker setMarkerTextLocal Format ["HQ %1",_hp];
				_marker setMarkerColorLocal _clr;
			};
		};

		sleep 1;
	};

	deleteMarkerLocal _marker;
};

if (isMultiplayer) then {sleep 5}; //--- Wait in MP for the net var to kick in

0 spawn {
	// Reclaim player AI	
	if(!isServer) then { missionNamespace setVariable ["CTI_SUSPENDED_TEAMS",[-1]] };
	 "CTI_SUSPENDED_TEAMS" remoteExec ["publicVariable", 2];
	 waitUntil {!((missionNamespace getVariable ["CTI_SUSPENDED_TEAMS",[-1]]) isEqualTo [-1])};
	_suspendedTeams = missionNamespace getVariable ["CTI_SUSPENDED_TEAMS",[]];
	{
		_ownerUID = _x select 0;
		_team = _x select 1;
		if ((side _team) isEqualTo (side player)) then {
			if (_ownerUID isEqualTo (getPlayerUID player)) then {
				if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Client\Init\Init_Client.sqf", format["Found suspended group [%1]", _team]] call CTI_CO_FNC_Log};
				(units _team) joinSilent (group player);
				_suspendedTeams deleteAt _forEachIndex;
				missionNamespace setVariable ["CTI_SUSPENDED_TEAMS", _suspendedTeams];
				publicVariable "CTI_SUSPENDED_TEAMS";
			};
		};
	} forEach _suspendedTeams;	
	missionNamespace setVariable ["CTI_SUSPENDED_TEAMS_DONE", true];	
	// Initialize all live units	
	{
		if (isNil {_x getVariable "cti_net"}) then {_x setVariable ["cti_net", CTI_P_SideID]};
		_x setVariable ["cti_ai_order", CTI_ORDER_CLIENT_NONE];
		_x setVariable ["cti_ai_order_pos", [0,0]];
	} forEach ((units player - [player]) call CTI_CO_FNC_GetLiveUnits); //--- Track players AI if needed
};

//--- Track FOB(s) if needed
{(_x) spawn CTI_PVF_CLT_OnFOBDeployment} forEach (CTI_P_SideLogic getVariable ["cti_fobs", []]);

//--- Track Large FOB(s) if needed
{(_x) spawn CTI_PVF_CLT_OnLargeFOBDeployment} forEach (CTI_P_SideLogic getVariable ["cti_large_fobs", []]);

//--- Add lock/unlock to team vehicles if needed.
{
	if (effectiveCommander _x in units player) then {
		_x addAction ["<t color='#86F078'>Unlock</t>","Client\Actions\Action_ToggleLock.sqf", [], 99, false, true, '', 'alive _target && locked _target isEqualTo 2'];
		_x addAction ["<t color='#86F078'>Lock</t>","Client\Actions\Action_ToggleLock.sqf", [], 99, false, true, '', 'alive _target && locked _target isEqualTo 0'];
	};
} forEach ([group player, false] call CTI_CO_FNC_GetTeamVehicles);

//--- Wheels protection
if (CTI_VEHICLES_PROTECT_TIRES > 0) then {
	{
		if (alive _x && _x isKindOf "Car" && !(_x getVariable ["cti_wheels_protect", false])) then {_x addEventHandler ["HandleDamage", {_this call CTI_CO_FNC_EXT_HandleTiresDamages}]};
	} forEach vehicles;
};