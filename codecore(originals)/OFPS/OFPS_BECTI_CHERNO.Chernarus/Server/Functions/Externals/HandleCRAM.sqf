/*
  # HEADER #
	Description:	Fire control of C-RAMs. All targets (Rockets/Missiles, Arty, Mortar and other airborne targets, configurable) within a configurable envelope will be engaged.
					This script occupies all manned C-RAM turrets for the given side.
					Approach:
						- The environment of all CRAM turrets will be scanned for targets regularly
						- If targets appear in "tracking range", they will be assigned to a turret
							- Tt will begin to turn and aim at the target
							- Once target is in "open fire range", it will be fired upon
							- Once the CRAM rounds reach proximity to the target, they will explode and damage/destroy the target
						- Targets are prioritized according to distance to the CRAMs - closest first

  # PARAMETERS #
    0	[Side]: The active side
	
  # SYNTAX #
	[SIDE] spawn HandleCRAM
*/

// --- Configuration ---            // All units denominated in SI (metres, seconds)

// Warning: Configuration also needs to be made in the clientside code CRAMControl_FiredEvent

#define TRACKINGRANGE 2500
// CRAMs will track a projectile within a TRACKINGRANGE meter(s) radius of the CRAM.
#define OPENFIRERANGE 1500
// CRAMs will fire at a projectile within a OPENFIRERANGE meter(s) radius of the CRAM.
#define MUZZLESPEED 1440
// Muzzle velocity of the CRAM ammunition.

#define CRAMREGISTRATION 5
// The script will check for new CRAMs every CRAMREGISTRATION seconds.
#define CRAMAVAILABILITY 0.1
// The script will check the readiness of each CRAM every CRAMAVAILABILITY seconds.
#define CRAMTARGETUPDATE 0.1
// The script will update each detected projectile every TARGETUPDATE seconds.
#define CRAMSCANINTERVAL 0.1
// CRAMs will update every SCANINTERVAL second(s).
missionnamespace setVariable ["CRAM_Target_Classnames", CRAM_TARGET_CLASSES];

//_targetClasses = ["RocketCore", "ShellCore", "ShellBase", "BombCore", "MissileCore", "Air"];	// If adding clases here, it might need adjustment for hostility detection in the main loop
// ---------------------

FNC_CRAMControl_Log = {
	private _text = "CRAM Control: " + _this;
	//_text remoteExec ["systemChat"];
	//diag_log _text;
};

FNC_Proximity_Destroy = {
	private _projectile = _this select 0;
	private _magazineClass = _this select 1;
	while { alive _projectile } do {
		_nearRounds = _projectile nearObjects [_magazineClass, CRAM_PROXIMITY_RANGE];
		//hintSilent ("Distance: " + str _targetDistance + " Aim: " + str _aimingQuality + ", Proximity: " + str count _nearRounds + ", Lead: " + str (_aimHelpTarget distance _target));
		if( count _nearRounds > 0 ) then {
			// Immediately delete all kinds of ammo
			if ((typeof _projectile) isKindOf ["Default", configFile >> "CfgAmmo"]) then {
				// This will delete the round only server-side. The round is still alive on the client as a different object, and the attcker fired event script should handle it
				deleteVehicle _projectile;	
			} else {
				// Simulate proximity explosion for a part of the rounds. Leave them a chance for direct hits.
				if (random 1 > 0.5) then {
					{"SmallSecondary" createVehicle position _x; deleteVehicle _x;} forEach _nearRounds;	// Explosion variants: "SmallSecondary", "HelicopterExploSmall"
				};
			};

		};
		sleep 0.02;
	};

};

// Aim a turret at target and fire when close enough
FNC_CRAMControl_Fire = {
	private _cram = _this select 0;
	private _target = _this select 1;
	private _aimHelpTarget = _this select 2;
	private _weaponClass = _this select 3;
	private _side = _this select 4;
	
	while {alive _target && (_target distance _cram < OPENFIRERANGE)} do {
		_aimingQuality = _cram aimedAtTarget [_aimHelpTarget];
		if (_aimingQuality > 0.5 && {!terrainIntersectASL[aimPos _cram, getPosASL _aimHelpTarget]} && {!lineIntersects[aimPos _cram, aimPos _target, _cram, _target]}) then {
			[_cram, _weaponClass] call BIS_fnc_fire;
		};
		sleep 0.2;
	};
};

FNC_CRAMControl_Aim = {
	diag_log _this;
	private _cram = _this select 0;
	private _target = _this select 1;	
	private _side = _this select 2;
	_cram setVariable ["CRAM_Active", true];

	//diag_log format["CRAM %1, TARGET %2, SIDE %3", _cram, _target, _side];
	private _cramAmmoSpeedCorrected = MUZZLESPEED / (1.2);
	
	// Create the targeting helper at [0,0,0] then move it to the appropriate position, this is faster then creating it at the apropriate position first
	private _aimHelpTarget = "at_phalanx_target" createVehicle [0,0,0];
	_aimHelpTarget setPosATL [getPosATL _target select 0, getPosATL _target select 1, (getPosATL _target select 2) + 20];
	
	private _weaponClass = currentWeapon _cram;
	private _magazineClass = currentMagazine _cram;
	
	[_target, _magazineClass] spawn FNC_Proximity_Destroy;
	private _skipTarget = false;
	
	private _gunner = gunner _cram;
	// We script all targeting
	_gunner disableAI "AUTOTARGET";
	_gunner disableAI "TARGET";
	_gunner disableAI "FSM";
	
	private _targetDistance = 0;
	private _timeToTarget = 0;
	private _targetSpeed = 0;
			
	while {alive _target && !_skipTarget} do {
		_targetDistance = _cram distance _target;
		
		// Calculate needed fire position for CRAM
		_timeToTarget = _targetDistance / _cramAmmoSpeedCorrected;
		_targetSpeed = velocity _target;
		// Formula: leadPos = position of projectile + targetSpeed * timeToTarget;
		_aimHelpTarget setPosASL [
			(aimPos _target select 0) + _timeToTarget * (_targetSpeed select 0),
			(aimPos _target select 1) + _timeToTarget * (_targetSpeed select 1),
			(aimPos _target select 2) + _timeToTarget * (_targetSpeed select 2)];

		if (owner (gunner _cram) isEqualTo 0 || !isDedicated) then {
			_gunner lookAt position _aimHelpTarget;
		} else {
			[_gunner, (position _aimHelpTarget)] remoteExec ["lookAt", (owner (gunner _cram))];
		};

		if (_targetDistance < OPENFIRERANGE) then {
			if (isNil "_CRAMFire") then {
				_CRAMFire = [_cram, _target, _aimHelpTarget, _weaponClass, _side] spawn FNC_CRAMControl_Fire;
			};
		} else {
			// This case happens when the projectile leaves the tracking range of the CRAM
			if (_targetDistance > TRACKINGRANGE) then {
				_skipTarget = true;
			};
		};
		
		waitUntil {true}; // Will suspend execution until the next frame
	};
	
	deleteVehicle _aimHelpTarget;
	
	_gunner enableAI "AUTOTARGET";
	_gunner enableAI "TARGET";
	_gunner enableAI "FSM";

	if (owner (gunner _cram) isEqualTo 0 || !isDedicated) then {
		_gunner lookAt objNull;
	} else {
		[_gunner, objNull] remoteExec ["lookAt", (owner (gunner _cram))];
	};

	_cram setVariable ["CRAM_Active", false];

	
};

// Update the list of all CRAMs
FNC_CRAM_Registration = {
	while { true && (missionNamespace getVariable ["DebugLoopKill", true])} do {
		private _side = _this;
		private _classes = CRAM_TURRET_CLASSES;
		private _CRAMList = (entities [_classes, [], false, true]) select {(side _x isEqualTo _side && alive ( gunner _x))};
		missionNamespace setVariable [format["CRAM_registeredCRAMs_%1", _side], _CRAMList];
		//if (_side isEqualTo east) then {diag_log format["Registered CRAMs: %1", _CRAMList]};
		sleep CRAMREGISTRATION;
	};
};
// Update the list of ready CRAMs
FNC_CRAM_Availability = {
	while { true && (missionNamespace getVariable ["DebugLoopKill", true])} do {
		private _side = _this;
		private _registeredCRAMs = missionNamespace getVariable [format["CRAM_registeredCRAMs_%1", _side], []];
		private _readyCRAMs = _registeredCRAMs select {!(_x getVariable ["CRAM_Active", false])};
		missionNamespace setVariable [format["CRAM_readyCRAMs_%1", _side], _readyCRAMs];
		//if (_side isEqualTo east) then {diag_log format["Available CRAMs: %1", _readyCRAMs]};
		sleep CRAMAVAILABILITY;
	};
};

// Update the list of targets (just makes sure that the items in the list are allowed)
FNC_CRAM_TargetUpdate = {
	while {true && (missionNamespace getVariable ["DebugLoopKill", true])} do {
		private _side = _this;
		private _possibleTargets = (missionNamespace getVariable [format ["CRAM_Targets_%1", _side], []]) select {alive _x};
		missionNamespace setVariable [format ["CRAM_Targets_%1", _side], _possibleTargets];
		//if (_side isEqualTo east) then {diag_log format["CRAM Targets: %1", _possibleTargets]};
		sleep CRAMTARGETUPDATE;
	};
};

// Find the nearest of objects in X to item y
FNC_CRAM_Nearest = {
	private _arr = _this select 0;
	private _obj = _this select 1;
	private _sorted = [_arr,[],{_x distance _obj},"ASCEND"] call BIS_fnc_sortBy;
	_sorted select 0;
};

// Main CRAM monitor loop --// To be run on server only
FNC_CRAM_Monitor = {

	_side = _this select 0;

	// Create the update threads
	_crl = _side spawn FNC_CRAM_Registration;
	_cal = _side spawn FNC_CRAM_Availability;
	_ctl = _side spawn FNC_CRAM_TargetUpdate;

	while { true && (missionNamespace getVariable ["DebugLoopKill", true])} do
	{
		
		// Collect ready CRAMs(CRAMs that are not actively engaging a target).
		private _readyCRAMs = missionNamespace getVariable [format["CRAM_readyCRAMs_%1", _side], []];
		// Collect possible targets (make sure the projectile is still alive and update the list of targets).
		private _possibleTargets = (missionNamespace getVariable [format ["CRAM_Targets_%1", _side], []]) select {alive _x};
		
		private _cram = objNull;
		private _target = objNull;
		private _tempCRAMs = _readyCRAMs;
		private _tempTargets = _possibleTargets;
		private _CRAMTargetPairs = [];
			
			
		// Generate pairs of CRAMs and their assigned targets (closest first)
		while { !(_tempCRAMs isEqualTo []) && !(_tempTargets isEqualTo []) && (missionNamespace getVariable ["DebugLoopKill", true])} do {
			/*
			 For all tempCrams find the nearest target to a given cram, if that target has that cram as its nearest cram, 
			 then create a pair the cram and the target and remove each from their respective temp arrays.
			 */
			{
				_cram = _x;
				_nearestTarget = [_tempTargets, _cram] call FNC_CRAM_Nearest;
			    _nearestTargetCRAM = [_tempCRAMs, _nearestTarget] call FNC_CRAM_Nearest;

			    if (_cram isEqualTo _nearestTargetCRAM) exitWith {
			    	_tempCRAMs = _tempCRAMs - [_nearestTargetCRAM];
			    	_tempTargets = _tempTargets - [_nearestTarget];
		    		missionNamespace setVariable [format ["CRAM_Targets_%1", _side], _tempTargets];
			    	_CRAMTargetPairs pushback [_nearestTargetCRAM, _nearestTarget];
			    };
			} forEach _tempCRAMs;
		};

		
		private _unusedTargets = [];
		{
			_cram = _x select 0;
			_target = _x select 1;
			if ((_cram distance _target) <= TRACKINGRANGE) then {
				if (_side isEqualTo east) then {diag_log format["CRAM %1 targeting %2", _cram, _target]};
				[_cram,_target,_side] spawn FNC_CRAMControl_Aim;
			} else {
				_unusedTargets pushBack _target;
			};
		} forEach _CRAMTargetPairs;
		missionNamespace setVariable [format ["CRAM_Targets_%1", _side], _tempTargets + _unusedTargets];



		sleep CRAMSCANINTERVAL;
	};
};