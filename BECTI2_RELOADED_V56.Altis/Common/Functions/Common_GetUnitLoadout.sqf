private ["_allitems", "_backpack", "_backpack_items", "_goggles", "_handgun", "_handgun_accessories", "_handgun_current_magazine", "_headgear", "_items", "_primary", "_primary_accessories", "_primary_current_magazine", "_secondary", "_secondary_accessories", "_secondary_current_magazine", "_slot", "_target", "_uniform", "_uniform_items", "_vest", "_vest_items"];

_target = _this;

//--- Uniform, Vest and backpack
_uniform = toLower(uniform _target);
_uniform_items = (uniformItems _target) call EZC_fnc_Functions_Common_ArrayToLower;
_vest = toLower(vest _target);
_vest_items = (vestItems _target) call EZC_fnc_Functions_Common_ArrayToLower;
_backpack = toLower(backpack _target);
_backpack_items = (backpackItems _target) call EZC_fnc_Functions_Common_ArrayToLower;

//--- Weapons
_primary = toLower(primaryWeapon _target);
_primary_accessories = (primaryWeaponItems _target) call EZC_fnc_Functions_Common_ArrayToLower;
_secondary = toLower(secondaryWeapon _target);
_secondary_accessories = (secondaryWeaponItems _target) call EZC_fnc_Functions_Common_ArrayToLower;
_handgun = toLower(handgunWeapon _target);
_handgun_accessories = (handgunItems _target) call EZC_fnc_Functions_Common_ArrayToLower;

//--- Currently loaded magazines
_primary_current_magazine = (primaryWeaponMagazine _target) call EZC_fnc_Functions_Common_ArrayToLower;
_secondary_current_magazine = (secondaryWeaponMagazine _target) call EZC_fnc_Functions_Common_ArrayToLower;
_handgun_current_magazine = (handgunMagazine _target) call EZC_fnc_Functions_Common_ArrayToLower;

//--- Accessories
_headgear = toLower(headgear _target);
_goggles = toLower(goggles _target);

//--- Items
_allitems = ((assignedItems _target) call EZC_fnc_Functions_Common_ArrayToLower) - [_headgear, _goggles];
_items = [["", ""], ["", "", "", "", ""]];

{
	_slot = switch (getText(configFile >> 'CfgWeapons' >> _x >> 'simulation')) do {
		case "NVGoggles": {[0,0]};
		case "Binocular": {[0,1]};
		case "ItemMap": {[1,0]};
		case "ItemGPS": {[1,1]};
		case "ItemRadio": {[1,2]};
		case "ItemCompass": {[1,3]};
		case "ItemWatch": {[1,4]};
		default {[-1]};
	};
	if (_slot select 0 == -1) then { //--- The simulation couldn't be determined, try to get the subtype maybe?
		if (getNumber(configFile >> 'CfgWeapons' >> _x >> 'ItemInfo' >> 'type') isEqualTo cti_SUBTYPE_UAVTERMINAL) then {_slot = [1,1]};
		if (getNumber(configFile >> 'CfgWeapons' >> _x >> 'useAsBinocular') isEqualTo 1 && getText(configFile >> 'CfgWeapons' >> _x >> 'simulation') isEqualTo "weapon") then {_slot = [0,1]};
	};
	if (_slot select 0 != -1) then { (_items select (_slot select 0)) set [_slot select 1, _x] };
} forEach _allitems;
_items = [(_items select 0) call EZC_fnc_Functions_Common_ArrayToLower, (_items select 1) call EZC_fnc_Functions_Common_ArrayToLower];

//--- Return the preformated gear
[
	[[_primary, _primary_accessories, _primary_current_magazine], [_secondary, _secondary_accessories, _secondary_current_magazine], [_handgun, _handgun_accessories, _handgun_current_magazine]], 
	[[_uniform, _uniform_items], [_vest, _vest_items], [_backpack, _backpack_items]], 
	[_headgear, _goggles], 
	_items
]