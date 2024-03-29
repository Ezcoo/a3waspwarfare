private["_side", "_template", "_buildings", "_status", "_barrack", "_light", "_heavy", "_air",
"_destination", "_orderComplete", "_end", "_inf_group"];

_side = _this select 0;
_template = _this select 1;
_barrack = _this select 2;
_action_type = _this select 3;

_destination = objNull;
_orderComplete = true;
_end = false;
_alives = [];
_inf_group = createGroup [_side, true];
if(count _alives == 0) then{
	{
		_buyFrom = _barrack;
		if !(isNull _buyFrom) then {
			_IDS = [];
			[_IDS,_buyFrom,_x,_side,_inf_group] call EZC_fnc_Functions_Server_ResBuyUnit;
		};
	} forEach _template;
};

while{!_end}do{

	_alives = (units _inf_group) Call EZC_fnc_Functions_Common_GetLiveUnits;
	if(count _alives > 0)then{
		_end = false;
	} else {
		_end = true;
	};

	if(_action_type == "moveto")then{
		_WestBaseStructures = missionNamespace getVariable Format["cti_%1STRUCTURES",west];
		_EastBaseStructures = missionNamespace getVariable Format["cti_%1STRUCTURES",east];
		_WestMHQ = (west) Call EZC_fnc_Functions_Common_GetSideHQ;
		_EastMHQ = (east) Call EZC_fnc_Functions_Common_GetSideHQ;
		_buildings = (_WestBaseStructures) + (_EastBaseStructures) + [_EastMHQ,_WestMHQ];
		_near = [_barrack, _buildings] Call EZC_fnc_Functions_Common_SortByDistance;
		_target = _near select 0;
		[_inf_group, true, [[_target, 'SAD', 100, 60, "", []]]] Call EZC_fnc_AI_AI_WPAdd;
	}else{
		if (_orderComplete) then {
			_orderComplete = false;
			_destination = [leader _inf_group, [_barrack]] Call EZC_fnc_Functions_Common_GetClosestEntity;
			[_inf_group,_destination,400] Call EZC_fnc_AI_AI_Patrol;
		};
	};
	sleep 180;
};

