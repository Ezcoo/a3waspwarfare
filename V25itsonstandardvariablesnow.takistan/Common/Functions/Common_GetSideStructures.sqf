/*
	Return a side's structures.
	 Parameters:
		- Side.
*/

switch (_this) do {
	case west: {CTI_L_BLU getVariable "CTI_structures"};
	case east: {CTI_L_OPF getVariable "CTI_structures"};
	case resistance: {CTI_L_GUE getVariable "CTI_structures"};
	default {objNull};
}