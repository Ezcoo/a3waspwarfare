Private["_add","_camp","_count","_friendlyCamps","_lives","_side","_sideID","_town"];

_town = _this Select 0;
_side = _this Select 1;
_lives = if (count _this > 2) then {_this select 2} else {false};

_sideID = _side Call EZC_fnc_Functions_Common_GetSideID;
_friendlyCamps = [];

{
	if ((_x getVariable "sideID") == _sideID) then {
		_add = true;
		if (_lives) then {if !(alive(_x getVariable "cti_camp_bunker")) then {_add = false}};
		if (_add) then {_friendlyCamps pushBack _x};
	};
} forEach (_town getVariable "camps");
_friendlyCamps