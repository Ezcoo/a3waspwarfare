Private ["_allowCustom","_buildings","_charge","_funds","_get","_loadDefault","_listbp","_mode","_price","_skip","_spawn","_spawnInside","_typeof","_unit","_weaps"];

_unit = _this select 0;
_spawn = _this select 1;
_loadDefault = true;
_typeof = typeOf _spawn;

CTI_Client_IsRespawning = false;
_allowCustom = true;

//--- Default gear enforcement on mobile respawn.
if ((missionNamespace getVariable "CTI_C_RESPAWN_MOBILE") == 2) then {
	if (_typeof in (missionNamespace getVariable Format ["CTI_%1AMBULANCES",CTI_Client_SideJoinedText])) then {_allowCustom = false};
};

//--- Respawn.
if (_spawn isKindOf "Man") then {_spawn = vehicle _spawn};
_spawnInside = false;
if (_typeof in (missionNamespace getVariable Format ["CTI_%1AMBULANCES",CTI_Client_SideJoinedText]) && alive _spawn) then {
	if (_spawn emptyPositions "cargo" > 0 && (locked _spawn in [0, 1])) then {_unit moveInCargo _spawn;_spawnInside = true};
};

if !(_spawnInside) then {_unit setPos ([getPos _spawn,10,20] Call CTI_CO_FNC_GetRandomPosition)};

//--Disable fatigue--
if ((missionNamespace getVariable "CTI_C_GAMEPLAY_FATIGUE_ENABLED") == 0) then {_unit enableFatigue false;};

//--- Loadout.
if (!isNil 'CTI_P_CurrentGear' && !CTI_RespawnDefaultGear && _allowCustom) then {
	_mode = missionNamespace getVariable "CTI_C_RESPAWN_PENALTY";

	if (_mode in [0,2,3,4,5]) then {
		//--- Calculate the price/funds.
		_skip = false;
		_gear_cost = _unit getVariable "CTI_custom_gear_cost";
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
				_buildings = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideStructures;
				if (_spawn in _buildings || _spawn == ((CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQ)) then {_charge = false};
			};

			//--- Charge if possible.
			_funds = Call CTI_CL_FNC_GetPlayerFunds;
			if (_funds >= _price && _charge) then {
				-(_price) Call CTI_CL_FNC_ChangePlayerFunds;
				(Format[localize 'STR_WF_CHAT_Gear_RespawnCharge',_price]) Call CTI_CL_FNC_GroupChatMessage;
			};

			//--- Check that the player has enough funds.
			if (_funds < _price) then {_skip = true};
		};

		//--- Use the respawn loadout.
		if !(_skip) then {
			
			_respawn_gear = if (isNil 'CTI_P_CurrentGear') then {missionNamespace getVariable format ["CTI_AI_%1_DEFAULT_GEAR", CTI_Client_SideJoined]} else {CTI_P_CurrentGear};
			[player, _respawn_gear] call CTI_CO_FNC_EquipUnit; //--- Equip the equipment
			
			_loadDefault = false;
		};
	};
};

//--- Load the default loadout.
if (_loadDefault) then {
	Private ["_default"];
	_default = [];
	switch (CTI_SK_V_Type) do {

		case WSW_SNIPER: {_default = missionNamespace getVariable Format["CTI_%1_DefaultGearSpot", CTI_Client_SideJoinedText]};

		case WSW_SOLDIER: {_default = missionNamespace getVariable Format["CTI_%1_DefaultGearSoldier", CTI_Client_SideJoinedText]};

		case WSW_ENGINEER: {_default = missionNamespace getVariable Format["CTI_%1_DefaultGearEngineer", CTI_Client_SideJoinedText]};

		case WSW_SPECOPS: {_default = missionNamespace getVariable Format["CTI_%1_DefaultGearLock", CTI_Client_SideJoinedText]};

        case WSW_ARTY_OPERATOR: {_default = missionNamespace getVariable Format["CTI_%1_DefaultGearArtOperator", CTI_Client_SideJoinedText];};

        case WSW_UAV_OPERATOR: {_default = missionNamespace getVariable Format["CTI_%1_DefaultGearUAVOperator", CTI_Client_SideJoinedText];};
	};
	
	[player, _default] call CTI_CO_FNC_EquipUnit;
};