private ["_categories", "_classes", "_defenses", "_defenses_cname", "_headers", "_index", "_placements", "_prices", "_side", "_sub_categories", "_sub_categories_index","_upgrade","_specials","_classname_variant"];

_side = _this select 0;
_faction = _this select 1;
_def = _this select 2;
_mod = _this select 3;

//Defense lists if exists
_defenses = missionNamespace getVariable format ["CTI_%1_DEFENSES", _side];
_defenses_cname = missionNamespace getVariable format ["CTI_%1_DEFENSES_NAMES", _side];
if(isNil "_defenses") then{_defenses = [];};
if(isNil "_defenses_cname") then{_defenses_cname = [];};

_sub_categories = [];
_sub_categories_index = [];
_index = 0;

//check if categories exist
if !(isNil {missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORIES", _side]}) then {
	_sub_categories = missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORIES", _side];
};
if !(isNil {missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORIES_INDEX", _side]}) then {
	_sub_categories_index = missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORIES_INDEX", _side];
	_index = count _sub_categories_index;
};

for '_i' from 0 to (count _def) -1 do {
	_u = _def select _i;
	_enabled = _u select 0;
	_name = _u select 1;
	_class = _u select 2;
	_price = _u select 3;
	_placement = _u select 4;
	_categories = _u select 5;
	_location = _u select 6;
	_blacklist = _u select 7;
	_upgrade = _u select 8;
	_maxcount = _u select 9;
	_cooldown = _u select 10;
	_dismantle = _u select 11;
	_specials = _u select 12;

	//check if armed version
	_classnamevar = "";
	switch (typeName _class) do {
		case "STRING": { _classnamevar = _class; };
		case "ARRAY": {
			_classnamevar = _class select 0;
			if (typeName (_class select 1 select 0) == "ARRAY") then{
				if ("Armed" in ((_class select 1) select 0)) then {
					_classname_variant = ((_class select 1) select 0) select 1;
					_classnamevar = format["Composition_Armed_%1",_classname_variant];
				};
				if ("Composition" in ((_class select 1) select 0)) then {
					_classname_variant = ((_class select 1) select 0) select 1;
					_classnamevar = format["Composition_%1",_classname_variant];
				};
				if ("Bulldozer" in ((_class select 1) select 0)) then {
					_classname_variant = ((_class select 1) select 0) select 1;
					_variant_radius = ((_class select 1) select 0) select 2;
					_classnamevar = format["Bulldozer_%1_%2",_classname_variant,_variant_radius];
				};
				if ("Demolition" in ((_class select 1) select 0)) then {
					_variant_radius = ((_class select 1) select 0) select 1;
					_classnamevar = format["Demolition_%1",_variant_radius];
				};
				if ("Sign" in ((_class select 1) select 0)) then {
					_classname_variant = ((_class select 1) select 0) select 1;
					_classnamevar = format["Sign_%1",_classname_variant];
				};
			};
		};
	};
	if (isNil {missionNamespace getVariable format["CTI_%1_%2",_side,_classnamevar]}) then {	
		_categories = _categories select 0;	
		_stored = [
			_enabled,
			_name,
			_class,
			_price,
			_placement,
			_categories,
			_location,
			_blacklist,
			_upgrade,
			_maxcount,
			_cooldown,
			_dismantle,
			_specials,
			_mod
		];
		
		if !((_categories) in _sub_categories) then {
			_sub_categories pushBack (_categories );
			_sub_categories_index pushBack _index;
			_index = _index + 1;
		};
		
		_find = _sub_categories find (_categories );
		if (isNil {missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORY_%2", _side, _find]}) then {
			missionNamespace setVariable [format["CTI_COIN_%1_DEFENSE_CATEGORY_%2", _side, _find], []];
		};
		(missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORY_%2", _side, _find]) pushBack format["CTI_%1_%2", _side, _classnamevar];

		//set defense variable
		missionNamespace setVariable [format["CTI_%1_%2",_side,_classnamevar], _stored];

		_defenses pushBack format["CTI_%1_%2",_side,_classnamevar];
		_defenses_cname pushBack _classnamevar;

		if (CTI_Log_Level >= CTI_Log_Debug) then { 
			["DEBUG", "FILE: Common\Config\Base\Set_Defenses.sqf", format ["[%1] Set Defense [%2] using variable name [%3] into category [%4]", _side, _classnamevar, format["CTI_%1_%2", _side, _classnamevar], _categories]] call CTI_CO_FNC_Log; 
		};

	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then { 
			["TRIVIAL", "FILE: Common\Config\Base\Set_Defenses.sqf", format ["[%1] Defense [%2] was previously defined. Skipping this one.", _side, _classnamevar]] call CTI_CO_FNC_Log;
		};
	};
};
//set defense categories
missionNamespace setVariable [format ["CTI_COIN_%1_DEFENSE_CATEGORIES", _side], _sub_categories];
missionNamespace setVariable [format ["CTI_COIN_%1_DEFENSE_CATEGORIES_INDEX", _side], _sub_categories_index];
if (CTI_Log_Level >= CTI_Log_Debug) then { 
	["DEBUG", "FILE: Common\Config\Base\Set_Defenses.sqf", format ["[%1] Set coin defense categories [%2] using index [%3]", _side, _sub_categories, _sub_categories_index]] call CTI_CO_FNC_Log; 
};
//set defense lists
missionNamespace setVariable [format ["CTI_%1_DEFENSES", _side], _defenses];
missionNamespace setVariable [format ["CTI_%1_DEFENSES_NAMES", _side], _defenses_cname];