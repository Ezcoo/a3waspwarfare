/*
  # HEADER #
	Script: 		Server\Functions\Server_BuildDefense.sqf
	Alias:			CTI_SE_FNC_BuildDefense
	Description:	Construct a defense at a given position
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[String]: The defense variable name
    1	[Side]: The Side which requested it
    2	[Array]: The position of the defense
    3	[Number]: The direction of the defense
    4	[Boolean]: Determine if an alignment is needed for walls
    5	{Optionnal} [Boolean]: Determine if the defense shall be manned or not
	
  # RETURNED VALUE #
	[Object]: The constructed defense
	
  # SYNTAX #
	[DEFENSE VARIABLE, SIDE, POSITION, DIRECTION, AUTOALIGN, MANNED] call CTI_SE_FNC_BuildDefense
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideLogic
	Server Function: CTI_SE_FNC_HandleStaticDefenses
	Server Function: funcCalcAlignPosDir
	
  # EXAMPLE #
    _defense = [_variable, CTI_P_SideJoined, [_pos select 0, _pos select 1], _dir, CTI_P_WallsAutoAlign, CTI_P_DefensesAutoManning] call CTI_SE_FNC_BuildDefense;
*/

params ["_varname", "_side", "_position", "_direction", "_autoalign", ["_manned", false], "_aligntoggle"];
private ["_defense", "_direction_structure", "_fob", "_limit", "_logic", "_ruins", "_seed", "_sideID", "_var","_large_fob","_limit_large","_iscomposition","_isarray","_isbulldozer","_isdemolition","_bulldozer_type","_bulldozer_radius","_demolition_radius","_objects","_objpos","_isNaval","_composition","_compositionobjects","_alternative_damages","_reduce_damages","_multiply_damages","_explosionalt","_damage_explosion","_classname","_fobs","_oldpos","_2dpos","_seadepth","_sealevel","_crams"];

_var = missionNamespace getVariable _varname;
_seed = time + random 10000 - random 500 + diag_frameno;

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sideID = (_side) call CTI_CO_FNC_GetSideID;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_BuildDefense.sqf", format["Received Defense build request [%1] from side [%2] for a [%3] structure at position [%4], manned? [%5]", _seed, _side, _var select CTI_DEFENSE_CLASS, _position, _manned]] call CTI_CO_FNC_Log;
};

//--- Is it a fob?
_fob = false;
_limit = false;
{if (_x select 0 isEqualTo "FOB") exitWith {_fob = true}} forEach (_var select CTI_DEFENSE_SPECIALS);
if (_fob) then {if (count(_logic getVariable "cti_fobs") >= CTI_BASE_FOB_MAX) then {_limit = true}};
if (_limit) exitWith {};

//--- Is it a large fob?
_large_fob = false;
_limit_large = false;
{if (_x select 0 isEqualTo "LARGE_FOB") exitWith {_large_fob = true}} forEach (_var select CTI_DEFENSE_SPECIALS);
if (_large_fob) then {if (count(_logic getVariable "cti_large_fobs") >= CTI_BASE_LARGE_FOB_MAX) then {_limit_large = true}};
if (_limit_large) exitWith {};

_defense = nil;
_iscomposition = false;
_isarray = false;

switch (typeName (_var select CTI_DEFENSE_CLASS)) do {
	case "STRING": { _iscomposition = false; };
	case "ARRAY": { 
		_isarray = true;
	};
};
//--- Is it a composition?
_iscomposition = false;
_isbulldozer = false;
_isdemolition = false;
if(_isarray) then {
	if ("Composition" in (((_var select CTI_DEFENSE_CLASS) select 1) select 0)) then {_iscomposition = true;};
	if ("Bulldozer" in (((_var select CTI_DEFENSE_CLASS) select 1) select 0)) then {_isbulldozer = true;};
	if ("Demolition" in (((_var select CTI_DEFENSE_CLASS) select 1) select 0)) then {_isdemolition = true;};
};

switch (true) do {
	case (_isbulldozer): {
		_bulldozer_type = (_var select CTI_DEFENSE_CLASS) select 1 select 0 select 1;
		_bulldozer_radius = (_var select CTI_DEFENSE_CLASS) select 1 select 0 select 2;

		//Bulldozer terrain
		if (_bulldozer_type isEqualTo "terrain") then {
			{
				_x hideObjectGlobal true;
			}forEach nearestTerrainObjects [_position, ["TREE", "SMALL TREE", "BUSH", "FOREST BORDER", "FOREST TRIANGLE", "FOREST SQUARE", "FOREST", "ROCK", "ROCKS", "HIDE"], _bulldozer_radius];
		};
		//Bulldozer buildings
		if (_bulldozer_type isEqualTo "buildings") then {
			{
				_x hideObjectGlobal true;
			}forEach nearestTerrainObjects [_position, ["BUILDING", "HOUSE", "CHURCH", "CHAPEL", "BUNKER", "FORTRESS", "FOUNTAIN", "VIEW-TOWER", "LIGHTHOUSE", "QUAY", "FUELSTATION", "HOSPITAL", "FENCE", "WALL", "BUSSTOP", "TRANSMITTER", "STACK", "RUIN", "TOURISM", "WATERTOWER", "POWER LINES", "RAILWAY", "POWERSOLAR", "POWERWAVE", "POWERWIND", "HIDE", "SHIPWRECK"], _bulldozer_radius];
		};	
	};	
	case (_isdemolition): {
		_demolition_radius = (_var select CTI_DEFENSE_CLASS) select 1 select 0 select 1;
		_objects = nearestObjects [_position, [], _demolition_radius];
		{
			_objpos = getPos _x;
			createVehicle ["SmallSecondary", _objpos, [], 0, "CAN_COLLIDE"];
			_x setDammage 1;
			[_objpos] remoteExec ["CTI_PVF_CLT_APS_SHOCKWAVE"];
		}forEach _objects;
	};
	case (_iscomposition): {
		//Naval Placement
		_isNaval = false;
		{
			if ("Naval" in _x) then {_isNaval = true;}; 
		} forEach (_var select CTI_DEFENSE_SPECIALS);
		_composition = [ (((_var select CTI_DEFENSE_CLASS) select 1) select 0 select 1), _position, [0,0,0], _direction, (((_var select CTI_DEFENSE_CLASS) select 1) select 0 select 2),_aligntoggle, _isNaval, false ] call LARs_fnc_spawnComp;

		_compositionobjects = [ _composition ] call LARs_fnc_getCompObjects;
		{	
			if (_x emptyPositions "gunner" > 0) then { //--- Hard defense
				if (CTI_BASE_DEFENSES_AUTO_MODE > 0) then {_x setVariable ["cti_aman_enabled", true]};
			};
			_x setVariable ["cti_defense_sideID", _sideID, true]; //--- Track the defense by giving it a sideID
			_x call CTI_CO_FNC_UnitCreated;
			if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_x], true]};
			
			//--- Getvarname
			_varname = format ["CTI_%1_%2", CTI_P_SideJoined, typeof _x];
			_var = missionNamespace getVariable _varname;

			if !(isnil "_var") then {
				//--- Make the defense stronger?
				_alternative_damages = false;
				_reduce_damages = 0;
				_multiply_damages = 0;
				{
					if ("DMG_Alternative" in _x) then {_alternative_damages = true}; 
					if ("DMG_Reduce" in _x) then {_reduce_damages = _x select 1}; 
					if ("DMG_Multiplier" in _x) then {_multiply_damages = _x select 1};
				} forEach (_var select CTI_DEFENSE_SPECIALS);
				//systemchat format ["_varname: %1 | %2 ",_alternative_damages, _reduce_damages, _multiply_damages];
				if (_alternative_damages) then {
					_x addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, _this select 4, '%1', %2, %3, %4, %5, %6] call CTI_SE_FNC_OnDefenseHandleVirtualDamage", _varname, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, _reduce_damages, _multiply_damages]];
				} else {
					if (_multiply_damages > 0 || _reduce_damages > 0 || CTI_BASE_NOOBPROTECTION isEqualTo 1) then {
						_x addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, _this select 4, %1, %2, '%3', %4, %5] call CTI_SE_FNC_OnDefenseHandleDamage", (_side) call CTI_CO_FNC_GetSideID, _reduce_damages, _varname, _position, _multiply_damages]];
					};
				};
				//--- Handler for invinsible objects
				_explosionalt = false;
				_damage_explosion = 0;
				{
					if ("DMG_Explosion" in _x) then {_explosionalt = true;_damage_explosion = _x select 1;}; 
				} forEach (_var select CTI_DEFENSE_SPECIALS);
				//systemchat format ["DMG_Explosion: %1 | %2 ",_explosionalt, _damage_explosion];
				if (_explosionalt) then {
					_x addEventHandler ["explosion", format ["[_this select 0, _this select 1, %1, '%2', %3, %4] spawn CTI_SE_FNC_OnExplosion", _damage_explosion, (_side) call CTI_CO_FNC_GetSideID, _var, _position]];
				};	
				//--- Killed handler
				_x addEventHandler ["killed", format["[_this select 0, _this select 1, %1, '%2', '%3'] spawn CTI_SE_FNC_OnDefenseDestroyed", _sideID, "", _varname]];
			};		
			
		}forEach _compositionobjects;
	};
	default {
		_position set [2, 0];
		_classname = "";
		switch (typeName (_var select CTI_DEFENSE_CLASS)) do {
			case "STRING": { 
				_classname = _var select CTI_DEFENSE_CLASS; 
			};
			case "ARRAY": { 
				_classname = ((_var select CTI_DEFENSE_CLASS) select 0);
			};
		};
		_defense = _classname createVehicle _position;
		_defense setVariable ["cti_defense_sideID", _sideID, true]; //--- Track the defense by giving it a sideID

		_direction_structure = 0;

		switch (typeName ((_var select CTI_DEFENSE_PLACEMENT) select 1)) do {
			case "STRING": { 
				_direction_structure = (_var select CTI_DEFENSE_PLACEMENT) select 0;
			};
			case "ARRAY": { 
				_direction_structure = (_var select CTI_DEFENSE_PLACEMENT) select 0 select 0;
			};
		};

		if (_defense isKindOf "Building") then {
			if (_autoalign) then {
				private ["_autoSupport", "_correction", "_offsetZ", "_width"];
				_autoSupport = [];
				switch (typeName ((_var select CTI_DEFENSE_PLACEMENT) select 1)) do {
					case "ARRAY": { 
						{if (_x select 0 isEqualTo "CanAutoAlign") exitWith {_autoSupport = _x}} forEach (_var select CTI_DEFENSE_PLACEMENT);
					};
				};
				
				if (count _autoSupport > 0) then {
					_width = _autoSupport select 1;
					_offsetZ = _autoSupport select 2; //todo
					_correction = [_defense, _position, _direction, _width, _offsetZ, _direction_structure] call funcCalcAlignPosDir;
					_position = _correction select 0;
					_direction = _correction select 1;
				};
			};
		};

		if (_fob) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_BuildDefense.sqf", format["A FOB [%1] has been added to side [%2] following defense request [%3]", _var select CTI_DEFENSE_CLASS, _side, _seed]] call CTI_CO_FNC_Log;
			};

			(_defense) remoteExec ["CTI_PVF_CLT_OnFOBDeployment", _side];
			_fobs = _logic getVariable "cti_fobs";
			_fobs pushBack _defense;
			_logic setVariable ["cti_fobs", _fobs, true];
		};
		if (_large_fob) then {
			_defense setVariable ["cti_large_fob", [],true];
			(_defense) remoteExec ["CTI_PVF_CLT_OnLargeFOBDeployment", _side];
			_logic setVariable ["cti_large_fobs", (_logic getVariable "cti_large_fobs") + [_defense], true];
		};

		_defense setDir _direction;
		_defense setPos _position;
		if !(_defense isKindOf "Building") then {_defense setVectorUp surfaceNormal position _defense};
		if (_defense emptyPositions "gunner" < 1 && !_fob && !_large_fob) then { //--- Soft defense
			_defense setDir _direction;
		};
		//--- level with terrain
		if (_aligntoggle) then {
			_defense setVectorUp [0,0,0];
		} else {
			_defense setVectorUp surfaceNormal _position;
		};

		_alternative_damages = false;
		_reduce_damages = 0;
		_multiply_damages = 0;
		{if ("DMG_Alternative" in _x) then {_alternative_damages = true}; if ("DMG_Reduce" in _x) then {_reduce_damages = _x select 1}; if ("DMG_Multiplier" in _x) then {_multiply_damages = _x select 1}} forEach (_var select CTI_DEFENSE_SPECIALS);
		if (_alternative_damages) then {
			_defense addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, _this select 4, '%1', %2, %3, %4, %5, %6] call CTI_SE_FNC_OnDefenseHandleVirtualDamage", _varname, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, _reduce_damages, _multiply_damages]];
		} else {
			if (_multiply_damages > 0 || _reduce_damages > 0 || CTI_BASE_NOOBPROTECTION isEqualTo 1) then {
				_defense addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, _this select 4, %1, %2, '%3', %4, %5] call CTI_SE_FNC_OnDefenseHandleDamage", (_side) call CTI_CO_FNC_GetSideID, _reduce_damages, _varname, _position, _multiply_damages]];
			};
		};
		//handler for invinsible objects
		_explosionalt = false;
		_damage_explosion = 0;
		{
			if ("DMG_Explosion" in _x) then {_explosionalt = true;_damage_explosion = _x select 1;}; 
		} forEach (_var select CTI_DEFENSE_SPECIALS);
		//systemchat format ["DMG_Explosion: %1 | %2 ",_explosionalt, _damage_explosion];
		if (_explosionalt) then {
			_defense addEventHandler ["explosion", format ["[_this select 0, _this select 1, %1, '%2', %3, %4] spawn CTI_SE_FNC_OnExplosion", _damage_explosion, (_side) call CTI_CO_FNC_GetSideID, _var, _position]];
		};

		//--- Check if the defense has a ruin model attached (we don't wana have a cemetery of wrecks)
		_ruins = "";
		if(_isarray) then {
			{if (_x select 0 isEqualTo "RuinOnDestroyed") exitWith {_ruins = _x select 1}} forEach ((_var select CTI_DEFENSE_CLASS) select 1);
		};

		_defense addEventHandler ["killed", format["[_this select 0, _this select 1, %1, '%2', '%3'] spawn CTI_SE_FNC_OnDefenseDestroyed", _sideID, _ruins, _varname]];

		if (_defense emptyPositions "gunner" > 0) then { //--- Hard defense
			//todo: determine if the defense is "auto" or not via config simulation
			[_defense, CTI_BASE_DEFENSES_EMPTY_TIMEOUT] spawn CTI_SE_FNC_HandleEmptyVehicle; //--- Track the defense lifespan
			
			//--- The defense is eligible for auto manning
			if (_manned && CTI_BASE_DEFENSES_AUTO_LIMIT > 0) then {_defense setVariable ["cti_aman_enabled", true]};
			
			//--- Crew the defence if it is a uav	
			if (_defense call CTI_CO_FNC_IsVehicleUAV) then {_defense setVariable ["cti_aman_enabled", true]};
			
			//--- The defense may be an artillery piece, if so we track it
			if (CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY > -1 && getNumber(configFile >> "CfgVehicles" >> (_var select CTI_DEFENSE_CLASS) >> "artilleryScanner") > 0) then {
				//(_defense) remoteExec ["CTI_PVF_CLT_OnArtilleryPieceTracked", CTI_PV_CLIENTS];
				(_defense) call CTI_PVF_SRV_OnArtilleryPieceTracked;
			};
			
		};
		//--- Create the unit
		if(_defense isKindOf "B_UAV_01_F" || _defense isKindOf "O_UAV_01_F") then {
			//systemChat format["uav build"];
			_defense setVariable ["cti_aman_enabled", true];
			_defense setVariable ["cti_defense_sideID", _sideID, true]; //--- Track the defense by giving it a sideID
		};
		//Naval Placement
		_isNaval = false;
		{
			if ("Naval" in _x) then {_isNaval = true;}; 
		} forEach (_var select CTI_DEFENSE_SPECIALS);
		if (_isNaval) then {
			_oldpos = getPos _defense;
			_2dpos = [_oldpos select 0, _oldpos select 1];
			_seadepth = abs (getTerrainHeightASL _2dpos);
			_sealevel = [_oldpos select 0, _oldpos select 1, _seadepth];
			_defense setPosATL _sealevel;
			//systemchat format ["ITS NAVAL | %1 ", _sealevel];
		};

		_defense setVariable ["cti_static_properly_created", true, true]; //-- set cti_static_properly_created to "true" and broadcast that variable to all clients and JIP. Use that variable to determine if we need to re-add event handlers and variables
		
		//--- Defences wont be knocked down by ai drivers
		//_defense setMass 40000;
		//Check for crams --- they now tip over super easy
		_crams =["O_at_phalanx_35AI","B_at_phalanx_35AI"];
		if ((typeOf _defense) in _crams) then {
			_defense setMass 200000;
			_defense setCenterOfMass [0,-1,0];
		};

		//DATALINK
		_defense setVehicleRadar 1; //0 - automatic, 1 - forced on, 2 - forced off -- auto means radar only on when in combat
		_defense setVehicleReportRemoteTargets true;
		_defense setVehicleReceiveRemoteTargets true;
		_defense setVehicleReportOwnPosition true;

		_defense call CTI_CO_FNC_UnitCreated;

		//--- ZEUS Curator Editable
		if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_defense], true]};

		_defense
	};
};

