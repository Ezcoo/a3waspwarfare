Private ["_currency","_currencySym","_hq","_repairPrice","_commander","_towns","_logik","_get"];

_commander = (WFBE_Client_SideJoined) call WFBE_CO_FNC_GetCommanderTeam;
_logik = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideLogic;
_get = _logik getVariable "cashrepaired";
_hq = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideHQ;

if (alive _hq ) exitWith {hint (localize "STR_WF_INFO_Repair_MHQ_None")};

if!(isNil '_get')then {
    if (_get) exitWith {hint "HQ cannot be repaired using cash twice!"};
    if (!_get) then {_logik setVariable ['cashrepaired',true,true];};
};

//--- Is HQ already being fixed?
if (WFBE_Client_Logic getVariable "wfbe_hq_repairing") exitWith {hint (localize "STR_WF_INFO_Repair_MHQ_BeingRepaired")};

_repairPrice = (missionNameSpace getVariable "WFBE_C_BASE_HQ_REPAIR_PRICE_CASH") * (1+0.05*((WFBE_Client_Logic getVariable "wfbe_hq_repair_count")-1));
_currency = Call WFBE_CL_FNC_GetPlayerFunds;
_currencySym = "$";

if (_currency < _repairPrice) exitWith {hint Format [localize "STR_WF_INFO_Repair_MHQ_Funds",_currencySym,_repairPrice - _currency]};

-(_repairPrice) Call WFBE_CL_FNC_ChangePlayerFunds;

[WFBE_Client_SideJoined] remoteExecCall ["WFBE_SE_PVF_RequestMHQRepair",2];

WF_Logic setVariable [Format ["%1MHQRepair",WFBE_Client_SideJoinedText],true,true];

hint (localize "STR_WF_INFO_Repair_MHQ_Repair");
_hq setPos [0,0,500];
_hq spawn {_this allowDamage false; sleep 10; _this allowDamage true};
_position = ([getPosATL player, 20] call WFBE_CO_FNC_GetSafePlace);
_hq setPos _position;
_towns =(WFBE_Client_SideJoined) call WFBE_CO_FNC_GetSideTowns;

{_x setVariable ["supplyvalue", 10, true]} forEach _towns;

hint "ALL TOWNS' SV ARE SET TO MINIMUM ...";

sleep 5;

hint "New HQ has been parachuted over your location !";
