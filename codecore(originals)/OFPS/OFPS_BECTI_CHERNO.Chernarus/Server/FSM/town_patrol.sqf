params ["_town","_team","_sideID"];
private ["_move_defend_last","_move_patrol_reload","_camp_move_last","_camp_target","_action","_last_action","_patrol_hop","_patrol_hop_idlefor","_capture_mode","_capture_range","_last_SV","_aliveTeam","_patrol_area","_camps","_tries","_position","_capturable","_camps_hostile","_valid_assignees","_next_node"];

_move_defend_last = 0;
_move_patrol_reload = false;
_camp_target = objNull;
_camp_move_last = -50;

_action = "";
_last_action = "patrol";
_patrol_hop = [];
_patrol_hop_idlefor = -1;
_capture_mode = missionNamespace getVariable "CTI_TOWNS_CAPTURE_MODE";
_capture_range = CTI_TOWNS_CAPTURE_RANGE;

_last_SV = _town getVariable 'cti_town_sv_default';


while {!CTI_GameOver} do {
	
	_aliveTeam = [true, false] select ({alive _x} count units _team < 1 || isNull _team);

	if (_aliveTeam) then {

		//--- Renew hops
		_patrol_area = [];
		_patrol_hop = [];
		_patrol_hop_idlefor = -1;

		//--- Fetch the possible camps
		_camps = (_town) Call CTI_CO_FNC_GetTownCamps;

		//--- A patrol hop is composed as follow: [location, object, subroutine]
		for '_i' from 1 to CTI_TOWNS_PATROL_HOPS do {
		  _tries = 0;
		  if (count _camps > 0) then {
		    _position = [ASLToAGL getPosASL (_camps select 0), 2, CTI_TOWNS_CAMPS_CAPTURE_RANGE/2, _tries] call CTI_CO_FNC_GetRandomPosition;
		    _position = [_position, CTI_TOWNS_CAMPS_CAPTURE_RANGE/2, "meadow", 8, 3, 0.1, true] call CTI_CO_FNC_GetRandomBestPlaces;
		    _patrol_area pushBack [_position, _camps select 0, "camp"];
		    _camps deleteAt 0;
		  } else {
		    _position = [ASLToAGL getPosASL _town, 8, CTI_TOWNS_PATROL_RANGE/2, _tries] call CTI_CO_FNC_GetRandomPosition;
		    _position = [_position, CTI_TOWNS_PATROL_RANGE/2, "meadow", 8, 3, 0.1, true] call CTI_CO_FNC_GetRandomBestPlaces;
		   	_patrol_area pushBack [_position, _town, "town"];
		  };
		};
		//--- Randomize the behaviours.
		_team setFormation (["STAG COLUMN", "WEDGE", "LINE"] select (random 100 > 50));
		_team setCombatMode (["RED", "YELLOW"] select (random 100 > 50));
		_team setBehaviour (["COMBAT", "AWARE"] select (random 100 > 20));
		_team setSpeedMode (["FULL", "NORMAL"] select (random 100 > 50));

		//--- Renew hops end

		//--- Determine action
		if ((((_town getVariable 'cti_town_sv') < _last_SV || (_town getVariable 'cti_town_sv') < (_town getVariable 'cti_town_sv_default')) && _sideID == (_town getVariable 'cti_town_sideID')) || _sideID != (_town getVariable 'cti_town_sideID')) then {
		  _capturable = true;
		  
		  //--- If we need all camps to capture the town, make sure that they belong to the team's before capturing the depot
		  if (_capture_mode in [2] ) then { 
		    if !([_town, _sideID] call CTI_CO_FNC_HasAllCamps) then {_capturable = false};
		  };
		  
		  //--- Make sure that the depot can be captured before proceeding there, if not, the team will either patrol or defend camps
		  if (_capturable) then {
		    _action = "defense";
		    if (_action != _last_action) then {_move_defend_last = -120};
		  } else {
		    _action = "patrol";
		    if (_action != _last_action) then {_move_patrol_reload = true};
		  };
		} else {
		  //--- Default action, patrol
		  _action = "patrol";
		  if (_action != _last_action) then {_move_patrol_reload = true};
		};

		//--- Handle the camp defense if we're not busy defending the town
		if (_action != "defense") then {
		  _camps_hostile = [_town, _sideID] call CTI_CO_FNC_GetTownCampsHostileToSide;
		  
		  //--- Check if the current camp still need to be targeted
		  if !(isNull _camp_target) then {
		    if ((_camp_target getVariable "cti_camp_sideID") == _sideID) then {
		      _camp_target setVariable [format["cti_town_ai_camp_assignees_%1", _sideID], (_camp_target getVariable [format["cti_town_ai_camp_assignees_%1", _sideID], []]) - [objNull, _team]];
		      _camp_target = objNull;
		    } else {
		      _action = "defense_camp";
		    };
		  };
		  
		  //--- Make sure that we have at least one hostile camp and that this team is not assigned to a camp already
		  if (count _camps_hostile > 0 && isNull _camp_target) then {
		    //--- Try to find a camp in need of defense
		    {
		      _valid_assignees = 0;
		      {
		        _valid_assignees = _valid_assignees + (if ({alive _x} count units _x < 1 || isNull _x) then {0} else {1});
		      } forEach (_x getVariable [format["cti_town_ai_camp_assignees_%1", _sideID], []]);
		      
		      if (_valid_assignees < CTI_TOWNS_PATROL_CAMPS_AI_DEFENSE_MAX) exitWith {_camp_target = _x};
		    } forEach (_camps_hostile call BIS_fnc_arrayShuffle);
		    
		    //--- We found one camp to defend
		    if !(isNull _camp_target) then {
		      _action = "defense_camp";
		      _camp_target setVariable [format["cti_town_ai_camp_assignees_%1", _sideID], (_camp_target getVariable [format["cti_town_ai_camp_assignees_%1", _sideID], []]) + [_team]];
		    };
		  };
		};

		_last_action = _action;
		_last_SV = _town getVariable 'cti_town_sv';
		//--- Determine action end

		switch (_action) do {

			case "patrol": {
			//--- Patrol Action
				if (_move_patrol_reload || unitReady leader _team ) then {
				  if (_move_patrol_reload) then {

				  	_move_patrol_reload = false; 
				  	_patrol_hop = []; 
				  	_patrol_hop_idlefor = -1;
				  };
				  //--- Is there a currently assigned hop node?
				  _next_node = true;
				  if (count _patrol_hop > 0) then {
				    //--- Subroutine checkup
				    switch (_patrol_hop select 2) do {
				      case "camp": { //--- Camp patrol node
				        if ((_patrol_hop select 1) getVariable "cti_camp_sideID" != _sideID) then { //--- Camp is held by the enemy, wait a bit
				          if (_patrol_hop_idlefor < 0) then {_patrol_hop_idlefor = time + 40 + random 100};
				        } else { //--- Camp is held by our side, wait a bit but not too long
				          if (_patrol_hop_idlefor < 0) then {_patrol_hop_idlefor = time + 10 + random 60};
				        };
				        
				        if (time < _patrol_hop_idlefor) then {_next_node = false}; //--- Lock the hop till the condition's met
				      };
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
				    _patrol_hop = selectRandom _patrol_area;
				    _team move (_patrol_hop select 0);
				  };
				};
			};
			//--- Patrol Action end

			case "defense_camp": {
				//--- Camp defense Action
				if (unitReady leader _team && time - _camp_move_last > 50) then {
				  _camp_move_last = time; 
				  _team move ([_camp_target, 2, CTI_TOWNS_CAMPS_CAPTURE_RANGE, 25] call CTI_CO_FNC_GetRandomPosition);
				};
			};
			//--- Camp defense Action end


			//--- Towm defense Action end
			case "defense": {
				if (unitReady leader _team && time - _move_defend_last > 65) then {
					_move_defend_last = time; 
					_team move ([_town, 5, _capture_range, 0] call CTI_CO_FNC_GetRandomPosition);
				};
			};
			//--- Town defense Action end
		};
	};

	//--- Cleanup the camp variables if needed
	if !(isNull _camp_target) then {
	  _camp_target setVariable [format["cti_town_ai_camp_assignees_%1", _sideID], (_camp_target getVariable [format["cti_town_ai_camp_assignees_%1", _sideID], []]) - [objNull, _team]];
	};
	sleep 60;
};