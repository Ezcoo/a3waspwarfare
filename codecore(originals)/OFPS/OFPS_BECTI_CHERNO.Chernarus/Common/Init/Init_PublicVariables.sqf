//--- PVF Are store within the mission namespace

with missionNamespace do {
	//--- Handle Spawn Damage
	CTI_PVF_CO_HandleSpawnDamage = {
		_EHkilledIdx = _this addEventHandler ["HandleDamage", {false}];
		sleep 10;
		_this removeEventHandler ["HandleDamage", _EHkilledIdx];
	};
	//--- Handle the tires damages 
	CTI_PVF_CO_AddVehicleHandleTiresDamages = {
		_this addEventHandler ["HandleDamage", {_this call CTI_CO_FNC_EXT_HandleTiresDamages}];
	};
	//--- Handle the fuel consumption 
	CTI_PVF_CO_AdvancedFuelConsumption = {
		_vehicle = _this;
		while {alive _vehicle} do {
			_tick = 30;
			if (isengineon _vehicle) then {	
				_rate = CTI_VEHICLES_FUEL_CONSUMPTION_ALL;
				if (_vehicle isKindOf "Tank") then {_rate = CTI_VEHICLES_FUEL_CONSUMPTION_TANKS;};
				if (_vehicle isKindOf "Helicopter") then {_rate = CTI_VEHICLES_FUEL_CONSUMPTION_HELIS;};
				if (_vehicle isKindOf "Plane") then {_rate = CTI_VEHICLES_FUEL_CONSUMPTION_PLANES;};
				if (_vehicle call CTI_CO_FNC_IsVehicleUAV) then {_rate = CTI_VEHICLES_FUEL_CONSUMPTION_UAV;};
				if (_vehicle isKindOf "Ship") then {_rate = CTI_VEHICLES_FUEL_CONSUMPTION_SHIPS;};
				if !(isNil {_vehicle getVariable "cti_mhq_fuel"}) then {_rate = CTI_VEHICLES_FUEL_CONSUMPTION_MHQ;};
				//if (_vehicle isKindOf "BADDASSMOTHER") then {_rate = CTI_VEHICLES_FUEL_CONSUMPTION_SPECIAL;};
				//increase consumption when loaded
				_loadMultiplier = 0.00005;
				//more fuel consumed while fast
				_tooFastRate = 0.00015;
				//less fuel consumed while slow
				_tooSlowRate = 0.00005;
				//calculate rate
				_crew = count( crew _vehicle);
				_load = _crew * _loadMultiplier;
				_speed = speed _vehicle;
				_speedMult = 0;
				if(_speed < 50 ) then { _speedMult = _tooSlowRate; };
				if(_speed > 75 ) then { _speedMult = _tooFastRate; };
				_realLoad = _rate + _load + _speedMult;
				//Debug
				//hint format["Vehicle : %1 \n Crew : %2 \n Load : %3 \n Rate : %4 \n Speedload : %5 \n Realload : %6",_vehicle,_crew,_load,_rate,_speedMult,_realLoad];
				//diag_log format ["FUEL DATA: _rate: %1  - _loadMultiplier: %2 - _tooFastRate: %3 - _tooSlowRate: %4 - _tick: %5", _rate,_loadMultiplier,_tooFastRate,_tooSlowRate,_tick ];
				_vehicle setFuel ( (fuel _vehicle) - _realLoad);
			};
			sleep _tick;
		};
	};
	CTI_PVF_CO_RequestParadropVehicle = {
		_this spawn CTI_CO_FNC_ParadropVehicle;
	};
	
	CTI_PVF_CO_RequestArtillerySupport = {
		_supporter = _this select 0;
		_position = _this select 1;
		_supporter doArtilleryFire [_position, (getArtilleryAmmo [vehicle _supporter]) select 0, 2]; // Fire two rounds at the target
	};
	
	CTI_PVF_CO_RequestCASSupport = {
		_requester = _this select 0;
		_target = _this select 1; // Must be an object
		_side = _this select 2;
		
		if !(_requester kbHasTopic CTI_HQTopicSideVanilla) then {
			_requester kbAddTopic [CTI_HQTopicSideVanilla, "Common\Config\Common\Radios\VanillaRadio.bikb"];
		};
		
		_namesound =  getText (configFile >> "CfgVehicles" >> typeOf _target >> "nameSound");
		_nameString  = format ["str_a3_namesound_%1", _nameSound];
		_grid = mapGridPosition _requester;
		_gridSpeech = [_requester] call CTI_CO_FNC_GetGridSpeech;
		_distance = [[75, 100, 200, 300, 400, 500, 600, 700, 800, 1000, 1500, 2000, 2500], _requester distance _target] call BIS_fnc_nearestNum;
		_distSpeech = format ["dist%1", _distance];
		
		
		_dir = _requester getDir _target;
		_dir = str ([_dir, 15] call BIS_fnc_roundDir);
		_compassDirArr = _dir splitString "";
		// Make the bearing be 3 digits
		while {count _compassDirArr < 3} do {
			_compassDirArr = ["0"] + _compassDirArr;
		};
		_compassDir = (_compassDirArr select 0) + (_compassDirArr select 1) + (_compassDirArr select 2);
		_compassSpeech = format ["bearing%1", _compassDir];
		_compassText = format ["str_a3_arguments_direction_compass2_%1_0", _dir];
		
		_supportRequest = "SupportRequestRGCASBombing";
		_supportRequestText = "STR_A3_Requesting_immediate_airstrike_at_the_transmitted_coordinates__Over_";
		["fire-support-request", [_requester, _nameString, _grid, _distance, _compassText, _supportRequestText]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
		_requester kbTell [_side call bis_fnc_moduleHQ, CTI_HQTopicSideVanilla, "RequestFireSupport",["Opening",{},localize _nameString, ["EnemyDetected", _namesound]], ["Grid",{},_grid,_gridSpeech], ["Distance",{}, str _distance,[_distSpeech]], ["Bearing",{}, localize _compassText,[_compassSpeech]], ["Request",{}, localize _supportRequestText,[_supportRequest]], "GLOBAL"];
		
		_timeOut = time + 40;
		waitUntil {_requester kbWasSaid [_side call bis_fnc_moduleHQ, CTI_HQTopicSideVanilla, "RequestFireSupport", 10] || !alive _requester || time > _timeOut};
		_requester setVariable ["cti_cas_requested", true, 2];
		sleep 10;
	};
	
};