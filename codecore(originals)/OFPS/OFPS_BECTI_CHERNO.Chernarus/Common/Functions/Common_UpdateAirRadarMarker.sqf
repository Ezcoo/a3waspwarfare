/*
  # HEADER #
	Script: 		Client\Functions\Client_UpdateAirRadarMarker.sqf
	Alias:			CTI_CL_FNC_UpdateAirRadarMarker
	Description:	Update an Air unit marker according to available Air Radars
	Author: 		Benny
	Creation Date:	01-09-2016
	Revision Date:	01-09-2016
	
  # PARAMETERS #
    0	[Object]: The air vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(VEHICLE) spawn CTI_CL_FNC_UpdateAirRadarMarker
	
  # EXAMPLE #
    (enemyHind) spawn CTI_CL_FNC_UpdateAirRadarMarker
	  -> will track the object called enemyHind
*/

params ["_vehicle", "_is"];

get_dish_position = 
{
	
	params ["_radar_tower"];

	// Get the bounding box
	_box    = boundingBoxReal _radar_tower;
	
	// Get the center of the bounding box	
	_center = boundingCenter _radar_tower;
	
	// From the center we move the position to the top of the bounding box
	// center -> UP along Z axis
	_center set [2, (_box select 1) select 2];

	// Convert it to actual world space
	_dish_pos = _radar_tower modelToWorldWorld _center;
	
	// Return the position
	_dish_pos;
};




private _ni = netId _vehicle;
private _enemyside = _is call CTI_CO_FNC_GetEnemySide;

if (isNil "_enemyside") exitWith 
{
	//"_enemyside is nil" spawn CTI_CO_FNC_DebugSay;
};

if (isNil "_ni") exitWith 
{
	//"_ni is nil" spawn CTI_CO_FNC_DebugSay;
};

if (isNil "_vehicle") exitWith 
{
	//"_vehicle is nil" spawn CTI_CO_FNC_DebugSay;
};


if (isNil "vl_air_radar") then
{
	//"vl_air_radar created" spawn CTI_CO_FNC_DebugSay;
	vl_air_radar = [];
};

if !(_ni in vl_air_radar) then 
{
		
	//format ["adding %1 to vl_air_radar", _vehicle] spawn CTI_CO_FNC_DebugSay;
	vl_air_radar pushBack _ni;

	//format ["_enemyside is: %1", _enemyside] spawn CTI_CO_FNC_DebugSay;

	while {alive _vehicle} do 
	{
		private _s          = _enemyside call CTI_CO_FNC_GetSideStructures;
		private _range      = CTI_BASE_AIRRADAR_RANGES select ([_enemyside, CTI_UPGRADE_AIRR] call CTI_CO_FNC_GetUpgrade);
		private _FUCK       = [CTI_RADAR, _vehicle, _s, _range] call CTI_CO_FNC_GetClosestStructure;

		/* { 
			private _st = _x getVariable "cti_structure_type";

			if !(isNil "_st") then
			{
				format ["TYPE : %1", _st] spawn CTI_CO_FNC_DebugSay;
				format ["DISTANCE : %1", (_vehicle distance _x)] spawn CTI_CO_FNC_DebugSay;
			};
			
		} forEach _s; 
		*/
	
			
		
		//format ["_vehicle: %1", _vehicle] spawn CTI_CO_FNC_DebugSay;
		//format ["_s: %1", _s] spawn CTI_CO_FNC_DebugSay;
		//format ["_range: %1", _range] spawn CTI_CO_FNC_DebugSay;
		//format ["_air_radar: %1", _FUCK] spawn CTI_CO_FNC_DebugSay;

		//if !(isNull _air_radar) then 
		if !(isNull _FUCK) then
		{
			// DEBUGGING
			//"radar is alive" spawn CTI_CO_FNC_DebugSay;

			_dp = _FUCK call get_dish_position;

			// vehicle position (defining it once here)
			_vp = _vehicle modelToWorldWorld [0,0,0];
		
			//drawLine3D [_dp, (_vehicle modelToWorldVisual [0,0,0]), [1,1,1,1]];

			// Can the radar see it?	
			_i  = [_FUCK, "VIEW", _vehicle] checkVisibility [_dp, _vp];

			// DEBUGGING 	
			//hint format ["Radar visibility: %1", _i];
			//drawLine3D [_vp, _dp, [1,0.24,0.11,1]];

			//hint format ["local: %1", local _vehicle]; 

			if (_i > 0) then 
			{
				[2, "ColorYellow", [_vehicle]] remoteExec ["CTI_CL_FNC_DisplayMarker", _enemyside];


				// DEBUGGING
				_mn = getText(configFile >> "CfgVehicles" >> typeOf _vehicle >> "displayName");
				//format ["reporting (%1) %2 to the enemyside (%3)", _is, _mn, _enemyside] spawn CTI_CO_FNC_DebugSay;

				// datalink
				_enemyside reportRemoteTarget [_vehicle, 5];
				// Confirm it as hostile (changes the color to red)
				_vehicle confirmSensorTarget [_enemyside, true];
				
			};
		}

		else
		{
			//(format ["no air radar for side: [%1] (%2)", _enemyside, _FUCK]) spawn CTI_CO_FNC_DebugSay;
		};	
		
		sleep 4;
	};

	vl_air_radar = vl_air_radar - [_ni]
}

else  
{
	//"_vehicle already in vl_air_radar, returning" spawn CTI_CO_FNC_DebugSay;
};





