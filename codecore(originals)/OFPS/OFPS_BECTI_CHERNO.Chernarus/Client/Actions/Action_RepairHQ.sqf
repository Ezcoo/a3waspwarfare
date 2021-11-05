private ["_funds", "_cost","_vehicle","_hq","_delay"];

_vehicle = _this select 0;
_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;

CTI_P_LastRepairTime = time;

if (alive _hq) exitWith {}; //--- Don't bother if the HQ is alive



if (_hq distance _vehicle <= CTI_BASE_HQ_REPAIR_RANGE) then {
	switch (CTI_BASE_HQ_REPAIR_REQ) do {
		case 1: {
			_funds = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideSupply;
			_cost = CTI_BASE_HQ_REPAIR_PRICE_SUPPLY;
		};
		default {
			_funds = call CTI_CL_FNC_GetPlayerFunds;
			_cost = CTI_BASE_HQ_REPAIR_PRICE;
		};
	};
	
	if (_funds >= _cost) then {
		_delay = CTI_BASE_HQ_REPAIR_TIME;
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />Attempting to repair the HQ...";
		while {_delay > 0} do {
			_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
			if (alive _hq || _hq distance _vehicle > CTI_BASE_HQ_REPAIR_RANGE || !alive _vehicle) exitWith {};
			_delay = _delay - 1;
			sleep 1;
		};
		
		if (_delay <= 0) then {
			if (_funds >= _cost) then {
				switch (CTI_BASE_HQ_REPAIR_REQ) do {
					case 1: {
						[CTI_P_SideJoined, -_cost] call CTI_CO_FNC_ChangeSideSupply;
					};
					default {
						-_cost call CTI_CL_FNC_ChangePlayerFunds;
					};
				};
				(CTI_P_SideJoined) remoteExec ["CTI_PVF_SRV_RequestHQRepair", CTI_PV_SERVER];
			} else {
				hint parseText format["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t color='%1'>$%2</t> is needed to repair the HQ", CTI_P_Coloration_Money, _cost];
			};
		} else {
			if (alive _hq) exitWith {hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The HQ is already repaired."};
			if !(alive _vehicle) exitWith {hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The repair vehicle has been destroyed."};
			if (_hq distance _vehicle > CTI_BASE_HQ_REPAIR_RANGE) exitWith {hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The repair vehicle has moved too far from the HQ."};
		};
	} else {
		switch (CTI_BASE_HQ_REPAIR_REQ) do {
			case 1: {
				hint parseText format["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t color='%1'>%2 Supply</t> is needed to repair the HQ", CTI_P_Coloration_Money, _cost];
			};
			default {
				hint parseText format["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t color='%1'>$%2</t> is needed to repair the HQ", CTI_P_Coloration_Money, _cost];
			};
		};	
	};
};