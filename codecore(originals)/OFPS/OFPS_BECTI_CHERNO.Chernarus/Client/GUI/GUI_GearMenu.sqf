_last_funds = -1;

while { true } do {
	if (isNil {uiNamespace getVariable "cti_dialog_ui_gear"}) exitWith {}; //--- Menu is closed.
	
	_funds = call CTI_CL_FNC_GetPlayerFunds;
	
	if !(_last_funds isEqualTo _funds) then {
		_trade_in = uiNamespace getVariable "cti_dialog_ui_gear_tradein";
		_coloration = ["#76F563", "#F56363"] select (_trade_in > 0);
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70025) ctrlSetStructuredText parseText format ["<t align='left'>Trade-in: <t color='%3'>$%1</t><t><t align='right'>Resources: <t color='%4'>$%2</t><t>", _trade_in, call CTI_CL_FNC_GetPlayerFunds, _coloration, CTI_P_Coloration_Money];
	};
	
	_last_funds = _funds;
	
	sleep .1;
};