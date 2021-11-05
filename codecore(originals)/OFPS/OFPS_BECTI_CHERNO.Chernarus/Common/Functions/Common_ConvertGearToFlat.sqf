/*
  # HEADER #
	Script: 		Common\Functions\Common_ConvertGearToFlat.sqf
	Alias:			CTI_CO_FNC_ConvertGearToFlat
	Description:	Convert a CTI gear variable into a flat array.
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	09-11-2017

	# Revision note:
		Done by: MischievousRaven
		Replaced old convert gear to flat script with a slightly modified KillzoneKid's arrayFlatten

  # PARAMETERS #
    0	[Array]: A CTI gear variable

  # RETURNED VALUE #
	[Array]: The flattened array

  # SYNTAX #
	(Array) call CTI_CO_FNC_ConvertGearToFlat

  # EXAMPLE #
	_gear = [
		[["arifle_mxc_f",["","acc_pointer_ir","optic_Aco"],["30rnd_65x39_caseless_mag"]],["launch_nlaw_f",[],["nlaw_f"]],["",[],[]]],
		[["u_b_combatuniform_mcam",[]],["v_platecarrier1_rgr",[]],["b_assaultpack_mcamo",["firstaidkit","nlaw_f","nlaw_f"]]],
		["h_helmetb",""],
		[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]
	];

	(_gear) call CTI_CO_FNC_ConvertGearToFlat;
	  -> ["arifle_mxc_f","acc_pointer_ir","optic_Aco","30rnd_65x39_caseless_mag","launch_nlaw_f","nlaw_f","u_b_combatuniform_mcam",...,"h_helmetb","nvgoggles",...]
*/
private _classnames = [];
private _godeeper = {
    {
		if (typeName _x isEqualTo "ARRAY") then {
				_x call _godeeper; false
		} else {
				if !(_x isEqualTo "") then {_classnames pushBack _x}; 
				false
		};
    } forEach _this;
};
_this call _godeeper;

_classnames