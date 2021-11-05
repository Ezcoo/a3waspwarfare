/*
  # HEADER #
	Script: 		Common\Functions\Common_CreateVehicle.sqf
	Alias:			CTI_CO_FNC_CreateVehicle
	Description:	Create an empty vehicle
					Note that making a vehicle public with the _net variable will make it
					undergo the function CTI_CO_FNC_InitializeNetVehicle
					A public vehicle is initialized for all (+JIP) but the server
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	01-01-2018 (Modified by JEDMario)

  # PARAMETERS #
    0	[String]: The type of vehicle to create
    1	[Array/Object]: The 2D/3D position where the vehicle should be created at
    2	[Integer]: The Azimuth direction (0-360ï¿½) of the vehicle
    3	[Side/Integer]: The Side or Side ID of the vehicle
    4	{Optionnal} [Boolean]: Determine if the vehicle should be created locked or not
    5	{Optionnal} [Boolean]: Determine if the vehicle should be "public" or not
    6	{Optionnal} [Boolean]: Determine if the vehicle should be handled upon destruction or not (bounty...tk...)
    7	{Optionnal} [String]: Set a special spawn mode for the vehicle

  # RETURNED VALUE #
	[Object]: The created vehicle

  # SYNTAX #
	[CLASSNAME, POSITION, DIRECTION, SIDE] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED, PUBLIC] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED, PUBLIC, HANDLED] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED, PUBLIC, HANDLED, SPECIAL] call CTI_CO_FNC_CreateVehicle

  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_OnUnitGetOut
	Common Function: CTI_CO_FNC_OnUnitHit
	Common Function: CTI_CO_FNC_OnUnitKilled

  # EXAMPLE #
	_vehicle = ["B_Quadbike_01_F", getPos player, 0, CTI_P_SideJoined] call CTI_CO_FNC_CreateVehicle;
	  -> Create a "B_Quadbike_01_F" at the player's position facing North on the player's initial side
	_vehicle = ["B_Quadbike_01_F", getPos player, 180, CTI_P_SideJoined, true, true] call CTI_CO_FNC_CreateVehicle;
	  -> Create a locked and handled "B_Quadbike_01_F" at the player's position facing South on the player's initial side
*/

params ["_type", "_position", "_direction", "_sideID", ["_locked", false], ["_net", false], ["_handle", false], ["_special", "FORM"],["_created", objNull],["_allow_deletion",true]];
private ["_side", "_vehicle", "_velocity", "_upgrades", "_upgrade_lvoss", "_upgrade_era"];

if (typeName _position isEqualTo "OBJECT") then {_position = getPos _position};
if (typeName _sideID isEqualTo "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};

_side = _sideID call CTI_CO_FNC_GetSideFromID;

if (CTI_Log_Level >= CTI_Log_Debug) then {
	["DEBUG", "FILE: Common\Functions\Common_CreateVehicle.sqf", format["Attempting to create a [%1] vehicle at position [%2] with direction [%3] on side [%4], locked [%5]? net [%6]? handle [%7]? special [%8]", _type, _position, _direction, _side, _locked, _net, _handle, _special]] call CTI_CO_FNC_Log;
};

_vehicle = createVehicle [_type, _position, [], 7, _special];

if !(_allow_deletion) then
{
	[[_vehicle]] remoteExec ["removeFromRemainsCollector", 2];
	//removeFromRemainsCollector [_vehicle];
};
	

//--- Spawn Protection - prevents explosions on spawn 
_vehicle removeAllEventHandlers "HandleDamage";
_EHkilledIdx = _vehicle addEventHandler ["HandleDamage", {false}];
[_vehicle, _EHkilledIdx] spawn {
	_vehicle = _this select 0;
	_EHkilledIdx = _this select 1;
	_vehicle allowDamage false;
	sleep 5;
	_vehicle removeEventHandler ["HandleDamage", _EHkilledIdx];
	_vehicle allowDamage true;
};

_vehicle setVariable ["BIS_enableRandomization", false];//stop randomization (for skin fix)
_velocity = velocity _vehicle;
_vehicle setDir _direction;
_vehicle setVectorUp surfaceNormal position _vehicle;


//(_vehicle) remoteExec ["CTI_PVF_CO_HandleSpawnDamage"];

if (isNull _created) then {
	_vehicle setDir _direction;
	//Unmanned Unit fix
	if (getNumber(configFile >> 'CfgVehicles' >> _type >> 'isUav') == 1) then {createVehicleCrew _vehicle};

	//--- Place Wheeled vehicles on Pads if avaiable.
	_pad_light = "Land_HelipadSquare_F";
	if ((_vehicle isKindOf "Motorcycle" || _vehicle isKindOf "Car" || _vehicle isKindOf "WheeledAPC") && _special == "FORM") then {
		_pads = nearestObjects [getPos _vehicle, [_pad_light], 200];
		_free = [];
		_dir = 0;
		if (count _pads > 0) then {
			for "_i" from 0 to (count _pads - 1) do {
				_no = nearestObjects [getPos (_pads select _i), ["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 10];
				_double = _pad_light countType _no;
				_dir = getDir (_pads select _i);
				if (_no isEqualTo [_pads select _i] || _double == count _no) then {_free = _free + [[getPos (_pads select _i), _dir]];};
			};
		};
		if (count _free > 0) then {_selpad = selectRandom _free;_vehicle setPos (_selpad select 0);_vehicle setDir (_selpad select 1);_vehicle setVectorUp surfaceNormal position _vehicle;};
	};	
	//--- Place Tracked vehicles on Pads if avaiable.
	_pad_heavy = "Land_HelipadRescue_F";
	if ((_vehicle isKindOf "Tank" || _vehicle isKindOf "TrackedAPC") && _special == "FORM") then {
		_pads = nearestObjects [getPos _vehicle, [_pad_heavy], 200];
		_free = [];
		_dir = 0;
		if (count _pads > 0) then {
			for "_i" from 0 to (count _pads - 1) do {
				_no = nearestObjects [getPos (_pads select _i), ["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 10];
				_double = _pad_heavy countType _no;
				_dir = getDir (_pads select _i);
				if (_no isEqualTo [_pads select _i] || _double == count _no) then {_free = _free + [[getPos (_pads select _i), _dir]];};
			};
		};
		if (count _free > 0) then {_selpad = selectRandom _free;_vehicle setPos (_selpad select 0);_vehicle setDir (_selpad select 1);_vehicle setVectorUp surfaceNormal position _vehicle;};
	};
	//--- Place Planes on Pads if avaiable.
	_pad_planes = "Land_HelipadCivil_F";
	if (_vehicle isKindOf "Plane" && _special == "FORM") then {
		_pads = nearestObjects [getPos _vehicle, [_pad_planes], 200];
		_free = [];
		_dir = 0;
		if (count _pads > 0) then {
			for "_i" from 0 to (count _pads - 1) do {
				_no = nearestObjects [getPos (_pads select _i), ["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 10];
				_double = _pad_planes countType _no;
				_dir = getDir (_pads select _i);
				if (_no isEqualTo [_pads select _i] || _double == count _no) then {_free = _free + [[getPos (_pads select _i), _dir]];};
			};
		};
		if (count _free > 0) then {_selpad = selectRandom _free;_vehicle setPos (_selpad select 0);_vehicle setDir (_selpad select 1);_vehicle setVectorUp surfaceNormal position _vehicle;};
	};
	//--- Place Helicopters on Pads if avaiable.
	_pad_heli = "Land_HelipadCircle_F";
	if (_vehicle isKindOf "Helicopter" && _special == "FORM") then {
		_pads = nearestObjects [getPos _vehicle, [_pad_heli], 200];
		_free = [];
		_dir = 0;
		if (count _pads > 0) then {
			for "_i" from 0 to (count _pads - 1) do {
				_no = nearestObjects [getPos (_pads select _i), ["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 10];
				_double = _pad_heli countType _no;
				_dir = getDir (_pads select _i);
				if (_no isEqualTo [_pads select _i] || _double == count _no) then {_free = _free + [[getPos (_pads select _i), _dir]];};
			};
		};
		if (count _free > 0) then {_selpad = selectRandom _free;_vehicle setPos (_selpad select 0);_vehicle setDir (_selpad select 1);_vehicle setVectorUp surfaceNormal position _vehicle;};
	};
	//--- Place PODS and ammo boxes
	_pad_pod = "Land_JumpTarget_F";
	if ((_vehicle isKindOf "StaticWeapon" || _vehicle isKindOf "ReammoBox_F" || _vehicle isKindOf "Slingload_base_F") && _special == "FORM") then {
		_pads = nearestObjects [getPos _vehicle, [_pad_pod], 200];
		_free = [];
		_dir = 0;
		if (count _pads > 0) then {
			for "_i" from 0 to (count _pads - 1) do {
				_no = nearestObjects [getPos (_pads select _i), ["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 10];
				_double = _pad_pod countType _no;
				_dir = getDir (_pads select _i);
				if (_no isEqualTo [_pads select _i] || _double == count _no) then {_free = _free + [[getPos (_pads select _i), _dir]];};
			};
		};
		if (count _free > 0) then {_selpad = selectRandom _free;_vehicle setPos (_selpad select 0);_vehicle setDir (_selpad select 1);_vehicle setVectorUp surfaceNormal position _vehicle;};
	};
	//--- NAVAL PLACEMENT
	_pad_naval = "Land_nav_pier_m_F";
	if (_vehicle isKindOf "Ship" && _special == "FORM") then {
		_pads = nearestObjects [getPos _vehicle, [_pad_naval], 700];
		_free = [];
		_dir = 0;
		if (count _pads > 0) then {
			for "_i" from 0 to (count _pads - 1) do {
				_leftside = (_pads select _i) modelToWorld [0,-20,25];
				_leftno = nearestObjects [_leftside, ["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],60];
				_doubleleft = _pad_naval countType _leftno;

				_dir = getDir (_pads select _i);
				if (_leftno isEqualTo [_pads select _i] || _doubleleft == count _leftno ) then {
					_seadepthl = abs (getTerrainHeightASL _leftside);
					if (_seadepthl > 4) then {_free = _free + [[_leftside, _dir]];};
				};

				_rightside = (_pads select _i) modelToWorld [0,20,25];
				_rightno = nearestObjects [_rightside, ["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],60];
				_doubleright = _pad_naval countType _rightno;

				_dir = getDir (_pads select _i);
				if (_rightno isEqualTo [_pads select _i] || _doubleright == count _rightno ) then {
					_seadepthr = abs (getTerrainHeightASL _rightside);
					if (_seadepthr > 4) then {_free = _free + [[_rightside, _dir]];};
				};
			};
		};
		if (count _free > 0) then {
			_selpad = selectRandom _free;
			_vehicle setPos (_selpad select 0);
			_vehicle setDir ((_selpad select 1) - 90);
		};
	};

	if (_special == "FLY" && _vehicle isKindOf "Plane") then {
		_vehicle setVelocity [75 * (sin _direction), 75 * (cos _direction), 0];
	} else {
		_vehicle setVelocity [0,0,1];
	};

};
if (_locked) then {_vehicle lock 2};
if (_net) then {_vehicle setVariable ["cti_net", _sideID, true]};
if (_handle) then {
	_vehicle addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]]; //--- Called on destruction
	_vehicle addEventHandler ["hit", {_this spawn CTI_CO_FNC_OnUnitHit}]; //--- Register importants hits
	//--- Track who get in or out of the vehicle so that we may determine the death more easily
	_vehicle addEventHandler ["getIn", {_this spawn CTI_CO_FNC_OnUnitGetIn}];
	_vehicle addEventHandler ["getOut", {_this spawn CTI_CO_FNC_OnUnitGetOut}];
	_vehicle setVariable ["cti_occupant", _side];
	_vehicle setVariable ["initial_side", _side, true];
};

//--- Tire protection (Client, HC, Server). TODO: Detect if the vehicle has wheels
if (CTI_VEHICLES_PROTECT_TIRES > 0 && _vehicle isKindOf "Car") then {
	_vehicle setVariable ["cti_wheels_protect", true, true];
	(_vehicle) remoteExec ["CTI_PVF_CO_AddVehicleHandleTiresDamages"];
};


//--- Artillery Radar tracking
if (getNumber(configFile >> "CfgVehicles" >> _type >> "artilleryScanner") > 0 && CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY > -1) then {
	//(_vehicle) remoteExec ["CTI_PVF_CLT_OnArtilleryPieceTracked", CTI_PV_CLIENTS];
	if (!CTI_IsServer) then {
		(_vehicle) remoteExec ["CTI_PVF_SRV_OnArtilleryPieceTracked", CTI_PV_SERVER];
	} else {
		(_vehicle) call CTI_PVF_SRV_OnArtilleryPieceTracked;
	};
};

if (getAmmoCargo _vehicle > 0) then {_vehicle setAmmoCargo  0};

//--- Clear out the cargo of the vehicle
clearItemCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

//--- Advanced Fuel Consumption
if (CTI_VEHICLES_FUEL_CONSUMPTION > 0) then {
	(_vehicle) remoteExec ["CTI_PVF_CO_AdvancedFuelConsumption"];
};

//---APS system upgrades
_upgrades = nil;
_upgrade_lvoss = 0;
_upgrade_era = 0;
if (count ((_side) call CTI_CO_FNC_GetSideUpgrades) > 0) then {
	_upgrades = (_side) call CTI_CO_FNC_GetSideUpgrades;
	if (CTI_VEHICLES_LVOSS isEqualTo 1) then {_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;};
	if (CTI_VEHICLES_ERA isEqualTo 1) then {_upgrade_era = _upgrades select CTI_UPGRADE_ERA;};
};


/* if (typeOf _vehicle in CTI_ECM_VEHICLES) then 
{
	_vehicle setVariable ["ecm", false, true];
};
*/

//---Add LVOSS system
if (CTI_VEHICLES_LVOSS isEqualTo 1) then {
	if (isNil "_upgrade_lvoss") then {_upgrade_lvoss = 0;};
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
			_vehicle setVariable ["reloading_left", 0, true];
			_vehicle setVariable ["reloading_right", 0, true];
		};
	};
};
//---Add ERA system
if (CTI_VEHICLES_ERA isEqualTo 1) then {
	if (isNil "_upgrade_era") then {_upgrade_era = 0;};
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
			_vehicle setVariable ["reloading_left", 0, true];
			_vehicle setVariable ["reloading_right", 0, true];
		};
	};
};



//-- Radar Support to all for now
_vehicle setVehicleRadar 1; //AI radar Usage : 0 - automatic, 1 - forced on, 2 - forced off
_vehicle setVehicleReportRemoteTargets true; //Sets that the vehicle will share targets that were acquired by its own sensors via datalink to the Side center.
_vehicle setVehicleReceiveRemoteTargets true; //Sets that the vehicle will be able to receive targets acquired by someone else via datalink from the Side center.
_vehicle setVehicleReportOwnPosition true; // Sets that the vehicle will share its own position via datalink to the Side center.

//--- ZEUS Curator Editable
if !(isNil "ADMIN_ZEUS") then {
	if (CTI_IsServer) then {
		ADMIN_ZEUS addCuratorEditableObjects [[_vehicle], true];
	} else {
		[ADMIN_ZEUS, _vehicle] remoteExec ["CTI_PVF_SRV_RequestAddCuratorEditable", CTI_PV_SERVER];
	};
};

//--- Laser designator on CUP aircraft
if (typeOf _vehicle in CTI_LASERDES_VEHICLES_AIR) then 
{
	_vehicle removeWeaponTurret ["Laserdesignator_mounted", [0]];
	_vehicle removeWeaponTurret ["CUP_Laserdesignator_mounted", [0]];
	_vehicle addWeaponTurret ["Laserdesignator_mounted",[0]];  
	_vehicle addMagazineTurret ["Laserbatteries",[0]]; 

};
//--- Randomization
//--- https://community.bistudio.com/wiki/Vehicle_Customization_(VhC)
[
	_vehicle,
	nil, //variant
	[] //animations
] call BIS_fnc_initVehicle;

//---FREEDOM
if (_type isKindOf "OFPS_HAFM_CARGO_O" || _type isKindOf "OFPS_HAFM_CARGO_B") then {
	_base = createSimpleObject ["land_carrier_01_base_f",[0,0,0]] ;
	_data = (getArray (configfile >> "CfgVehicles" >> "Land_Carrier_01_base_F" >> "multiStructureParts")) apply {
		_pos = _base selectionPosition (_x select 1) ;
		[
			_x select 0,
			[
				-(_pos select 0),
				-(_pos select 1),
				(_pos select 2) - 2
			]
		]
	};
	{
		_x params ["_class","_pos"] ;
		//_part = createSimpleObject [_class,[0,0,0]];
		_part = createVehicle [_class,[0,0,0]];
		[_vehicle, _part] remoteExecCall ["disableCollisionWith", 0, _vehicle];
		_part attachTo [_vehicle,_pos vectorAdd [0,0,-10]];
		_part setDir 180 ;
	} forEach _data ;
	deleteVehicle _base ;
};



_vehicle call CTI_CO_FNC_UnitCreated;

_vehicle