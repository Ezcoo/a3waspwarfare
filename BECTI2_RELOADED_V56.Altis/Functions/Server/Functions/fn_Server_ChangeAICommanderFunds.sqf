Private ["_amount","_logik","_side"];
_side = _this select 0;
_amount = _this select 1;
_logik = (_side) Call EZC_fnc_Functions_Common_GetSideLogic;
_logik setVariable ["cti_aicom_funds", (_side Call EZC_fnc_Functions_Server_GetAICommanderFunds) + _amount];