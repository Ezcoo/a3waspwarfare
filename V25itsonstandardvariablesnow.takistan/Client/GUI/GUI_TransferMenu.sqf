scriptName "Client\GUI\GUI_TransferMenu.sqf";

//--- Register the UI.
uiNamespace setVariable ["CTI_display_transfer", _this select 0];

{
	_name_leader = if (isNull leader _x) then {"No leader"} else {name leader _x};
	lnbAddRow[505001, [Format ["$%1.",_x Call CTI_CO_FNC_GetTeamFunds], _name_leader]];
} forEach CTI_Client_Teams;

_funds_last = -1;
_last_update = time;
_update_slider = true;

CTI_MenuAction = -1;

while {alive player && dialog} do {
	if (CTI_MenuAction == 2) then {CTI_MenuAction = -1; _update_slider = true};

	_funds = Call CTI_CL_FNC_GetPlayerFunds;

	if (time - _last_update > 1) then {
		_last_update = time;
		for '_i' from 0 to CTI_Client_Teams_Count-1 do {
			_funds_team = (CTI_Client_Teams select _i) Call CTI_CO_FNC_GetTeamFunds;
			_name_leader = if (isNull(leader(CTI_Client_Teams select _i))) then {"No leader"} else {name(leader(CTI_Client_Teams select _i))};
			if ((((uiNamespace getVariable "CTI_display_transfer") displayCtrl 505001) lnbText [_i, 0]) != Format["$%1.",_funds_team]) then {lnbSetText [505001, [_i, 0], Format ["$%1.",_funds_team]]};
			if ((((uiNamespace getVariable "CTI_display_transfer") displayCtrl 505001) lnbText [_i, 1]) != _name_leader) then {lnbSetText [505001, [_i, 1], _name_leader]};
		};
		//reload if everyone funds is different, reload on timer or fund transfer.
	};

	if (_update_slider) then {
		_update_slider = false;
		ctrlSetText[505003, str (floor (sliderPosition 505002))];
	};

	if (CTI_MenuAction == 1) then {
		CTI_MenuAction = -1;
		_ui_lnb_currow = lnbCurSelRow 505001;
		_funds_transfering = floor parseNumber(ctrlText 505003);
		_cando = if (_funds_transfering > 0 && _funds_transfering <= _funds) then {true} else {false};
		if (_cando) then {
			if (_ui_lnb_currow != -1) then {
				_selected = CTI_Client_Teams select _ui_lnb_currow;
				if !(isNull leader _selected) then {
					if (_selected != group player) then {
						hint parseText format [localize "STR_WF_INFO_Funds_Sent", _funds_transfering, name leader _selected];
						-(_funds_transfering) Call CTI_CL_FNC_ChangePlayerFunds;
						[_selected, _funds_transfering] Call CTI_CO_FNC_ChangeTeamFunds;
						if (isPlayer leader _selected) then {
								['FundsTransfer',_funds_transfering,name player] remoteExecCall ["CTI_CL_FNC_LocalizeMessage", leader _selected];
								
								["INFORMATION", Format ["Player %1 has sent cash to player %2).", name player, name leader _selected]] Call CTI_CO_FNC_LogContent;
						};
						_funds = Call CTI_CL_FNC_GetPlayerFunds;
						_last_update = -1;
					} else {
						hint parseText localize "STR_WF_INFO_Funds_Self";
					};
				};
			};
		} else {
			_update_slider = true;
		};
	};

	if (_funds != _funds_last) then {
		sliderSetRange[505002, 0, _funds];
		((uiNamespace getVariable "CTI_display_transfer") displayCtrl 505004) ctrlSetStructuredText (parseText Format [localize "STR_WF_INFO_Funds",_funds]);
	};

	_funds_last = _funds;
	sleep .01;
};

//--- Release the UI.
uiNamespace setVariable ["CTI_display_transfer", nil];