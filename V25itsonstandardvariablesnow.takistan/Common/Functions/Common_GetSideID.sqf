/*
	Return the numeric value of a side.
	 Parameters:
		- Side.
*/

switch (_this) do {
	case west: {CTI_C_WEST_ID};
	case east: {CTI_C_EAST_ID};
	case resistance: {CTI_C_GUER_ID};
	case civilian: {CTI_C_CIV_ID};
	default {-1};
};

