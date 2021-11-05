/*
	Return a side's HQ.
	 Parameters:
		- Side.
*/

switch (_this) do {
	case west: {CTI_L_BLU getVariable "CTI_hq"};
	case east: {CTI_L_OPF getVariable "CTI_hq"};
	case resistance: {CTI_L_GUE getVariable "CTI_hq"};
	default {objNull};
}