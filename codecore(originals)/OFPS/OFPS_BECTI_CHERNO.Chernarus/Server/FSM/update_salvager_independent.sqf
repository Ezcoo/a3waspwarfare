params ["_side","_salvager"];
private ["_driver","_var_classname","_group","_sideID","_side","_sideLogic","_last_targetcheck","_goto","_move_lasttime","_action","_list","_structures","_factory_repair","_town","_var_name","_salvage_value","_return","_player_get","_commander_get","_closest"];

_driver = driver _salvager;
_group = group _driver;

_group setSpeedMode "FULL";
_group setBehaviour "CARELESS";

_sideID = (_side) call CTI_CO_FNC_GetSideID;
_sideLogic = (_side) call CTI_CO_FNC_GetSideLogic;

_last_targetcheck = time;

_action = "";
_move_lasttime = 0;


while {!CTI_GameOver} do {

	if (canMove _salvager && alive _driver && alive _salvager) then {

		//--- Assign Task
		_goto = objNull;
		_move_lasttime = 0;
		_action = "";
		_list = vehicles select {!alive _x && !(surfaceIsWater getPos _x) && _x distance _salvager < CTI_VEHICLES_SALVAGE_INDEPENDENT_EFFECTIVE_RANGE && isNil {_x getVariable "cti_gc_noremove"}};

		if (count _list > 0) then { _last_targetcheck = time; _goto = [_salvager, _list] call CTI_CO_FNC_GetClosestEntity; _action = "goto-target"; _salvager commandMove (position _goto) };

		if (isNull _goto) then {
			_structures = (_side) call CTI_CO_FNC_GetSideStructures;
			_factory_repair = [CTI_REPAIR, _salvager, _structures] call CTI_CO_FNC_GetClosestStructure;
			
			if !(isNull _factory_repair) then {
				if (_salvager distance _factory_repair > 75) then {
					_action = "goto-repair";
					_goto = _factory_repair;
				};
			} else {
				_town = [_salvager, _side] call CTI_CO_FNC_GetClosestFriendlyTown;
				if !(isNull _town) then {
					if (_salvager distance _town > 75) then {
						_action = "goto-town";
						_goto = _town;
					};
				};
			};
		};

		if !(_action isEqualTo "") then {

			switch (_action) do {
				
				case "goto-repair": {
					if (alive _goto) then {
						if (_salvager distance _goto > 75) then {
							if (time - _move_lasttime > 30) then {
								_salvager commandMove ([_goto, 8, 30] call CTI_CO_FNC_GetRandomPosition);
								_move_lasttime = time;
							};
						} else {
							_action = "";
						};
					} else {
						_action = "";
					};
				};

				case "goto-target": {
						if !(isNull _goto) then {
						if (_salvager distance _goto <= 40) then {
							_var_name = if (isNil {_goto getVariable "cti_customid"}) then {typeOf _goto} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _goto getVariable "cti_customid"]};
							_var_classname = missionNamespace getVariable _var_name;
							if !(isNil '_var_classname') then {
								_salvage_value = round((_var_classname select 6) * CTI_VEHICLES_SALVAGE_RATE);
								_return = [_side, _salvage_value] call CTI_CO_FNC_AddSideFunds;
								_player_get = _return select 1;	_commander_get = _return select 2;
								["salvage", [_var_name, _player_get, _commander_get]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
							};
							 
							deleteVehicle _goto;
							_action = "";
						} else {
							if (time - _move_lasttime > 30) then {
								_salvager commandMove (getPos _goto);	
								_move_lasttime = time;
							};
						};
						
						//--- Is there a target closer to our salvager?
						if (time - _last_targetcheck > 25 && !(_action isEqualTo "")) then {
							_last_targetcheck = time;
							_list = [];
							{if (!alive _x && !(surfaceIsWater getPos _x) && _x distance _salvager < CTI_VEHICLES_SALVAGE_INDEPENDENT_EFFECTIVE_RANGE && isNil {_x getVariable "cti_gc_noremove"}) then {_list pushBack _x}} forEach vehicles;

							if (count _list > 0) then { 
								_closest = [_salvager, _list] call CTI_CO_FNC_GetClosestEntity;
								if !(_goto isEqualTo _closest) then { _action = ""; doStop _salvager };
							};
						};
					} else {
						_action = "";
					};
				};

				case "goto-town": {
					if (_goto getVariable "sideID" isEqualTo _sideID) then {
						if (_salvager distance _goto > 75) then {
							if (time - _move_lasttime > 30) then {
								_salvager commandMove ([_goto, 8, 30] call CTI_CO_FNC_GetRandomPosition);
								_move_lasttime = time;
							};
						} else {
							_action = "";
						};
					} else {
						_action = "";
					};
				};
			};
		};

	};



	if (!(canMove _salvager) || !(alive _driver) || !(alive _salvager)) then {

		_sideLogic setVariable ["cti_salvagers", (_sideLogic getVariable "cti_salvagers") - [objNull, _salvager], true];

		if (alive _salvager) then { _salvager setDammage 1 };
		{ if (alive _x) then {deleteVehicle _x}} forEach units _group;

		if (count units _group < 1) then {deleteGroup _group}; //--- Attempt to remove the group if possible, the GC will do it in any case.

	};
	sleep 25;
};