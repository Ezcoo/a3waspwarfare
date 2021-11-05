private ["_c", "_cpt", "_custom", "_d", "_f", "_faction", "_g", "_label", "_n", "_o", "_p", "_picture", "_s", "_scripts", "_stored", "_t", "_turrets", "_u", "_var_name","_ifinarray"];


_side = _this select 0;
_faction = _this select 1;
_unit = _this select 2;
_mod = _this select 3;
_cpt = 0;

//factory arrays if already exist
_fb = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_BARRACKS];
_fl = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_LIGHT];
_fh = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_HEAVY];
_fa = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_AIR_ROTARY];
_faf = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_AIR_FIXED];
_fr = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_REPAIR];
_fam = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_AMMO];
_fn = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_NAVAL];
_fd = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_DEPOT];
_fdn = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_DEPOT_NAVAL];
_ff = missionNamespace getVariable format ["CTI_%1_%2Units", _side, CTI_LARGE_FOB ];
if(isNil "_fb") then{_fb = [];};
if(isNil "_fl") then{_fl = [];};
if(isNil "_fh") then{_fh = [];};
if(isNil "_fa") then{_fa = [];};
if(isNil "_faf") then{_faf = [];};
if(isNil "_fr") then{_fr = [];};
if(isNil "_fam") then{_fam = [];};
if(isNil "_fn") then{_fn = [];};
if(isNil "_fd") then{_fd = [];};
if(isNil "_fdn") then{_fdn = [];};
if(isNil "_ff") then{_ff = [];};

for '_i' from 0 to (count _unit)-1 do {
	_u = _unit select _i;
	_enabled = _u select 0;
	_name = _u select 1;
	_classname = _u select 2;
	_menuname = _u select 3;
	_locations = _u select 4;
	_upgradelevel = _u select 5;
	_price = _u select 6;
	_buildtime = _u select 7;
	_distance = _u select 8;
	_camo = _u select 9;
	_type = _u select 10;
	_ammmo = _u select 11;
	_max = _u select 12;
	_modifiers = _u select 13;
	_script = _u select 14;
	_picture = _u select 15;
	_var_name = _classname;
	//if empty append varname
	if !(_ammmo) then { 
		_var_name = format["%1_empty", _classname];
	};
	_custom = false;
	if (typeName(_script) isEqualTo "ARRAY") then { _classname = (_script) select 0; _custom = true };
	
	if (isClass (configFile >> "CfgVehicles" >> _classname)) then {
		_get = missionNamespace getVariable _var_name;
		if (isNil "_get") then {
			_stored = [];

			//Special Cases
			if (_picture isEqualTo "") then { 
				//--- Repalced portrait with editorPreview, seems like portriat is outdated. Also removed picture part.
				_picture = if (_classname isKindOf "Man") then { getText(configFile >> "CfgVehicles" >> _classname >> "portrait") } else { getText(configFile >> "CfgVehicles" >> _classname >> "picture") }
				//_picture = getText(configFile >> "CfgVehicles" >> _classname >> "editorPreview")
				//_picture = getText(configFile >> "CfgVehicles" >> _classname >> "icon")
				//_picture = getText(configFile >> "CfgVehicles" >> _classname >> "picture")
			};
			_label = switch (typeName (_menuname)) do {
				case "ARRAY": {format[_menuname select 0, getText(configFile >> "CfgVehicles" >> _classname >> "displayName")]};
				case "STRING": {if ((_menuname) isEqualTo "") then { getText(configFile >> "CfgVehicles" >> _classname >> "displayName") } else { _menuname }};
				default {""};
			};
			_turrets = if !(_classname isKindOf "Man") then { (_classname) call CTI_CO_FNC_GetDetailedTurrets } else { "" };
			_scripts = _script;
	
			if (_custom) then { //--- Custom vehicle are tracked by an ID to make it easier to spot on the network, we avoid the use of a string for our 56k modem friends.
				_scripts set [2, CTI_CO_CustomIterator];
				missionNamespace setVariable [format["CTI_CUSTOM_ENTITY_%1", CTI_CO_CustomIterator], _var_name];
				CTI_CO_CustomIterator = CTI_CO_CustomIterator + 1;
			};
			//add to Factory array
			if (_enabled isEqualTo true) then { 
				{
					_factory = "";
					switch (typeName _x) do {
						case "STRING": { 
							_factory = _x;
						};
						case "ARRAY": { 
							_factory = _x select 0;
						};
					};
					switch (_factory) do {
						case CTI_BARRACKS: {_fb pushback _var_name};
						case CTI_LIGHT: {_fl pushback _var_name};
						case CTI_HEAVY: {_fh pushback _var_name};
						case CTI_AIR_ROTARY: {_fa pushback _var_name};
						case CTI_AIR_FIXED: {_faf pushback _var_name};
						case CTI_REPAIR: {_fr pushback _var_name};
						case CTI_AMMO: {_fam pushback _var_name};
						case CTI_NAVAL: {_fn pushback _var_name};
						case CTI_DEPOT: {_fd pushback _var_name};
						case CTI_DEPOT_NAVAL: {_fdn pushback _var_name};
						case CTI_LARGE_FOB: {_ff pushback _var_name};
					}
				} forEach _locations;
			};

			//Set Unit Variable
			_stored = [_enabled, _name, _classname, _label, _locations, _upgradelevel, _price, _buildtime, _distance, _camo, _type, _ammmo, _max, _modifiers, _scripts, _picture, _turrets, _mod];
			missionNamespace setVariable [_var_name, _stored];
			_cpt = _cpt + 1;
			
			if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set unit var [%2] named [%3] using classname [%4] to [%5] Factories", _side, _var_name, _label, _classname, _locations]] call CTI_CO_FNC_Log };
		} else {
			if (CTI_Log_Level >= CTI_Log_Warning) then { ["WARNING", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] unit var [%2] was skipped since it is already defined", _side, _var_name]] call CTI_CO_FNC_Log };
		};
	} else {
		if (CTI_Log_Level >= CTI_Log_Error) then { ["ERROR", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] unit var [%2] is not using a valid CfgVehicles classname [%3]. If it belong to an Addons, make sure that it is loaded.", _side, _var_name, _classname]] call CTI_CO_FNC_Log };
	};
};

//Set Factories
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _fb];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _fl];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _fh];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR_ROTARY], _fa];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR_FIXED], _faf];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _fr];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _fam];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _fn];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _fd];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT_NAVAL], _fdn];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LARGE_FOB ], _ff];
if (CTI_Log_Level >= CTI_Log_Debug) then { 
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fb, "CTI_BARRACKS"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fl, "CTI_LIGHT"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fh, "CTI_HEAVY"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fa, "CTI_AIR_ROTARY"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fa, "CTI_AIR_FIXED"]] call CTI_CO_FNC_Log;	
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fr, "CTI_REPAIR"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fam, "CTI_AMMO"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fn, "CTI_NAVAL"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fd, "CTI_DEPOT"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _fdn, "CTI_DEPOT_NAVAL"]] call CTI_CO_FNC_Log;
	["DEBUG", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] Set factory [%2] using classnames [%3]", _side, _ff, "CTI_LARGE_FOB"]] call CTI_CO_FNC_Log;
};

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Common\Config\Common\Units\Set_Units.sqf", format ["[%1] [%2/%3] units were defined", _side, _cpt, count _unit]] call CTI_CO_FNC_Log };