/*
	Initialize a unit for clients (JIP Compatible).
*/

Private ["_get","_isMan","_logik","_side","_sideID","_unit","_unit_kind","_upgrades"];

_unit 	   = _this select 0;
_sideID    = _this select 1;
_unit_kind = typeOf _unit;

if !(alive _unit) exitWith {}; //--- Abort if the unit is null or dead.

if(isNil 'commonInitComplete')then{ commonInitComplete = false; };
waitUntil {commonInitComplete}; //--- Wait for the common part.
_side = (_sideID) Call CTI_CO_FNC_GetSideFromID;
_logik = (_side) Call CTI_CO_FNC_GetSideLogic;

waitUntil {!isNil {_logik getVariable "CTI_upgrades"}};
_upgrades = (_side) Call CTI_CO_FNC_GetSideUpgrades;

// --- [Generic Vehicle initialization] (Run on all clients AND server)

if !(local player) exitWith {}; //--- We don't need the server to process it.
waitUntil {clientInitComplete}; //--- Wait for the client part.
sleep 2; //--- Wait a bit.

_isMan = if (_unit isKindOf 'Man') then {true} else {false};
// --- 				[Generic Vehicle initialization] (Run on all clients)




if (_unit_kind in (missionNamespace getVariable "CTI_REPAIRTRUCKS")) then { //--- Repair Trucks.
	//--- Build action.
	_unit addAction [localize 'STR_WF_BuildMenu_Repair','Client\Action\Action_BuildRepair.sqf', [], 1000, false, true, '', Format['side player == side _target && alive _target && player distance _target <= %1', missionNamespace getVariable 'CTI_C_UNITS_REPAIR_TRUCK_RANGE']];
	_unit addAction [localize 'STR_WF_Repair_Camp','Client\Action\Action_RepairCamp.sqf', [], 97, false, true, '', '[_unit] call CTI_CL_FNC_Client_GetNearestCamp'];

	if ((missionNamespace getVariable "CTI_C_GAMEPLAY_VICTORY_CONDITION") != 1) then { //--- Repair HQ Ability.
		//--- Repair MHQ action.
		_unit addAction [localize 'STR_WF_Repair_MHQ','Client\Action\Action_RepairMHQ.sqf', [], 98, false, true, '', 'alive _target'];
	};
};

if (_unit isKindOf "Tank" || _unit isKindOf "Wheeled_APC_F" || typeOf _unit in (missionNamespace getVariable Format["CTI_%1REPAIRTRUCKS", _side])) then { //--- Tanks.
	//--- Valhalla Low gear.
	_unit addAction ["<t color='#FFBD4C'>"+(localize "STR_ACT_LowGearOn")+"</t>","Client\Module\Valhalla\LowGear_Toggle.sqf", [], 91, false, true, "", "(player==driver _target) && !Local_HighClimbingModeOn && canMove _target"];
	_unit addAction ["<t color='#FFBD4C'>"+(localize "STR_ACT_LowGearOff")+"</t>","Client\Module\Valhalla\LowGear_Toggle.sqf", [], 91, false, true, "", "(player==driver _target) && Local_HighClimbingModeOn && canMove _target"];
};

if (_unit isKindOf "Ship") then { //--- Boats.
	//--- Push action.
	_unit addAction [localize "STR_WF_Push","Client\Action\Action_Push.sqf", [], 93, false, true, "", 'driver _target == _this && alive _target && speed _target < 30'];
};

if (_unit isKindOf "Air") then { //--- Air units.
	if ((getNumber (configFile >> 'CfgVehicles' >> _unit_kind >> 'transportSoldier')) > 0) then { //--- Transporters only.
		//--- HALO action.
		_unit addAction ['HALO','Client\Action\Action_HALO.sqf', [], 97, false, true, '', Format['getPos _target select 2 >= %1 && alive _target', missionNamespace getVariable 'CTI_C_PLAYERS_HALO_HEIGHT']];
		//--- Cargo Eject action.
		_unit addAction [localize 'STR_WF_Cargo_Eject','Client\Action\Action_EjectCargo.sqf', [], 99, false, true, '', 'driver _target == _this && alive _target'];
	};

	//--- AAR Tracking.
	if (CTI_Client_SideJoined != _side) then { //--- Track the unit via AAR System, skip if the unit side is the same as the player one.
		[_unit, _side] call CTI_CO_FNC_TRACK_AIR_TARGETS;
	};

	if (_unit isKindOf "Plane") then { //--- Planes.
		_unit addAction [localize "STR_WF_TaxiReverse","Client\Action\Action_TaxiReverse.sqf", [], 92, false, true, "", 'driver _target == _this && alive _target && speed _target < 4 && speed _target > -4 && getPos _target select 2 < 4'];
	};
};

// --- 				[Side specific initialization] (Run on the desired client team).
waitUntil {!isNil 'sideID'};
if (sideID != _sideID) exitWith {};

Private ["_color","_markerName","_params","_size","_txt","_type"];

//--- Map Marker tracking.
_type = "mil_dot";
_color = missionNamespace getVariable (Format ["CTI_C_%1_COLOR", _side]);
_size = [1,1];
_txt = "";
_params = [];

unitMarker = unitMarker + 1;
_markerName = Format ["unitMarker%1", unitMarker];

if (_isMan) then { //--- Man.
	_type = "mil_dot";
	_size = [0.5,0.5];
	if (group _unit == group player) then {
		_color = "ColorOrange";
		_txt = (_unit) Call CTI_CO_FNC_GetAIDigit;
	};
	_params = [_type,_color,_size,_txt,_markerName,_unit,1,true,"waypoint",_color,false,_side,[1,1]];
} else { //--- Vehicle.
        if (local _unit && isMultiplayer) then {_color = "ColorOrange";};
	if (_unit_kind in (missionNamespace getVariable Format['CTI_%1REPAIRTRUCKS',str _side])) then {_type = "mil_dot";};//--- Repair.
	if (_unit_kind in (missionNamespace getVariable Format['CTI_%1AMBULANCES',str _side])) then {_color = "ColorYellow";};//--- Medical.
	_params = [_type,_color,_size,_txt,_markerName,_unit,1,true,"waypoint",_color,false,_side,[2,2]];
        if (_unit == ((_side) Call CTI_CO_FNC_GetSideHQ)) then {_color = "ColorOrange";_params = ['b_hq',_color,[1,1],'HQ','HQUndeployed',_unit,0.2,false,'','',false,_side];};//--- HQ.
};

if !(_isMan) then { //--- Vehicle Specific.
	if ((missionNamespace getVariable "CTI_C_GAMEPLAY_MISSILES_RANGE") != 0) then { //--- Max missile range.
		_unit addEventHandler ['incomingMissile', {_this Spawn CTI_CO_FNC_HandleIncomingMissile}]; //--- Handle incoming missiles.
	};
};

_params Spawn CTI_CO_FNC_MarkerUpdate;
