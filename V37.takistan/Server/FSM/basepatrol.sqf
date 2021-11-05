_building = _this select 0;
_side = _this select 1;
_posBuilding = getPos _building;
_lastCheck = 0;
_maxTeams = missionNamespace getVariable "WFBE_C_BASE_PATROLS_INFANTRY";
_teams = 0;

while {!WFBE_GameOver} do {

	if(alive _building) then {
		if(_teams < _maxTeams) then {

			_currentUpgrades = (_side) Call WFBE_CO_FNC_GetSideUpgrades;
			_currentLevel = _currentUpgrades select WFBE_UP_GEAR;
			
			[_building,_side,missionNamespace getVariable Format['WFBE_%1BASEPATROLS_%2',_side,_currentLevel]] Spawn {
				Private ['_direction','_distance','_index','_position','_side','_site','_type','_units'];
				_site = _this select 0;
				_side = _this select 1;
				_units = _this select 2;
				
				_type = typeOf _site;
				_index = (missionNamespace getVariable Format["WFBE_%1STRUCTURENAMES",str _side]) find _type;
				_distance = (missionNamespace getVariable Format["WFBE_%1STRUCTUREDISTANCES",str _side]) select _index;
				_direction = (missionNamespace getVariable Format["WFBE_%1STRUCTUREDIRECTIONS",str _side]) select _index;
				_position = [getPos _site,_distance,getDir _site + _direction] Call WFBE_CO_FNC_GetPositionFrom;
				
				if!(isNil "headlessClients") then {					
					_hc = headlessClients select 0;
					[_site, _units, _position, _side, WF_Logic] remoteExecCall ["WFBE_CL_FNC_DelegateBasePatrolAI", _hc];

				};
			};
		    _teams = _teams + 1;
		};
	};
	
	if(isNull _building || !(alive _building)) then {
		_buildings = (_side) Call WFBE_CO_FNC_GetSideStructures;
		_sorted = [_posBuilding, _buildings] Call WFBE_CO_FNC_GetClosestEntity;

		_nearby = false;
		if (!isNull _sorted) then {
			if (_sorted distance _posBuilding < 400) then {_nearby = true};
		};

		if!(isNil "headlessClients") then {
		    if(count headlessClients > 0)then{
                _hcr = headlessClients select 0;
                [_nearby] remoteExecCall ["WFBE_HC_FNC_RemoveGroup", _hcr];
                _teams = _teams - 1;
            };
		};
	};
	sleep 300;
};

















