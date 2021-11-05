_lastUpdate = time;
_handle = nil;
_mhqbr = missionNamespace getVariable "CTI_C_BASE_HQ_BUILD_RANGE";
_pur = missionNamespace getVariable "CTI_C_UNITS_PURCHASE_RANGE";
_pura = missionNamespace getVariable "CTI_C_UNITS_PURCHASE_HANGAR_RANGE";
_ccr = missionNamespace getVariable "CTI_C_STRUCTURES_COMMANDCENTER_RANGE";
_pgr = missionNamespace getVariable "CTI_C_UNITS_PURCHASE_GEAR_RANGE";
_rptr = missionNamespace getVariable "CTI_C_UNITS_REPAIR_TRUCK_RANGE";
_spr = missionNamespace getVariable "CTI_C_STRUCTURES_SERVICE_POINT_RANGE";
_tcr = missionNamespace getVariable "CTI_C_TOWNS_CAPTURE_RANGE";
_buygearfrom = missionNamespace getVariable "CTI_C_TOWNS_GEAR";
_gear_field_range = missionNamespace getVariable "CTI_C_UNITS_PURCHASE_GEAR_MOBILE_RANGE";
_boundaries_enabled = if ((missionNamespace getVariable "CTI_C_GAMEPLAY_BOUNDARIES_ENABLED") > 0) then {true} else {false};
_typeRepair = missionNamespace getVariable Format['CTI_%1REPAIRTRUCKS',CTI_Client_SideJoinedText];

//--- Keep actions updated (GUI). - changed-MrNiceGuy 
12450 cutRsc ["OptionsAvailable","PLAIN",0];
_icons = [
	"Client\Images\icon_wf_building_mhq.paa",       //mhq deployable
	"Client\Images\icon_wf_building_barracks.paa",  //barracks 
	"Client\Images\icon_wf_building_gear.paa",      //gear avail
	"Client\Images\icon_wf_building_lvs.paa",       //lvsp
	"Client\Images\icon_wf_building_hvs.paa",       //hvsp
	"Client\Images\icon_wf_building_air.paa",       //helipad
	"Client\Images\icon_wf_building_hangar.paa",    //hangar
	"Client\Images\icon_wf_building_repair.paa",    //rearm | repair | refuel
	"Client\Images\icon_wf_building_firstaid.paa",  //heal
	"Client\Images\icon_wf_building_cc.paa",        //command center
	"Client\Images\icon_wf_building_aa_radar.paa",  //AA radar
	"Client\Images\icon_wf_building_am_radar.paa",  //ARTY radar
	"Client\Images\icon_wf_support_transport.paa",  //transport
	"Client\Images\icon_wf_support_supplydrop.paa", //supply drop
	"Client\Images\icon_wf_support_artilery.paa",   //ARTY
	"Client\Images\icon_wf_support_mortar.paa",     //ARTY - mortar
	"Client\Images\icon_wf_support_cas.paa",        //CAS
	"Client\Images\icon_wf_support_uav.paa"         //UAV
];


while {!CTI_GameOver} do {
	
	while {time - _lastUpdate > 5 || CTI_ForceUpdate} do {
		
		_buildings = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideStructures;
		_base = (CTI_Client_SideJoined) Call CTI_CO_FNC_GetSideHQ;
		_purchaseRange = if (commandInRange) then {_ccr} else {_pur};

		//--- Boundaries are limited ?
		if (_boundaries_enabled) then {
			_isOnMap = Call CTI_CL_FNC_BoundariesIsOnMap;
			if (!_isOnMap && alive player && !CTI_Client_IsRespawning) then {
				if !(paramBoundariesRunning) then {_handle = [] Spawn CTI_CL_FNC_BoundariesHandleOnMap;};
			} else {
				if !(isNil '_handle') then {terminate _handle;_handle = nil;};
				paramBoundariesRunning = false;
			};
		};

		//--- HQ.
		if !(isNull _base) then {
			hqInRange = if ((player distance _base < _mhqbr) && alive _base  && (side _base in [CTI_Client_SideJoined,civilian])) then {true} else {false};
		};

		barracksInRange = if (isNull (['BARRACKSTYPE',_buildings,_purchaseRange,CTI_Client_SideJoined,player] Call CTI_CO_FNC_BuildingInRange)) then {false} else {true};
		gearInRange = if (isNull (['BARRACKSTYPE',_buildings,_pgr,CTI_Client_SideJoined,player] Call CTI_CO_FNC_BuildingInRange)) then {false} else {true};
		if !(gearInRange) then {
			if (_buygearfrom in [1,2,3]) then {
				_nObject = objNull;
				switch (_buygearfrom) do { 
					case 1:{_nObject = [vehicle player, _gear_field_range] Call CTI_CL_FNC_GetClosestCamp;};
					case 2:{_nObject = [vehicle player, _gear_field_range] Call CTI_CL_FNC_GetClosestDepot;};
					case 3:{{if !(isNull _x) exitWith {_nObject = _x;}} forEach [[vehicle player, _gear_field_range] Call CTI_CL_FNC_GetClosestCamp, [vehicle player, _gear_field_range] Call CTI_CL_FNC_GetClosestDepot]};
				};
				gearInRange = if !(isNull _nObject) then {true} else {false};
			};
		};

		lightInRange = if (isNull (['LIGHTTYPE',_buildings,_purchaseRange,CTI_Client_SideJoined,player] Call CTI_CO_FNC_BuildingInRange)) then {false} else {true};
		heavyInRange = if (isNull (['HEAVYTYPE',_buildings,_purchaseRange,CTI_Client_SideJoined,player] Call CTI_CO_FNC_BuildingInRange)) then {false} else {true};
		aircraftInRange = if (isNull (['AIRCRAFTTYPE',_buildings,_purchaseRange,CTI_Client_SideJoined,player] Call CTI_CO_FNC_BuildingInRange)) then {false} else {true};
		serviceInRange = if (isNull (['SERVICEPOINTTYPE',_buildings,_spr,CTI_Client_SideJoined,player] Call CTI_CO_FNC_BuildingInRange)) then {false} else {true};

		if !(serviceInRange) then {
			_checks = (getPos player) nearEntities[_typeRepair,_rptr];
			if (count _checks > 0) then {serviceInRange = true;};
		};

		_checks = [CTI_Client_SideJoined, missionNamespace getVariable Format ["CTI_%1AARADARTYPE",CTI_Client_SideJoinedText],_buildings] Call CTI_CO_FNC_GetFactories;
		if (count _checks > 0) then {antiAirRadarInRange = true;} else {antiAirRadarInRange = false;};
		
		_checks = [CTI_Client_SideJoined, missionNamespace getVariable Format ["CTI_%1ArtyRadarTYPE",CTI_Client_SideJoinedText],_buildings] Call CTI_CO_FNC_GetFactories;
		if (count _checks > 0) then {antiArtyRadarInRange = true;} else {antiArtyRadarInRange = false;};
		
		//--- Town Depot.
		depotInRange = if !(isNull ([vehicle player, _tcr] Call CTI_CL_FNC_GetClosestDepot)) then {true} else {false};
		if (depotInRange) then {serviceInRange = true;};

		_checks = ['COMMANDCENTERTYPE',_buildings,_ccr,CTI_Client_SideJoined,player] Call CTI_CO_FNC_BuildingInRange;
		commandInRange = if (isNull _checks) then {false} else {true};

		//--- Airport.
		hangarInRange = if !(isNull ([vehicle player, _pura] Call CTI_CL_FNC_GetClosestAirport)) then {true} else {false};

		_usable = [hqInRange,barracksInRange,gearInRange,lightInRange,heavyInRange,aircraftInRange,hangarInRange,serviceInRange,serviceInRange,commandInRange,antiAirRadarInRange];

		_c = 0;
		if (isNull (["currentCutDisplay"] call BIS_FNC_GUIget)) then {12450 cutRsc["OptionsAvailable","PLAIN",0]};
		{
			if (_x) then {
				((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl (3500 + _c)) CtrlSetText (_icons select _c);
			} else {
				((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl (3500 + _c)) CtrlSetText "";
			};
			_c = _c + 1;
		}forEach _usable;

		if (CTI_ForceUpdate) then {CTI_ForceUpdate  = false;};
		_lastUpdate = time;
		
	};


	sleep 5;
};