/*
  # HEADER #
	Script: 		Common\Functions\Common_SanitizeLandOrdinance.sqf
	Alias:			CTI_CO_FNC_SanitizeLandOrdinance
	Description:	Sanitize the Land Based Ordinance
	Author: 		Benny
	Creation Date:	15-06-2017
	Revision Date:	15-06-2017
	
  # PARAMETERS #
    0	[Object]: The vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(VEHICLE) call CTI_CO_FNC_SanitizeLandOrdinance
	
  # EXAMPLE #
    (vehicle player) call CTI_CO_FNC_SanitizeLandOrdinance;
	  -> Sanitize the player's vehicle
*/
params ["_vehicle", "_side"];
private ["_magazines","_vehicle","_activePylonMags","_activePylonMagsCount","_typepylonlist","_turretlist","_maglist","_pathlist","_countlist","_upgrades","_turrets","_mags","_paths","_path"];

//Gather all current mags

//Pylons
_activePylonMags = GetPylonMagazines _vehicle;
_activePylonMagsCount = [];
_typepylonlist = [];
{
	_ammoCount = _vehicle ammoOnPylon _x;
	_activePylonMagsCount pushback _ammoCount;
} forEach _activePylonMags;	

//Turret based
_turretlist = [];
_maglist = [];
_pathlist = [];
_countlist = [];
{ 
	_turrets = getArray (_x >> "weapons"); 
	if ( count _turrets > 0 ) then {
		{
			_turretlist pushback _x;	
		} forEach _turrets;
	};
	//_turretlist pushback _turrets;
	_magsfull = magazinesAllTurrets _vehicle;
	{
		_maglist pushback (_x select 0);
		_pathlist pushback (_x select 1);
		_countlist pushback (_x select 2);	
	} forEach _magsfull;		
} forEach ([_vehicle, configNull] call BIS_fnc_getTurrets);

//get side upgrades
_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;


//Remove ammmo on pylons
{
	_magvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",_side,_x];
	if (!isNil "_magvar") then {
		_mag_enabled = _magvar select CTI_AMMO_ENABLED;
		_mag_name = _magvar select CTI_AMMO_NAME;
		_mag_type = _magvar select CTI_AMMO_TYPE;
		_mag_class = _magvar select CTI_AMMO_CLASSNAME;
		_mag_location = _magvar select CTI_AMMO_LOCATION;
		_mag_upgrade = _magvar select CTI_AMMO_UPGRADE;
		_mag_price = _magvar select CTI_AMMO_PRICE;
		_mag_time = _magvar select CTI_AMMO_TIME;
		_mag_filters = _magvar select CTI_AMMO_FILTERS;
		//systemchat format ["magvar OK:  %1 | %2", _mag_type, _mag_upgrade];
		if (_mag_type isEqualTo "Land") then {
			_upgrade_lvl = _upgrades select CTI_UPGRADE_LAND_ORDINANCE;
			//systemchat format ["upgrade OK:  %1 | %2",_upgrade_lvl, _mag_upgrade];
			if (_upgrade_lvl < _mag_upgrade) then {
				[_vehicle,[_foreachIndex + 1,"",true]] remoteexec ["setPylonLoadOut",0];
				[_vehicle,[_foreachIndex + 1,0]] remoteexec ["SetAmmoOnPylon",0];
				systemchat format ["Ammo Not Unlocked | Removing %1",_x];
				//issue refund?
				playSound "Click";
			};
		};	
		sleep 0.5;			
	};
} forEach _activePylonMags;
//systemchat format ["Land Ordinance | Pylon Check Complete"];

//remove ammo on turrets
_turrets = _turretlist;
_mags = _maglist;
_paths = _pathlist;
//systemchat format ["Mag List %1",_mags ];
_path = [];
{ 
	_path = _paths select _foreachindex;
	_mag = _mags select _foreachindex;
	_magvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",_side,_mag];
	if (!isNil "_magvar") then {
		_mag_enabled = _magvar select CTI_AMMO_ENABLED;
		_mag_name = _magvar select CTI_AMMO_NAME;
		_mag_type = _magvar select CTI_AMMO_TYPE;
		_mag_class = _magvar select CTI_AMMO_CLASSNAME;
		_mag_location = _magvar select CTI_AMMO_LOCATION;
		_mag_upgrade = _magvar select CTI_AMMO_UPGRADE;
		_mag_price = _magvar select CTI_AMMO_PRICE;
		_mag_time = _magvar select CTI_AMMO_TIME;
		_mag_filters = _magvar select CTI_AMMO_FILTERS;
		if (_mag_type isEqualTo "Land") then {
			_upgrade_lvl = _upgrades select CTI_UPGRADE_LAND_ORDINANCE;
			if (_upgrade_lvl < _mag_upgrade) then {
				_vehicle removeMagazineTurret [_mag, [_path]]; 
				systemchat format ["Ammo Not Unlocked | Removing %1 | $%2",_mag,_mag_price];
				//issue refund?
				playSound "Click";
			};
		};
		sleep 0.5;
	};
} forEach _mags;
//systemchat format ["Land Ordinance | Turret Check Complete"];