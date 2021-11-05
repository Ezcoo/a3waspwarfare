private ["_vehicles","_vehicle","_min","_upgrades","_upgrade_barracks","_min2","_lockpick","_chance"];

_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {hint "There are no nearby vehicles to lockpick"};

_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
_upgrade_barracks = _upgrades select CTI_UPGRADE_BARRACKS;
if (_upgrade_barracks <= 1) exitWith {hint "Barracks needs to be upgraded to level 2";};

_vehicle = [player, _vehicles] call CTI_CO_FNC_GetClosestEntity;

if (locked _vehicle in [-1, 0, 1]) exitWith {hint "The vehicle is not locked"};
if (count crew _vehicle > 0) exitWith {hint "The vehicle is not empty!"};

CTI_P_ActionLockPickNextUse = time + CTI_P_ActionLockPickDelay;

player playMove "Acts_carFixingWheel";
sleep 3;
waitUntil {!(animationState player isEqualTo "Acts_carFixingWheel") || !alive player || !(vehicle player isEqualTo player) || !alive _vehicle || _vehicle distance player > 5};

if (locked _vehicle in [-1, 0, 1]) exitWith {};

if (alive player && vehicle player isEqualTo player && alive _vehicle && _vehicle distance player <= 5) then {

	//--- Formula is basic Barracs upgrade level chance (_min2) * vehicle type chance (_min)
	_min2 = switch (true) do {
		case (_vehicle isKindOf "Motorcycle"): {2};
		case (_vehicle isKindOf "Car"): {2};
		case (_vehicle isKindOf "Truck"): {2};
		case (_vehicle isKindOf "Tank"): {0.5};
		case (_vehicle isKindOf "Wheeled_APC"): {0.5};
		case (_vehicle isKindOf "TrackedAPC"): {0.5};
		case (_vehicle isKindOf "Ship"): {0.5};
		case (_vehicle isKindOf "Air"): {0.5};
		default {1};
	};
	_min = switch (_upgrade_barracks) do {
		case 2: {20};
		case 3: {40};
		case 4: {80};
		case 5: {100};
		case 6: {200};
		default {20};
	};

	_chance = (_min * _min2);

	_lockpick = [false, true] select (((floor random 100)-CTI_P_ActionLockPickChance) <= (_min * _min2)); 

	if (_lockpick) then {

		//--- Unlocked, gain experience.
		if (CTI_P_ActionLockPickChance > -51) then {CTI_P_ActionLockPickChance = CTI_P_ActionLockPickChance - 1};
		if (local _vehicle) then {
			sleep 5; //--- Delay to prevent instant unlock
			_vehicle lock 0;
			} else {
				[_vehicle, 0] remoteExec ["CTI_PVF_SRV_RequestVehicleLock", CTI_PV_SERVER];
		};
		hint parseText format ["<t size='1.3' color='#03991c'>The vehicle has been unlocked!</t>"];
	} else {
		hint parseText format ["<t size='1.3' color='#ff1284'>Failed to lockpick the vehicle</t><br /><br />Current Chance is <t color='#ccffaf'>%1</t> percent.",  _chance]

	};
} else {
	hint "Failed to lockpick the vehicle, get closer to it";
};