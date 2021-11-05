/*
	Return a side's HQ.
	 Parameters:
		- Side.
*/

switch (_this) do {
	case west: {CTI_L_BLU getVariable "CTI_upgrades"};
	case east: {CTI_L_OPF getVariable "CTI_upgrades"};
	case resistance: {CTI_L_GUE getVariable "CTI_upgrades"};
	default {objNull};
}