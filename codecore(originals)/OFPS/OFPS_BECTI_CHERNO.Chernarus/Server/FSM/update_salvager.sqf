private ["_salvager","_var_classname","_entities","_wreck","_wreck_kind","_var_name","_side","_group","_salvage_value","_commander_get","_player_get","_return"];

_salvager = _this;

while {!CTI_GameOver && alive _salvager} do {

	if (alive driver _salvager) then {
		_entities = ((nearestObjects [_salvager, ['Car','Motorcycle','Ship','Air','Tank','StaticWeapon'], CTI_VEHICLES_SALVAGE_RANGE]) - [_salvager]) select {!alive _x && isNil {_x getVariable "cti_gc_noremove"}};

		if (count _entities > 0) then {
			_wreck = [_salvager, _entities] call CTI_CO_FNC_GetClosestEntity;
			_wreck_kind = typeOf _wreck;
			
			_var_name = if (isNil {_wreck getVariable "cti_customid"}) then {_wreck_kind} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _wreck getVariable "cti_customid"]};
			_var_classname = missionNamespace getVariable _var_name;
			if !(isNil '_var_classname') then {
				_side = side driver _salvager;
				_group = group driver _salvager;
				if (_side in [west,east]) then {
					_salvage_value = round((_var_classname select 6) * CTI_VEHICLES_SALVAGE_RATE);
					_commander_get = 0;
					_player_get = 0;
					if (_group call CTI_CO_FNC_IsGroupPlayable) then { //--- Group is among our cti players
						_salvage_value = round(_salvage_value / 2); //--- Split resources in half, half goes to the team which salvaged the wreck, the other half goes to the side.
						_return = [_side, _salvage_value] call CTI_CO_FNC_AddSideFunds;
						_player_get = _return select 1;	_commander_get = _return select 2;
						[_group, _salvage_value] call CTI_CO_FNC_ChangeFunds;
						if (isPlayer leader _group) then {["salvage-by", [_var_name, _salvage_value, driver _salvager]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side]};
					} else { //--- Group is not among our cti players, award the side still.
						_return = [_side, _salvage_value] call CTI_CO_FNC_AddSideFunds;
						_player_get = _return select 1;	_commander_get = _return select 2;
					};
					
					["salvage", [_var_name, _player_get, _commander_get]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
				};
			};
			
			deleteVehicle _wreck;
		};
	};
sleep 25;
};