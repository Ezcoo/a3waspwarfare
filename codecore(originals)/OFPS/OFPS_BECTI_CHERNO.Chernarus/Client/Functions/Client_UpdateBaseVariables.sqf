/*
  # HEADER #
	Script: 		Client\Functions\Client_UpdateBaseVariables.sqf
	Alias:			CTI_CL_FNC_UpdateBaseVariables
	Description:	Preform updates on all base variables
	Creation Date:	16-04-2017
	Revision Date:	16-04-2017

  # PARAMETERS #
  Boolean - true or false.


  # RETURNED VALUE #
	None

  # SYNTAX #
	true call CTI_CL_FNC_UpdateBaseVariables;
	false call CTI_CL_FNC_UpdateBaseVariables;

  # DEPENDENCIES #
	None

  # EXAMPLE #
	true call CTI_CL_FNC_UpdateBaseVariables; --> we update all CTI_Base variables
	false call CTI_CL_FNC_UpdateBaseVariables; --> we set all CTI_Base variables to false. Not currently being used, however could be useful in some cases
	
  # COMMENTS #
	This function was created to update these variables only when needed. it is very important whenever these variables are used, we call this function before using the variable!
	This function is called whenever the tablet is opened, and other parts of the UI. 
*/

private["_update_variables","_structures","_hq","_depot","_naval_depot","_barracks","_available","_in_range","_nearest","_in_range_large"];

_update_variables = _this;

if (_update_variables) then { // if true, we update all variables!

	_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;


	CTI_Base_HQInRange = [false, true] select (alive _hq && _hq distance player < CTI_BASE_CONSTRUCTION_RANGE);
	CTI_Base_ControlCenterInRange = [false, true] select !(isNull ([CTI_CONTROLCENTER, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_CC] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_SatelliteInRange = [false, true] select !(isNull ([CTI_SATELLITE, player, _structures, CTI_BASE_SATELLITE_RANGE_SATCAM] call CTI_CO_FNC_GetClosestStructure));

	CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE = [CTI_BASE_PURCHASE_UNITS_RANGE, CTI_BASE_PURCHASE_UNITS_RANGE_CC] select (CTI_Base_ControlCenterInRange);
	_barracks = [CTI_BARRACKS, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure;
	
	//--- Gear
	CTI_Base_GearInRange = [false, true] select (_barracks distance player < CTI_BASE_GEAR_RANGE);
	CTI_Base_GearInRange_Mobile = [false, true] select (count([player, CTI_SPECIAL_AMMOTRUCK, CTI_SERVICE_AMMO_TRUCK_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles) > 0);
	CTI_Base_GearInRange_AmmoPod =  [false, true] select (count([player, CTI_SPECIAL_GEAR, CTI_SERVICE_GEAR_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles) > 0);
	
	//--- Mobile
	CTI_Base_RepairInRange_Mobile = [false, true] select (count([player, CTI_SPECIAL_REPAIRTRUCK, CTI_SERVICE_REPAIR_TRUCK_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles) > 0);
	CTI_Base_FuelInRange_Mobile = [false, true] select (count([player, CTI_SPECIAL_FUELTRUCK, CTI_SERVICE_FUEL_TRUCK_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles) > 0);
	CTI_Base_DefenseTruckInRange_Mobile = [false, true] select (count([player, CTI_SPECIAL_DEFENSETRUCK, CTI_SERVICE_DEFENSE_TRUCK_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles) > 0);

	//--- Factorys
	CTI_Base_LightInRange = [false, true] select !(isNull ([CTI_LIGHT, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_HeavyInRange = [false, true] select !(isNull ([CTI_HEAVY, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_AirRotaryInRange = [false, true] select !(isNull ([CTI_AIR_ROTARY, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_AirFixedInRange = [false, true] select !(isNull ([CTI_AIR_FIXED, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_AmmoInRange = [false, true] select !(isNull ([CTI_AMMO, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_RepairInRange = [false, true] select !(isNull ([CTI_REPAIR, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_NavalInRange = [false, true] select !(isNull ([CTI_NAVAL, player, _structures, CTI_BASE_PURCHASE_UNITS_RANGE_EFFECTIVE] call CTI_CO_FNC_GetClosestStructure));
	CTI_Base_BarracksInRange = [false, true] select !(isNull _barracks);

	//--- Depot check
	_depot = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
		if !(isNull _depot) then {
			_available = false;
		switch (CTI_TOWNS_DEPOT_ACCESS_MODE) do {
			case 1: {if ([_depot getVariable "cti_depot", CTI_P_SideID] call CTI_CO_FNC_HasAllCamps) then {_available = true}}; //--- Check if the camps belong to the player's side
			default {_available = true}; //--- Default, The depot belongs to the player's side
		};
	
		CTI_Base_DepotInRange = _available;
	} else {
		CTI_Base_DepotInRange = false;
	};
	CTI_Base_GearInRange_Depot = CTI_Base_DepotInRange;

	//--- Naval Depot check
	_naval_depot = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestNavalDepot;
		if !(isNull _naval_depot) then {
			_available = false;
		switch (CTI_TOWNS_DEPOT_ACCESS_MODE) do {
			case 1: {if ([_naval_depot getVariable "cti_depot", CTI_P_SideID] call CTI_CO_FNC_HasAllCamps) then {_available = true}}; //--- Check if the camps belong to the player's side
			default {_available = true}; //--- Default, The naval depot belongs to the player's side
		};
	
		CTI_Base_NavalDepotInRange = _available;
	} else {
		CTI_Base_NavalDepotInRange = false;
	};

	//--- FOB Check
	_in_range = false;
	if (CTI_BASE_FOB_MAX > 0) then {
		_nearest = [vehicle player, CTI_P_SideLogic getVariable ["cti_fobs",[]]] call CTI_CO_FNC_GetClosestEntity;
		if (_nearest distance vehicle player <= CTI_BASE_GEAR_FOB_RANGE) then {_in_range = true};
	};
	CTI_Base_GearInRange_FOB = _in_range;
	
	//--- Large FOB Check
	_in_range_large = false;
	if (CTI_BASE_LARGE_FOB_MAX > 0) then {
		_nearest = [vehicle player, CTI_P_SideLogic getVariable ["cti_large_fobs",[]]] call CTI_CO_FNC_GetClosestEntity;
		if (_nearest distance vehicle player <= CTI_BASE_GEAR_LARGE_FOB_RANGE) then {_in_range_large = true};
	};
	CTI_Base_LargeFOBInRange = _in_range_large;
	CTI_Base_GearInRange_LARGE_FOB = _in_range_large;

	if (CTI_Base_DepotInRange || CTI_Base_NavalDepotInRange || CTI_Base_LargeFOBInRange) then {
		CTI_Base_ExtFactoryInRange = true;
		switch (true) do {
			case CTI_Base_DepotInRange: {CTI_Base_ExtFactoryType = CTI_DEPOT;};
			case CTI_Base_NavalDepotInRange: {CTI_Base_ExtFactoryType = CTI_DEPOT_NAVAL;};
			case CTI_Base_LargeFOBInRange: {CTI_Base_ExtFactoryType = CTI_LARGE_FOB;};
		};
	} else {
		CTI_Base_ExtFactoryInRange = false;
	};
	
} else {

// set all variables to false
	CTI_Tablet_Open = false;
	CTI_Base_HQInRange = false;
	CTI_Base_ControlCenterInRange = false;
	CTI_Base_SatelliteInRange = false;
	CTI_Base_BarracksInRange = false;
	CTI_Base_GearInRange = false;
	CTI_Base_GearInRange_Mobile = false;
	CTI_Base_LightInRange = false;
	CTI_Base_HeavyInRange = false;
	CTI_Base_AirRotaryInRange = false;
	CTI_Base_AirFixedInRange = false;
	CTI_Base_AmmoInRange = false;
	CTI_Base_RepairInRange = false;
	CTI_Base_NavalInRange = false;
	CTI_Base_RepairInRange_Mobile = false;
	CTI_Base_FuelInRange_Mobile = false;
	CTI_Base_DefenseTruckInRange_Mobile = false;
	CTI_Base_DepotInRange = false;
	CTI_Base_NavalDepotInRange = false;
	CTI_Base_GearInRange_Depot = false;
	CTI_Base_GearInRange_FOB = false;
	CTI_Base_LargeFOBInRange = false;
	CTI_Base_GearInRange_LARGE_FOB = false;
	CTI_Base_ExtFactoryInRange = false;
};