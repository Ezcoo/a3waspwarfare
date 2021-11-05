/*
  # HEADER #
	Script: 		Common\Functions\Common_InitializeNetVehicle.sqf
	Alias:			CTI_CO_FNC_InitializeNetVehicle
	Description:	Perform a generic unit/vehicle initialization for everyone
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	18-09-2013
	
  # PARAMETERS #
    0	[Object]: The unit/vehicle
    1	[Integer]: The Side ID of the unit/vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[ENTITY, SIDE ID] call CTI_CO_FNC_InitializeNetVehicle
	
  # DEPENDENCIES #
	Client Function: CTI_CL_FNC_GetAIDigit
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_MarkerUpdate
	Also Depends on the initialization of the units
	
  # EXAMPLE #
    [vehicle player, CTI_P_SideID] call CTI_CO_FNC_InitializeNetVehicle
	  -> This will initialize the vehicle of the player with his own Side ID
*/

params ["_vehicle", "_sideID"];
private ["_marker_dead_color", "_marker_dead_size", "_marker_dead_type", "_marker_color", "_marker_label", "_marker_name", "_marker_size", "_marker_type", "_side"];

_side = _sideID call CTI_CO_FNC_GetSideFromID;
_classname = typeOf _vehicle;

_marker_type = "";
_marker_size = [1,1];
_marker_color = CTI_P_SideColor;

//--- Perform general operations
_special = _vehicle getVariable ["cti_spec", []];
if !(typeName _special isEqualTo "ARRAY") then { _special = [_special] };

if (CTI_SPECIAL_REPAIRTRUCK in _special) then { //--- Repair truck.
	_marker_size = [0.75,0.75];
	_marker_type = CTI_P_MarkerPrefix+"maint"; //type is ok? b_support ?
	
	//_vehicle addAction ["<t color='#a5c4ff'>MENU: Construction (Repair Truck)</t>", "Client\Actions\Action_CoinBuild.sqf", "RepairTruck", 93, false, true, "", "_this isEqualTo player"];
	
	//--- HQ can be repaired if fubarized
	if ((missionNamespace getVariable "CTI_BASE_HQ_REPAIR") > 0) then {
		_vehicle addAction ["<t color='#efb377'>Repair HQ</t>","Client\Actions\Action_RepairHQ.sqf", [], 99, false, true, "", 'driver _target isEqualTo _this && alive _target && !alive(CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ) && time - CTI_P_LastRepairTime > 10'];
	};
};
if (CTI_SPECIAL_AMMOTRUCK in _special) then { //--- Ammo truck.
	_marker_size = [0.75,0.75];
	_marker_type = CTI_P_MarkerPrefix+"support";
	_vehicle setAmmoCargo 0;  // No free ammo
};
if (CTI_SPECIAL_FUELTRUCK in _special) then { //--- Fuel truck.
	_marker_size = [0.75,0.75];
	_marker_type = CTI_P_MarkerPrefix+"support";
	_vehicle setAmmoCargo 0;  // No free ammo
};
if (CTI_SPECIAL_MEDICALVEHICLE in _special) then { //--- Medical vehicle.
	_marker_size = [0.75,0.75];
	_marker_type = CTI_P_MarkerPrefix+"med";
};

/* if (CTI_SPECIAL_ECM in _special) then
{
	_marker_size = [0.75,0.75];
	_marker_type = CTI_P_MarkerPrefix+"ECM";
};
*/

if (CTI_SPECIAL_NUKETRUCK in _special) then { //--- Nuke vehicle.
	_vehicle call {[_this, 30] execvm "Common\Functions\External\nuclear\geiger.sqf"};
	_vehicle addAction ["<t color='#ff0000'>ARM NUCLEAR DEVICE <t color='#ffffff'> (10min timer)</t></t>", "Common\Functions\External\nuclear\functions\fn_bombArm.sqf", [], 93, false, true, "", "_this isEqualTo player"];
	//[[[_vehicle], "Common\Functions\External\nuclear\functions\fn_bombTimer.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;
};

//--- Static Line Drop
if (_vehicle isKindOf "Plane" || _vehicle isKindOf "Helicopter") then {
	_vehicle addAction ["<t color='#2E9AFE'>Eject With Parachute</t>", "Client\Actions\Action_Eject.sqf",[],0,false,true,"","player in _target && getPos _target select 2 >80"];
};

//--- Radio - only helis - Valkyries
if (_vehicle isKindOf "Helicopter") then {
	_vehicle addAction ["<t color='#2E9AFE'>Radio on (#1)</t>", "Client\Functions\Client_VehicleRadio.sqf",[1,1],0,false,true,"","driver _target isEqualTo player"];
};
//--- Radio - only jets - DangerZONE
if (_vehicle isKindOf "Plane") then {
	_vehicle addAction ["<t color='#2E9AFE'>Radio on (#2)</t>", "Client\Functions\Client_VehicleRadio.sqf",[1,2],0,false,true,"","driver _target isEqualTo player"];
};

//--- Taxi Reverse
if (_vehicle isKindOf "Plane" || _vehicle isKindOf "Helicopter") then {_vehicle addAction ["<t color='#86F078'>Taxi Reverse</t>","Client\Actions\Action_TaxiReverse.sqf", [], 99, false, true, "", 'driver _target isEqualTo _this && alive _target && speed _target < 4 && speed _target > -4 && getPos _target select 2 < 4']};

//---Add Deployable Rafts to Ships
if (_vehicle isKindOf "Ship") then {
	_vehicle addAction ["<t color='#ff0000'>Deploy Raft<t color='#ffffff'> ($250)</t></t>", "Client\Actions\Action_DeployRaft.sqf", ["B_Lifeboat",250,true], 0, false, true, "", "player in _target"];
	if (_side isEqualTo west) then {
		//blufor theme
		_vehicle addAction ["<t color='#2E9AFE'>Radio on (#3)</t>", "Client\Functions\Client_VehicleRadio.sqf",[1,3],0,false,true,"","driver _target isEqualTo player"];
	} else{
		//Opfor theme
		_vehicle addAction ["<t color='#2E9AFE'>Radio on (#4)</t>", "Client\Functions\Client_VehicleRadio.sqf",[1,4],0,false,true,"","driver _target isEqualTo player"];
	};
};

//--- Perform side-speficic operations
if !(_sideID isEqualTo CTI_P_SideID) exitWith {};

if (CTI_SPECIAL_REPAIRTRUCK in _special) then { //--- Repair truck.
	if (CTI_BASE_FOB_MAX > 0) then {
		//_vehicle addAction ["<t color='#eac6ff'>ACTION: Request FOB Build Permission</t>", "Client\Actions\Action_RequestAction.sqf", [CTI_REQUEST_FOB, []], 92, false, true, "", "_this isEqualTo player && time - CTI_P_TeamsRequests_Last > 30 && !(call CTI_CL_FNC_IsPlayerCommander) && CTI_P_TeamsRequests_FOB < 1"];
		_vehicle addAction ["<t color='#eac6ff'>ACTION: Request FOB Dismantle Permission</t>", "Client\Actions\Action_RequestAction.sqf", [CTI_REQUEST_FOB_DISMANTLE, []], 0, false, true, "", "_this isEqualTo player && time - CTI_P_TeamsRequests_Last > 30 && !(call CTI_CL_FNC_IsPlayerCommander) && CTI_P_TeamsRequests_FOB_Dismantle < 1"];
		_vehicle addAction ["<t color='#eac6ff'>ACTION: Dismantle Nearest FOB</t>", "Client\Actions\Action_DismantleFOB.sqf", "", 0, false, true, "", "_this isEqualTo player && (CTI_P_TeamsRequests_FOB_Dismantle > 0 || call CTI_CL_FNC_IsPlayerCommander)"];
	};
};

//Defense Truck Cargo
if (CTI_SPECIAL_DEFENSETRUCK in _special) then { //--- Defense truck.
	_marker_size = [0.75,0.75];
	_marker_type = CTI_P_MarkerPrefix+"maint"; //type is ok? b_support ?

	//--- HQ can be repaired if fubarized
	if ((missionNamespace getVariable "CTI_BASE_HQ_REPAIR") > 0) then {
		_vehicle addAction ["<t color='#efb377'>Repair HQ</t>","Client\Actions\Action_RepairHQ.sqf", [], 99, false, true, "", 'driver _target isEqualTo _this && alive _target && !alive(CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ) && time - CTI_P_LastRepairTime > 10'];
	};
};

if (CTI_SPECIAL_DEPLOYABLEFOB in _special) then { //--- FOB vehicle.
	_vehicle addAction ["<t color='#FFBD4C'>DEPLOY FOB</t>","Client\Actions\Action_DeployFOB.sqf", ["small"], 0, false, true, "", "(player isEqualTo driver _target) && !(CTI_P_fob_currently_deploying)"];
};
if (CTI_SPECIAL_DEPLOYABLEFOBLARGE in _special) then { //--- LARGE FOB vehicle.
	_vehicle addAction ["<t color='#FFBD4C'>DEPLOY LARGE FOB</t>","Client\Actions\Action_DeployFOB.sqf", ["large"], 0, false, true, "", "(player isEqualTo driver _target) && !(CTI_P_fob_currently_deploying)"];
};

//Artillery Menu in action menu for ease
if (getNumber(configFile >> "CfgVehicles" >> _classname >> "artilleryScanner") > 0 && (missionNamespace getVariable "CTI_ARTILLERY_SETUP") > -1) then {
	_vehicle addAction ["<t color='#FFBD4C'>Ballistics Computer</t>","Client\Actions\Action_ArtilleryMenu.sqf", [], 10, false, false, "", "(player isEqualTo gunner _target)"];
};

//--- Get a proper icon
if (_marker_type isEqualTo "") then {
	_marker_size = [0.75,0.75];
	switch (true) do {
		case (_classname isKindOf "Man"): { _marker_type = CTI_P_MarkerPrefix+"inf"; _marker_size = [0.4, 0.4]; _marker_color = "ColorYellow"; };
		case ((_classname isKindOf "Car" || _classname isKindOf "Motorcycle") && !(_classname isKindOf "Wheeled_APC_F")): { _marker_type = CTI_P_MarkerPrefix+"motor_inf" };
		case (_classname isKindOf "Wheeled_APC_F"): { _marker_type = CTI_P_MarkerPrefix+"mech_inf" };
		case (_classname isKindOf "Ship"): { _marker_type = CTI_P_MarkerPrefix+"naval" };
		case (_classname isKindOf "Tank"): { _marker_type = CTI_P_MarkerPrefix+"armor" };
		case (_classname isKindOf "Helicopter"): { _marker_type = CTI_P_MarkerPrefix+"air" };
		case (_classname isKindOf "Plane"): { _marker_type = CTI_P_MarkerPrefix+"plane" };
		default { _marker_type = CTI_P_MarkerPrefix+"unknown" };
	};
};

//--- Marker initialization
_marker_label = "";
_marker_name = format["cti_vehicle_%1", CTI_P_MarkerIterator];
CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
_marker_dead_type = _marker_type;
_marker_dead_color = "ColorBlack";
_marker_dead_size = _marker_size;

if (_classname isKindOf "Man") then {
	if (_vehicle in units player) then {
		_marker_color = "ColorOrange";
		_marker_label = (_vehicle) call CTI_CL_FNC_GetAIDigit;
		//(_vehicle) execFSM "Client\FSM\update_client_ai.fsm";
	};
};

// Medical vehicles get a respawn block range marker
if (CTI_SPECIAL_MEDICALVEHICLE in _special) then {
	[_vehicle] spawn {
		params ["_vehicle"];
		private _marker = format["cti_vehicle_%1_range", CTI_P_MarkerIterator];	// Info: The number for the range is not the same as for the vehicle
		createMarkerLocal [_marker, getPosWorld _vehicle];
		_marker setMarkerAlphaLocal 0.5;
		_marker setMarkerColorLocal "ColorBlack";
		_marker setMarkerShapeLocal "ELLIPSE";
		_marker setMarkerBrushLocal "SolidBorder";
		_marker setMarkerSizeLocal [CTI_RESPAWN_MOBILE_SAFE_RANGE, CTI_RESPAWN_MOBILE_SAFE_RANGE];
		
		while {alive _vehicle} do 
		{
			//https://community.bistudio.com/wiki/visiblePosition
			//https://community.bistudio.com/wiki/Code_Optimisation#Pos:ition_World_is_the_fastest
			_marker setMarkerPosLocal (visiblePosition  _vehicle);
			sleep 1;
		};
		deleteMarkerLocal _marker;
	};
};

// Nukes get a blast range marker
/*
NUKE_BLAST_CORE_RADIUS =  500; //sets range for core nuke area - this area kills all 
NUKE_BLAST_BASE_RADIUS =  1000; //sets range for base objects and factories
NUKE_BLAST_INFANTRY_RADIUS =  1500; //sets range for all objects
NUKE_BLAST_VEHICLE_RADIUS =  2000; //sets range for emp range for ground units
NUKE_BLAST_AIR_RADIUS =  2500; //sets range for just air vehicles and emp effect
*/
if (CTI_SPECIAL_NUKETRUCK in _special) then {
	[_vehicle] spawn {
		params ["_vehicle"];

		//NUKE_BLAST_BASE_RADIUS
		private _marker_base = format["cti_vehicle_%1_base", CTI_P_MarkerIterator];
		createMarkerLocal [_marker_base, getPosWorld _vehicle];
		_marker_base setMarkerAlphaLocal 0.2;
		_marker_base setMarkerColorLocal "ColorRed";
		_marker_base setMarkerShapeLocal "ELLIPSE";
		_marker_base setMarkerBrushLocal "SolidBorder";
		_marker_base setMarkerSizeLocal [NUKE_BLAST_BASE_RADIUS, NUKE_BLAST_BASE_RADIUS];

		//NUKE_BLAST_INFANTRY_RADIUS
		private _marker_infantry = format["cti_vehicle_%1_infantry", CTI_P_MarkerIterator];	
		createMarkerLocal [_marker_infantry, getPosWorld _vehicle];
		_marker_infantry setMarkerAlphaLocal 0.1;
		_marker_infantry setMarkerColorLocal "ColorOrange";
		_marker_infantry setMarkerShapeLocal "ELLIPSE";
		_marker_infantry setMarkerBrushLocal "SolidBorder";
		_marker_infantry setMarkerSizeLocal [NUKE_BLAST_INFANTRY_RADIUS, NUKE_BLAST_INFANTRY_RADIUS];

		//NUKE_BLAST_VEHICLE_RADIUS
		private _marker_vehicle = format["cti_vehicle_%1_vehicle", CTI_P_MarkerIterator];	
		createMarkerLocal [_marker_vehicle, getPosWorld _vehicle];
		_marker_vehicle setMarkerAlphaLocal 0.05;
		_marker_vehicle setMarkerColorLocal "ColorYellow";
		_marker_vehicle setMarkerShapeLocal "ELLIPSE";
		_marker_vehicle setMarkerBrushLocal "SolidBorder";
		_marker_vehicle setMarkerSizeLocal [NUKE_BLAST_VEHICLE_RADIUS, NUKE_BLAST_VEHICLE_RADIUS];

		//NUKE_BLAST_AIR_RADIUS
		private _marker_air = format["cti_vehicle_%1_air", CTI_P_MarkerIterator];	
		createMarkerLocal [_marker_air, getPosWorld _vehicle];
		_marker_air setMarkerAlphaLocal 0.05;
		_marker_air setMarkerColorLocal "ColorKhaki";
		_marker_air setMarkerShapeLocal "ELLIPSE";
		_marker_air setMarkerBrushLocal "SolidBorder";
		_marker_air setMarkerSizeLocal [NUKE_BLAST_AIR_RADIUS, NUKE_BLAST_AIR_RADIUS];

		//update location while alive
		while {alive _vehicle} do 
		{
			//https://community.bistudio.com/wiki/visiblePosition
			//https://community.bistudio.com/wiki/Code_Optimisation#Pos:ition_World_is_the_fastest
			_marker_base setMarkerPosLocal (visiblePosition  _vehicle);
			_marker_infantry setMarkerPosLocal (visiblePosition  _vehicle);
			_marker_vehicle setMarkerPosLocal (visiblePosition  _vehicle);
			_marker_air setMarkerPosLocal (visiblePosition  _vehicle);
			sleep 1;
		};
		//cleanup on dead
		deleteMarkerLocal _marker_base;
		deleteMarkerLocal _marker_infantry;
		deleteMarkerLocal _marker_vehicle;
		deleteMarkerLocal _marker_air;
	};
};


if (CTI_SPECIAL_ECM in _special) then
{
	_vehicle addAction ["<t color='#FF0000'>ECM On</t>", { (vehicle CTI_P_Controlled) setVariable ["ecm", true, true] }, [], 6, false, true, "",  '((_target) getVariable "ecm") isEqualTo false && CTI_P_Controlled isEqualTo driver _target'];
	_vehicle addAction ["<t color='#FF0000'>ECM Off</t>",{ (vehicle CTI_P_Controlled) setVariable ["ecm", false, true] }, [], 6, false, true, "", '((_target) getVariable "ecm") isEqualTo true  && CTI_P_Controlled isEqualTo driver _target'];
}; 

	


[_vehicle, _marker_type, _marker_color, _marker_size, _marker_label, _marker_name, 1, _marker_dead_type, _marker_dead_color, _marker_dead_size] spawn CTI_CO_FNC_MarkerUpdate;