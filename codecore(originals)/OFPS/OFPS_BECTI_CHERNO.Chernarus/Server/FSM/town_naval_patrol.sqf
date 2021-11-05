params ["_town","_team","_sideID"];
private ["_move_patrol_reload","_camp_target","_action","_last_action","_patrol_hop","_patrol_hop_idlefor","_aliveTeam","_patrol_area","_tries","_position","_next_node","_patrol_area_valid","_assignees"];

_move_patrol_reload = false;
_camp_target = objNull;
_action = "";
_last_action = "";
_patrol_hop = [];
_patrol_hop_idlefor = -1;


while {!CTI_GameOver} do {

	_aliveTeam = [true, false] select ({alive _x} count units _team < 1 || isNull _team);

	if (_aliveTeam) then {

		_patrol_area = [];
		_patrol_hop = [];
		_patrol_hop_idlefor = -1;

		//--- A patrol hop is composed as follow: [location, object, subroutine]
		for '_i' from 1 to CTI_TOWNS_NAVAL_PATROL_HOPS do {
			_tries = [0, 250] select (isNil {_town getVariable "cti_naval"});
			_position = [ASLToAGL getPosASL _town, 5, 10, _tries] call CTI_CO_FNC_GetRandomPosition;
			_position = [_position, CTI_TOWNS_NAVAL_PATROL_RANGE, "sea", 8, 3, 0.1, true, CTI_TOWNS_NAVAL_PATROL_MIN_RANGE] call CTI_CO_FNC_GetRandomBestPlaces;		
			_patrol_area pushBack [_position, _town, "town"];
		};

		_team setFormation (["STAG COLUMN", "DIAMOND"] select (random 100 > 50));
		_team setCombatMode (["RED", "YELLOW"] select (random 100 > 50));
		_team setBehaviour (["COMBAT", "AWARE"] select (random 100 > 50));
		_team setSpeedMode (["LIMITED", "NORMAL"] select (random 100 > 50));

		//--- Default action, patrol
		_action = "patrol";
		if !(_action isEqualTo _last_action) then {_move_patrol_reload = true};

		_last_action = _action;

		if (_action isEqualTo "patrol") then {


			if (_move_patrol_reload || unitReady leader _team ) then {
				if (_move_patrol_reload) then {_move_patrol_reload = false; _patrol_hop = []; _patrol_hop_idlefor = -1};
				//--- Is there a currently assigned hop node?
				_next_node = true;
				if (count _patrol_hop > 0) then {
					//--- Subroutine checkup
					switch (_patrol_hop select 2) do {
						case "town": { //--- Town patrol node
							//--- Simple patrol, wait randomly after the node's completion
							if (_patrol_hop_idlefor < 0) then {_patrol_hop_idlefor = time + random 60};
							
							if (time < _patrol_hop_idlefor) then {_next_node = false}; //--- Lock the hop till the condition's met
						};
					};
				};
				
				//--- Process the next node
				if (_next_node) then {
					_patrol_hop_idlefor = -1;
					_patrol_area_valid = [];
					{
			     			if ( ((_x select 0) distance (getpos leader _team)) < (CTI_TOWNS_NAVAL_PATROL_RANGE/2) ) then{
							_patrol_area_valid pushBack _x;
						};
					} foreach (_patrol_area);
					if(count _patrol_area_valid < 1) then {_patrol_area_valid = _patrol_area};
					_patrol_hop = selectRandom _patrol_area_valid; 
					_team move (_patrol_hop select 0);
				};
			};
		};
	};

	//--- Cleanup the camp variables if needed
	if !(isNull _camp_target) then {
		_assignees = _camp_target getVariable [format["cti_town_ai_camp_assignees_%1", _sideID], []];
		for '_i' from count(_assignees)-1 to 0 step -1 do {if (isNull(_assignees select _i) || (_assignees select _i) isEqualTo _team) then {_assignees deleteAt _i}};
	};
	sleep 60;
};