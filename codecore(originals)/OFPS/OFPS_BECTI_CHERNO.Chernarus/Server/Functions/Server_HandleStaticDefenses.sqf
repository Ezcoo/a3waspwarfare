/*
  # HEADER #
	Script: 		Server\Functions\Server_HandleStaticDefenses.sqf
	Alias:			CTI_SE_FNC_HandleStaticDefenses
	Description:	Handle the lifespan of a static defense
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[Object]: The structure which act as a center
    1	[Side]: The side of that structure
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[STRUCTURE, SIDE] spawn CTI_SE_FNC_HandleStaticDefenses
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_CreateUnit
	
  # EXAMPLE #
    [_structure, _side] spawn CTI_SE_FNC_HandleStaticDefenses
	  -> Will search for manable statics around _structure
*/

params ["_structure", "_side"];
private ["_ai", "_defense_team", "_delegate", "_direction", "_distance", "_logic", "_manned", "_nearest_area", "_net", "_position", "_sideID", "_var", "_lastrearmtime", "_lastrearmdiff"];

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sideID = (_side) call CTI_CO_FNC_GetSideID;
_defense_team = _logic getVariable "cti_defensive_team";

_var = missionNamespace getVariable format ["CTI_%1_%2", _side, _structure getVariable "cti_structure_type"];
_direction = 0;
_distance = 0;
switch (typeName ((_var select CTI_DEFENSE_PLACEMENT))) do {
	case "STRING": { 
		_direction = 360 - ((_var select CTI_DEFENSE_PLACEMENT) select 0);
		_distance = (_var select CTI_DEFENSE_PLACEMENT) select 1;
	 };
	case "ARRAY": { 
		_direction = 360 - ((_var select CTI_DEFENSE_PLACEMENT) select 0 select 0);
		_distance = (_var select CTI_DEFENSE_PLACEMENT) select 0 select 1;
	};
};
_position = _structure modelToWorld [(sin _direction * _distance), (cos _direction * _distance), 0];

_net = [false, true] select ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") isEqualTo 1);
_nearest_area = if (CTI_BASE_DEFENSES_AUTO_MODE > 0) then {[_structure, _logic getVariable "cti_structures_areas"] call CTI_CO_FNC_GetClosestEntity} else {objNull};

//--- Perform a defense manning routine while we can
while {alive _structure} do {
	//--- We man only one defense per loop as we skip the usual queue
	_manned = false;
	{
		if (!(isNil {_x getVariable "cti_aman_enabled"}) && ((_x getVariable ["cti_defense_sideID", -1]) isEqualTo _sideID)) then {
			_last_occupied = _x getVariable ["cti_aman_time_occupied", -6000];
			_lastrearmtime = _x getVariable ["cti_defense_time_rearmed", 0];
			_lastrearmdiff = time - _lastrearmtime;

			//block rearms for blacklisted units
			if !((typeOf _x) in CTI_BASE_DEFENSES_AUTO_REARM_BLACKLIST) then {
				//--- Check if our defense has run out of ammo
				if ((!(someAmmo _x) || (getNumber(configFile >> "CfgVehicles" >> typeOf _x >> "artilleryScanner") > 0 && CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY > -1 && !isPlayer leader gunner _x)) && _lastrearmdiff > CTI_BASE_DEFENSES_AUTO_REARM_DELAY) then {
					//--- Check if we have a nearby ammo source
					_ammo_trucks = [_x, CTI_SPECIAL_AMMOTRUCK, CTI_BASE_DEFENSES_AUTO_REARM_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles;
					_nearest = [CTI_AMMO, _x, (_side) call CTI_CO_FNC_GetSideStructures, CTI_BASE_DEFENSES_AUTO_REARM_RANGE] call CTI_CO_FNC_GetClosestStructure;
					
					if (count _ammo_trucks > 0 || !isNull _nearest) then {
						if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Rearming [%1] Static Defense [%2] (%3) from Ammo Truck [%4] (%5), defense is local [%6]? gunner is local [%7]?", _side, _x, typeOf _x, _nearest, typeOf _nearest, local _x, local gunner _x]] call CTI_CO_FNC_Log;
						};
						
						if (local gunner _x) then {
							// _x setVehicleAmmoDef 1;
							_x setVehicleAmmo 1;
						} else {
							[_x, 1] remoteExec ["CTI_PVF_CLT_RequestVehicleRearm", owner gunner _x];
						};
					};
					_x setVariable ["cti_defense_time_rearmed", time];
				};
			};
			//systemChat format["check occ"];
			//--- The static is occupied
			if (alive gunner _x || alive assignedGunner _x) then {
				_x setVariable ["cti_aman_time_occupied", time];
			} else {
				//systemChat format["empty"];
				//--- The static is empty
				if (!alive gunner _x && !alive assignedGunner _x && !_manned && time - _last_occupied > CTI_BASE_DEFENSES_AUTO_DELAY && vectorUp _x select 2 > .5) then {
					_proceed = false;
					switch (CTI_BASE_DEFENSES_AUTO_MODE) do {
						case 1: { //--- Global limit
							if (count(_defense_team call CTI_CO_FNC_GetLiveUnits) < CTI_BASE_DEFENSES_AUTO_LIMIT) then {_proceed = true};
						}; 
						case 2: { //--- Per area limit
							if (typeName _nearest_area isEqualTo "ARRAY") then {
								if (count([_nearest_area, (_defense_team call CTI_CO_FNC_GetLiveUnits), CTI_BASE_AREA_RANGE, true] call CTI_CO_FNC_GetEntitiesInRange) < CTI_BASE_DEFENSES_AUTO_AREA_LIMIT) then {_proceed = true};
							};
						}; 
					};
					
					if (_proceed) then {
    					_manned = true;
    					
    					if (CTI_Log_Level >= CTI_Log_Information) then {
    						["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Creating a unit to man the defense [%1] (%2) for side [%3]", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
    					};
    					
    					//--- Was there an AI assigned in there previously?
    					if !(isNull assignedGunner _x) then {
    						if (CTI_Log_Level >= CTI_Log_Debug) then {
    							["DEBUG", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Defense [%1] (%2) from side [%3] has an assigned gunner (%4), attempting to unassign him", _x, typeOf _x, _side, assignedGunner _x]] call CTI_CO_FNC_Log;
    						};
    						unassignVehicle (assignedGunner _x);
    					};
    					
    					//--- Check if the AI is still the gunner
    					if !(isNull gunner _x) then {
    						if (CTI_Log_Level >= CTI_Log_Debug) then {
    							["DEBUG", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Defense [%1] (%2) from side [%3] has a gunner (%4), attempting to delete him", _x, typeOf _x, _side, gunner _x]] call CTI_CO_FNC_Log;
    						};
    						_x deleteVehicleCrew gunner _x;
    					};
    					
    					//--- Do we have an HC?
    					_delegate = false;
    					if !(isNil {missionNamespace getVariable "CTI_HEADLESS_CLIENTS"}) then {
    						if (count(missionNamespace getVariable "CTI_HEADLESS_CLIENTS") > 0) then { _delegate = true };
    					};
    					
    					//--- The arguments used to create the AI
    					_ai_args = [missionNamespace getVariable format["CTI_%1_Static", _side], _defense_team, _position, _sideID, _net];
    					
    					//--- No delegation possible, create on the server
    					if !(_delegate) then {
    						if (CTI_Log_Level >= CTI_Log_Information) then {
    							["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["No HC were detected, defense [%1] (%2) from side [%3] will be server-managed", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
    						};
                            //--- Create the unit
                            if (_x call CTI_CO_FNC_IsVehicleUAV || _x isKindOf "OFPS_rbs97_Base") then {
                                createVehicleCrew _x;
                                _ai =  gunner _x;
                                _logic = (_side) call CTI_CO_FNC_GetSideLogic;
                                _defense_team = _logic getVariable "cti_defensive_team";
            
                                [_x] joinSilent _defense_team;

								//--- Give order to Patrol
								if(_x isKindOf "B_UAV_01_F" || _x isKindOf "O_UAV_01_F") then {
									//set leader to help with coordination
									(group (driver _x)) selectLeader  (driver _x);
									//move it
									_x engineOn true;
									_oldpos = position _x;
									_newlevel = [_oldpos select 0, _oldpos select 1, 600];
									(driver _x) move _newlevel;
									_wp = group _x addWaypoint [_newlevel, 0];
									_wp setWaypointType "LOITER";
									_wp setWaypointLoiterType "CIRCLE";
									_wp setWaypointLoiterRadius 400;
									_wp setWaypointBehaviour "COMBAT";
									_wp setWaypointCombatMode "RED";
									_wp setWaypointSpeed "FULL";
								};
                            } else {
                                _ai = (_ai_args) call CTI_CO_FNC_CreateUnit;
                                
                                //--- Assign him to the defense
                                [_ai] allowGetIn true;
                                _ai assignAsGunner _x;
                                [_ai] orderGetIn true;
                                _ai moveInGunner _x;
                            };
                                                   
    						//--- Change Skill for rest of the statics
    						_ai setSkill ["aimingAccuracy", 1]; // Set accuracy
    						_ai setSkill ["aimingShake", 1]; // Set weapon sway handling
    						_ai setSkill ["aimingSpeed", 1]; // Set aiming speed
    						_ai setSkill ["reloadSpeed", 1]; // Max out reload speed
    						_ai setSkill ["spotDistance", 1]; // Set detection distance
    						_ai setSkill ["spotTime", 1]; // Set detection time
    						_ai setSkill ["courage", 1]; // Never retreat
    						_ai setSkill ["commanding", 1]; // Communication skills
    						_ai setSkill ["general", 1]; //Sets all above
    
    						//--- Exception for AT statics to be less aggressive  
    						if (_x isKindOf "AT_01_base_F" || _x isKindOf "rhs_d30_at_msv") then {
    							_ai setSkill ["aimingAccuracy", 0.8]; // Set accuracy
    							_ai setSkill ["aimingShake", 0.5]; // Set weapon sway handling
    							_ai setSkill ["aimingSpeed", 0.5]; // Set aiming speed
    							_ai setSkill ["reloadSpeed", 0.8]; // Max out reload speed
    							_ai setSkill ["spotDistance", 0.5]; // Set detection distance = 2600m
    							_ai setSkill ["spotTime", 0.5]; // Set detection time
    							_ai setSkill ["courage", 1]; // Never retreat
    							_ai setSkill ["commanding", 1]; // Communication skills		
    							/*_ai setSkill ["general", 0.8]; //Sets all above*/
    						};
    
    						//--- Set to Combat
    						_ai setBehaviour "AWARE";
    						_ai setCombatMode "RED";
    						_ai setSpeedMode "FULL";
    						_ai enableAttack true;
    
    					} else {
    						//--- At least one HC is available
    
    						if (CTI_Log_Level >= CTI_Log_Information) then {
    							["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["At least one HC is present, defense [%1] (%2) from side [%3] will be managed by an HC", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
    						};
    
    						[_x, _defense_team, _side, _ai_args] call CTI_SE_FNC_AttemptDefenseDelegation;
    					};
					};
				};
			};
		};
	} forEach (_structure nearEntities [["StaticWeapon", "B_UAV_01_F", "O_UAV_01_F"], CTI_BASE_DEFENSES_AUTO_RANGE]);
	
	sleep 15;
};