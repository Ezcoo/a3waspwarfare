private ["_action"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300005) ctrlShow false;
		uiNamespace setVariable ["cti_dialog_ui_votemenu_groups", (CTI_P_SideJoined) call CTI_CO_FNC_GetSideGroups];
		
		lnbAddRow[300001, ["No Commander", "0"]];
		lnbSetValue[300001, [0, 0], -1];

		_u = 1;
		{
			if (isPlayer leader _x) then {
				lnbAddRow[300001, [name leader _x, "0"]];
				lnbSetValue[300001, [_u, 0], _forEachIndex];
				_u = _u + 1;
			};
		} forEach (uiNamespace getVariable "cti_dialog_ui_votemenu_groups");
		
		
		if (CTI_P_SideLogic getVariable ["cti_votetime", -1] < 0 && group player isEqualTo ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideCommanderTeam)) then { //--- Comm is picking a new one
			((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300005) ctrlSetPosition [SafeZoneX + (SafeZoneW * 0.70), SafeZoneY + (SafezoneH * 0.884)];
			((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300005) ctrlCommit 0;
			((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300005) ctrlShow true;
			((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300011) ctrlSetText "Commander Selection";
		};
		
		execVM "Client\GUI\GUI_VoteMenu.sqf";
	};
	case "onVoteLBSelChanged": {
		_index = lnbValue [300001,[lnbCurSelRow 300001, 0]];
		_who = grpNull;
		if (_index > -1) then { //--- Playable
			_who = (uiNamespace getVariable "cti_dialog_ui_votemenu_groups") select _index;
			if !(isPlayer leader _who) then {_who = grpNull}; //--- Non player vote = ai/null com
		};
		
		if !(_who isEqualTo (group player getVariable "cti_vote")) then {group player setVariable ["cti_vote", _who, true]};
	};
	case "onVoteConfirmPressed": {
		CTI_P_SideJoined remoteExec ["CTI_PVF_SRV_RequestCommanderPassoff", CTI_PV_SERVER];
	};
};