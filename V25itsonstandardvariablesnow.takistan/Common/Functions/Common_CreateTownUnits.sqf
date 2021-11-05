/*
	Create units in towns.
	 Parameters:
		- Town
		- Side
		- Groups
		- Spawn positions
		- Teams
*/

Private ["_groups", "_lock", "_position", "_positions", "_side", "_sideID", "_team", "_teams", "_town", "_town_teams", "_town_vehicles", "_retVal"];

_town = _this select 0;
_side = _this select 1;
_groups = _this select 2;
_positions = _this select 3;
_town_teams = [];
_sideID = (_side) call CTI_CO_FNC_GetSideID;
_built = 0;
_builtveh = 0;

if!(isNil "Headless_Client_Towns")then{
	if(_town in Headless_Client_Towns)then{
		for '_a' from 0 to count(Headless_Client_Towns)-1 do { 
			_kept_town = Headless_Client_Towns select _a;
			if(_town getVariable "name" == _kept_town getVariable "name")then{_town = _kept_town};
		};
	}else{
		Headless_Client_Towns pushBackUnique _town
	};
};

_lock = if ((missionNamespace getVariable "CTI_C_TOWNS_VEHICLES_LOCK_DEFENDER") == 0 && _side == CTI_DEFENDER) then {false} else {true};

_town_teams = [];
_town_vehicles = [];

/*_town_upsmon_marker = _town getVariable "UpsmonMarker";
if(isNil '_town_upsmon_marker')then{
    _areamarker = format ['%1', str _town];
    createMarkerLocal [_areamarker,getPosATL _town];
    _areamarker setMarkerShapeLocal "RECTANGLE";
    _townRange = _town getVariable "range";
    _areamarker setMarkerSizeLocal [_townRange,_townRange];
    _areamarker setMarkerTypeLocal "mil_box";
    _areamarker setMarkerColorLocal 'ColorGreen';
    _areamarker setMarkerAlphaLocal 0;
    _town setVariable ["UpsmonMarker",_areamarker];
    _town_upsmon_marker = _areamarker;
};*/

_camps = _town getVariable "camps";
_c = 0;
for '_i' from 0 to count(_groups)-1 do {
	_position = _positions select _i;

	_team = createGroup [_side, true];
	
	["INFORMATION", Format["Common_CreateTownUnits.sqf: Town [%1] [%2] will create a team template %3 at %4", _town, _team, _groups select _i,_position]] Call CTI_CO_FNC_LogContent;

	_retVal = [_groups select _i, _position, _side, _lock, _team, true, 90, _town] call CTI_CO_FNC_CreateTeam;
	_units = _retVal select 0;
	_vehicles = _retVal select 1;
	_built = _built + count _units;
	_builtveh = _builtveh + (count _vehicles);

    if(count _vehicles > 0) then {
        [_town, _team, _sideID] spawn CTI_CO_FNC_SetPatrol;
    }else{
        /*_isPatrolSet = false;

        if(_c != (count _camps)-1)then{
            _camp = _camps select _c;
            _position = ([getPosATL _camp, 10] call CTI_CO_FNC_GetSafePlace);
            diag_log format ["leader _team: %1", leader _team];
            (leader _team) setPosATL _position;
            [leader _team, _town_upsmon_marker, "COMBAT", "LINE", "LIMITED", "AMBUSH", "NOWP", "NOVEH2", "NOFOLLOW"] spawn CTI_CO_FNC_SetUpsPatrol;
            _isPatrolSet = true;

            _c = _c + 1;
        };

        if!(_isPatrolSet)then{*/
            [_town, _team, _sideID] spawn CTI_CO_FNC_SetPatrol;
        //};
    };
	//[_town, _team, _sideID] spawn CTI_CO_FNC_SetPatrol;
	//[_team, 175, _position] spawn CTI_CO_FNC_RevealArea;

	{ _town_vehicles pushBack _x; } forEach _vehicles;
	_town_teams pushBack _team;
	
	if (isServer) then {
		{
			_town_vehicles pushBack _x;
			[_x] spawn CTI_SE_FNC_HandleEmptyVehicle;
			_x setVariable ["CTI_Taxi_Prohib", true];
		} forEach _vehicles;
	};

	_team allowFleeing 0; //--- Make the units brave.
	sleep 0.00005;
};


if (_built > 0) then {[str _side,'UnitsCreated',_built] call CTI_CO_FNC_UpdateStatistics};
if (_builtveh > 0) then {[str _side,'VehiclesCreated',_builtveh] call CTI_CO_FNC_UpdateStatistics};

["INFORMATION", Format["Common_CreateTownUnits.sqf: Town [%1] held by [%2] was activated witha total of [%3] units.", _town, _side, _built + _builtveh]] Call CTI_CO_FNC_LogContent;

_town setVariable ['CTI_active_vehicles', (_town getVariable 'CTI_active_vehicles') + _town_vehicles];
_town setVariable ['CTI_town_teams', (_town getVariable 'CTI_town_teams') + _town_teams];