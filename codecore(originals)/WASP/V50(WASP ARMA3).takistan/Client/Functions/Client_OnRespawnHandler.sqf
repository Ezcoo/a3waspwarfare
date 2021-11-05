Private ["_allowCustom","_buildings","_charge","_funds","_get","_loadDefault","_listbp","_mode","_price","_skip","_spawn","_spawnInside","_typeof","_unit","_weaps"];

_unit = _this select 0;
_spawn = _this select 1;
_loadDefault = true;
_typeof = typeOf _spawn;

WFBE_Client_IsRespawning = false;
_allowCustom = true;

//--- Default gear enforcement on mobile respawn.
if ((missionNamespace getVariable "WFBE_C_RESPAWN_MOBILE") == 2) then {
	if (_typeof in (missionNamespace getVariable Format ["WFBE_%1AMBULANCES",WFBE_Client_SideJoinedText])) then {_allowCustom = false};
};

//--- Respawn.
if (_spawn isKindOf "Man") then {_spawn = vehicle _spawn};
_spawnInside = false;
if (_typeof in (missionNamespace getVariable Format ["WFBE_%1AMBULANCES",WFBE_Client_SideJoinedText]) && alive _spawn) then {
	if (_spawn emptyPositions "cargo" > 0 && (locked _spawn in [0, 1])) then {_unit moveInCargo _spawn;_spawnInside = true};
};

if !(_spawnInside) then {_unit setPos ([getPos _spawn,10,20] Call WFBE_CO_FNC_GetRandomPosition)};

//--Disable fatigue--
if ((missionNamespace getVariable "WFBE_C_GAMEPLAY_FATIGUE_ENABLED") == 0) then {_unit enableFatigue false;};

//--- Loadout.
if (!isNil 'WFBE_P_CurrentGear' && !WFBE_RespawnDefaultGear && _allowCustom) then {
	_mode = missionNamespace getVariable "WFBE_C_RESPAWN_PENALTY";

	if (_mode in [0,2,3,4,5]) then {
		//--- Calculate the price/funds.
		_skip = false;
		_gear_cost = _unit getVariable "wfbe_custom_gear_cost";
		if (_mode != 0) then {
			_price = 0;

			//--- Get the mode pricing.
			switch (_mode) do {
				case 2: {_price = _gear_cost};
				case 3: {_price = round(_gear_cost/2)};
				case 4: {_price = round(_gear_cost/4)};
				case 5: {_price = _gear_cost};
			};

			//--- Are we charging only on mobile respawn?
			_charge = true;
			if (_mode == 5) then {
				_buildings = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideStructures;
				if (_spawn in _buildings || _spawn == ((WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideHQ)) then {_charge = false};
			};

			//--- Charge if possible.
			_funds = Call WFBE_CL_FNC_GetPlayerFunds;
			if (_funds >= _price && _charge) then {
				-(_price) Call WFBE_CL_FNC_ChangePlayerFunds;
				(Format[localize 'STR_WF_CHAT_Gear_RespawnCharge',_price]) Call WFBE_CL_FNC_GroupChatMessage;
			};

			//--- Check that the player has enough funds.
			if (_funds < _price) then {_skip = true};
		};

		//--- Use the respawn loadout.
		if !(_skip) then {
			
			_respawn_gear = if (isNil 'WFBE_P_CurrentGear') then {missionNamespace getVariable format ["WFBE_AI_%1_DEFAULT_GEAR", WFBE_Client_SideJoined]} else {WFBE_P_CurrentGear};
			[player, _respawn_gear] call WFBE_CO_FNC_EquipUnit; //--- Equip the equipment
			
			_loadDefault = false;
		};
	};
};

//--- Load the default loadout.
if (_loadDefault) then {
	Private ["_default"];
	_default = [];
	switch (WFBE_SK_V_Type) do {

		case WSW_SNIPER: {_default = missionNamespace getVariable Format["WFBE_%1_DefaultGearSpot", WFBE_Client_SideJoinedText]};

		case WSW_SOLDIER: {_default = missionNamespace getVariable Format["WFBE_%1_DefaultGearSoldier", WFBE_Client_SideJoinedText]};

		case WSW_ENGINEER: {_default = missionNamespace getVariable Format["WFBE_%1_DefaultGearEngineer", WFBE_Client_SideJoinedText]};

		case WSW_SPECOPS: {_default = missionNamespace getVariable Format["WFBE_%1_DefaultGearLock", WFBE_Client_SideJoinedText]};

        case WSW_ARTY_OPERATOR: {_default = missionNamespace getVariable Format["WFBE_%1_DefaultGearArtOperator", WFBE_Client_SideJoinedText];};

        case WSW_UAV_OPERATOR: {_default = missionNamespace getVariable Format["WFBE_%1_DefaultGearUAVOperator", WFBE_Client_SideJoinedText];};
	};
	
	[player, _default] call WFBE_CO_FNC_EquipUnit;
};