Private ["_amount","_logik","_side"];
_side = _this select 0;
_amount = _this select 1;
_logik = (_side) Call CTI_CO_FNC_GetSideLogic;
_logik setVariable ["CTI_aicom_funds", (_side Call CTI_SE_FNC_GetAICommanderFunds) + _amount];