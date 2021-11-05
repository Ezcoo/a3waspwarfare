/*
  # HEADER #
	Script: 		Common\Functions\Common_RearmVehicle.sqf
	Alias:			CTI_CO_FNC_RearmVehicle
	Description:	Rearm a vehicle and it's turrets
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[Object]: The vehicle
    1	[Side]: The side of the vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[VEHICLE, SIDE] call CTI_CO_FNC_RearmVehicle
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_SanitizeAircraft
	Common Function: CTI_CO_FNC_SanitizeArtillery
	Common Function: CTI_CO_FNC_SanitizeLandOrdinance
	Common Function: CTI_CO_FNC_SanitizeAirOrdinance	
	
  # EXAMPLE #
    [vehicle player, CTI_P_SideJoined] call CTI_CO_FNC_RearmVehicle;
	  -> Rearm the player vehicle of the player
*/

params ["_vehicle", "_side"];
private ["_type","_upgrades", "_upgrade_lvoss", "_upgrade_era"];

_vehicle = _this select 0;
_side = _this select 1;
_type = typeOf _vehicle;

/* Temp solution for rearm bug until we get back the loadout system */
if (typeOf _vehicle in ["B_Heli_Attack_01_dynamicLoadout_F", "B_UAV_02_dynamicLoadout_F", "B_T_UAV_03_dynamicLoadout_F", "B_UAV_05_F", "CUP_B_USMC_DYN_MQ9", "O_Heli_Attack_02_dynamicLoadout_F", "O_T_VTOL_02_infantry_dynamicLoadout_F", "O_T_VTOL_02_vehicle_dynamicLoadout_F", "O_UAV_02_dynamicLoadout_F", "CUP_O_Ka52_Grey_RU", "CUP_O_Mi24_D_Dynamic_CSAT_T", "CUP_O_Mi24_P_Dynamic_CSAT_T", "CUP_O_Mi24_V_Dynamic_CSAT_T"]) then {
	_vehicle setVehicleAmmo 1;
} else {
	_vehicle setVehicleAmmoDef 1;
};

//--- Driver
/*{_vehicle removeMagazineTurret [_x, [-1]]; _vehicle addMagazineTurret [_x, [-1]]} forEach (getArray(configFile >> "CfgVehicles" >> _type >> "magazines"));

//--- Turrets
_config = configFile >> "CfgVehicles" >> _type >> "turrets";
for '_i' from 0 to (count _config)-1 do {
	_turret_main = _config select _i;
	_config_sub = _turret_main >> "turrets";
	{_vehicle removeMagazineTurret [_x, [_i]]; _vehicle addMagazineTurret [_x, [_i]]} forEach (getArray(_turret_main >> "magazines"));
	for '_j' from 0 to (count _config_sub) -1 do {
		_turret_sub = _config_sub select _j;
		{_vehicle removeMagazineTurret [_x, [_i, _j]]; _vehicle addMagazineTurret [_x, [_i, _j]]} forEach (getArray(_turret_sub >> "magazines"));
	};
};*/

//--- Authorize the air loadout depending on the parameters set
//if (_vehicle isKindOf "Air") then {[_vehicle, _side] call CTI_CO_FNC_SanitizeAircraft};
//--- Sanitize the artillery loadout, mines may lag the server for instance
//if (CTI_ARTILLERY_FILTER isEqualTo 1) then {if (typeOf _vehicle in (missionNamespace getVariable ["CTI_ARTILLERY", []])) then {(_vehicle) call CTI_CO_FNC_SanitizeArtillery}};

//check ordinance - does same as both above
[_vehicle,_side] call CTI_CO_FNC_SanitizeVehicle;

//---Check Upgrades
_upgrades = (_side) call CTI_CO_FNC_GetSideUpgrades;
//---Add LVOSS system
if (CTI_VEHICLES_LVOSS isEqualTo 1) then {
	_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;
	if (_vehicle isKindOf "Car") then {
		if (_upgrade_lvoss > 0) then {
			switch (_upgrade_lvoss) do {
				case 0: {
					_vehicle setVariable ["ammo_left", 0, true];
					_vehicle setVariable ["ammo_right", 0, true];
				};
				case 1: {
					_vehicle setVariable ["ammo_left", 1, true];
					_vehicle setVariable ["ammo_right", 1, true];
				};
				case 2: {
					_vehicle setVariable ["ammo_left", 2, true];
					_vehicle setVariable ["ammo_right", 2, true];
				};
			};
		};
	};
};
//---Add ERA system
if (CTI_VEHICLES_ERA isEqualTo 1) then {
	_upgrade_era = _upgrades select CTI_UPGRADE_ERA;
	if (_vehicle isKindOf "Tank") then {
		if (_upgrade_era > 0) then {
			switch (_upgrade_era) do {
				case 0: {
					_vehicle setVariable ["ammo_left", 0, true];
					_vehicle setVariable ["ammo_right", 0, true];
				};
				case 1: {
					_vehicle setVariable ["ammo_left", 1, true];
					_vehicle setVariable ["ammo_right", 1, true];
				};
				case 2: {
					_vehicle setVariable ["ammo_left", 2, true];
					_vehicle setVariable ["ammo_right", 2, true];
				};
				case 3: {
					_vehicle setVariable ["ammo_left", 3, true];
					_vehicle setVariable ["ammo_right", 3, true];
				};
				case 4: {
					_vehicle setVariable ["ammo_left", 4, true];
					_vehicle setVariable ["ammo_right", 4, true];
				};			
			};
		};
	};
};