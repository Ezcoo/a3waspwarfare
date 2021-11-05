/*
  # HEADER #
	Script: 		Server\Functions\Server_OnDefenseHandleDamage.sqf
	Alias:			CTI_SE_FNC_OnDefenseHandleDamage
	Description:	Triggered by the handleDamage EH whenever a structure get hit
					Note this function shall only be called by an Event Handler (EH)
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	16-10-2013
	
  # PARAMETERS #
    0	[Object]: The hit structure
    1	[Number]: The inflicted damage by the hit
    2	[Object]: The shooter
    3	[Integer]: The Side ID of the structure
    4	[Number]: Damage reduction
    5	[Number]: The structure variable name
    6	[Array]: The position of the structure
	
  # RETURNED VALUE #
	[Number]: The afflicted damage
	
  # SYNTAX #
	[STRUCTURE, DAMAGES, SHOOTER, SIDE ID, DAMAGE REDUCTION, VARIABLE, POSITION] call CTI_SE_FNC_OnDefenseHandleDamage
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideLogic
	
  # EXAMPLE #
    _structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, _this select 4, %1, %2, '%3', %4] call CTI_SE_FNC_OnDefenseHandleDamage", (_side) call CTI_CO_FNC_GetSideID, _reduce_damages, _variable, _position]];
*/

params ["_damaged", "_damage", "_shooter", "_ammo", "_sideID", "_reduce_damages", "_variable", "_position","_multiply_damages"];
private ["_logic", "_side", "_upgrades", "_upgrade_basehealth", "_baseratio","_overall_damage","_health"];

_side = (_sideID) call CTI_CO_FNC_GetSideFromID;

//Base Health Upgrade
_upgrades = (_side) call CTI_CO_FNC_GetSideUpgrades;
_upgrade_basehealth = _upgrades select CTI_UPGRADE_BASE_HEALTH;
_baseratio = 1;

//--- Check for last damage time
_lastdamagetime = _damaged getVariable ["cti_damage_lastdamaged", (time - 10)]; 			
_lastdamagediff = time - _lastdamagetime;
_damaged setVariable ["cti_damage_lastdamaged", time];

//--- Adjust this for sleep between each damage hit
if (_lastdamagediff <= 0.01) exitWith {0};

//--- Base Health Upgrade
if (CTI_BASE_HEALTH_UPGRADE > 0) then {
	switch (_upgrade_basehealth) do {
		case 0: {_baseratio = CTI_BASE_HEALTH_MULTIPLIER select 0;};
		case 1: {_baseratio = CTI_BASE_HEALTH_MULTIPLIER select 1;};
		case 2: {_baseratio = CTI_BASE_HEALTH_MULTIPLIER select 2;};
		case 3: {_baseratio = CTI_BASE_HEALTH_MULTIPLIER select 3;};
		case 4: {_baseratio = CTI_BASE_HEALTH_MULTIPLIER select 4;};
	};
} else {
			_baseratio = CTI_BASE_HEALTH_MULTIPLIER select 4;
		};
if (CTI_BASE_NOOBPROTECTION isEqualTo 1 && side _shooter in [_side, sideEnemy]) exitWith {0};
//--- Adjust damage for ammo types
//--- This is active file that works with base damage 2/17/2017 -Omon
//--- This damage values are also used in FOB damage system as well as Statics "Live thanks for living this notes in"

_dmg_mutliplier = -1;
_dmg_max = 0;

//--- Handle the different ammunitions
switch (true) do {
	//--- Tanks
	case (_ammo isKindOf ["ShellBase", configFile >> "CfgAmmo"] || _ammo isKindOf ["ShellCore", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_SHELL;
		_dmg_max = CTI_BASE_DAMAGE_MAX_SHELL;
	};
	//--- Arty (Has to be Spesific as tanks use same basecore)
	case (_ammo isKindOf ["Sh_155mm_AMOS", configFile >> "CfgAmmo"] || _ammo isKindOf ["R_230mm_HE", configFile >> "CfgAmmo"] || _ammo isKindOf ["R_230mm_fly", configFile >> "CfgAmmo"] || _ammo isKindOf ["Mo_cluster_AP", configFile >> "CfgAmmo"] || _ammo isKindOf ["ArtilleryRocketCore", configFile >> "CfgAmmo"]) : {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_ARTY;
		_dmg_max = CTI_BASE_DAMAGE_MAX_ARTY;
	};
	//--- Satchels
	case (_ammo isKindOf ["TimeBombCore", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_SATCHEL;
		_dmg_max = CTI_BASE_DAMAGE_MAX_SATCHEL;
	};
	//--- Satchels
	case (_ammo isKindOf ["PipeBombCore", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_PIPE;
		_dmg_max = CTI_BASE_DAMAGE_MAX_PIPE;
	};
	//--- HE Cannons
	case (_ammo isKindOf ["GrenadeBase", configFile >> "CfgAmmo"] || _ammo isKindOf ["BulletBase", configFile >> "CfgAmmo"] || _ammo isKindOf ["VehicleMagazine", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_CANNON;
		_dmg_max = CTI_BASE_DAMAGE_MAX_CANNON;
	};
	//--- Missiles
	case (_ammo isKindOf ["MissileCore", configFile >> "CfgAmmo"] || _ammo isKindOf ["MissileBase", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_MISSLE;
		_dmg_max = CTI_BASE_DAMAGE_MAX_MISSLE;
	};
	//--- Explosions
	case (_ammo isKindOf ["FuelExplosion", configFile >> "CfgAmmo"] || _ammo isKindOf ["FuelExplosionBig", configFile >> "CfgAmmo"] || _ammo isKindOf ["HelicopterExploSmall", configFile >> "CfgAmmo"] || _ammo isKindOf ["HelicopterExploBig", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_FUEL;
		_dmg_max = CTI_BASE_DAMAGE_MAX_FUEL;
	};
	//--- Rockets
	case (_ammo isKindOf ["RocketCore", configFile >> "CfgAmmo"] || _ammo isKindOf ["M_Titan_AT", configFile >> "CfgAmmo"] || _ammo isKindOf ["M_Titan_AP", configFile >> "CfgAmmo"] || _ammo isKindOf ["M_Titan_AA", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_ROCKETS;
		_dmg_max = CTI_BASE_DAMAGE_MAX_ROCKETS;
	};
	//--- Bombs
	case (_ammo isKindOf ["BombCore", configFile >> "CfgAmmo"] || _ammo isKindOf ["LaserBombCore", configFile >> "CfgAmmo"] || _ammo isKindOf ["MineCore", configFile >> "CfgAmmo"]): {
		_dmg_mutliplier = CTI_BASE_DAMAGE_MULTIPLIER_BOMB;
		_dmg_max = CTI_BASE_DAMAGE_MAX_BOMB;
	};
};

//--- Apply a custom multiplier if specified
if (_dmg_mutliplier > -1) then {
	_damage = _damage * _dmg_mutliplier;
	if (_damage > _dmg_max) then {_damage = _dmg_max};
};

if (_reduce_damages > 0 ) then {
	_reduce_damages = _reduce_damages * _baseratio;
	_currentdmg = getDammage _damaged; 
	_damage = _currentdmg + ((_damage - _currentdmg) / _reduce_damages);
} else {
	_multiply_damages = _multiply_damages / _baseratio;
	if (_multiply_damages > 0 ) then {
		_currentdmg = getDammage _damaged; 
		_damage = _currentdmg - (_damage * _multiply_damages);
	} else {
		_currentdmg = getDammage _damaged;
		_damage = _currentdmg + ((_damage - _currentdmg) / _baseratio);
	};
};

if (CTI_BASE_DISPLAY_HINT isEqualTo 1) then{
	_health = (1 - _damage);
	_health = (_health * 100);
	_health = [_health, 1] call BIS_fnc_cutDecimals; // returns returns _health with 1 decimal place
	if (alive _damaged && !(side _shooter in [_side, sideEnemy])) then {
		["building-hit",[ _health, _upgrade_basehealth]] remoteExec ["CTI_CL_FNC_DisplayMessage",owner _shooter]; // displays a hint for player shooting the structure
	};
};
//--- Display a message to the team
if !(alive _damaged) then {
	["defense-destroyed", [_variable, _position]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
};
_damage