private ["_cpt", "_faction", "_items", "_prices", "_upgrades", "_roleName"];

_faction = _this select 0;
_items = _this select 1;
_upgrades = _this select 2;
_prices = _this select 3;
_roleName = if(count _this > 4)then{_this select 4}else{nil};

_gear_accessories = [];
_gear_primary = [];
_gear_secondary = [];
_gear_pistol = [];
_gear_backpacks = [];
_gear_vests = [];
_gear_headgear = [];
_gear_glasses = [];
_gear_uniforms = [];
_gear_magazines = [];
_gear_misc = [];
_gear_special = [];
_gear_explosives = [];

_cpt = 0;

for '_i' from 0 to count(_items)-1 do {
	_item = _items select _i;
	_pushtogear = true;
	if (typeName _item == "ARRAY") then {
		_pushtogear = false;
		_item = _item select 0;
	};

	_config_type = switch (true) do { //--- Determine the kind of item that we're dealing with
		case (isClass (configFile >> 'CfgWeapons' >> _item)): {"CfgWeapons"};
		case (isClass (configFile >> 'CfgMagazines' >> _item)): {"CfgMagazines"};
		case (isClass (configFile >> 'CfgVehicles' >> _item)): {"CfgVehicles"};
		case (isClass (configFile >> 'CfgGlasses' >> _item)): {"CfgGlasses"};
		default {"nil"};
	};

	if (_config_type != "nil") then { //--- Make sure that it exists
		if (isNil {missionNamespace getVariable _item}) then {
			switch (_config_type) do { //--- Each item is handled differently
				case "CfgGlasses": {
					missionNamespace setVariable [format["CTI_%1", _item], [[_upgrades select _i, _prices select _i, _roleName], "Goggles", _config_type]];
					if (_pushtogear) then {_gear_glasses pushBack _item};
					_cpt = _cpt + 1;
				};
				case "CfgMagazines": {
					missionNamespace setVariable [format["CTI_%1", _item], [[_upgrades select _i, _prices select _i, _roleName], "Magazines", _config_type]];

					if (_pushtogear) then {
						if (getText(configFile >> 'CfgMagazines' >> _item >> "nameSound") in ["mine", "satchelcharge"]) then {
							_gear_explosives pushBack _item;
						} else {
							_gear_magazines pushBack _item;
						};
					};
					_cpt = _cpt + 1;
				};
				case "CfgVehicles": {
					if (getNumber(configFile >> _config_type >> _item >> 'isbackpack') == 1) then { //--- Make sure that this is a backpack
						missionNamespace setVariable [format["CTI_%1", _item], [[_upgrades select _i, _prices select _i, _roleName], "Backpack", _config_type]];
						if (_pushtogear) then {_gear_backpacks pushBack _item};
						_cpt = _cpt + 1;
					};
				};
				case "CfgWeapons": {
					//--- Determine the nature
					_item_subtype = "";
					_item_type = switch (getNumber(configFile >> _config_type >> _item >> "type")) do {
						case CTI_TYPE_RIFLE: {"Rifle"};
						case CTI_TYPE_PISTOL: {"Pistol"};
						case CTI_TYPE_LAUNCHER: {"Launcher"};
						case CTI_TYPE_RIFLE2H: {"Rifle 2H"};
						case CTI_TYPE_EQUIPMENT: {"Equipment"};
						case CTI_TYPE_ITEM: {"Item"};
						default {"nil"};
					};

					if (_item_type == "Item") then { //--- Items are handled differently
						_item_subtype = switch (getNumber(configFile >> _config_type >> _item >> 'ItemInfo' >> 'type')) do {
							case CTI_SUBTYPE_ITEM: {"BaseItem"};
							case CTI_SUBTYPE_ACC_MUZZLE: {"Acc-Muzzle"};
							case CTI_SUBTYPE_ACC_OPTIC: {"Acc-Optics"};
							case CTI_SUBTYPE_ACC_SIDE: {"Acc-Side"};
							case CTI_SUBTYPE_ACC_BIPOD: {"Acc-Bipod"};
							case CTI_SUBTYPE_HEADGEAR: {"Headgear"};
							case CTI_SUBTYPE_VEST: {"Vest"};
							case CTI_SUBTYPE_UNIFORM: {"Uniform"};
							default {""};
						};

						if (_pushtogear) then {
							switch (true) do { //--- Parse
								case (_item_subtype == "Uniform"): { _gear_uniforms pushBack _item };
								case (_item_subtype == "Vest"): { _gear_vests pushBack _item };
								case (_item_subtype == "Headgear"): { _gear_headgear pushBack _item };
								case (_item_subtype in ["Acc-Muzzle", "Acc-Optics", "Acc-Side", "Acc-Bipod"]): { _gear_accessories pushBack _item };
								case (_item_subtype in ["BaseItem", ""]): { _gear_misc pushBack _item };
							};
						};
					} else {
						if (_pushtogear) then {
							switch (true) do { //--- Parse
								case (_item_type in ["Rifle", "Rifle 2H"]): { _gear_primary pushBack _item };
								case (_item_type == "Pistol"): { _gear_pistol pushBack _item };
								case (_item_type == "Launcher"): { _gear_secondary pushBack _item };
								case (_item_type == "Equipment"): { _gear_special pushBack _item };
							};
						};
					};

					if (_item_subtype != "") then { _item_type = [_item_type, _item_subtype]; };

					missionNamespace setVariable [format["CTI_%1", _item], [[_upgrades select _i, _prices select _i, _roleName], _item_type, _config_type]];
					_cpt = _cpt + 1;
				};
			};
		};
	};
};

//--- Append to the existing items
{
	missionNamespace setVariable [_x select 0,
									if (isNil {missionNamespace getVariable (_x select 0)}) then {
										_x select 1
									} else {
										(missionNamespace getVariable (_x select 0)) + (_x select 1)
									}
								 ];
} forEach [[format["CTI_gear_list_primary_%1", _roleName], _gear_primary],
            [format["CTI_gear_list_secondary_%1", _roleName], _gear_secondary],
            [format["CTI_gear_list_pistol_%1", _roleName], _gear_pistol],
            [format["CTI_gear_list_magazines_%1",_roleName], _gear_magazines],
            [format["CTI_gear_list_accessories_%1", _roleName], _gear_accessories],
            [format["CTI_gear_list_misc_%1", _roleName], _gear_misc],
            [format["CTI_gear_list_special_%1",_roleName], _gear_special],
            [format["CTI_gear_list_uniforms_%1",_roleName], _gear_uniforms],
            [format["CTI_gear_list_vests_%1",_roleName], _gear_vests],
            [format["CTI_gear_list_backpacks_%1", _roleName], _gear_backpacks],
            [format["CTI_gear_list_headgear_%1", _roleName], _gear_headgear],
            [format["CTI_gear_list_glasses_%1", _roleName], _gear_glasses],
            [format["CTI_gear_list_explosives_%1", _roleName], _gear_explosives]];