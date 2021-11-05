/*
  # HEADER #
	Script: 		Common\Functions\Common_GetGridSpeech.sqf
	Alias:			CTI_CO_FNC_GetGridSpeech
	Description:	Converts a grid position into an array that can be used by kbTell conversations
	Author: 		JEDMario
	Creation Date:	20-03-2018
	Revision Date:	20-03-2018
	
  # PARAMETERS #
    0	[String/Number/Object/Array]: Position/Grid
	1	[Integer]: Number of pauses between numbers (Each pause is 0.1 seconds)
	
  # RETURNED VALUE #
	[Array]: Array of strings
	
  # SYNTAX #
	[GRID] call CTI_CO_FNC_GetGridSpeech
	
  # EXAMPLE #
	[player] call CTI_CO_FNC_GetGridSpeech
*/

params [["_position", nil, [[], objNull, "", 0], [2,3]], ["_pauses", 0, [0]]];
if (_position isEqualType "") then {
	// Make sure the string consists only of numbers
	if !({_x call BIS_fnc_parseNumber == -1} count (_position splitString "") == 0) exitWith {[_x, "isEqualType", 0] call BIS_fnc_errorParamsType};
};

if (_position isEqualTypeAny [[], objNull]) then {
	_position = mapGridPosition _position;
};

if (_position isEqualType 0) then {
	_position = str _position;
};

private _gridSpeech = [];
private _numberArray = _position splitString "";
private _halfCount = (count _numberArray) / 2;
private _emphasis = 2; // This gets set to 3 to emphasize a number halfway through and at the ends
{
	if (_forEachIndex == 0) then {
		_gridSpeech pushBack format ["grid_%1", missionNamespace getVariable format ["CTI_GRID_%1", _x]];
	} else {
		if ((_forEachIndex + 1) % _halfCount == 0) then {
			_emphasis = 3;
		} else {
			_emphasis = 2;
		};
		_gridSpeech pushBack format ["grid_%1_%2", missionNamespace getVariable format ["CTI_GRID_%1", _x], _emphasis];
	};
	for [{_i=0}, {_i<_pauses}, {_i=_i+1}] do {
		_gridSpeech pushBack "pause";
	};
} forEach _numberArray;

_gridSpeech