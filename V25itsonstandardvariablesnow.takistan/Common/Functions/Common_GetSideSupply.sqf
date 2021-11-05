/*
	Return a side's HQ.
	 Parameters:
		- Side.
*/

switch (_this) do {
	case west: {CTI_L_BLU getVariable "CTI_supply"};
	case east: {CTI_L_OPF getVariable "CTI_supply"};
	case resistance: {CTI_L_GUE getVariable "CTI_supply"};
	default {objNull};
}