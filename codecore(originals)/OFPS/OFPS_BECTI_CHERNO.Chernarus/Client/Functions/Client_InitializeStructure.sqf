/*
  # HEADER #
	Script: 		Client\Functions\Client_InitializeStructure.sqf
	Alias:			CTI_CL_FNC_InitializeStructure
	Description:	Initialize a freshly constructed structure
					Note that this file is also called for JIP'ers
	Author: 		Benny
	Creation Date:	14-10-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[Object]: The structure
    1	[Array]: The structure variable array
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[STRUCTURE, STRUCTURE ARRAY] call CTI_CL_FNC_InitializeStructure
	
  # EXAMPLE #
    [Barracks1, BarrackCoreInfo] call CTI_CL_FNC_InitializeStructure
*/

params["_structure", "_var"];
private ["_marker"];

//--- Quick action (I know you want it brit!)
if (((_var select CTI_STRUCTURE_LABELS) select 0) in CTI_FACTORIES) then {
	_structure addAction [format["<t color='#c9f7bb'>Use %1</t>", ((_var select CTI_STRUCTURE_LABELS) select 1)], "Client\Actions\Action_UseNearestFactory.sqf", "", 95, false, true, "", "alive _target && _this isEqualTo player"];
};

//--- Center marker
_marker = createMarkerLocal [Format ["cti_structure_%1", CTI_P_MarkerIterator], getPos _structure];CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
_marker setMarkerTypeLocal format["%1installation", CTI_P_MarkerPrefix];
_marker setMarkerColorLocal CTI_P_SideColor;
_marker setMarkerSizeLocal [0.60, 0.60]; 
_marker setMarkerTextLocal ((_var select CTI_STRUCTURE_LABELS) select 2);

//--- Set the type if needed
if (isNil {_structure getVariable "cti_structure_type"}) then {_structure setVariable ["cti_structure_type", (_var select CTI_STRUCTURE_LABELS) select 0]};

//--- Track till destruction
[_structure, _marker] spawn {
	_structure = _this select 0;
	_marker = _this select 1;

	while {alive _structure} do {

		_str = _structure call CTI_CO_FNC_Buildinghealth;
			_hp = _str select 0;
			_clr = _str select 1;

		_marker setMarkerTextLocal Format ["%1 %2",(_structure getVariable "cti_structure_type"),_hp];
		_marker setMarkerColorLocal _clr;

		sleep 5;
	};

	if !(isNull _structure) then { 
		_marker setMarkerTextLocal (_structure getVariable "cti_structure_type"); //--- Remove HP from dead marker
		_marker setMarkerColorLocal CTI_BASE_MARKER_DESTROYED_COLOR;
		sleep CTI_BASE_MARKER_DESTROYED_DELAY;
	};
	
	deleteMarkerLocal _marker;
};

// additionnal marker for radars
if ((_var select CTI_STRUCTURE_LABELS) select 0 isEqualTo CTI_RADAR) then {
	(_structure) spawn {
		(_this) spawn CTI_CL_FNC_UpdateRadarMarkerAir;
	};
};
if ((_var select CTI_STRUCTURE_LABELS) select 0 isEqualTo CTI_RADAR_ART) then {
	(_structure) spawn {
		(_this) spawn CTI_CL_FNC_UpdateRadarMarkerArt;
	};
};
// Base satellite marker and scan
if ((_var select CTI_STRUCTURE_LABELS) select 0 isEqualTo CTI_SATELLITE) then {
	(_structure) spawn {
		(_this) spawn CTI_CL_FNC_UpdateRadarSatellite;
	};
};