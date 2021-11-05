private ["_order","_order_pos","_order_last","_order_pos_last","_reload","_seed"];

_order_last = -1;
_order_pos_last = group player getVariable "cti_order_pos";

group player setVariable ["cti_team_reload", false];



while {!CTI_GameOver} do {

	_order = group player getVariable "cti_order";
	_order_pos = group player getVariable "cti_order_pos";

	//--- The order or it's position changed since last time?
	if ([group player, _order_last, _order_pos_last] call CTI_CO_FNC_HasOrderedChanged || !(isNil {group player getVariable "cti_team_reload"})) then {
		//--- Remove the explicit reload request
		_reload = false;
		if !(isNil {group player getVariable "cti_team_reload"}) then {_reload = true; group player setVariable ["cti_team_reload", nil]};
		
		//--- Generate a new seed
		_seed = time + random 10000 - random 500 + diag_frameno;
		group player setVariable ["cti_order_seed", _seed];
		
		//--- Apply a new order thread.
		switch (true) do {
			case (_order in [CTI_ORDER_TAKETOWNS, CTI_ORDER_TAKEHOLDTOWNS]): {[_order, _reload] spawn CTI_FSM_UpdateOrders_TakeTowns};
			case (_order in [CTI_ORDER_TAKETOWN, CTI_ORDER_TAKETOWN_AUTO, CTI_ORDER_TAKEHOLDTOWN, CTI_ORDER_TAKEHOLDTOWN_AUTO]): {[_order, _order_pos, _seed, _reload] spawn CTI_FSM_UpdateOrders_TakeTown};
			case (_order isEqualTo CTI_ORDER_HOLDTOWNSBASES): {[_order, _reload] spawn CTI_FSM_UpdateOrders_HoldTownsBases};
			case (_order isEqualTo CTI_ORDER_HOLDTOWNSBASE): {[_order, _order_pos, _seed, _reload] spawn CTI_FSM_UpdateOrders_HoldTownsBase};
			case (_order isEqualTo CTI_ORDER_MOVE): {[_order_pos, _seed, _reload] spawn CTI_FSM_UpdateOrders_Move};
			case (_order isEqualTo CTI_ORDER_SAD): {[_order_pos, _seed, _reload] spawn CTI_FSM_UpdateOrders_SAD};
		};
	};

	_order_last = _order;
	_order_pos_last = _order_pos;

sleep 10;
};