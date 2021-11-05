/*
  # HEADER #
	Description:	Client-side part of C-RAM fire control. This will delete client-side rounds which come close to CRAM rounds
					Contains an event handler for the "Fired" event

*/

// --- Configuration ---            // All units denominated in SI (metres, seconds)

// Warning: Configuration also needs to be made in the serverside code HandleCRAM

// Configuration of CRAM_PROXIMITY_RANGE, CRAM_TURRET_CLASSES, and CRAM_TARGET_CLASSES is done Init_CommonConstants.sqf

CRAMControl_vehiclesWithEH = [];
CRAMControl_unitsWithEH = [];

// Helper function for debugging only, adds event handlers for all units
FNC_CRAMControl_AddFiredForAll_DEBUG = 
{
	// Add eventhandler to all vehicles and units that don't have them yet
	
	{
		if ( !(_x in CRAMControl_unitsWithEH)) then {
			_x addEventHandler ["FiredMan",{_this spawn FNC_CRAMControl_AttackerFiredEH}];
			_x remoteExec ["CTI_PVF_SRV_AddCRAMFireEH", CTI_PV_SERVER];
			CRAMControl_unitsWithEH pushBack _x;
		};
		
	} forEach allUnits;
	
	{
		{
			if ( !(_x in CRAMControl_vehiclesWithEH)) then {
				_x addEventHandler ["FiredMan",{_this spawn FNC_CRAMControl_AttackerFiredEH}];
				_x remoteExec ["CTI_PVF_SRV_AddCRAMFireEH", CTI_PV_SERVER];
				CRAMControl_vehiclesWithEH pushBack _x;
			};
		} forEach crew _x;
	} forEach vehicles;
};

FNC_CRAMControl_AttackerFiredEH = 
{
	private ["_unit","_weapon","_projectile","_vehicle"];
	_unit = _this Select 0;
	_ammoType = _this select 4;
	_projectile = _this select 6;
	_vehicle = _this select 7;
	_isCRAMTurret = false;
	{
		if (_vehicle isKindOf _x) then {
			_isCRAMTurret = true;
		};
	} forEach CRAM_TURRET_CLASSES;
	
	if (!_isCRAMTurret) then {
		_isCRAMTargetable = false;
		{
			if (_ammoType isKindOf _x) then {
				_isCRAMTargetable = true;
			};
		} forEach CRAM_TARGET_CLASSES;
		
		if (_isCRAMTargetable) then {
			//[side _unit, position _projectile, typeOf _projectile] remoteExec ["CTI_PVF_SRV_OnCRAMTargetableFired", CTI_PV_SERVER];
		};
		//hintSilent ("potential attacker firing " + str(_projectile));
		//diag_log ("potential attacker firing " + str(_projectile));
		while {alive _projectile} do {
			_nearRounds = _projectile nearObjects ["at_phalanx_35mm_AA", CRAM_PROXIMITY_RANGE];
			
			//hintSilent ("near: " + str(count _nearRounds) + " / " + str (count _nearRounds1) + " / " + str (count _nearRounds2));
			if( count _nearRounds > 0 ) then {
				// Simulate proximity explosion
				{"SmallSecondary" createVehicle position _x; deleteVehicle _x;} forEach _nearRounds;	// Explosion variants: "SmallSecondary", "HelicopterExploSmall"
				deleteVehicle _projectile;
				diag_log format["CRAM has destroyed %1", _projectile];

				//hintSilent ("deleted " + str _projectile);
				//diag_log ("deleted " + str _projectile);
			};
			sleep 0.001;	// sleep until next frame // TODO: fixme?
		};
	};
};

// Below Are event handlers that are used to add the projectile to an array of things that a CRAM will target 
 
FNC_CRAMControl_AttackerFiredEH_SERVER = { 
  private ["_unit", "_ammo", "_weapon","_projectile","_vehicle"]; 
  _unit = _this select 0;
  _ammo = _this select 4;
  _projectile = _this select 6; 
  _vehicle = _this select 7;
  
  
  _isCRAMTurret = false; 
  {
    if (_vehicle isKindOf _x) then { 
      _isCRAMTurret = true; 
    };
  } forEach CRAM_TURRET_CLASSES; 
   
  if (!_isCRAMTurret) then { 
    _isCRAMTargetable = false; 
    { 
      if (_ammo isKindOf _x) then { 
        _isCRAMTargetable = true; 
      }; 
    } forEach CRAM_TARGET_CLASSES; 
    if (_isCRAMTargetable) then {
		diag_log ("potential attacker:" + typeOf _unit + " firing " + str(_projectile) + "; " + _ammo + " from " + typeOf _vehicle);
		if (isNull _projectile) then {
			_projectile = nearestObject [_unit, _ammo];
			diag_log ("finding ammo:" + typeOf _unit + " firing " + str(_projectile) + "; " + _ammo + " from " + typeOf _vehicle);
		};
		[side _unit, _projectile] call CTI_PVF_SRV_OnCRAMTargetableFired; 
    }; 
  }; 
}; 
 
FNC_CRAMControl_AttackerFiredEH_HC = { 
  private ["_unit","_weapon","_projectile","_vehicle"]; 
  //diag_log ("potential attacker firing something"); 
  _unit = _this select 0;
  _ammo = _this select 4;
  //diag_log ("potential attacker firing " + str(_unit)); 
  _projectile = _this select 6; 
  _vehicle = _this select 7; 
  diag_log ("potential attacker " + typeOf _unit + " firing " + str(_projectile) + "; " + _ammo +  " from " + typeOf _vehicle);
  if (isNull _projectile) then {
	_projectile = nearestObject [_unit, _ammo];
	diag_log ("finding ammo:" + typeOf _unit + " firing " + str(_projectile) + "; " + _ammo + " from " + typeOf _vehicle);
  };
  _isCRAMTurret = false; 
  { 
    if (_vehicle isKindOf _x) then { 
      _isCRAMTurret = true; 
       
      diag_log ("potential attacker firing targetable round detected" + str(_projectile)); 
    }; 
  } forEach CRAM_TURRET_CLASSES; 
   
  if (!_isCRAMTurret) then { 
     
      diag_log ("potential attacker is not a cram" + str(_projectile)); 
    _isCRAMTargetable = false; 
    { 
      if (_ammo isKindOf _x) then { 
        _isCRAMTargetable = true; 
      }; 
    } forEach CRAM_TARGET_CLASSES; 
     
    if (_isCRAMTargetable) then { 
      diag_log ("potential attacker firing targetable round" + str(_projectile)); 
      [side _unit, _projectile] call CTI_PVF_HC_OnCRAMTargetableFired; 
    }; 
  }; 
};