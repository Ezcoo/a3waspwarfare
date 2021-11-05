/* ----------------------------------------------------------------------------
Function: CUP_fnc_handleTow
Description:
Handles towing (Server Side)

Parameters:
_this select 0: OBJECT - Reference to tow vehicle
_this select 1: OBJECT - Reference to vehicle that is being towed

Returns:
Nil

Examples:
(begin example)
	[_towTruck,_car] call CUP_fnc_handleTow;
(end)

See Also:

Author:
magicsh0tz (Modified by JEDMario for use on the OFPS BECTI server)

Peer Reviewed:
nil
---------------------------------------------------------------------------- */

if (isServer) then {
	params [["_veh",objNull],["_object",objNull]];
	
	private ["_setVehicleLock","_pos", "_locked"];
	
	_locked = locked _object;
	
	_setVehicleLock = {
		params [["_veh",objNull],["_state",1]];
		[_veh,_state] remoteExec ["lock",_veh,false];
	};
	
	
	//_object enableSimulationGlobal false;
	
	//Lock vehicle and eject players who try to glitch into the vehicle
	[_object,2] call _setVehicleLock;
	{moveOut _x;} forEach (crew _object);
	
	[{
		params [["_veh",objNull],["_object",objNull],["_setVehicleLock",{}]];
		!(alive _veh) || !(alive _object) || (_veh getVariable ["CUP_Tow_towedVeh",objNull]) != _object
	},
	{
		params [["_veh",objNull],["_object",objNull],["_setVehicleLock",{}], "_locked"];
		
		private ["_pos"];
		
		//Detach object and enable simulation
		detach _object;
		//_object enableSimulationGlobal true;
		
		//Floating fix
		_object setDamage (damage _object);
		
		//Unlock vehicle
		[_object, _locked] call _setVehicleLock;
	},[_veh,_object,_setVehicleLock, _locked]] call CBA_fnc_waitUntilAndExecute;
} else {
	_this remoteExec ["CUP_fnc_handleTow",2,false];
};