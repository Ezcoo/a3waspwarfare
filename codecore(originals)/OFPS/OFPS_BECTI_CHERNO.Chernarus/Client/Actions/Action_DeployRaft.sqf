Private ["_target", "_caller", "_model", "_price","_veh","_funds"];

_target=(_this select 0);
_caller=(_this select 1);
_model = (_this select 3) select 0;
_price =(_this select 3) select 1;
_veh = (_this select 3) select 2;
_funds = [group _caller, CTI_P_SideJoined] call CTI_CO_FNC_GetFunds;
//systemchat format ["RAFT: %1 | %2 | %3 | %4 | %5 | %6",_target, _caller, _model, _price, _veh, _funds ];
if (typeName _model == "ARRAY") then {
	_model=selectRandom _model;
};

if (_funds > _price) then {
	[group _caller, - _price] call CTI_CO_FNC_ChangeFunds;
	_position = [getPos _caller, 1, 3, 1] call CTI_CO_FNC_GetRandomPosition;
	_position = [_position, 3, true] call CTI_CO_FNC_GetEmptyPosition;
	_direction =[_position, _caller] call CTI_CO_FNC_GetDirTo;
	//systemchat format ["Create: %1 | %2 | %3 ",_model, _position, _direction ];
	_vehicle= [_model, _position, _direction, CTI_P_SideJoined, False, false, false] call CTI_CO_FNC_CreateVehicle;
	sleep 1;
	if (_veh) then { 
		_caller action ["Eject", vehicle _caller];
		sleep 1;
		_caller moveindriver _vehicle;
	};
};