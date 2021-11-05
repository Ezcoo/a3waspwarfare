_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {hint "There are no nearby vehicles to repair"};
600300 cutRsc["CTI_RscRepairProgress","PLAIN", 100];
_repairType = "Vehicle Hull";
_repairProgress = 0;
_vehicle = [player, _vehicles] call CTI_CO_FNC_GetClosestEntity;
_actionTime = 30;//-- define _actiontime incase it doesnt get defined below.
_actionTime = switch (true) do {
	case (_vehicle isKindOf "Tank"): {CTI_TOOLKIT_REPAIR_TIME_TANK};// repair times for tracked vehicles
	case (_vehicle isKindOf "Air"): {CTI_TOOLKIT_REPAIR_TIME_AIR};// repair times for air vehicles
	case (_vehicle isKindOf "Car"): {CTI_TOOLKIT_REPAIR_TIME_CAR};// repair times for air vehicles
	case (_vehicle isKindOf "Ship"): {CTI_TOOLKIT_REPAIR_TIME_SHIP};// repair times for air vehicles
   default {CTI_TOOLKIT_REPAIR_TIME_UNKNOWN}
 };
_actionTime = _actionTime;
_startTime = time;// current time
_totalTime = time + _actionTime;
_animation = "ainvpknlmstpsnonwrfldnon_medic0s";
//--- Retrieve hitpoints for the given vehicle
_hitPoints = ["HitTurret","HitGun"]; //add these hitpoints to the array, some vehicles will not return these hitpoints in the configs
//-- add any hitpoint to this "_exclude_hitPoints" array to prevent the repairing of these hitpoints.
_exclude_hitPoints = ["HitDuke1","HitDuke2","era_1_hitpoint","era_2_hitpoint","era_3_hitpoint","era_4_hitpoint","era_5_hitpoint","era_6_hitpoint","era_7_hitpoint","era_8_hitpoint","era_9_hitpoint","era_10_hitpoint","era_11_hitpoint","era_12_hitpoint","era_13_hitpoint","era_14_hitpoint","era_15_hitpoint","era_16_hitpoint","era_17_hitpoint","era_18_hitpoint","era_19_hitpoint","era_20_hitpoint","era_21_hitpoint","era_22_hitpoint","era_23_hitpoint","era_24_hitpoint","era_25_hitpoint","era_26_hitpoint","era_27_hitpoint","era_28_hitpoint","era_29_hitpoint","era_30_hitpoint","era_31_hitpoint","era_32_hitpoint","era_33_hitpoint","era_34_hitpoint","era_35_hitpoint","era_36_hitpoint","era_37_hitpoint","era_38_hitpoint","era_39_hitpoint","era_40_hitpoint","era_41_hitpoint","era_42_hitpoint","era_43_hitpoint","era_44_hitpoint","era_45_hitpoint","era_46_hitpoint","era_47_hitpoint","era_48_hitpoint","era_49_hitpoint","era_50_hitpoint","era_51_hitpoint","duke1","duke2","e1","e2","e3","e4","e5","e6","e7","e8","e9","e10","e11","e12","e13","e14","e15","e16","e17","e18","e19","e20","e21","e22","e23","e24","e25","e26","e27","e28","e29","e30","e31","e32","e33","e34","e35","e36","e37","e38","e39","e40","e41","e42","e43","e44","e45","e46","e47","e48","e49","e50","e51"];
configProperties [configFile >> "CfgVehicles" >> typeOf _vehicle >> "HitPoints", "_hitPoints pushBack configName _x; true", true]; //-- get all hitpoints of the vehicle
_hitPoints_repair =[];
_hitPoints_repair = _hitPoints - _exclude_hitPoints;

CTI_P_ActionRepairNextUse = _totalTime;
player switchMove _animation;
player playMoveNow _animation;
while {animationState player == _animation && alive player && time <= _totaltime && _vehicle distance player <= 5 && alive _vehicle} do {
	_repairProgress = round(((time - _startTime)/_actionTime) * 1000); // Sets repair time as a 3-digit whole number.
	(uiNamespace getVariable "cti_dialog_ui_repairProgress" displayCtrl 800003) progressSetPosition (_repairProgress / 1000); // Sets the progress position of the progress bar. _progressBar is the progress bar control.
	(uiNamespace getVariable "cti_dialog_ui_repairProgress" displayCtrl 800004) ctrlSetText (format ["  Repairing: %1. Progress: %2%3", _repairType, _repairProgress / 10, "%"]);	// Sets repair text
	sleep 0.01;
};
600300 cutRsc["CTI_RscRepairProgress","PLAIN", 0];

if (time >= _totalTime)  then {
	if (local _vehicle) then {
		[_vehicle, _hitPoints_repair] call CTI_PVF_CLT_RequestVehicleHullRepair;
	} else {
		[_vehicle, _hitPoints_repair] remoteExec ["CTI_PVF_SRV_RequestVehicleHullRepair", CTI_PV_SERVER];
	};
	if (fuel _vehicle < .10) then {
		if (local _vehicle) then {
			_vehicle setFuel .10;
		} else {
			[_vehicle, .10] remoteExec ["CTI_PVF_SRV_RequestVehicleRefuel", CTI_PV_SERVER];
		};
	}; 
	hint "The vehicle recieved a field repair";
	player switchMove "Stand";
	(uiNamespace getVariable "cti_dialog_ui_repairProgress" displayCtrl 800003) progressSetPosition (1); // Sets the progress position of the progress bar. _progressBar is the progress bar control.
	(uiNamespace getVariable "cti_dialog_ui_repairProgress" displayCtrl 800004) ctrlSetText (format ["         %1 Repair Complete", _repairType]);	// Sets repair text
} else {
	hint "Unable to repair the vehicle";
	player switchMove "";
	(uiNamespace getVariable "cti_dialog_ui_repairProgress" displayCtrl 800003) progressSetPosition (_repairProgress / 1000); // Sets the progress position of the progress bar. _progressBar is the progress bar control.
	(uiNamespace getVariable "cti_dialog_ui_repairProgress" displayCtrl 800004) ctrlSetText (format [" %1 Repair Aborted. Progress: %2%3", _repairType, _repairProgress / 10, "%"]);	// Sets repair text
	CTI_P_ActionRepairNextUse = time;
};