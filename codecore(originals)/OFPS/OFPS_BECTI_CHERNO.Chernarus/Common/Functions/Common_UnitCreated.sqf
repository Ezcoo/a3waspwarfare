/*
  # HEADER #
	Alias:			CTI_CO_FNC_UnitCreated
	Description:	Various functions to be executed after units or vehicles have been created
	
  # PARAMETERS #
    0	[object]: The created unit or vehicle
	
  # RETURNED VALUE #
	None
*/

private ["_unit"];

_unit = _this;

if (local _unit) then {
	if (_unit isKindOf "Man") then {
		if (CTI_VEHICLES_LVOSS isEqualTo 1 || CTI_VEHICLES_ERA isEqualTo 1) then {
			_unit addEventHandler ["FiredMan",{_this spawn FNC_BAPS_FIRED}];
		};
		//_unit addEventHandler ["FiredMan",{_this spawn FNC_CRAMControl_AttackerFiredEH;}];
		//_unit remoteExec ["CTI_PVF_SRV_AddCRAMFireEH", CTI_PV_SERVER];
	};
};