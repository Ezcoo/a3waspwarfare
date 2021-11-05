private ["_vehicle","_id","_status","_radioid","_radiotunes"];
_vehicle = _this select 0;
_caller = _this select 1;
_id = _this select 2;
//args
_status = _this select 3 select 0;
_radioid = _this select 3 select 1;
_radiotunes = "";
_newstatus = _status;
if (_radioid isEqualTo 1) then {
	//radio for channel 1
	_radiotunes = CTI_SOUND_valkyries;
};
if (_radioid isEqualTo 2) then {
	//radio for channel 2
	_radiotunes = CTI_SOUND_radiodanger;
};
if (_radioid isEqualTo 3) then {
	//radio for channel 3
	_radiotunes = CTI_SOUND_theme_west_1_long;
};
if (_radioid isEqualTo 4) then {
	//radio for channel 4
	_radiotunes = CTI_SOUND_theme_east_1_long;
};

_vehicle removeAction _id;
_vehicle setVariable ["radio",[_status,_radioid]];
_radio =  "ModuleEmpty_F" createVehicle position _vehicle; //Land_HelipadEmpty_FLand_FMradio_F
if (_status isEqualTo 0) then {
	{
		if (_x isKindOf "ModuleEmpty_F") then {
		  detach _x;
		  _x setDamage 1;
		  deleteVehicle _x;
		};
	} forEach attachedObjects _vehicle;
	//_radio setDamage 1;
	//deleteVehicle _radio;
	hint "Radio Off";
	sleep 1;
	//flip status
	_newstatus = 1;
	_texton = format["Radio on (#%1)", _radioid];
	_vehicle addAction [_texton,"Client\Functions\Client_VehicleRadio.sqf",[_newstatus,_radioid],0,false,true,"","driver _target isEqualTo player"];
	
};
if(_status isEqualTo 1) then {
	hint "Radio On";
	_newstatus = 0;
	_textoff = format["Radio off (#%1)", _radioid];
	_action = _vehicle addaction [_textoff,"Client\Functions\Client_VehicleRadio.sqf",[_newstatus,_radioid],0,false,true,"","driver _target isEqualTo player"];
	_radio attachTo [_vehicle, [0,3.5,1]];
	sleep 1;
	nul = [_radio,_radiotunes,250] call CTI_CO_FNC_Say3D;
	_radio setDamage 0;
	_track = time + 120;//240fulllength
	while {true} do {
		if(!alive _vehicle || time >= _track) exitWith {};
	};
	detach _radio;
	_radio setDamage 1;
	deleteVehicle _radio;
	_vehicle removeAction _action;
	if((damage _radio) isEqualTo 1 && alive _vehicle) then {
		_newstatus = 1;
		_texton = format["Radio on (#%1)", _radioid];
		_vehicle addAction [_texton,"Client\Functions\Client_VehicleRadio.sqf",[_newstatus,_radioid],0,false,true,"","driver _target isEqualTo player"];
	};
};
_vehicle setVariable ["radio",[_newstatus,_radioid]];
	