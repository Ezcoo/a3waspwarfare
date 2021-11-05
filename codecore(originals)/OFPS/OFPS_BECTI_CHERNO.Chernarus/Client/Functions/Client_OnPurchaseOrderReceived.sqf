/*
  # HEADER #
	Script: 		Client\Functions\Client_OnPurchaseOrderReceived.sqf
	Alias:			CTI_CL_FNC_OnPurchaseOrderReceived
	Description:	Triggered when the client order is being processed
					Note this function is called automatically when the client purchase is ready by
					the "CTI_PVF_CLT_OnPurchaseOrderReceived" PVF
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Number]: The purchase seed
    1	[String]: The classname
    2	[Group]: The unit which made the purchase order
    3	[Array]: The vehicle special info (lock, crew)
    4	[Object]: The factory
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SEED, CLASSNAME, BUYER, INFORMATION, FACTORY] spawn CTI_CL_FNC_OnPurchaseOrderReceived
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_CreateUnit
	Common Function: CTI_CO_FNC_CreateVehicle
	Common Function: CTI_CO_FNC_ChangeFunds
	Common Function: CTI_CO_FNC_GetFunds
	Common Function: CTI_CO_FNC_InitializeCustomVehicle
	Common Function: CTI_CO_FNC_SanitizeAircraft
	Common Function: CTI_CO_FNC_SanitizeLandOrdinance
	Common Function: CTI_CO_FNC_SanitizeAirOrdinance	
	
  # EXAMPLE #
	[_seed, _classname, group player, _veh_infos, _factory] spawn CTI_CL_FNC_OnPurchaseOrderReceived
*/

params ["_req_seed", "_var_name", "_req_buyer", "_factory", "_veh_infos"];
private ["_cost", "_funds", "_index", "_model", "_net", "_req_time", "_req_time_out", "_script", "_var", "_var_classname", "_vehicle", "_unit_skill", "_crewbag"];

_var_classname = missionNamespace getVariable _var_name;
_req_classname = _var_classname select CTI_UNIT_CLASSNAME;

_model = _req_classname;

//--- Custom vehicle?
_script = _var_classname select CTI_UNIT_SCRIPT;
_customid = -1;
if (typeName (_var_classname select CTI_UNIT_SCRIPT) isEqualTo "ARRAY") then { _model = (_var_classname select CTI_UNIT_SCRIPT) select 0; _script = (_var_classname select CTI_UNIT_SCRIPT) select 1; _customid = (_var_classname select CTI_UNIT_SCRIPT) select 2};

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Functions\Client_OnPurchaseOrderReceived.sqf", format["Received purchase order concerning classname [%1] with seed [%2] from [%3] on factory [%4, (%5)]", _var_name, _req_seed, _req_buyer, _factory, _factory getVariable ["cti_structure_type", "Depot"]]] call CTI_CO_FNC_Log };

//--- Find the current request among our requests
_index = -1;
{ if ((_x select 0) isEqualTo _req_seed && (_x select 1) isEqualTo _var_name) exitWith {_index = _forEachIndex} } forEach CTI_P_PurchaseRequests;
if (_index isEqualTo -1) exitWith { diag_log "debug: unknown index in onpurchaseorderreceived" }; //todo better msg.

// CTI_P_PurchaseRequests set [_index, "!REMOVE!"];
// CTI_P_PurchaseRequests = CTI_P_PurchaseRequests - ["!REMOVE!"];
CTI_P_PurchaseRequests deleteAt _index;

//--- Check if the group can handle the current unit without breaking the group size limit
_process = false;
if !(_req_classname isKindOf "Man") then {
	if (!(_veh_infos select 0) && !(_veh_infos select 1) && !(_veh_infos select 2) && !(_veh_infos select 3)) then { _process = true }; //--- Empty
};

_req_time_out = time + (_var_classname select CTI_UNIT_TIME);

//--- Soft limit (skip for empty vehicles)
_player_ai_count = CTI_PLAYERS_GROUPSIZE;
if (CTI_PLAYERS_GROUPSIZE isEqualTo 0) then {_player_ai_count = player getVariable ["CTI_PLAYER_GROUPSIZE",[]];} else {_player_ai_count = CTI_PLAYERS_GROUPSIZE;};
if !(_process) then { if ((count units (group player))+1 <= _player_ai_count) then { _process = true }};
if !(_process) exitWith { [_req_seed, _var_name, _req_buyer, _factory] remoteExec ["CTI_PVF_SRV_AnswerPurchase", CTI_PV_SERVER] }; //--- Can't do it but we answer to the server.

//--- Check if the buyer has enough funds to perform this operation
_cost = _var_classname select CTI_UNIT_PRICE;
if !(_model isKindOf "Man") then { //--- Add the vehicle crew cost if applicable
	_crewType = switch (true) do {
		case (_model isKindOf "Tank"): {"Crew"};
		case (_model isKindOf "Plane"): {"Pilot"};
		case (_model isKindOf "Helicopter"): {"Helipilot"};
		default {"Soldier"};
	};
	_crew = missionNamespace getVariable format["CTI_%1_%2", CTI_P_SideJoined, _crewType];
	
	// Use CUP units for crew if barracks level not high 
	if (_crewType in ["Crew", "Soldier"]) then {
		_upgrade_barracks = ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) select CTI_UPGRADE_BARRACKS;
		if (_upgrade_barracks < CTI_BASE_PURCHASE_UNITS_UPGRADE) then {
			_crew = missionNamespace getVariable [format["CTI_%1_%2_Low", CTI_P_SideJoined, _crewType], _crew];
		};
	};
	//--- Ultimately if we're dealing with a sub we may want to use divers unless that our current soldiers are free-diving champions
	if (_model isKindOf "Ship") then {
		if (getText(configFile >> "CfgVehicles" >> _model >> "simulation") isEqualTo "submarinex") then { _crew = missionNamespace getVariable format["CTI_%1_Diver", CTI_P_SideJoined] };
	};
	
	_var_crew_classname = missionNamespace getVariable _crew;
	if !(isNil '_var_crew_classname') then {
		for '_i' from 0 to 2 do { if (_veh_infos select _i) then { _cost = _cost + (_var_crew_classname select CTI_UNIT_PRICE) } };
		
		if (_veh_infos select 3) then { //--- Turrets
			{ if (count _x isEqualTo 1) then { _cost = _cost + (_var_crew_classname select CTI_UNIT_PRICE) } } forEach (_var_classname select CTI_UNIT_TURRETS);
		};
	};
};
if !(count (missionNamespace getVariable [format ["CTI_%1_%2", CTI_P_SideJoined, _factory getVariable ["cti_structure_type", ""]], []]) > 0) then {
	_cost = _cost call CTI_UI_Purchase_LogisticsTax;
};

_funds = (_req_buyer) call CTI_CO_FNC_GetFunds;
if (_funds < _cost) exitWith { [_req_seed, _var_name, _req_buyer, _factory] remoteExec ["CTI_PVF_SRV_AnswerPurchase", CTI_PV_SERVER] };
// [_req_buyer, -_cost] call CTI_CO_FNC_ChangeFunds; //--- Change the buyer's funds



// Notification
private _label = _var_classname select CTI_UNIT_LABEL;
	
_factory_label_short = "Depot";

//if Large FOB
if !(isNil {_factory getVariable "cti_large_fob"}) then {
	_factory_label_short = "FOB";
};

_var = missionNamespace getVariable [format ["CTI_%1_%2", CTI_P_SideJoined, _factory getVariable ["cti_structure_type", ""]], []];
if (count _var > 0) then {
	_factory_label_short = (_var select CTI_STRUCTURE_LABELS) select 1;
} else {
	if ((_factory getVariable "cti_depot") getVariable ["cti_naval", false] || typeOf _factory isEqualTo "Land_Lighthouse_small_F") then {
		_factory_label_short = "Harbor";
	};
};
_factory_label_short = (_factory_label_short splitString " ") select 0;

disableSerialization;
private _notification =  ["purchase"] call CTI_CL_FNC_NotificationHandle;

// Update notification timer while we wait
while { time <= _req_time_out && alive _factory } do {
	(_notification select 1) ctrlSetStructuredText parseText format["%1s | %2 | <t color='#ccffaf'>%3</t>", ceil (_req_time_out - time), _factory_label_short,  _label];
	sleep 0.1;
};

// Final build status
if (alive _factory && time >= _req_time_out) then {
		(_notification select 1) ctrlSetStructuredText parseText format["Completed: <t color='#ccffaf'>%1</t>", _label];
} else {
		(_notification select 1) ctrlSetStructuredText parseText format["Building Failed: <t color='#ccffaf'>%1</t>", _label];
};

// Remove notification
_notification spawn {
	disableSerialization;
	sleep 2;
	_this call CTI_CL_FNC_NotificationRemove;
};


if !(alive _factory) exitWith { diag_log "the factory is dead" };

//--- Soft limit (skip for empty vehicles)
if !(_process) then { if ((count units (group player))+1 <= _player_ai_count) then { _process = true }};
if !(_process) exitWith { [_req_seed, _var_name, _req_buyer, _factory] remoteExec ["CTI_PVF_SRV_AnswerPurchase", CTI_PV_SERVER] }; //--- Can't do it but we answer to the server.

_funds = (_req_buyer) call CTI_CO_FNC_GetFunds;
if (_funds < _cost) exitWith { [_req_seed, _var_name, _req_buyer, _factory] remoteExec ["CTI_PVF_SRV_AnswerPurchase", CTI_PV_SERVER] };
[_req_buyer, -_cost] call CTI_CO_FNC_ChangeFunds; //--- Change the buyer's funds

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Functions\Client_OnPurchaseOrderReceived.sqf", format["Purchase order concerning classname [%1] with seed [%2] from [%3] on factory [%4, (%5)] is done. Processing the creation...", _var_classname, _req_seed, _req_buyer, _factory, _factory getVariable ["cti_structure_type", "Depot"]]] call CTI_CO_FNC_Log };

//--- Creation.
//if Depot
_direction = 360 - CTI_TOWNS_DEPOT_BUILD_DIRECTION;
_distance = CTI_TOWNS_DEPOT_BUILD_DISTANCE + (_var_classname select CTI_UNIT_DISTANCE);
_factory_label = "Depot";

//if Large FOB
if !(isNil {_factory getVariable "cti_large_fob"}) then {
	_direction = 360 - CTI_TOWNS_LARGE_FOB_BUILD_DIRECTION;
	_distance = CTI_TOWNS_LARGE_FOB_BUILD_DISTANCE + (_var_classname select CTI_UNIT_DISTANCE);
	_factory_label = "Large FOB";
};

_var = missionNamespace getVariable [format ["CTI_%1_%2", CTI_P_SideJoined, _factory getVariable ["cti_structure_type", ""]], []];
if (count _var > 0) then {
	_direction = 360 - ((_var select CTI_STRUCTURE_PLACEMENT) select 0);
	_distance = ((_var select CTI_STRUCTURE_PLACEMENT) select 1) + (_var_classname select CTI_UNIT_DISTANCE);
	_factory_label = (_var select CTI_STRUCTURE_LABELS) select 1;
};

_position = _factory modelToWorld [(sin _direction * _distance), (cos _direction * _distance), 0];
_position set [2, .5];
_net = [false, true] select ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") isEqualTo 1);
_vehicle = objNull;
_unit = objNull;
_units = [];

if (_model isKindOf "Man") then {
	_vehicle = [_model, group player, _position, CTI_P_SideID, _net] call CTI_CO_FNC_CreateUnit;
	_units pushBack _vehicle;
} else {
	if (CTI_VEHICLES_BASE_SAFE_SPAWN > 0 && !(_model isKindOf "Ship")) then { //--- Safe spawn?
		_position = [_position, 1, 40, 5, "vehicles", ["Man","Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 5, ["Building", 20]] call CTI_CO_FNC_GetSafePosition;
	};

	_vehicle = [_model, _position, _direction + getDir _factory, CTI_P_SideID, (_veh_infos select 4), true, true] call CTI_CO_FNC_CreateVehicle;
	
	if (_veh_infos select 0 || _veh_infos select 1 || _veh_infos select 2 || _veh_infos select 3) then { //--- Not empty.
		_crewType = switch (true) do {
			case (_model isKindOf "Tank"): {"Crew"};
			case (_model isKindOf "Plane"): {"Pilot"};
			case (_model isKindOf "Helicopter"): {"Helipilot"};
			default {"Soldier"};
		};
		_crew = missionNamespace getVariable format["CTI_%1_%2", CTI_P_SideJoined, _crewType];
		_soldier = missionNamespace getVariable format["CTI_%1_%2", CTI_P_SideJoined, "Soldier"];
		// Use CUP units for crew if barracks level not high 
		if (_crewType in ["Crew", "Soldier"]) then {
			_upgrade_barracks = ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) select CTI_UPGRADE_BARRACKS;
			if (_upgrade_barracks < CTI_BASE_PURCHASE_UNITS_UPGRADE) then {
				_crew = missionNamespace getVariable [format["CTI_%1_%2_Low", CTI_P_SideJoined, _crewType], _crew];
				_soldier = missionNamespace getVariable format["CTI_%1_%2_Low", CTI_P_SideJoined, "Soldier", _soldier];
			};
		};
		
		//--- Ultimately if we're dealing with a sub we may want to use divers unless that our current soldiers are free-diving champions
		if (_model isKindOf "Ship") then {
			if (getText(configFile >> "CfgVehicles" >> _model >> "simulation") isEqualTo "submarinex") then { _crew = missionNamespace getVariable format["CTI_%1_Diver", CTI_P_SideJoined] };
		};
		
		if (_veh_infos select 0) then {
			_unit = [_crew, group player, _position, CTI_P_SideID, _net] call CTI_CO_FNC_CreateUnit;
			_unit moveInDriver _vehicle;
			_units pushBack _unit;
		};
		
		{
			// Extra turrets. Make them normal soldiers if needed
			if (count _x isEqualTo 1 && _veh_infos select 3) then {
				if (_crewType in ["Crew"]) then {
					_unit = [_soldier, group player, _position, CTI_P_SideID, _net] call CTI_CO_FNC_CreateUnit;
				} else {
					_unit = [_crew, group player, _position, CTI_P_SideID, _net] call CTI_CO_FNC_CreateUnit;
				};
				
				_unit moveInTurret [_vehicle, (_x select 0)];
				_units pushBack _unit;
			}; //--- Turret
			
			if (count _x isEqualTo 2) then {
				switch (_x select 1) do {
					case "Gunner": { if (_veh_infos select 1) then { _unit = [_crew, group player, _position, CTI_P_SideID, _net] call CTI_CO_FNC_CreateUnit; _unit moveInTurret [_vehicle, (_x select 0)]; _units pushBack _unit; }};
					case "Commander": { if (_veh_infos select 2) then { _unit = [_crew, group player, _position, CTI_P_SideID, _net] call CTI_CO_FNC_CreateUnit; _unit moveInTurret [_vehicle, (_x select 0)]; _units pushBack _unit; }};
				};
			};
		} forEach (_var_classname select CTI_UNIT_TURRETS);
	};
	
	//  Bag to give to crew if they do not have one
	_crewbag = missionNamespace getVariable format["CTI_%1_Crewbag", CTI_P_SideJoined];
	
	//--- Allow our crew to perform repairs and give them repair kits. Also, add variables for transport rewards to crew. 
	{
		_x setUnitTrait ["Engineer", true];
		if (backpack _x isEqualTo "") then {_x addBackpack _crewbag;};
		(unitBackPack _x) addItemCargoGlobal ["ToolKit", 1];
		//--- Some AI Classes doesnt have NV, so we add.
		_x additem "NVGoggles";
		_x assignitem "NVGoggles";
		_x setVariable ["cti_last_pos", position _x, true];
		_x setVariable ["cti_last_town", objNull, true];
	} forEach _units;
	
	_vehicle addAction ["<t color='#86F078'>Unlock</t>","Client\Actions\Action_ToggleLock.sqf", [], 99, false, true, '', 'alive _target && locked _target isEqualTo 2'];
	_vehicle addAction ["<t color='#86F078'>Lock</t>","Client\Actions\Action_ToggleLock.sqf", [], 99, false, true, '', 'alive _target && locked _target isEqualTo 0'];
	
	_vehicle setVariable ["cti_originalowner", getPlayerUID player, true];
	
	player reveal _vehicle;
	
	//--- Authorize the air loadout depending on the parameters set
	//if (_vehicle isKindOf "Air") then {[_vehicle, CTI_P_SideJoined] call CTI_CO_FNC_SanitizeAircraft};
	//--- Sanitize the artillery loadout, mines may lag the server for instance
	//if (CTI_ARTILLERY_FILTER isEqualTo 1) then {if (_model in (missionNamespace getVariable ["CTI_ARTILLERY", []])) then {(_vehicle) call CTI_CO_FNC_SanitizeArtillery}};
	
	//check ordinance - does same as both above
	[_vehicle,CTI_P_SideJoined] call CTI_CO_FNC_SanitizeVehicle;
	//is empty ammo? --removes all ammo and turrets
	if !(_var_classname select CTI_UNIT_AMMO) then{
		(_vehicle) call CTI_CO_FNC_SanitizeAmmo;
	};
	
	//--- Track this vehicle
	(_vehicle) remoteExec ["CTI_PVF_SRV_RequestHandleEmptyVehicles", CTI_PV_SERVER];
};

// Add variables to use for paradrop(Vehicle)/transport(Man) rewards
_vehicle setVariable ["cti_last_pos", position _vehicle, true];
_vehicle setVariable ["cti_last_town", objNull, true];

{
	_x setVariable ["cti_ai_order", CTI_ORDER_CLIENT_NONE];
	_x setVariable ["cti_ai_order_pos", [0,0]];
	_x addEventHandler ["WeaponAssembled", {_this spawn CTI_CL_FNC_OnWeaponAssembled}];
} forEach _units;

//--- ZEUS Curator Editable
if !(isNil "ADMIN_ZEUS") then {
	if (CTI_IsServer) then {
		ADMIN_ZEUS addCuratorEditableObjects [_units, true];
	} else {
		[ADMIN_ZEUS, _units] remoteExec ["CTI_PVF_SRV_RequestAddCuratorEditable", CTI_PV_SERVER];
	};
};

if (!(_script isEqualTo "") && alive _vehicle) then {
	[_vehicle, CTI_P_SideJoined, _script] spawn CTI_CO_FNC_InitializeCustomVehicle;
	if (_customid > -1) then {_vehicle setVariable ["cti_customid", _customid, true]};
};

//--- Notify the current client
_picture = if !((_var_classname select CTI_UNIT_PICTURE) isEqualTo "") then {format["<img image='%1' size='2.5'/><br /><br />", _var_classname select CTI_UNIT_PICTURE]} else {""};
_logic = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideLogic;
_unit_skill = (_logic getVariable "cti_player_ai_skill");
hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t>Your <t color='#ccffaf'>%1</t> with a skill of <t color='#fcffaf'>%2</t> has arrived from the <t color='#fcffaf'>%3</t> at grid <t color='#beafff'>%4</t></t>", _var_classname select CTI_UNIT_LABEL, _unit_skill, _factory_label, mapGridPosition _position, _picture];

//--- send a notice to the server that our order is now complete
[_req_seed, _var_name, _req_buyer, _factory] remoteExec ["CTI_PVF_SRV_AnswerPurchase", CTI_PV_SERVER];