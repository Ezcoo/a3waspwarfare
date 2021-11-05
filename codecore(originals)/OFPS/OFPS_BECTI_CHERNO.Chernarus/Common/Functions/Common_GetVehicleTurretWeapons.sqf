/*
  # HEADER #
    Script:         Common\Functions\Common_GetVehicleTurretWeapons.sqf
    Alias:          CTI_CO_FNC_GetVehicleTurretWeapons
    Description:    Will return all weapons found on a vehicle (searches all turrets) and all magazines contained within those turrets
    
  # PARAMETERS #
    0   [String/Object]: A vehicle or its classname
    
  # RETURNED VALUE #
    [Array]: The vehicle turrets
    
  # SYNTAX #
    (OBJECT/CLASSNAME) call CTI_CO_FNC_GetVehicleTurretWeapons
    
  # EXAMPLE #
    _weaponsandmagazines = ("B_MBT_01_arty_F") call CTI_CO_FNC_GetVehicleTurretWeapons
      -> Returns: [["mortar_155mm_AMOS","HMG_127_APC","GMG_40mm","SmokeLauncher"],["32Rnd_155mm_Mo_shells","4Rnd_155mm_Mo_guided","6Rnd_155mm_Mo_mine","2Rnd_155mm_Mo_Cluster","6Rnd_155mm_Mo_smoke","2Rnd_155mm_Mo_LG","6Rnd_155mm_Mo_AT_mine","96Rnd_40mm_G_belt","200Rnd_127x99_mag_Tracer_Red","200Rnd_127x99_mag_Tracer_Red","SmokeLauncherMag"]]
 */
  
_weapons = [];
_magazines = [];
private _findRecurse = {
    private _root = (_this select 0);
    private _path = +(_this select 1);
    for "_i" from 0 to count _root -1 do {
        private _class = _root select _i;
        if (isClass _class) then {
            private _currentPath = _path + [_i];
            _weapons = _weapons + getArray (_class >> "weapons");
            _magazines = _magazines + getArray (_class >> "magazines");
            _class = _class >> "turrets";
            if (isClass _class) then {
                [_class, _currentPath] call _findRecurse;
            };
        };
    };
};
_classname = switch (typeName _this) do {
    case "STRING": {_this};
    case "OBJECT": {typeOf _this};
    default {""};
};
private _class = (configFile >> "CfgVehicles" >> _classname >> "turrets");
private _driver = (configFile >> "CfgVehicles" >> _classname);
[_class, []] call _findRecurse;

_magazines = getArray(_driver >> "magazines") + (_magazines select {isClass (configFile >> "CfgMagazines" >> _x)});
_weapons = getArray(_driver >> "weapons") + (_weapons select {isClass (configFile >> "CfgWeapons" >> _x)});

[_weapons, _magazines];