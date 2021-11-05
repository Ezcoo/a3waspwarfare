/*
  # HEADER #
	Script: 		Server\Functions\Server_DeployFOB.sqf
	Alias:			CTI_SE_FNC_DeployFOB
	Description:	Deploy FOB
	Author: 		Benny
	Creation Date:	01-06-2016
	Revision Date:	01-06-2016
	
  # PARAMETERS #
    0	[String]: The structure variable name
    1	[Side]: The Side which requested it
    2	[Array]: The position of the vehicle
    3	[Number]: The direction of the vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[STRUCTURE VARIABLE, SIDE, POSITION, DIRECTION] Spawn CTI_SE_FNC_DeployFOB
	
  # EXAMPLE #
    [_variable, CTI_P_SideJoined, [_pos select 0, _pos select 1], _dir] Spawn CTI_SE_FNC_DeployFOB
*/

params["_vehicle", "_side", "_position", "_direction", "_fobtype", "_fobclass", "_fobclassruins"];
private ["_structure", "_logic","_damagereduce","_damagemult","_vehicleType"];

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_structure = "";
_damagereduce = 0;
_damagemult = 0;
_vehicleType = typeOf _vehicle;
//remove vehicle
deleteVehicle _vehicle;
switch (_fobtype) do {
	case "small": {
		_structure = _fobclass createVehicle _position;
		_structure setPos _position;
		//_structure setVectorUp [0,0,0];
		_structure setVectorUp surfaceNormal _position;
		_structure setVariable ["cti_fob", [],true];
		(_structure) remoteExec ["CTI_PVF_CLT_OnFOBDeployment", _side];
		_logic setVariable ["cti_fobs", (_logic getVariable "cti_fobs") + [_structure], true];
		_damagereduce = 0;
		_damagemult = 0;
		_structure setDir (_direction - 180);
		_structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, _this select 4, '%1', %2, %3, %4, %5, %6, %7, %8] call CTI_SE_FNC_OnFOBHandleVirtualDamage", _structure, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, _damagereduce, _damagemult, [_fobclassruins], [_fobtype]]];
		//--- ZEUS Curator Editable
		if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_structure], true]};
		
	};
	case "large": {
		_structure = _fobclass createVehicle _position;
		_structure setPos _position;
		//_structure setVectorUp [0,0,0];
		_structure setVectorUp surfaceNormal _position;
		_structure setVariable ["cti_large_fob", [],true];
		(_structure) remoteExec ["CTI_PVF_CLT_OnLargeFOBDeployment", _side];
		_logic setVariable ["cti_large_fobs", (_logic getVariable "cti_large_fobs") + [_structure], true];
		_damagereduce = 0;
		_damagemult = 4;//increase damage multiplier 400%
		_structure setDir _direction;
		_structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, _this select 4, '%1', %2, %3, %4, %5, %6, %7, %8] call CTI_SE_FNC_OnFOBHandleVirtualDamage", _structure, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, _damagereduce, _damagemult, [_fobclassruins], [_fobtype]]];
		//--- ZEUS Curator Editable
		if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_structure], true]};
	};
};

_structure setVariable ["cti_FOB_type", _fobtype];
_structure setVariable ["cti_FOB_truck_type", _vehicleType, true];
//add zeus
_structure call CTI_CO_FNC_UnitCreated;