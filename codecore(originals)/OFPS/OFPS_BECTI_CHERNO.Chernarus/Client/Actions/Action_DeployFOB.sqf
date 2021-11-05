private ["_vehicle","_side","_logic","_vehiclepos","_vehicledir","_fobtype","_fobclass","_fobclassruins","_foblargeclass","_foblargeclassruins"];
if !(CTI_P_fob_currently_deploying) then {
CTI_P_fob_currently_deploying = true;
_vehicle = _this select 0;
_fobtype = _this select 3 select 0;
_vehiclepos = getPos _vehicle;
_vehicledir = getDir _vehicle;
_side = CTI_P_SideJoined;
_logic = (_side) call CTI_CO_FNC_GetSideLogic;

//set classes
_fobclass = CTI_TOWNS_FOB_CLASSNAME select 0;
_fobclassruins = CTI_TOWNS_FOB_CLASSNAME_RUINS select 0;
_foblargeclass = CTI_TOWNS_LARGE_FOB_CLASSNAME select 0;
_foblargeclassruins = CTI_TOWNS_LARGE_FOB_CLASSNAME_RUINS select 0;

switch (_fobtype) do {
	case "small": {
		if (count(_logic getVariable "cti_fobs") < CTI_BASE_FOB_MAX) then {
			[_vehicle, _side, _vehiclepos, _vehicledir, _fobtype, _fobclass, _fobclassruins] remoteExec ["CTI_PVF_SRV_RequestFOBDeploy", CTI_PV_SERVER];
			hint "FOB Deployed";
		} else {
			hint "Max Fobs Reached, dismantle to build more.";
		};
	};
	case "large": {
		if (count(_logic getVariable "cti_large_fobs") < CTI_BASE_LARGE_FOB_MAX) then {
			[_vehicle, _side, _vehiclepos, _vehicledir, _fobtype, _foblargeclass, _foblargeclassruins] remoteExec ["CTI_PVF_SRV_RequestFOBDeploy", CTI_PV_SERVER];
			hint "Large FOB Deployed";
		} else {
			hint "Max Large Fobs Reached, dismantle to build more.";
		};
	};
};
sleep 30;
CTI_P_fob_currently_deploying = false;
};