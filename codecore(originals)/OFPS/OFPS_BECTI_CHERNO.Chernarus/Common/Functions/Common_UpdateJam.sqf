/*
  # HEADER #
	Script: 		Client\Functions\Client_Jamming.sqf
	Alias:			CTI_CL_FNC_UpdateJam
	Description:		Apply jamming effects from vehicles
	Author: 		Sightline
	Creation Date:	04-21-2018
	
  # PARAMETERS #
    0	[Object]: Any vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(VEHICLE) spawn CTI_CL_FNC_Jamming
	
*/

params ["_vehicle", "_is"];

private _ni        = netId _vehicle;
private _enemyside = _is call CTI_CO_FNC_GetEnemySide;


set_sensors = 
{
	params ["_vehicle", "_level", "_jam"];
	
	// Get the owner
	private _owner = owner _vehicle;

	if (isNil "_owner") exitWith {};

	if (_owner == 0 || _owner == -2) exitWith {}; 

	//format ["_owner: %1", _owner] spawn CTI_CO_FNC_DebugSay;

	switch (_level) do
	{
		case 0:
		{
			[_vehicle, ['IRSensorComponent', _jam]] remoteExec['enableVehicleSensor', _owner];

			//_vehicle enableVehicleSensor ['IRSensorComponent', _jam];
		};
			
		case 1: 
		{
			[_vehicle, ['IRSensorComponent',           _jam]] remoteExec['enableVehicleSensor', _owner];
			[_vehicle, ['PassiveRadarSensorComponent', _jam]] remoteExec['enableVehicleSensor', _owner];

			//_vehicle enableVehicleSensor ['IRSensorComponent', _jam];
			//_vehicle enableVehicleSensor ['PassiveRadarSensorComponent', _jam];
		};

		case 2:
		{
			[_vehicle, ['IRSensorComponent',           _jam]] remoteExec['enableVehicleSensor', _owner];
			[_vehicle, ['PassiveRadarSensorComponent', _jam]] remoteExec['enableVehicleSensor', _owner];
			[_vehicle, ['LaserSensorComponent',        _jam]] remoteExec['enableVehicleSensor', _owner];
			
			//_vehicle enableVehicleSensor ['IRSensorComponent', _jam];
			//_vehicle enableVehicleSensor ['LaserSensorComponent', _jam];
			//_vehicle enableVehicleSensor ['PassiveRadarSensorComponent', _jam];
		};
	
		case 3:
		{
				
			[_vehicle, ['IRSensorComponent',           _jam]] remoteExec['enableVehicleSensor', _owner];
			[_vehicle, ['PassiveRadarSensorComponent', _jam]] remoteExec['enableVehicleSensor', _owner];
			[_vehicle, ['LaserSensorComponent',        _jam]] remoteExec['enableVehicleSensor', _owner];
			[_vehicle, ['ActiveRadarSensorComponent',  _jam]] remoteExec['enableVehicleSensor', _owner];

			//_vehicle enableVehicleSensor ['IRSensorComponent', _jam];
			//_vehicle enableVehicleSensor ['PassiveRadarSensorComponent', _jam];
			//_vehicle enableVehicleSensor ['LaserSensorComponent', _jam];
			//_vehicle enableVehicleSensor ['ActiveRadarSensorComponent', _jam];
		};
	};
};


	
jammer_in_range = 
{
	params ["_range"];

	_jir     = [];
	_jvs     = [];
	
	// Find and store the jamming vehicles
	{ 
		if (alive _x) then
		{
			_ecm = _x getVariable "ecm";

			if !(isNil "_ecm")  then 
			{
				// Is the vehicles jammer even on?
				if (_ecm) then 
				{
					//"ECM ON" spawn CTI_CO_FNC_DebugSay;
					_jvs pushBack _x; 
				};
			};
		}; 

	} forEach (vehicles select { (CTI_SPECIAL_ECM isEqualTo (_x getVariable "cti_spec")) && (_x getVariable "initial_side" == _enemyside) });
	
	{
		
		// Get the distance 
		_d   = _vehicle distance _x;

		// Is the vehicle in range?
		if (_d < _range) then
		{
			//hint format ["vehicle radar is: %1", isVehicleRadarOn _x];

			// gotta get the center of the vehicle (getPosVisual is positioned right below the vehicle thus intersects with terrain)
			
			_jp = (_x modelToWorldWorld [0,0,0]);
			_ap = (_vehicle modelToWorldWorld [0,0,0]);

			// Is the vehicle visible?
			_vis  = [_vehicle, "VIEW", _x] checkVisibility [_ap, _jp];
				
			//drawLine3D [(_x modelToWorldVisual [0,0,0]), (_vehicle modelToWorldVisual [0,0,0]), [1,1,1,1]];	
			if (_vis > 0) then
			{
				// Add it to this array so we can send it to "CTI_CL_FNC_DisplayMarker"
				_jir pushBack _x;

				// Report the remote target to the initial side
				_is reportRemoteTarget [_x, 30];	

				// Confirm the target
				_x confirmSensorTarget [_is, true];
				
				// Report jammmer to _is/initial side
				//format ["reporting %1 jammer to %2", _enemyside, _is] spawn CTI_CO_FNC_DebugSay;
				[3, "ColorRed", _jir] remoteExec ["CTI_CL_FNC_DisplayMarker", _is];



			};
			
				//format ["jammer visibility: %1", _ji] spawn CTI_CO_FNC_DebugSay;
				//hint format ["jammer visibility: %1", _vis];
		};
		
	} forEach _jvs;

	_jir;
};

check_jam =
{
	/* 
	DEBUG CONSOLE TEST 
	
	["OFPS_AWC_SCOUT_O", getPos player, 180, "EAST", true, true] call CTI_CO_FNC_CreateVehicle; 
	["B_Plane_Fighter_01_F", getPos player, 180, "WEST", false, true] call CTI_CO_FNC_CreateVehicle;

	*/

	private _range = CTI_BASE_JAMMING_RANGES select ([_enemyside, CTI_UPGRADE_JAMMING_RANGE] call CTI_CO_FNC_GetUpgrade);
	private _level = [_enemyside, CTI_UPGRADE_JAMMING_TYPE] call CTI_CO_FNC_GetUpgrade;

	// DEBUGGING
	// Use the following lines to manually set the jamming range/level (for debugging)
	//_level = 4;
	//_range = 10000;

        // Define this once here so we dont call it repeatedly

	// Check the level first
	
	//systemChat format ["_level: %1", _level];
	//systemChat format ["_range: %1", _range];

	//systemChat "detecting jammers";

	if (isNil "_range" || isNil "_level") exitWith {};


	// We need all vehicles in range so we can report it
	_jir = [_range, getPosWorld _vehicle] call jammer_in_range;

	
	// If there are any jammers, apply the jamming effect based on _level 
	if ((count _jir) > 0) then
	{
		// DEBUGGING
		//systemChat "jamming sensors";
		[_vehicle, _level, false] call set_sensors;
	}

	// Remove the jamming effect if we are out of range	
	else
	{
		// DEBUGGING
		//systemChat "resetting sensors";
		[_vehicle, 3, true] call set_sensors;
	};

};


if (isNil "vl_jam") then 
{
	//"created vl_jam" spawn CTI_CO_FNC_DebugSay;
	vl_jam = [];
};

if !(_ni in vl_jam) then
{

	vl_jam pushBack _ni;

	if !(count (listVehicleSensors _vehicle) > 0) then
	{
		//format ["[%1] has no sensors, ignoring", _mn] spawn CTI_CO_FNC_DebugSay;
	}
			
	else
	{
		while {alive _vehicle} do 
		{
			// DEBUGGING
			//format ["jamming loop for %1", _mn] spawn CTI_CO_FNC_DebugSay;
			
			//systemChat "checking jam (only the person who created the vehicle should see this)";
			call check_jam;
			sleep 2; 
		};

		vl_jam = vl_jam - [_ni];
	};
}

else
{
	//"already in vl_jam, returning" spawn CTI_CO_FNC_DebugSay;
};


//while {alive _vehicle && (_vehicle == objectParent player)} do 

// remove the tracked vehicle limiter 