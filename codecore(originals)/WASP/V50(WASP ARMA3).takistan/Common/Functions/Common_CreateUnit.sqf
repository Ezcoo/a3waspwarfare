/*
	Create a unit.
	 Parameters:
		- Classname
		- Group
		- Position
		- Side ID
		- {Global Init}
		- {PLacement}
*/

Private ["_get", "_global", "_position", "_side", "_skill", "_special", "_group", "_type", "_unit"];

_type = _this select 0;
_group = _this select 1;
_position = _this select 2;
_side = _this select 3;
_global = if (count _this > 4) then {_this select 4} else {true};
_special = if (count _this > 5) then {_this select 5} else {"FORM"};

if(isNil '_group')then{ _group = createGroup [_side, true]; };

_unit = _group createUnit [_type, _position, [], 5, _special];

if(side _unit == east && !(_unit hasWeapon "NVGoggles")) then { _unit addWeapon "NVGoggles"; };

if (typeName _side == "SIDE") then {_side = (_side) Call WFBE_CO_FNC_GetSideID;};

//--Check the need for unit re-equip--
for "_x" from 0 to ((count WFBE_C_INFANTRY_TO_REQUIP) - 1) do {
	_currentElement = WFBE_C_INFANTRY_TO_REQUIP select _x;	
	if ((typeOf _unit) in _currentElement) exitWith{(_unit) call WFBE_CO_FNC_Requip_AI;};	
};

if (_global) then {
	if (_side != WFBE_DEFENDER_ID || WFBE_ISTHREEWAY) then {
		if ((missionNamespace getVariable "WFBE_C_UNITS_TRACK_INFANTRY") > 0) then {
			[[[_unit,_side], "Common\Init\Init_Unit.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;
		} else {
			if (isPlayer leader _group) then {[_unit, _side] ExecVM 'Common\Init\Init_Unit.sqf'};
		};
	};
};

_unit addEventHandler ['Killed', Format ['[_this select 0,_this select 1,%1] Spawn WFBE_CO_FNC_OnUnitKilled', _side]];

["INFORMATION", Format ["Common_CreateUnit.sqf: [%1] Unit [%2] was created at [%3] and has been assigned to team [%4]", _side Call WFBE_CO_FNC_GetSideFromID, _type, _position, _group]] Call WFBE_CO_FNC_LogContent;

_unit