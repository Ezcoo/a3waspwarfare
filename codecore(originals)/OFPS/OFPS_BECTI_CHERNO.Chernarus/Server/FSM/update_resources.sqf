private ["_delay","_side","_supply","_funds","_logic","_commander_group","_side_groups","_total_players","_percent_award","_percent_resources","_pool_income_commander","_pool_income_players","_pool_income_player","_pool_award","_pool_income_total","_total_score","_score","_value","_newtime"];

_delay = missionNamespace getVariable "CTI_ECONOMY_INCOME_CYCLE";
missionNamespace setVariable ["CTI_ECONOMY_TIME", _delay, true];

while {!CTI_GameOver} do {

	{
		_side = _x;
		_supply = (_side) call CTI_CO_FNC_GetTownsResources;
		_funds = _supply * CTI_TOWNS_INCOME_RATIO; //--- The funds are based on the sum of the side's supply
		
		_logic = (_side) call CTI_CO_FNC_GetSideLogic;
		_commander_group = (_side) call CTI_CO_FNC_GetSideCommanderTeam;
		_side_groups = (_side) call CTI_CO_FNC_GetSideGroups;
		_total_players = count (_side_groups - [_commander_group]);
		
		_percent_award = _logic getVariable "cti_pool_award";
		_percent_resources = _logic getVariable "cti_pool_resources";
		
		_pool_income_commander = 0;
		
		switch (CTI_ECONOMY_POOL_RESOURCES_MODE) do {
			case 1: { //--- Commander resource mode (Player pool)
				_pool_income_players = round(_funds * _percent_resources);
				// _pool_income_players = 1750 * 0.1 = 175
				
				_pool_income_commander = (_funds - _pool_income_players) + CTI_PASSIVE_INCOME;
				// _pool_income_commander = 1750 - 175 = 1575
				
				//--- Calculate the income per player from the resources pool
				if (_total_players > 0) then {
					_pool_income_player = round(_pool_income_players / _total_players) + CTI_PASSIVE_INCOME;
					
					//--- Pay the leaders
					{
						if (_pool_income_player > 0) then { [_x, _pool_income_player] call CTI_CO_FNC_ChangeFunds };
					} forEach (_side_groups - [_commander_group]);
				} else {
					_pool_income_commander = _pool_income_commander + _pool_income_players;
				};
			};
			default { //--- Default resources mode (Player pool + Award pool)
				_pool_award = round(_funds * _percent_award); //--- The award pool
				//_pool_award = 1750 * 0.1 = 175
				
				_pool_income_total = _funds - _pool_award; //--- The resources pool overall
				//_pool_income_total = 1750 - 175 = 1575
				_pool_income_players = round(_pool_income_total * _percent_resources); //--- The resources pool for the players
				//_pool_income_players = 1575 * 0.3 = 472.5
				_pool_income_commander = (_pool_income_total - _pool_income_players) + CTI_PASSIVE_INCOME;
				//_pool_income_commander = 1575 - 472.5 = 1102.5
				
				//--- Calculate the total score (minus the commander)
				_total_score = (_side_groups - [_commander_group]) call CTI_CO_FNC_GetUnitsScore;
				if (_total_score < 1) then {_total_score = count _side_groups};
				
				//--- Calculate the income per player from the resources pool
				if (_total_players > 0) then {
					_pool_income_player = round(_pool_income_players / _total_players) + CTI_PASSIVE_INCOME;
					//_pool_income_player = 472.5 / 4 = 118
					
					//--- Pay the leaders
					{
						//--- This is the award pool
						_score = score leader _x;
						_value = round((_score / _total_score) * _pool_award);
						
						//--- This is the resources pool
						_value = _value + _pool_income_player;
						
						if (_value > 0) then { [_x, _value] call CTI_CO_FNC_ChangeFunds };
					} forEach (_side_groups - [_commander_group]);
				} else {
					_pool_income_commander = _pool_income_commander + _pool_income_players;
				};
			};
		};
		
		//--- Pay the commander if needed
		if (_pool_income_commander > 0) then {[_side, _pool_income_commander] call CTI_CO_FNC_ChangeFundsCommander};
		
		//--- Add supply to the given side if needed
		if (_supply > 0) then {[_side, _supply] call CTI_CO_FNC_ChangeSideSupply};
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\FSM\update_resources.sqf", format["Side [%1] income has been dispatched. Supply -> [%2], Resources percentage -> [%3]", _x, _supply, _percent_resources]] call CTI_CO_FNC_Log;
		};
	} forEach [west, east];

	//--- set global variable with econ time
	missionNamespace setVariable ["CTI_ECONOMY_TIME", _delay, true];
	for "_i" from 1 to _delay do {
		sleep 1;
		_newtime = _delay - _i;
		missionNamespace setVariable ["CTI_ECONOMY_TIME", _newtime, true];
	}
	//sleep _delay;

};