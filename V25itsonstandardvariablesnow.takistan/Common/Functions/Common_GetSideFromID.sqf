/*
	Return the side from the ID.
	 Parameters:
		- Side ID.
*/

switch (_this) do {
	case CTI_C_WEST_ID: {west};
	case WESTID: {west};
	case CTI_C_EAST_ID: {east};
	case EASTID: {east};
	case CTI_C_GUER_ID: {resistance};
	case RESISTANCEID: {resistance};
	case CTI_C_CIV_ID: {civilian};
	default {sideLogic};
};

