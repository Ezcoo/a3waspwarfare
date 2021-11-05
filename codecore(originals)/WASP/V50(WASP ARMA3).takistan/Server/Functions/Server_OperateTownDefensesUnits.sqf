/*
	Oeprate the defenses in a town, spawn or despawn.
	 Parameters:
		- Town.
		- Side.
		- Action ("spawn"/"remove").
*/

Private ["_action","_defense","_side","_spawn","_town","_units","_sideID"];

_town = _this select 0;
_side = _this select 1;
_action = _this select 2;
_sideID = (_side) Call WFBE_CO_FNC_GetSideID;

if (_sideID != WFBE_C_GUER_ID) exitWith {};
switch (_action) do {
	case "spawn": {
	    _allDefences = (_town getVariable "wfbe_town_defenses") + (_town getVariable "wfbe_town_defenses_composition");
		if!(isNil "_allDefences")then{
            //--- Man the defenses.
            _team = createGroup [_side, true];
            {
                _defense = _x getVariable "wfbe_defense";
                if !(isNil '_defense') then {
                    _positions = [];
                    _groups = [];
                    if !(alive gunner _defense) then { //--- Make sure that the defense gunner is null or dead.
                        _positions pushBack (getPosATL _x);
                        _groups pushBack (missionNamespace getVariable Format ["WFBE_%1SOLDIER", _side]);

                        if (count(missionNamespace getVariable "WFBE_HEADLESSCLIENTS_ID") > 0) then {
                            [_side, _groups, _positions, _team, _defense, true] Call WFBE_SE_FNC_DelegateAIStaticDefenceHeadless;
                        }else{
                            _type = missionNamespace getVariable Format ["WFBE_%1SOLDIER", _side];
                            _sideID = (_side) Call WFBE_CO_FNC_GetSideID;
                            _unit = [_type,_team, getPosATL _x, _sideID] Call WFBE_CO_FNC_CreateUnit;
                            [_unit] allowGetIn true;
                            _unit assignAsGunner _defense;
                            [_unit] orderGetIn true;
                            _unit moveInGunner _defense;
                           [_team, 450, getPosATL _x] spawn WFBE_CO_FNC_RevealArea;
                            _x setVariable ["wfbe_defense_operator", _unit]; //--- Track the original gunner.
                        };
                    };
                };
            } forEach (_allDefences);
            ["INFORMATION", Format ["Server_OperateTownDefensesUnits.sqf : Town [%1] defenses were manned for [%2] defenses on [%3].", _town getVariable "name", count (_town getVariable "wfbe_town_defenses"),_side]] Call WFBE_CO_FNC_LogContent;
        };
	};
	case "remove": {
		//--- De-man the defenses.
		{
			_defense = _x getVariable "wfbe_defense";
			if !(isNil '_defense') then {
				_unit = gunner _defense;
				if !(isNull _unit) then { //--- Make sure that we do not remove a player's unit.
					if (alive _unit) then {
						if (isNil {(group _unit) getVariable "wfbe_funds"}) then {_unit setPos (getPosATL _x);	deleteVehicle _unit};
					} else {
						_unit setPos (getPosATL _x); deleteVehicle _unit;
					};
				};
			};
			if !(isNil {_x getVariable "wfbe_defense_operator"}) then { //--- Delete the original gunner if he's still around.
				if (alive(_x getVariable "wfbe_defense_operator")) then {deleteVehicle (_x getVariable "wfbe_defense_operator")};
				_x setVariable ["wfbe_defense_operator", nil];
			};
		} forEach (_town getVariable "wfbe_town_defenses") + (_town getVariable "wfbe_town_defenses_composition");

		["INFORMATION", Format ["Server_OperateTownDefensesUnits.sqf : Town [%1] defenses units were removed for [%2] defenses.", _town getVariable "name", count (_town getVariable "wfbe_town_defenses")]] Call WFBE_CO_FNC_LogContent;
	};
};