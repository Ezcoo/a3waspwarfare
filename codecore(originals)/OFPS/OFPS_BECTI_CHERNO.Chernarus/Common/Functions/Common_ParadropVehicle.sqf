/*
  # HEADER #
	Script: 		Client\Functions\Client_ParadropVehicle.sqf
	Alias:			CTI_CO_FNC_ParadropVehicle
	Description:	Called to paradrop a vehicle at a location. Though, you can use it to paradrop any vehicle
	Author: 		JEDMario
	Creation Date:	27-01-2018
	Revision Date:	27-01-2018
	
  # PARAMETERS #
    0	[Object]: The thing being dropped
	1	[Position]: The location of where to paradrop.
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(VEHICLE) call CTI_CO_FNC_ParadropVehicle
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetClosestTown
	Client Funciton: CTI_DisplayReward_Display
	External Script: IgiLoad Script
	
  # EXAMPLE #
    [_taruPod, _position] call CTI_CO_FNC_ParadropVehicle;
*/

params ["_vehicle", "_location"];


if (count _location == 2) then {_location set [2, CTI_HALO_ALTITUDE]};

_vehicle setPos _location;
_vehicle setVectorUp [0,0,1];

private ["_smoke", "_light", "_damage", "_smoke_type", "_chemlight_type", "_vehicle_pos", "_last_attach_pos", "_velocity", "_tmp", "_lastPos", "_lastTown", "_currentTown"];

_lastPos = _vehicle getVariable "cti_last_pos";
if !(isNil "_lastPos") then {
	_currentTown = _vehicle call CTI_CO_FNC_GetClosestTown;
	_vehicle setVariable ["cti_last_pos", position _vehicle, true];
	_vehicle setVariable ["cti_last_town", _currentTown, true];
};

//_last_attach_pos = _this select 2;
if (((IL_Para_Smoke) || (IL_Para_Smoke_Add)) && (_vehicle isKindOf "AllVehicles")) then
{
	_smoke_type = IL_Para_Smoke_Veh;
}
else
{
	_smoke_type = IL_Para_Smoke_Default;
};
if (((IL_Para_Light) || (IL_Para_Light_Add)) && (_vehicle isKindOf "AllVehicles")) then
{
	_chemlight_type = IL_Para_Light_Veh;
}
else
{
	_chemlight_type = IL_Para_Light_Default;
};

_vehicle_pos = [0,0,0];
	
_damage = getDammage _vehicle;
detach _vehicle;
_tmp = [_vehicle] spawn
{
	while {(getPosATL (_this select 0)) select 2 > IL_Para_Drop_Open_ATL} do
	{
		sleep 0.2;
	};
};
if (IL_Para_Drop_Open_ATL > 0) then
{
	while {(getPosATL _vehicle) select 2 > (IL_Para_Drop_Open_ATL + ((velocity _vehicle) select 2) * -0.5)} do
	{
		sleep 0.2;
	};
};
//	_chute = createVehicle ["NonSteerable_Parachute_F", position _vehicle, [], 0, "CAN_COLLIDE"];
_chute = createVehicle ["B_Parachute_02_F", position _vehicle, [], 0, "CAN_COLLIDE"];
_chute attachTo [_vehicle, _vehicle_pos];
_velocity = velocity _vehicle;
detach _chute;
if (IL_Para_Drop_Velocity) then
{
	_chute setVelocity _velocity;
};
_vehicle attachTo [_chute, _vehicle_pos];

if (IL_Para_Smoke) then
{
	_smoke = [_smoke_type, _vehicle] call IL_Create_And_Attach;
};
if (IL_Para_Light) then
{
	_light = [_chemlight_type, _vehicle] call IL_Create_And_Attach;
};
while {(getPos _vehicle) select 2 > 3} do
{
	sleep 0.2;
};
detach _vehicle;
if (IL_Para_Smoke) then
{
	_smoke attachTo [_vehicle,[0,0,2]];
	detach _smoke;
};
if (IL_Para_Light) then
{
	_light attachTo [_vehicle,[0,0,2]];
	detach _light;
};
//Additional lights and smoke
if (IL_Para_Smoke_Add) then
{
	_smoke = [_smoke_type, _vehicle] call IL_Create_And_Attach;
	_smoke attachTo [_vehicle,[0,0,2]];
	detach _smoke;
};
if (IL_Para_Light_Add) then
{
	_light = [_chemlight_type, _vehicle] call IL_Create_And_Attach;
	_light attachTo [_vehicle,[0,0,2]];
	detach _light;
};

_vehicle setPosASL getPosASL _vehicle;

if (IL_CDamage isEqualTo 0) then
{
	_vehicle setDamage 0;
};

if (IL_CDamage isEqualTo 1) then
{
	_vehicle setDamage _damage;
	if (_damage != (getDammage _vehicle)) then
	{
		sleep 1;
		_vehicle setDamage _damage;
	};
};