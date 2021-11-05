/*
	Return a side HQ deloy status.
	 Parameters:
		- Side.
*/

switch (_this) do {
	case west: {CTI_L_BLU getVariable "CTI_hq_deployed"};
	case east: {CTI_L_OPF getVariable "CTI_hq_deployed"};
	case resistance: {CTI_L_GUE getVariable "CTI_hq_deployed"};
	default {objNull};
}

