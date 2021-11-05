
/*//--------------------------------------------------------------------------------------------------------------
# HEADER #
Description:	AI COMMANDER SETTINGS

//--------------------------------------------------------------------------------------------------------------*/
_side = _this;
//--------------------------------------------------------------------------------------------------------------

//AI Base placement template
missionNamespace setVariable [format["CTI_%1_Base_Template", _side], [
	[CTI_BARRACKS, 180, [-23,33]],
	[CTI_LIGHT, 180, [23,33]],
	[CTI_CONTROLCENTER, 0, [30,-40]],
	[CTI_HEAVY, 0, [-30,-40]],
	[CTI_AIR_ROTARY, 180, [-60,37]],
	[CTI_AIR_FIXED, 180, [-60,37]],
	[CTI_REPAIR, 180, [60,37]],
	[CTI_AMMO, 180, [80,37]]
]];

// checks: structure -> not in WIP and still alive & kicking & can build with area?
// checks: upgrades -> not running
// iterate thru the path till what's done

//--- Commander course of action ["Action", Parameter(s), Condition]
missionNamespace setVariable [format["CTI_%1_Commander_Path", _side], [
	["build-structures", CTI_BARRACKS, {true}],
	["build-structures", CTI_LIGHT, {true}],
	["build-structures", CTI_CONTROLCENTER, {true}],
	["upgrade", [CTI_UPGRADE_GEAR, 1], {true}],
	["upgrade", [CTI_UPGRADE_BARRACKS, 1], {true}],
	["upgrade", [CTI_UPGRADE_LIGHT, 1], {true}],
	["upgrade", [CTI_UPGRADE_GEAR, 2], {true}],
	["upgrade", [CTI_UPGRADE_BARRACKS, 2], {true}],
	["upgrade", [CTI_UPGRADE_LIGHT, 2], {true}],
	["upgrade", [CTI_UPGRADE_GEAR, 3], {true}],
	["upgrade", [CTI_UPGRADE_BARRACKS, 3], {true}],
	["upgrade", [CTI_UPGRADE_LIGHT, 3], {true}],
	["upgrade", [CTI_UPGRADE_LIGHT, 4], {true}],
	["build-structures", CTI_HEAVY, {true}],
	["build-structures", CTI_REPAIR, {true}],
	["build-structures", CTI_AMMO, {true}],
	["upgrade", [CTI_UPGRADE_HEAVY, 1], {true}],
	["upgrade", [CTI_UPGRADE_HEAVY, 2], {true}],
	["upgrade", [CTI_UPGRADE_HEAVY, 3], {true}],
	["build-structures", CTI_AIR_ROTARY, {true}],
	["build-structures", CTI_AIR_FIXED, {true}],
	["upgrade", [CTI_UPGRADE_AIR_ROTARY, 1], {true}],
	["upgrade", [CTI_UPGRADE_AIR_FIXED, 2], {true}]
]];