CTI_UI_Service_GetBaseDepots = {
	private ["_available", "_range", "_structures", "_unit"];
	_unit = _this select 0;
	_structures = _this select 1;
	_range = _this select 2;
	
	_available = [];
	{if (_x distance _unit <= _range) then {_available pushBack _x}} forEach _structures;
	
	_available
};

CTI_UI_Service_GetGroupMobileSupports = {
	private ["_available", "_type"];
	_type = _this;
	_available = [];
	{
		if !(isNil {_x getVariable "cti_spec"}) then {
			_spec = _x getVariable "cti_spec";
			if !(typeName _spec isEqualTo "ARRAY") then {_spec = [_spec]};
			if (_type in _spec && getPos _x select 2 < 5) then {_available pushBack _x};
		};
	} forEach units player;
	
	_available
};

CTI_UI_Service_RangeStill = {
	private ["_content", "_index", "_match", "_range", "_unit"];
	_unit = _this select 0;
	_content = _this select 1;
	_ranges = _this select 2;
	_index = _this select 3;
	
	_match = [];
	{
		_range = _ranges select _forEachIndex;
		_source = _x select 0;
		_current_index = _forEachIndex;
		
		{
			if !(isNil '_x') then {
				if (alive _x) then {
					if (_x distance _unit <= _range && getPos _x select 2 < 5 && getPos _unit select 2 < 5) then {_match = [_x, _source, _current_index]};
				};
			};
			
			if (count _match > 0) exitWith {};
		} forEach (_x select 1);
		if (count _match > 0) exitWith {};
	} forEach (_content select _index);
	_match
};

CTI_UI_Service_Complete = {
	params [
		["_hintText", "",["", (text "")]],
		["_notificationText", "",["", (text "")]],
		["_notification", [controlNull, controlNull], [[]], [2]],
		["_sleepTime",1,[0]]
	];
	if (_notificationText isEqualType "") then {_notificationText = parseText _notificationText};
	if (count str _hintText > 0) then {hint _hintText};
	_notification select 1 ctrlSetStructuredText _notificationText;
	sleep _sleepTime;
	_notification call CTI_CL_FNC_NotificationRemove;
};

CTI_UI_Service_NotificationUpdate = { 
	params [
		["_notificationControl", controlNull],
		["_label", "", [""]],
		["_serviceLabel", "", [""]],
		["_timeRemaining", -1, ["",0]]
	];
	private _modifier = "ing"; 
	//if (toLower _serviceLabel isEqualTo "sell") then {_modifier = ""};
	_notificationControl ctrlSetStructuredText parseText format["%1s | %2%3 <t color='#ccffaf'>%4</t>", _timeRemaining, _serviceLabel, _modifier, _label];
};

CTI_UI_Service_ProcessRepair = {
	private ["_content", "_index", "_label", "_ranges", "_start_at", "_times", "_unit", "_var_classname", "_var_name", "_serviceLabel", "_notification", "_hintText", "_notificationText"];
	_unit = _this select 0;
	_content = _this select 1;
	_ranges = _this select 2;
	_times = _this select 3;
	_index = _this select 4;
	
	_var_name = if (isNil {_unit getVariable "cti_customid"}) then {typeOf _unit} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _unit getVariable "cti_customid"]};
	_var_classname = missionNamespace getVariable _var_name;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};
	
	hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Repairing a <t color='#ccffaf'>%1</t>... Please stand by...", _label];
	
	_start_at = time;
	
	_repair = false;
	_serviceLabel = "Repair";
	disableSerialization;
	_notification =  ["service",[_label,_serviceLabel, -1]] call CTI_CL_FNC_NotificationHandle;
	while {true} do {
		_ranged = [_unit, _content, _ranges, _index] call CTI_UI_Service_RangeStill;
		if (count _ranged isEqualTo 0 || !alive _unit) exitWith {};
		
		_operative_index = _ranged select 2;
		_service_time = _times select _operative_index;
		
		[_notification select 1, _label, _serviceLabel, ceil (_service_time - (time - _start_at))]call CTI_UI_Service_NotificationUpdate;
		
		if (time - _start_at > _service_time) exitWith {_repair = true};
		
		sleep 1;
	};
	
	if (_repair) then {
		_unit setDammage 0;
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />A <t color='#ccffaf'>%1</t> has been repaired!", _label];
		_notificationText = parseText format["%1ed <t color='#ccffaf'>%2</t> ", _serviceLabel, _label];
	} else {
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Couldn't finish the repairs on a <t color='#ccffaf'>%1</t>...", _label];
		_notificationText = parseText format["<t color='#ccffaf'>%1</t> could not be %2ed", _label, toLower _serviceLabel];
	};
	
	[_hintText, _notificationText, _notification] call CTI_UI_Service_Complete;
};

/*CTI_UI_Service_ProcessRearm = {
	private ["_content", "_index", "_label", "_ranges", "_start_at", "_times", "_unit", "_var_classname", "_var_name","_notification", "_serviceLabel", "_hintText", "_notificationText"];
	_unit = _this select 0;
	_content = _this select 1;
	_ranges = _this select 2;
	_times = _this select 3;
	_index = _this select 4;
	
	_var_name = if (isNil {_unit getVariable "cti_customid"}) then {typeOf _unit} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _unit getVariable "cti_customid"]};
	_var_classname = missionNamespace getVariable _var_name;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};
	if (_unit isKindOf "Air") then {
		{
			_times set [_forEachIndex,_x * CTI_AIR_REARM_RATIO];
		} forEach _times;
	};
	if (_unit isKindOf "B_MBT_01_arty_F" || _unit isKindOf "B_MBT_01_mlrs_F" || _unit isKindOf "rhs_9k79" || _unit isKindOf "rhsusf_m109d_usarmy" || _unit isKindOf "rhsusf_m109_usarmy" || _unit isKindOf  "O_MBT_02_arty_F" || _unit isKindOf "CUP_B_M270_HE_USMC" || _unit isKindOf "CUP_B_M270_DPICM_USA" || _unit isKindOf "CUP_B_M270_DPICM_USMC" || _unit isKindOf "CUP_B_M270_HE_USA" || _unit isKindOf  "CUP_O_BM21_RU" || _unit isKindOf  "CUP_B_M270_HE_USMC" || _unit isKindOf  "CUP_B_M252_USMC" || _unit isKindOf  "O_T_MBT_02_arty_ghex_F" || _unit isKindOf  "OFPS_SCORCHER" || _unit isKindOf  "OFPS_SANDSTORM" || _unit isKindOf  "CUP_B_M270_DPICM_USMC" || _unit isKindOf  "Meaty_Scorcher_Sn" || _unit isKindOf  "Meaty_Sandstorm_Sn" || _unit isKindOf "sfp_fh77") then {
		{
			_times set [_forEachIndex,_x * CTI_ART_REARM_RATIO];
		} forEach _times;
	};
	if (_unit isKindOf "B_Mortar_01_F" || _unit isKindOf "O_Mortar_01_F" || _unit isKindOf "CUP_B_M1129_MC_MK19_Desert_Slat" || _unit isKindOf "CUP_B_M1129_MC_MK19_Woodland_Slat" || _unit isKindOf "CUP_B_M1130_CV_M2_Desert_Slat" || _unit isKindOf "CUP_B_M1130_CV_M2_Woodland_Slat" || _unit isKindOf  "CUP_B_M252_USMC" || _unit isKindOf  "CUP_B_2b14_82mm_CDF" || _unit isKindOf  "Podnos 2B14" ) then {
		{
			_times set [_forEachIndex,_x * CTI_MORTAR_REARM_RATIO];
		} forEach _times;
	};
	hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Rearming a <t color='#ccffaf'>%1</t>... Please stand by...", _label];
	// not all air vehicles are rearmed properly if ammo is set to 0 before rearm. see Issue #352
	if (_unit isKindOf "Air") then { //add any classname types that have problems rearming all ammo.
	// do nothing
	} else {
			_unit setVehicleAmmoDef 0;
	};
	// end of not all air vehicles are rearmed properly if ammo is set to 0 before rearm. see Issue #352
	_start_at = time;
	
	_rearm = false;
	_serviceLabel = "Rearm";
	disableSerialization;
	_notification =  ["service",[_label,_serviceLabel, -1]] call CTI_CL_FNC_NotificationHandle;
	while {true} do {
		_ranged = [_unit, _content, _ranges, _index] call CTI_UI_Service_RangeStill;
		if (count _ranged isEqualTo 0 || !alive _unit) exitWith {};
		
		_operative_index = _ranged select 2;
		_service_time = _times select _operative_index;
		if (isNil "_service_time") then { //-- Rare bug where _service_time isnt defined when rearming a vehicle. if this occurs, we just instantly rearm vehicle. 
		    _service_time = 0;
		};
		[_notification select 1, _label, _serviceLabel, ceil (_service_time - (time - _start_at))]call CTI_UI_Service_NotificationUpdate;
		
		if (time - _start_at > _service_time) exitWith {_rearm = true};
		
		sleep 1;
	};
	
	if (_rearm) then {
		[_unit, CTI_P_SideJoined] call CTI_CO_FNC_RearmVehicle;
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />A <t color='#ccffaf'>%1</t> has been rearmed!", _label];
		_notificationText = parseText format["%1ed <t color='#ccffaf'>%2</t> ", _serviceLabel, _label];
	} else {
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Couldn't finish the rearming of a <t color='#ccffaf'>%1</t>...", _label];
		_notificationText = parseText format["<t color='#ccffaf'>%1</t> could not be %2ed", _label, toLower _serviceLabel];
	};
	
	[_hintText, _notificationText, _notification] call CTI_UI_Service_Complete;
};*/
CTI_UI_Service_ProcessRearm = {
	private ["_content", "_index", "_label", "_ranges", "_start_at", "_times", "_unit", "_var_classname", "_var_name","_notification", "_serviceLabel", "_hintText", "_notificationText"];
	_unit = _this select 0;
	_content = _this select 1;
	_ranges = _this select 2;
	_times = _this select 3;
	_index = _this select 4;

	_var_name = if (isNil {_unit getVariable "cti_customid"}) then {typeOf _unit} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _unit getVariable "cti_customid"]};
	_var_classname = missionNamespace getVariable _var_name;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};	
	
	hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Rearming a <t color='#ccffaf'>%1</t>... Please stand by...", _label];
	_start_at = time;
	_rearm = false;
	_serviceLabel = "Rearm";
	disableSerialization;
	_notification =  ["service",[_label,_serviceLabel, -1]] call CTI_CL_FNC_NotificationHandle;
	while {true} do {
		_ranged = [_unit, _content, _ranges, _index] call CTI_UI_Service_RangeStill;
		if (count _ranged isEqualTo 0 || !alive _unit) exitWith {};
		
		_service_time = [_unit] call CTI_UI_Service_GetRearmTime;
		if (isNil "_service_time") then { //-- Rare bug where _service_time isnt defined when rearming a vehicle. if this occurs, we just instantly rearm vehicle. 
		    _service_time = 0;
		};
		[_notification select 1, _label, _serviceLabel, ceil (_service_time - (time - _start_at))]call CTI_UI_Service_NotificationUpdate;
		
		if (time - _start_at > _service_time) exitWith {_rearm = true};
		
		sleep 1;
	};
	
	if (_rearm) then {
		//[_unit, CTI_P_SideJoined] call CTI_CO_FNC_RearmVehicle;
		(_unit) spawn CTI_UI_Service_RearmAll;
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />A <t color='#ccffaf'>%1</t> has been rearmed!", _label];
		_notificationText = parseText format["%1ed <t color='#ccffaf'>%2</t> ", _serviceLabel, _label];
	} else {
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Couldn't finish the rearming of a <t color='#ccffaf'>%1</t>...", _label];
		_notificationText = parseText format["<t color='#ccffaf'>%1</t> could not be %2ed", _label, toLower _serviceLabel];
	};
	
	[_hintText, _notificationText, _notification] call CTI_UI_Service_Complete;
};
CTI_UI_Service_RearmAll = {
	_unit = _this;

	_rearmpylons = (_unit) spawn CTI_UI_Service_rearmAllPylons;
	waitUntil {scriptDone _rearmpylons};
	_rearmturrets = (_unit) spawn CTI_UI_Service_rearmAllTurrets;
	waitUntil {scriptDone _rearmturrets};
	_rearmlvossera = (_unit) spawn CTI_UI_Service_rearmAlllvossera;
	waitUntil {scriptDone _rearmlvossera};

};
//Rearm all currently empty magazines
CTI_UI_Service_rearmAllPylons = {
	_unit = _this;
	_classname = typeOf _unit;
	_var_classname = missionNamespace getVariable _classname;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};

	_activePylonMags = GetPylonMagazines _unit;
	_magcount = count _activePylonMags;
	{
		_maxAmount = getNumber (configfile >> "CfgMagazines" >> _x >> "count");
		_unit SetAmmoOnPylon [_foreachIndex+1,_maxAmount];
	} forEach _activePylonMags;

};
//Rearm all currently empty turrets
CTI_UI_Service_rearmAllTurrets = {
	_unit = _this;
	_classname = typeOf _unit;
	_var_classname = missionNamespace getVariable _classname;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};

	_turretlist = (_unit) call CTI_UI_Service_getArms;
	_turretcount = count _turretlist;	
	{
		_selectedturret = _x select 0;
		_mags = _x select 1;
		_path = _x select 2;
		_magcount = count _mags;
		_turreti = _foreachIndex;
		{
			_magi = _foreachIndex;
			_mag_class = _x select 0;
			_mag_count = _x select 1;
			_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_mag_class];
			_ammoclassname = _mag_class;
			_ammoDisplayName = "";
			if !(isNil "_ammoclass") then {
				_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
				_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
			};
			_forcereinstall = false;
			_displayname = getText (configFile >> "CfgWeapons" >> _selectedturret >> "DisplayName");
			//systemChat format["Name: %1", _displayname];
			if (_displayname isEqualTo "Flares" || _displayname isEqualTo "Smoke Screen" || _displayname isEqualTo "Laser Marker") then {
				_forcereinstall = true;
			};
			_maxAmount = getNumber (configfile >> "CfgMagazines" >> _ammoclassname >> "count");	
			//Add the magazine
			if(_forcereinstall) then {
				{
					_mag_class = _x select 0;
					_unit removeMagazinesTurret [_mag_class, _path];
				} forEach _mags;
				_unit removeWeaponTurret [_selectedturret, _path];
				_unit addMagazineTurret [_ammoclassname, _path];
				_unit addWeaponTurret [_selectedturret, _path];

			} else {
				if (_mag_count < _maxAmount) then {
					_unit removeMagazineTurret [_ammoclassname, _path];
					_unit addMagazineTurret [_ammoclassname, _path];
				} else {
					//_unit addMagazineTurret [_ammoclassname, _path];
				};
			};
		}forEach _mags;
	} forEach _turretlist;
	
};
CTI_UI_Service_rearmAlllvossera = {
	_unit = _this;
	_classname = typeOf _unit;
	_var_classname = missionNamespace getVariable _classname;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};

	//get existing ammo
	_ammoleft = _unit getVariable "ammo_left";
	if (isNil "_ammoleft") then {_ammoleft = 0};
	_ammoright = _unit getVariable "ammo_right";
	if (isNil "_ammoright") then {_ammoright = 0};

	_type = "";
	_maxAmount = 0;
	_ammostat_price = 0;
	//add lvoss/era
	_upgrades = nil;
	_upgrade_lvoss = 0;
	_upgrade_era = 0;
	if (count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) > 0) then {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_VEHICLES_LVOSS isEqualTo 1) then {_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;};
		if (CTI_VEHICLES_ERA isEqualTo 1) then {_upgrade_era = _upgrades select CTI_UPGRADE_ERA;};
	};
	if (isNil "_upgrade_lvoss") then {_upgrade_lvoss = 0;};
	if (isNil "_upgrade_era") then {_upgrade_era = 0;};
	if (_unit isKindOf "Car") then {
		_type = "LVOSS";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_LVOSS_PRICE;
		if (_upgrade_lvoss > 0) then {
			switch (_upgrade_lvoss) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
			};
		};
	};
	if (_unit isKindOf "Tank") then {
		_type = "ERA";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_ERA_PRICE;
		if (_upgrade_era > 0) then {
			switch (_upgrade_era) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
				case 3: {
					_maxAmount = 3;
				};
				case 4: {
					_maxAmount = 4;
				};
			};
		};
	};
	_ammo_left_total = _maxAmount - _ammoleft;
	_ammo_right_total = _maxAmount - _ammoright;
	_ammo_total = _ammo_left_total + _ammo_right_total;

	_unit setVariable ["ammo_left", _maxAmount, true];
	_unit setVariable ["reloading_left", 0, true];
	_unit setVariable ["ammo_right", _maxAmount, true];
	_unit setVariable ["reloading_right", 0, true];

};

CTI_UI_Service_ProcessRefuel = {
	private ["_content", "_index", "_label", "_ranges", "_start_at", "_times", "_unit", "_var_classname", "_var_name", "_serviceLabel", "_notification", "_hintText", "_notificationText"];
	_unit = _this select 0;
	_content = _this select 1;
	_ranges = _this select 2;
	_times = _this select 3;
	_index = _this select 4;
	
	_var_name = if (isNil {_unit getVariable "cti_customid"}) then {typeOf _unit} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _unit getVariable "cti_customid"]};
	_var_classname = missionNamespace getVariable _var_name;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};
	
	hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Refueling a <t color='#ccffaf'>%1</t>... Please stand by...", _label];
	if !(_unit isKindOf "StaticWeapon") then {_unit setFuel 0};
	
	_start_at = time;
	
	_refuel = false;
	_serviceLabel = "Refuel";
	disableSerialization;
	_notification = ["service",[_label,_serviceLabel, -1]] call CTI_CL_FNC_NotificationHandle;
	while {true} do {
		_ranged = [_unit, _content, _ranges, _index] call CTI_UI_Service_RangeStill;
		if (count _ranged isEqualTo 0 || !alive _unit) exitWith {};
		
		_operative_index = _ranged select 2;
		_service_time = _times select _operative_index;
		[_notification select 1, _label, _serviceLabel, ceil (_service_time - (time - _start_at))]call CTI_UI_Service_NotificationUpdate;
		if (time - _start_at > _service_time) exitWith {_refuel = true};
		
		sleep 1;
	};
	
	if (_refuel) then {
		if !(_unit isKindOf "StaticWeapon") then {_unit setFuel 1};
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />A <t color='#ccffaf'>%1</t> has been refueled!", _label];
		_notificationText = parseText format["%1ed <t color='#ccffaf'>%2</t> ", _serviceLabel, _label];
	} else {
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Couldn't finish the refueling of a <t color='#ccffaf'>%1</t>...", _label];
		_notificationText = parseText format["<t color='#ccffaf'>%1</t> could not be %2ed", _label, toLower _serviceLabel];
	};
	
	[_hintText, _notificationText, _notification] call CTI_UI_Service_Complete;
};

CTI_UI_Service_ProcessHeal = {
	private ["_content", "_index", "_label", "_ranges", "_start_at", "_times", "_unit", "_var_classname", "_var_name", "_serviceLabel", "_notification", "_hintText", "_notificationText"];
	_unit = _this select 0;
	_content = _this select 1;
	_ranges = _this select 2;
	_times = _this select 3;
	_index = _this select 4;
	
	_crew = crew _unit;
	_var_name = if (isNil {_unit getVariable "cti_customid"}) then {typeOf _unit} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _unit getVariable "cti_customid"]};
	_var_classname = missionNamespace getVariable _var_name;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};
	
	hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Healing a <t color='#ccffaf'>%1</t>... Please stand by...", _label];
	
	_start_at = time;
	
	_repair = false;
	_serviceLabel = "Heal";
	disableSerialization;
	_notification = ["service",[_label,_serviceLabel, -1]] call CTI_CL_FNC_NotificationHandle;
	while {true} do {
		_ranged = [_unit, _content, _ranges, _index] call CTI_UI_Service_RangeStill;
		if (count _ranged isEqualTo 0 || !alive _unit) exitWith {};
		
		_operative_index = _ranged select 2;
		_service_time = _times select _operative_index;
		[_notification select 1, _label, _serviceLabel, ceil (_service_time - (time - _start_at))]call CTI_UI_Service_NotificationUpdate;
		
		if (time - _start_at > _service_time) exitWith {_repair = true};
		
		sleep 1;
	};
	
	if (_repair) then {
		if (_unit isKindOf "Man") then {_unit setDammage 0} else {{if (!isNil '_x') then {if (alive _x && _x in crew _unit) then {_x setDammage 0}}} forEach _crew};
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />A <t color='#ccffaf'>%1</t> has been healed!", _label];
		_notificationText = parseText format["%1ed <t color='#ccffaf'>%2</t> ", _serviceLabel, _label];
	} else {
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Couldn't finish the healing of a <t color='#ccffaf'>%1</t>...", _label];
		_notificationText = parseText format["<t color='#ccffaf'>%1</t> could not be %2ed", _label, toLower _serviceLabel];
	};
	
	[_hintText, _notificationText, _notification] call CTI_UI_Service_Complete;
};
CTI_UI_Service_ProcessSell = {
	private ["_content", "_index", "_label", "_ranges", "_start_at", "_times", "_unit", "_var_classname", "_var_name", "_price", "_serviceLabel", "_notification", "_hintText", "_notificationText"];
	_unit = _this select 0;
	_content = _this select 1;
	_ranges = _this select 2;
	_times = _this select 3;
	_index = _this select 4;
	_price = _this select 5;
	
	_var_name = if (isNil {_unit getVariable "cti_customid"}) then {typeOf _unit} else {missionNamespace getVariable format["CTI_CUSTOM_ENTITY_%1", _unit getVariable "cti_customid"]};
	_var_classname = missionNamespace getVariable _var_name;
	_label = if !(isNil '_var_classname') then {_var_classname select CTI_UNIT_LABEL} else {getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName")};
	
	
	if (_unit isKindOf "Air") then {
		{
			_times set [_forEachIndex,_x * CTI_AIR_REARM_RATIO];
		} forEach _times;
	};
	if (_unit isKindOf "B_MBT_01_arty_F" || _unit isKindOf "B_MBT_01_mlrs_F" || _unit isKindOf "rhs_9k79" || _unit isKindOf "rhsusf_m109d_usarmy" || _unit isKindOf "rhsusf_m109_usarmy" || _unit isKindOf  "O_MBT_02_arty_F" || _unit isKindOf "CUP_B_M270_HE_USMC" || _unit isKindOf "CUP_B_M270_DPICM_USA" || _unit isKindOf "CUP_B_M270_DPICM_USMC" || _unit isKindOf "CUP_B_M270_HE_USA" || _unit isKindOf  "CUP_O_BM21_RU" || _unit isKindOf  "CUP_B_M270_HE_USMC" || _unit isKindOf  "CUP_B_M252_USMC" || _unit isKindOf  "O_T_MBT_02_arty_ghex_F" || _unit isKindOf  "OFPS_SCORCHER" || _unit isKindOf  "OFPS_SANDSTORM" || _unit isKindOf  "CUP_B_M270_DPICM_USMC" || _unit isKindOf  "Meaty_Scorcher_Sn" || _unit isKindOf  "Meaty_Sandstorm_Sn" || _unit isKindOf "sfp_fh77") then {
		{
			_times set [_forEachIndex,_x * CTI_ART_REARM_RATIO];
		} forEach _times;
	};
	if (_unit isKindOf "B_Mortar_01_F" || _unit isKindOf "O_Mortar_01_F" || _unit isKindOf "CUP_B_M1129_MC_MK19_Desert_Slat" || _unit isKindOf "CUP_B_M1129_MC_MK19_Woodland_Slat" || _unit isKindOf "CUP_B_M1130_CV_M2_Desert_Slat" || _unit isKindOf "CUP_B_M1130_CV_M2_Woodland_Slat" || _unit isKindOf  "CUP_B_M252_USMC" || _unit isKindOf  "CUP_B_2b14_82mm_CDF" || _unit isKindOf  "Podnos 2B14" ) then {
		{
			_times set [_forEachIndex,_x * CTI_MORTAR_REARM_RATIO];
		} forEach _times;
	};
	
	_ranged = [_unit, _content, _ranges, _index] call CTI_UI_Service_RangeStill;
	_operative_index = _ranged select 2;
	_service_time = _times select _operative_index;
	
	hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Selling a <t color='#ccffaf'>%1</t> in <t color='#ccffaf'>%2</t> seconds... Please stand by...", _label, _service_time];
	
	_start_at = time;
	
	_sell = false;
	_serviceLabel = "Sell";
	disableSerialization;
	_notification = ["service",[_label,_serviceLabel, -1]] call CTI_CL_FNC_NotificationHandle;
	while {true} do {
		_ranged = [_unit, _content, _ranges, _index] call CTI_UI_Service_RangeStill;
		if (count _ranged isEqualTo 0 || !alive _unit || getDammage _unit > 0.6) exitWith {};
		
		_operative_index = _ranged select 2;
		_service_time = _times select _operative_index;
		[_notification select 1, _label, _serviceLabel, ceil (_service_time - (time - _start_at))]call CTI_UI_Service_NotificationUpdate;
		if (time - _start_at > _service_time) exitWith {_sell = true};
		
		sleep 1;
	};
	
	if (_sell) then {
		deleteVehicle _unit;
		(_price) call CTI_CL_FNC_ChangePlayerFunds;
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />A <t color='#ccffaf'>%1</t> has been sold for $<t color='#ccffaf'>%2</t>!", _label, _price];
		_notificationText = parseText format["%1 <t color='#ccffaf'>%2</t> ", "Sold", _label];
	} else {
		_hintText = parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Couldn't finish selling a <t color='#ccffaf'>%1</t>...", _label];
		_notificationText = parseText format["<t color='#ccffaf'>%1</t> could not be %2", _label, "sold"];
	};
	
	[_hintText, _notificationText, _notification] call CTI_UI_Service_Complete;
};
CTI_UI_Service_getArms = {
	_unit = _this;

	_turretlist = [];/*["cannon_120mm","LMG_coax","HMG_127_MBT","SmokeLauncher"]*/
	_maglist = [];
	_pathlist = [];
	_countlist = [];
	//_typelist = [];
	{ 
		_turrets = getArray (_x >> "weapons"); 

		if ( count _turrets > 0 ) then {
			{
				_turretlist pushback _x;	
			} forEach _turrets;
		};	
	} forEach ([_unit, configNull] call BIS_fnc_getTurrets);	
	
	_magsfull = magazinesAllTurrets _unit;
	{
		_maglist pushback (_x select 0);
		_pathlist pushback (_x select 1);
		_countlist pushback (_x select 2);	
	} forEach _magsfull;	
	//_typelist pushback "Turret";

	_uniquepaths = [];
	{
		if !(_x in _uniquepaths) then {
			_uniquepaths pushBack _x;
		}
	}forEach _pathlist;

	//Pylons
	_activePylonMags = GetPylonMagazines _unit;//skip pylons
	_allCompatiblePylonMags = _unit getCompatiblePylonMagazines 0;
	_allPylonWeapons = [];
	{
		{
			_pylonweapon = getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon");
			if !(isNil '_pylonweapon') then {
				_allPylonWeapons pushBack _pylonweapon;
			};
		}forEach _x;
	}forEach _allCompatiblePylonMags;

	_turretlist = [];
	{
		_weappath = _x;
		_weapons = _unit weaponsTurret _weappath;
		//_magazines = _unit magazinesTurret _weappath;
		_magazines = magazinesAllTurrets _unit;
		{
			_selectedturret = _x;
			//all compatible turret magazine
			_compatiblemags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> "magazines");
			//add subturret magazines
			if ((count getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles")) > 0 ) then {
				{
					_submags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> _x >> "magazines");
					{
						_compatiblemags pushback _x;
					} foreach _submags;
				} foreach getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles");
			};
			_isplyon = false;
			_turretmags = [];
			{
				_magclass = _x select 0;
				_turretpath = _x select 1;
				_ammocount = _x select 2;
				if (_magclass in _compatiblemags && _turretpath isEqualTo _weappath) then {
					_turretmags pushback [_magclass, _ammocount];
					if (_magclass in _activePylonMags) then {
						_isplyon = true;
					};
				};
			}forEach _magazines;

			if (_selectedturret in _allPylonWeapons) then {
				_isplyon = true;
			};	
			if !(_isplyon) then {
				_turretlist pushBack [_selectedturret , _turretmags, _weappath];
			};
			
		} forEach _weapons;

	} forEach _uniquepaths;

	_turretlist;
};


CTI_UI_Service_GetPrice = {
	private ["_base_cost", "_cost", "_coefficient", "_unit"];
	_unit = _this select 0;
	_base_cost = _this select 1;
	_coefficient = if (count _this > 2) then {_this select 2} else {-1};
	_cost = _base_cost;
	if (!(isNil {missionNamespace getVariable typeOf _unit}) && _coefficient > -1) then {
		_cost = ((missionNamespace getVariable typeOf _unit) select CTI_UNIT_PRICE) * _coefficient;
	};
	if (_unit isKindOf "B_Mortar_01_F" || _unit isKindOf "O_Mortar_01_F" || _unit isKindOf  "CUP_B_M252_USMC" || _unit isKindOf "O_Mortar_01_F" || _unit isKindOf "CUP_B_M1129_MC_MK19_Desert_Slat" || _unit isKindOf "CUP_B_M1129_MC_MK19_Woodland_Slat" || _unit isKindOf "CUP_B_M1130_CV_M2_Desert_Slat" || _unit isKindOf "CUP_B_M1130_CV_M2_Woodland_Slat" || _unit isKindOf  "CUP_B_M252_USMC" || _unit isKindOf  "CUP_B_2b14_82mm_CDF" || _unit isKindOf  "CUP_B_2b14_82mm_CDF" || _unit isKindOf  "Podnos 2B14" ) then {
		_cost = 5000;
	};
	round(_cost)
};

CTI_UI_Service_GetRearmPrice = {
	_unit = _this select 0;
	_finalprice = 0;

	_activePylonMags = GetPylonMagazines _unit;//skip pylons
	_validPylons = (("isClass _x" configClasses (configfile >> "CfgVehicles" >> typeof _unit >> "Components" >> "TransportPylonsComponent" >> "Pylons")) apply {configname _x});
	_activePylonMagsCount = [];
	_typepylonlist = [];
	{
		_ammoCount = _unit ammoOnPylon _x;
		_activePylonMagsCount pushback _ammoCount;
		_typepylonlist pushback "Pylon";
	} forEach _validPylons;		
	_turretlist = (_unit) call CTI_UI_Service_getArms;

	_curmags = [];
	{
		_selectedturret =  _x select 0;
		_turretmags = _x select 1;
		_weappath = _x select 2;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			_ammostat_price = 0;
			_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
			_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
			if (isNil "_ammovar") then {
				_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _magclass >> 'cost');
			} else {
				_ammostat_price = _ammovar select CTI_AMMO_PRICE;
			};
			_maxAmount = getNumber (configfile >> "CfgMagazines" >> _magclass >> "count");
			_count = _maxAmount - _ammocount;
			_qtyprice = _ammostat_price * _count;
			_finalprice = _finalprice + _qtyprice;
		}forEach _turretmags;
	}forEach _turretlist;

	//get all pylons
	{
		_ammoclass = getText(configFile >> 'CfgMagazines' >> _x >> 'ammo');
		_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
		_ammostat_price = 0;
		if (isNil "_ammovar") then {
			_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'cost');
		} else {
			_ammostat_price = _ammovar select CTI_AMMO_PRICE;
		};	
		//systemchat format ["REARM pr: %1", _ammostat_price ];
		_curcount = _activePylonMagsCount select _foreachindex;
		_maxAmount = getNumber (configfile >> "CfgMagazines" >> _x >> "count");
		_count = _maxAmount - _curcount;
		_qtyprice = _ammostat_price * _count;
		_finalprice = _finalprice + _qtyprice;
		//systemchat format ["REARM: %1 | %2 | %3", _count, _qtyprice, _finalprice ];
	} forEach _activePylonMags;	

	//LVOSS ERA
	//get existing ammo
	_ammoleft = _unit getVariable "ammo_left";
	if (isNil "_ammoleft") then {_ammoleft = 0};
	_ammoright = _unit getVariable "ammo_right";
	if (isNil "_ammoright") then {_ammoright = 0};

	_type = "";
	_maxAmount = 0;
	_ammostat_price = 0;
	_ammotime = 0;
	//add lvoss/era
	_upgrades = nil;
	_upgrade_lvoss = 0;
	_upgrade_era = 0;
	if (count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) > 0) then {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_VEHICLES_LVOSS isEqualTo 1) then {_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;};
		if (CTI_VEHICLES_ERA isEqualTo 1) then {_upgrade_era = _upgrades select CTI_UPGRADE_ERA;};
	};
	if (isNil "_upgrade_lvoss") then {_upgrade_lvoss = 0;};
	if (isNil "_upgrade_era") then {_upgrade_era = 0;};
	if (_unit isKindOf "Car") then {
		_type = "LVOSS";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_LVOSS_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_LVOSS_TIME;
		if (_upgrade_lvoss > 0) then {
			switch (_upgrade_lvoss) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
			};
		};
	};
	if (_unit isKindOf "Tank") then {
		_type = "ERA";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_ERA_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_ERA_TIME;
		if (_upgrade_era > 0) then {
			switch (_upgrade_era) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
				case 3: {
					_maxAmount = 3;
				};
				case 4: {
					_maxAmount = 4;
				};
			};
		};
	};
	_ammo_left_total = _maxAmount - _ammoleft;
	_ammo_right_total = _maxAmount - _ammoright;
	_ammo_total = _ammo_left_total + _ammo_right_total;

	_qtyprice = _ammostat_price * _ammo_total;
	_finalprice = _finalprice + _qtyprice;
	_totalprice = _finalprice;

	round(_finalprice)
};
CTI_UI_Service_GetRearmTime = {
	_unit = _this select 0;
	_finaltime = 0;

	_activePylonMags = GetPylonMagazines _unit;//skip pylons
	_validPylons = (("isClass _x" configClasses (configfile >> "CfgVehicles" >> typeof _unit >> "Components" >> "TransportPylonsComponent" >> "Pylons")) apply {configname _x});
	_activePylonMagsCount = [];
	_typepylonlist = [];
	{
		_ammoCount = _unit ammoOnPylon _x;
		_activePylonMagsCount pushback _ammoCount;
		_typepylonlist pushback "Pylon";
	} forEach _validPylons;		
	_turretlist = (_unit) call CTI_UI_Service_getArms;

	_curmags = [];
	{
		_selectedturret =  _x select 0;
		_turretmags = _x select 1;
		_weappath = _x select 2;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			_ammostat_time = 1;
			_maxAmount = getNumber (configfile >> "CfgMagazines" >> _magclass >> "count");

			//check mag type
			_ispermag= false;
			_ammoclass = "";
			_magparentclasses = [configfile >> "CfgWeapons" >> _selectedturret, true] call BIS_fnc_returnParents; 
			if (_magclass in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
			{
				if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
			}forEach _magparentclasses;
			if(_ispermag) then {
				_ammoclass = _magclass;
			}else {
				_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
			};
			_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
			if !(isNil "_ammovar") then {
				_ammostat_time = _ammovar select CTI_AMMO_TIME;
			};
			if !(_ispermag) then {
				_ammostat_time = (_maxAmount - _ammocount) * _ammostat_time;
			};
			if (_ammocount isEqualTo _maxAmount) then {
				_ammostat_time = 0;
			};


			_finaltime = _finaltime + _ammostat_time;
		}forEach _turretmags;
	}forEach _turretlist;

	//get all pylons
	{
		_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_x];
		_ammoclass = getText(configFile >> 'CfgMagazines' >> _x >> 'ammo');
		_ammostat_time = 1;
		if !(isNil "_ammovar") then {
			_ammostat_time = _ammovar select CTI_AMMO_TIME;
		};
		_qtytime = _ammostat_time;
		//systemchat format ["REARM pr: %1", _ammostat_time ];
		_curcount = _activePylonMagsCount select _foreachindex;
		_maxAmount = getNumber (configfile >> "CfgMagazines" >> _x >> "count");
		_count = _maxAmount - _curcount;		

		//check mag type for new rearm time
		_ispermag= false;
		_ammoclassarm = "";
		_magparentclasses = [configfile >> "CfgWeapons" >> _ammoclass, true] call BIS_fnc_returnParents;
		if (_ammoclass in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
		{
			if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
		}forEach _magparentclasses;
		_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _ammoclass >> 'ammo');
		_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
		if !(isNil "_ammoclassarmvar") then {
			_qtytime = _ammoclassarmvar select CTI_AMMO_TIME;
		};
		if !(_ispermag) then {
			_qtytime = _count * _ammostat_time;
		};

		_finaltime = _finaltime + _qtytime;
		//systemchat format ["REARM: %1 | %2 | %3", _count, _qtytime, _finaltime ];
	} forEach _activePylonMags;	

	//LVOSS ERA
	//get existing ammo
	_ammoleft = _unit getVariable "ammo_left";
	if (isNil "_ammoleft") then {_ammoleft = 0};
	_ammoright = _unit getVariable "ammo_right";
	if (isNil "_ammoright") then {_ammoright = 0};

	_type = "";
	_maxAmount = 0;
	_ammotime = 0;
	//add lvoss/era
	_upgrades = nil;
	_upgrade_lvoss = 0;
	_upgrade_era = 0;
	if (count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) > 0) then {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_VEHICLES_LVOSS isEqualTo 1) then {_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;};
		if (CTI_VEHICLES_ERA isEqualTo 1) then {_upgrade_era = _upgrades select CTI_UPGRADE_ERA;};
	};
	if (isNil "_upgrade_lvoss") then {_upgrade_lvoss = 0;};
	if (isNil "_upgrade_era") then {_upgrade_era = 0;};
	if (_unit isKindOf "Car") then {
		_type = "LVOSS";
		_ammotime = CTI_VEHICLES_LOADOUTS_LVOSS_TIME;
		if (_upgrade_lvoss > 0) then {
			switch (_upgrade_lvoss) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
			};
		};
	};
	if (_unit isKindOf "Tank") then {
		_type = "ERA";
		_ammotime = CTI_VEHICLES_LOADOUTS_ERA_TIME;
		if (_upgrade_era > 0) then {
			switch (_upgrade_era) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
				case 3: {
					_maxAmount = 3;
				};
				case 4: {
					_maxAmount = 4;
				};
			};
		};
	};
	_ammo_left_total = _maxAmount - _ammoleft;
	_ammo_right_total = _maxAmount - _ammoright;
	_ammo_total = _ammo_left_total + _ammo_right_total;

	_qtytime = _ammotime * _ammo_total;
	_finaltime = _finaltime + _qtytime;
	_totaltime = _finaltime;

	round(_totaltime)
};

CTI_UI_Service_GetSellPrice = {
	private ["_tax", "_closest", "_closest_large_fob", "_base_cost", "_cost", "_coefficient", "_unit"];
	_closest = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
	_tax = CTI_SERVICE_SELL_COEF;
	if !(isNull _closest) then { _tax = CTI_SERVICE_SELL_DEPOT_COEF};
	_closest_large_fob = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestLargeFOB;
	if !(isNull _closest_large_fob) then {_tax = CTI_SERVICE_SELL_LARGE_FOB_COEF};
	
	_cost = _this call CTI_UI_Service_GetPrice;
	
	round(_cost * _tax)
};