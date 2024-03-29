/* Elements to sort etc ... */

_preformat = {
	Private ["_get","_output","_units"];
	_units = _this;
	_output = [];

	for '_i' from 0 to count(_units)-1 do {
		_get = missionNamespace getVariable (_units select _i);
		if !(isNil "_get") then {
			_output set [_i, _get select QUERYUNITLABEL];
		} else {
			_output set [_i, (_units select _i)];
		};
	};
	
	_output
};

_preformat_gear = {
	Private ["_content","_get","_output"];
	_content = _this select 0;
	_prefix = if (count _this > 1) then {_this select 1} else {""};
	_output = [];

	for '_i' from 0 to count(_content)-1 do {
		_get = missionNamespace getVariable Format ["%1%2",_prefix,(_content select _i)];
		if !(isNil "_get") then {
			_output set [_i, _get select 1];
		} else {
			_output set [_i, (_content select _i)];
		};
	};
	
	_output
};
//--- Sort upgrades.
_content = [+(missionNamespace getVariable "cti_C_UPGRADES_LABELS")] Call CIPHER_SortArrayIndex;
missionNamespace setVariable ["cti_C_UPGRADES_SORTED", _content select 1];