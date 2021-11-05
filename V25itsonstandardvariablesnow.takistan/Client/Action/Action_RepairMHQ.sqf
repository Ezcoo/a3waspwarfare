Private ["_currency","_currencySym","_hq","_repairPrice","_vehicle"];

_vehicle = _this select 0;

_hq = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQ;
if (alive _hq || (_hq distance _vehicle > 30)) exitWith {hint (localize "STR_WF_INFO_Repair_MHQ_None")};

//--- Is HQ already being fixed?
if (CTI_Client_Logic getVariable "CTI_hq_repairing") exitWith {hint (localize "STR_WF_INFO_Repair_MHQ_BeingRepaired")};

_repairPrice = (missionNamespace getVariable 'CTI_C_BASE_HQ_REPAIR_PRICE') * (1+0.05*((CTI_Client_Logic getVariable "CTI_hq_repair_count")-1));
_currency = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideSupply;
_currencySym = "S";
if (_currency < _repairPrice) exitWith {hint Format [localize "STR_WF_INFO_Repair_MHQ_Funds",_currencySym,_repairPrice - _currency]};

[CTI_Client_SideJoined,-_repairPrice] Call CTI_CO_FNC_ChangeSideSupply;


[CTI_Client_SideJoined] remoteExecCall ["CTI_SE_PVF_RequestMHQRepair",2];

WF_Logic setVariable [Format ["%1MHQRepair",CTI_Client_SideJoinedText],true,true];

hint (localize "STR_WF_INFO_Repair_MHQ_Repair");