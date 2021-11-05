/* Description: Creates Defenses. */
Private ["_buildings","_defense","_direction","_isAIQuery","_isArtillery","_manned","_position","_side","_sideID","_type","_area","_availweapons"];
_type = _this select 0;
_side = _this select 1;
_position = _this select 2;
_direction = _this select 3;
_manned = _this select 4;
_isAIQuery = _this select 5;
_manRange = if (count _this > 6) then {_this select 6} else {missionNamespace getVariable "CTI_C_BASE_DEFENSE_MANNING_RANGE"};
_sideID = (_side) Call CTI_CO_FNC_GetSideID;

_area = [_position,((_side) Call CTI_CO_FNC_GetSideLogic) getVariable "CTI_basearea"] Call CTI_CO_FNC_GetClosestEntity4; hintsilent format ["%1",_area];
_availweapons = _area getVariable "weapons";

_defense = createVehicle [_type, _position, [], 0, "NONE"];
_defense enableDynamicSimulation true;
_defense setDir _direction;
_defense setPos _position;
_defense setVariable ["side" ,_side];
["INFORMATION", Format ["Construction_StationaryDefense.sqf: [%1] Defense [%2] has been constructed.", str _side, _type]] Call CTI_CO_FNC_LogContent;

//--- If it's a minefield, we exit the script while spawning it.
if (_type == 'Sign_Danger') exitWith {
	
	Private ["_c","_h","_mine","_mineType","_toWorld"];
   _mineType = if (_side == west) then {"CUP_Mine"} else {"CUP_MineE"};
	_h = -4;
	_c = 0;
	for [{_z=0;}, {_z<9}, {_z=_z+1;}] do{
		_array = [((_defense worldToModel (getPos _defense)) select 0) - 16 +_c,((_defense worldToModel (getPos _defense)) select 1) + _h];
		_toWorld = _defense modelToWorld _array;
		_toWorld set[2,0];
		_mine = createMine [_mineType, _toWorld,[], 0];
		mines set [count mines, [_mine, time]];

		_c = _c + 4;
	};

	_h = 0;
	_c = 2;
	for [{_z=0;}, {_z<8}, {_z=_z+1;}] do{
		_array = [((_defense worldToModel (getPos _defense)) select 0) - 16 +_c,((_defense worldToModel (getPos _defense)) select 1) + _h];
		_toWorld = _defense modelToWorld _array;
		_toWorld set[2,0];
		_mine = createMine [_mineType, _toWorld,[], 0];
		mines set [count mines, [_mine, time]];
		_c = _c + 4;
	};

	_h = 4;
	_c = 0;
	for [{_z=0;}, {_z<9}, {_z=_z+1;}] do{
		_array = [((_defense worldToModel (getPos _defense)) select 0) - 16 +_c,((_defense worldToModel (getPos _defense)) select 1) + _h];
		_toWorld = _defense modelToWorld _array;
		_toWorld set[2,0];
		_mine = createMine [_mineType, _toWorld,[], 0];
		mines set [count mines, [_mine, time]];
		_c = _c + 4;
	};
	deleteVehicle _defense;
};

_defense setVariable ["CTI_defense", true]; //--- This is one of our defenses.

Call Compile Format ["_defense addEventHandler ['Killed',{[_this select 0,_this select 1,%1] Spawn CTI_CO_FNC_OnUnitKilled}]",_sideID];

if (_defense emptyPositions "gunner" > 0 && (((missionNamespace getVariable "CTI_C_BASE_DEFENSE_MAX_AI") > 0) || _isAIQuery)) then {
	Private ["_alives","_check","_closest","_team"];
	_team = _area getVariable "DefenseTeam";

	if (isNil '_team') then {
        _team = createGroup [_side, true];
        _area setVariable ["DefenseTeam", _team];
    }else{
        if(side _team != _side) then{
            _team = createGroup [_side, true];
        };
        if((count units _team) > 10) then {
            _team = createGroup [_side, true];
        };
        _area setVariable ["DefenseTeam", _team];
    };
	emptyQueu pushBack _defense;
	[_defense] Spawn CTI_SE_FNC_HandleEmptyVehicle;

	if((typeOf _defense) in CTI_C_ADV_AIR_DEFENCE) then{
	    createVehicleCrew _defense;
            [_team, 2000, getPosATL _defense] spawn CTI_CO_FNC_RevealArea;
	    if(_side == east) then {
	        _defense addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
	    };
	    if(_side == west) then {
            _defense addeventhandler ["fired", {[_this] spawn {
            		_objectArray = _this select 0;
            		(_objectArray select 0) setvehicleammo 0;
            		sleep CTI_CENTURION_RELOAD_TIME;
            		(_objectArray select 0) setvehicleammo 1;
            	};
            }];
	    };
	};

	if (_manned) then {
        _alives = (units _team) Call CTI_CO_FNC_GetLiveUnits;
        if (count _alives < _availweapons || _isAIQuery) then {
            _buildings = (_side) Call CTI_CO_FNC_GetSideStructures;
            _closest = ['BARRACKSTYPE',_buildings,_manRange,_side,_defense] Call CTI_CO_FNC_BuildingInRange;

            //--- Manning Defenses.
            if (alive _closest) then { [_defense,_side,_team,_closest] spawn CTI_SE_FNC_HandleDefense; };
        };
	};
};

/* Are we dealing with an artillery unit ? */
_isArtillery = [_type,_side] Call CTI_CO_FNC_IsArtillery;
if (_isArtillery != -1) then {[_defense,_isArtillery,_side] Call CTI_CO_FNC_EquipArtillery};

_defense