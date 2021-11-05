/*
  # HEADER #
	Script: 		Server\Functions\Server_CreateStaticTownDefenses.sqf
	Alias:			CTI_SE_FNC_CreateStaticTownDefenses
	Description:	Create town static defenses (camps & towns)
	Author: 		Benny
	Creation Date:	12-06-2017
	Revision Date:	12-06-2017
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Side]: The Side which holds the town
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_CreateStaticTownDefenses
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetTownCampsOnSide
	
  # EXAMPLE #
    [Blata, Resistance] call CTI_SE_FNC_CreateStaticTownDefenses
	  -> Blata resistance static defenses will be created
*/

params ["_town", "_side"];
private ["_defenses","_position", "_direction","_pool_type","_defenses_inert","_sideID", "_town_group","_pool_statics","_statics_pool","_static_var","_classname_static","_defense","_custom_compo","_custom_defenses","_custom_objects","_default_height","_objPosition","_can_delegate","_ai_args","_ai"];

_sideID = (_side) call CTI_CO_FNC_GetSideID;

_defenses = [];
_defenses_inert = [];
_pool_statics = [];
//--- Add town static markers to static pool
if (count(_town getVariable "cti_static_defenses") > 0) then {_pool_statics = _pool_statics + (_town getVariable "cti_static_defenses")};
_town_group = if (count _pool_statics > 0) then {createGroup _side} else {grpNull};

//--- Return the valid static defenses that may be used
{
	_position = _x select 0;
	_direction = _x select 1;
	_pool_type = _x select 2;

	//Gather classnames
	_statics_pool = [];
	if (typeName _pool_type isEqualto "STRING") then {
		switch (_pool_type) do {
				case "Default": { _statics_pool = missionNamespace getVariable format["%1_%2", _side, "TOWNS_STATICS_CORE"]};
				case "Comps": { _statics_pool = missionNamespace getVariable format["%1_%2", _side, "TOWNS_STATICS_COMPS"]};
				case "Infantry": { _statics_pool = missionNamespace getVariable format["%1_%2", _side, "TOWNS_STATICS_INFANTRY"]};
				case "Vehicle": { _statics_pool = missionNamespace getVariable format["%1_%2", _side, "TOWNS_STATICS_VEHICLE"]};
				case "Air": { _statics_pool = missionNamespace getVariable format["%1_%2", _side, "TOWNS_STATICS_AIR"]};
				case "All": { _statics_pool = missionNamespace getVariable format["%1_%2", _side, "TOWNS_STATICS_ALL"]};
				default { _statics_pool = missionNamespace getVariable format["%1_%2", _side, "TOWNS_STATICS_CORE"]};
		};
	} else {
		if (count _pool_type > 1) then {
			{	
				_static_var = missionNamespace getVariable format["%1_%2", _side, _x];
				_statics_pool pushback _static_var;
			} foreach _pool_type;
		} else {
			_static_var = missionNamespace getVariable format["%1_%2", _side, _pool_type select 0];
			if (typeName _static_var isEqualTo "STRING") then {
				_statics_pool = [_static_var];
			} else {
				_statics_pool = [_static_var select 0];
			};
		};
	};
	//Select random classname from pool
	_classname_static = selectRandom _statics_pool; 
	//systemChat format["Loop: %1 | %2 ", _pool_type, _classname_static];

	if (typeName _classname_static isEqualTo "STRING") then { //--- Singular classname
		//systemChat format["Height %1" , (_position select 2)];
		_defense = createVehicle [_classname_static, _position vectorAdd [0,0,0.2], [], 0, "CAN_COLLIDE"];
		//--- Defenses wont be knocked down by ai drivers
		if (_defense isKindOf "CUP_D30_base") then {
			_defense setMass 40000;
		} else {
			_defense setMass (getMass _defense * 5);
		};
		_defense setDir _direction;
		if ((_position select 2) > 5) then{
			_defense setVectorUp [0,0,0];
		} else {
			_defense setVectorUp surfaceNormal position _defense;
		};
		
		_defense addEventHandler ["killed", format["[_this select 0, _this select 1, %1, true] spawn CTI_CO_FNC_OnUnitKilled", _sideID]];
		_defenses pushBack _defense;
		//-- Radar Support to all for now
		_defense setVehicleRadar 1; //AI radar Usage : 0 - automatic, 1 - forced on, 2 - forced off
		_defense setVehicleReportRemoteTargets true; //Sets that the vehicle will share targets that were acquired by its own sensors via datalink to the Side center.
		_defense setVehicleReceiveRemoteTargets true; //Sets that the vehicle will be able to receive targets acquired by someone else via datalink from the Side center.
		_defense setVehicleReportOwnPosition true; // Sets that the vehicle will share its own position via datalink to the Side center.

		//--- ZEUS Curator Editable
		if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_defense], true]};

	} else { 
		//--- Composition (script-block)
		if (typeName _classname_static isEqualTo "CODE") then {
			_custom_compo = [_position, _direction] call _classname_static;
			_custom_defenses = _custom_compo select 0;
			_custom_objects = _custom_compo select 1;
			//adjust height
			_default_height = ((_position select 2) + 1);			
			{
				_objPosition = getPosATL _x;
				
				if ((_position select 2) > 5) then{
					_x setPosATL [_objPosition select 0, _objPosition select 1, _default_height];
					_x setVectorUp [0,0,0];
				} else {
					_x setPosATL _objPosition;
					_x setVectorUp surfaceNormal position _x;
				};

				_x addEventHandler ["killed", format["[_this select 0, _this select 1, %1, true] spawn CTI_CO_FNC_OnUnitKilled", _sideID]];
				if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_x], true]}; //--- ZEUS Curator Editable
				//--- Defenses wont be knocked down by ai drivers
				if (_x isKindOf "CUP_D30_base") then {
					_x setMass 40000;
				} else {
					_x setMass (getMass _x * 5);
				};
				_defenses pushBack _x;
				
			} forEach _custom_defenses;
			
			{
				_objPosition = getPosATL _x;
				if ((_position select 2) > 5) then{
					_x setPosATL [_objPosition select 0, _objPosition select 1, _default_height];
					_x setVectorUp [0,0,0];
				} else {
					_x setPosATL _objPosition;
					_x setVectorUp surfaceNormal position _x;
				};
				
			} forEach _custom_objects;
			
			_defenses_inert = _defenses_inert + _custom_objects;
		} else {
			if (CTI_Log_Level >= CTI_Log_Warning) then { 
				["WARNING", "FILE: Server\Functions\Server_CreateStaticTownDefenses.sqf", format ["Town Static Defense custom composition %1 is not a script block. Skipping", format["%1_%2", _side, _x select 1]]] call CTI_CO_FNC_Log;
			};
		};
	};

} forEach _pool_statics;

//--- Store the town defenses along with the defender's group in a variable for an easier access
if !(isNull _town_group) then {
	//--- Give the defense group an explicit callsign
	_town_group setGroupIdGlobal [format["(%1-DEF) %2", _town, _town_group]];
	
	//--- Remove the group when it becomes empty
	_town_group deleteGroupWhenEmpty true;
	
	{
		_can_delegate = [false, true] select (count(missionNamespace getVariable ["CTI_HEADLESS_CLIENTS", []]) > 0);
		_ai_args = [missionNamespace getVariable format["CTI_%1_Soldier", _side], _town_group, getPos _x, _sideID, ([false, true] select ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") isEqualTo 1))];
		if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_CreateStaticTownDefenses.sqf", format["TOWN DEFENSE ARG [%1]]", _ai_args]] call CTI_CO_FNC_Log;
		};
		
		//--- Assign him to the defense
		if !(_can_delegate) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_CreateStaticTownDefenses.sqf", format["No HC were detected, defense [%1] (%2) from side [%3] will be server-managed", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
			};
			
			//--- Create the unit
			_ai = (_ai_args) call CTI_CO_FNC_CreateUnit;
			
			//--- The arguments used to create the AI
			[_ai] allowGetIn true;
			_ai assignAsGunner _x;
			[_ai] orderGetIn true;
			_ai moveInGunner _x;
			
			//--- Update the gunner's properties
			_ai setBehaviour "AWARE";
			_ai setCombatMode "RED";
		} else {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["At least one HC is present, defense [%1] (%2) from side [%3] will be managed by an HC", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
			};
			
			//--- Attempt town defense delegation
			[_x, _town_group, _side, _ai_args] call CTI_SE_FNC_AttemptTownDefenseDelegation;
		};
	} forEach _defenses;
	
	_town setVariable ["cti_town_static_defenses_active", [_town_group, _defenses + _defenses_inert]];

};
