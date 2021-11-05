private ["_classes", "_conditions", "_headers", "_placements", "_prices", "_respawnBPos", "_side", "_specials", "_structures", "_times"];

_side = _this select 0;
_u = _this select 1;

/*_headers = _this select 1;
_classes = _this select 2;
_prices = _this select 3;
_times = _this select 4;
_placements = _this select 5;
_specials = _this select 6;
_conditions = _this select 7;
_respawnBPos = _this select 8;*/

_factoryclass = [];
_structures = [];
for '_i' from 0 to (count _u) -1 do {
	_f = _u select _i;
	_head = _f select 0;
	_classes = _f select 1;
	_prices = _f select 2;
	_times = _f select 3;
	_maxcount = _f select 4;
	_placements = _f select 5;
	_specials = _f select 6;
	_conditions = _f select 7;
	_respawnBPos = _f select 8;
	
	_stored = [
		_head,
		_classes,
		_prices,
		_times,
		_maxcount,
		_placements,
		_specials,
		_conditions,
		_respawnBPos
	];

	missionNamespace setVariable [format ["CTI_%1_%2", _side, _head select 0], _stored];
	_structures pushBack format ["CTI_%1_%2", _side, _head select 0];
	_factoryclass pushBack (_classes select 0);
	missionNamespace setVariable [format ["CTI_%1_%2", _side, _classes select 0], _stored];
	
	if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Base\Set_Structures.sqf", format ["[%1] Set Structure [%2] using variable name [%3]", _side, _classes select 0, format["CTI_%1_%2", _side, _head select 0]]] call CTI_CO_FNC_Log };
};
missionNamespace setVariable [format ["CTI_%1_FACTCLASS", _side], _factoryclass];
missionNamespace setVariable [format ["CTI_%1_STRUCTURES", _side], _structures];