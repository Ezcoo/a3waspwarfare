

if (!isserver) exitWith {};

_tgt = _this select 0;
_battery = if (count _this > 1) then {_this select 1} else {Art1};
_NoRnds = if (count _this > 2) then {_this select 2} else {1};
_RndType = if (count _this > 3) then {_this select 3} else {"HE"};
_Dispersion = if (count _this > 4) then {_this select 4} else {100};
_adjmult = if (count _this > 5) then {_this select 5} else {20};
_skill = if (count _this > 6) then {_this select 6} else {5};
//_friendly = if (count _this > 7) then {_this select 7} else {"SoldierEB"};
_friendly = _this select 7;
_impact = _this select 8;
_modulename = _this select 9;
_min_safe_distance = 50;
//hintsilent format ["Impact:%1",_impact];
_modulename setvariable ["busy",true,false];
//hintsilent format ["Tgt:%1\nNumRnds:%2\nRT:%3\nTime:%4",_tgt,_NoRnds,_RndType,time];
sleep 2;
switch (true) do
{
	case (_RndType == "HE") 		: 	
	{
		_modulename setvariable ["HEcount",(_modulename getvariable "HEcount")- _NoRnds,false]; 	
	};
	case (_RndType == "ILLUM") 		: 	
	{
		_modulename setvariable ["ILLUMcount",(_modulename getvariable "ILLUMcount")- _NoRnds,false]; 	
	};
	case (_RndType == "WP") 		: 	
	{
		_modulename setvariable ["WPcount",(_modulename getvariable "WPcount")- _NoRnds,false]; 	
	};
	case (_RndType == "SMOKE") 		: 	
	{
		_modulename setvariable ["SMOKEcount",(_modulename getvariable "SMOKEcount")- _NoRnds,false]; 	
	};
	case (_RndType == "SADARM") 		: 	
	{
		_modulename setvariable ["SADARMcount",(_modulename getvariable "SADARMcount")- _NoRnds,false]; 	
	};
};


if (_RndType == "HE" or _RndType == "SADARM") then
{
	_adjmax = 300;
	_adjmin = -300;
	_error = (10-_skill)*10;
	
	_range = _tgt distance _battery;
	_min_safe_distance = _range/50;
	if (_min_safe_distance < 50) then
	{
		_min_safe_distance = 50;
	};
	//hint format ["Safe:%1",_min_safe_distance];
	sleep random 3;
	//if (isNull nearestObject [_impact,_friendly]) then	
	if  (_friendly countside (_impact nearEntities [["man","ship","landvehicle"],_min_safe_distance] ) == 0 ) then
	{
		[_battery, _Dispersion] call BIS_ARTY_F_SetDispersion;
		[_battery, _impact, ["IMMEDIATE", _RndType, 3, _NoRnds]] call BIS_ARTY_F_ExecuteTemplateMission;
		"Blakes_Fall_of_shot" setmarkerpos _impact;
		_txt = format ["%1:%2",_rndType,typeof _tgt];
		"Blakes_Fall_of_shot" setMarkerText _txt;
	};

}
else
{
	if (_RndType == "ILLUM") then
	{
		_impact = getposASL _tgt;
	}
	else
	{
		_impact = _tgt;
	};
	[_battery, _Dispersion] call BIS_ARTY_F_SetDispersion;
	[_battery, _impact, ["IMMEDIATE", _RndType, 8, _NoRnds]] call BIS_ARTY_F_ExecuteTemplateMission;
	"Blakes_Fall_of_shot" setmarkerpos _impact;
	_txt = format ["%1:%2",_rndType,_tgt];
	"Blakes_Fall_of_shot" setMarkerText _txt;
};
_modulename setvariable ["busy",false,false];