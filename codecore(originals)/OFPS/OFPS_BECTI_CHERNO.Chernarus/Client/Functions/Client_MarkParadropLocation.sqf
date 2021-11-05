/*
  # HEADER #
	Script: 		Client\Functions\Client_MarkParadropLocation.sqf
	Alias:			CTI_CL_FNC_MarkParadropLocation
	Description:	Called to get the client to select the spot to paradrop a pod. Though, you can use it to paradrop anything. Based on external function atm_airdrop.sqf
	Author: 		JEDMario
	Creation Date:	28-01-2018
	Revision Date:	28-01-2018
	
  # PARAMETERS #
	None
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	None
	
  # DEPENDENCIES #
	
	
  # EXAMPLE #
    (_taruPod) call CTI_CL_FNC_MarkParadropLocation;
*/

params [
	["_vehicle", objNull, [objNull], 0],
	["_price", 0, [0], 0]
];

waitUntil { !isNull player };

_funds = (group player) call CTI_CO_FNC_GetFunds;
_price = _vehicle call CTI_UI_UnitsCam_CalculatePodCost;

if (_funds < _price) exitWith {hintsilent "Not enough funds"; sleep 1 ; hintsilent ""};

	//[] execVM "ATM_airdrop\functions.sqf";
	call compile preprocessFileLineNumbers "Client\Functions\Externals\ATM_airdrop\functions.sqf";

	_position = GetPos player;
	_z = _position select 2;
	Altitude = CTI_HALO_ALTITUDE;

	hint Localize "STR_ATM_hinton";
	//HINT
	hint parseText format ["<t size='2' color='#2394ef'>HALO JUMP</t><br /><br />Select Paradrop Destination! <br /> <t color='#ccffaf'> You can only drop near yourself or near large FOBs (with upgrade) You cannot drop inside towns that are not secured.</t><br /> <t color='#0cff00'> $%1.</t>", _price];

	openMap true;

	//createDialog "ATM_AD_ALTITUDE_SELECT";
	disableSerialization;
	_dialog = findDisplay 2900;
	_s_alt = _dialog displayCtrl 2901;
	_s_alt_text = _dialog displayCtrl 2902;
	_s_alt_text ctrlSetText format["%1", Altitude];
	_s_alt sliderSetRange [500,20000];
	_s_alt slidersetSpeed [100,100,100];
	_s_alt sliderSetPosition Altitude;

Keys = 0;

IsCutRope = false;

_ctrl = _dialog displayCtrl 2903;
{
	_index = _ctrl lbAdd _x;
} forEach ["Fr Keyboard","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","US Keyboard","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
lbSetCurSel [2903, 0];

_towns_friendly = (CTI_P_SideID) call CTI_CO_FNC_GetFriendlyTowns;
_towns_secured = [];
{
	if ([_x, CTI_P_SideJoined] call CTI_CO_FNC_HasAllCamps) then {
		_towns_secured pushback _x;
	};
} forEach _towns_friendly;
_towns_unsecured = CTI_Towns - _towns_secured;
_large_fobs = CTI_P_SideLogic getVariable ["cti_large_fobs", []];
_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
_upgrade_halo = _upgrades select CTI_UPGRADE_HALO;

// Adds markers to indicate valid locations
_markers = [];
{
	_marker = format["cti_town_paradropPos_%1", _x];
	_marker = createMarkerLocal [_marker, getPos _x];
	_marker setMarkerShapeLocal "ELLIPSE";
	_marker setMarkerBrushLocal "DiagGrid";
	_marker setMarkerAlphaLocal 0;
	if (_x in _towns_unsecured) then {
		_marker setMarkerColorLocal "ColorBlack";
		_marker setMarkerSizeLocal [CTI_PARADROP_TOWN_RANGE, CTI_PARADROP_TOWN_RANGE];
		_marker setMarkerAlphaLocal 0.6;
	};
	if (_x in _towns_secured || _x == player) then {
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerSizeLocal [CTI_PARADROP_MARK_RANGE, CTI_PARADROP_MARK_RANGE];
		_marker setMarkerAlphaLocal 0.6;
	};
	if (_upgrade_halo > 1 && _x in _large_fobs) then {
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerSizeLocal [CTI_PARADROP_MARK_RANGE, CTI_PARADROP_MARK_RANGE];
		_marker setMarkerAlphaLocal 0.6;
	};
	_markers pushBack _marker;
} forEach (_large_fobs + [player] + _towns_secured +_towns_unsecured);

Para_Drop_mapclick = false;
//onMapSingleClick "Para_Drop_clickpos = _pos; Para_Drop_mapclick = true; onMapSingleClick ''; true;";
//CLICK NEAR TOWNS
onMapSingleClick '
	Para_Drop_clickpos = _pos;
	_ct = Para_Drop_clickpos call CTI_CO_FNC_GetClosestTown;
	_ft = [Para_Drop_clickpos, CTI_P_SideJoined] call CTI_CO_FNC_GetClosestFriendlyTown;
	_large_fobs = CTI_P_SideLogic getVariable ["cti_large_fobs", []];
	_large_fob = [Para_Drop_clickpos, _large_fobs] call CTI_CO_FNC_GetClosestEntity;
	_bases = CTI_P_SideLogic getVariable ["cti_structures_areas", []];
	_base = [Para_Drop_clickpos, _bases] call CTI_CO_FNC_GetClosestEntity;
	_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
	_upgrade_halo = _upgrades select CTI_UPGRADE_HALO;
	if (_upgrade_halo > 1) then {
		if ((Para_Drop_clickpos distance2D  _ct > CTI_PARADROP_TOWN_RANGE || [_ct, CTI_P_SideJoined] call CTI_CO_FNC_HasAllCamps) && ((Para_Drop_clickpos distance2D  player < CTI_PARADROP_MARK_RANGE) || (Para_Drop_clickpos distance2D  _ct < CTI_PARADROP_MARK_RANGE && _ct isEqualTo _ft) || (Para_Drop_clickpos distance2D  _large_fob < CTI_MARKERS_TOWN_AREA_RANGE) || (Para_Drop_clickpos distance2D  _base < CTI_BASE_AREA_RANGE))) then {
			Para_Drop_mapclick = true; onMapSingleClick ""; true;
		};
	} else {
		if ((Para_Drop_clickpos distance2D  _ct > CTI_PARADROP_TOWN_RANGE || [_ct, CTI_P_SideJoined] call CTI_CO_FNC_HasAllCamps) && ((Para_Drop_clickpos distance2D  player < CTI_PARADROP_MARK_RANGE) || (Para_Drop_clickpos distance2D  _ct < CTI_PARADROP_MARK_RANGE && _ct isEqualTo _ft) || (Para_Drop_clickpos distance2D  _base < CTI_BASE_AREA_RANGE))) then {
			Para_Drop_mapclick = true; onMapSingleClick ""; true;
		};
	};
';
waitUntil {Para_Drop_mapclick or !(visiblemap)};
{
	deleteMarkerLocal _x;
} forEach _markers;

if (!visibleMap) exitwith {
	systemChat "Halo jump canceled.";
};
_pos = Para_Drop_clickpos;
Para_Drop_mapclick = if(true) then{
	call compile format ['
		mkr_halo = createmarker ["mkr_halo", Para_Drop_clickpos];
		"mkr_halo" setMarkerTypeLocal "hd_dot";
		"mkr_halo" setMarkerColorLocal "ColorGreen";
		"mkr_halo" setMarkerTextLocal "Jump";'];
};

_target = player;
/*RedOn = _target addAction["<t color='#B40404'>Chemlight Red On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_red"],6,false,false,"","_target isEqualTo ( player)"];
BlueOn = _target addAction["<t color='#68ccf6'>Chemlight Blue On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_blue"],6,false,false,"","_target isEqualTo ( player)"];
YellowOn = _target addAction["<t color='#fcf018'>Chemlight Yellow On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_yellow"],6,false,false,"","_target isEqualTo ( player)"];
GreenOn = _target addAction["<t color='#30fd07'>Chemlight Green On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_green"],6,false,false,"","_target isEqualTo ( player)"];
Iron = _target addAction["<t color='#FF00CC'>Strobe IR On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["NVG_TargetC"],6,false,false,"","_target isEqualTo ( player)"];*/

_loadout = getUnitLoadout _target;
_posJump = getMarkerPos "mkr_halo";
_x = _posJump select 0;
_y = _posJump select 1;
_z = _posJump select 2;

openMap false;
CTI_HALO_LASTTIME = time;
deleteMarker "mkr_halo";
[_x, _y, _z+Altitude];