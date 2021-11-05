Private ["_nearest", "_fob", "_large_fob", "_truckType","_var_classname","_cost","_funds","_position","_vehicle","_script","_customid","_model","_type"];

_nearest = [CTI_P_Controlled, (CTI_P_SideLogic getVariable ["cti_fobs",[]]) +  (CTI_P_SideLogic getVariable ["cti_large_fobs",[]])] call CTI_CO_FNC_GetClosestEntity;

if (alive _nearest) then {
	
	if (_nearest distance CTI_P_Controlled < 50) then {
		_truckType = _nearest getVariable "cti_FOB_truck_type";
		_var_classname = missionNamespace getVariable _truckType;
		
		//deal with cost
		_cost = (_var_classname select CTI_UNIT_PRICE) * CTI_REQUESTS_DISMANTLE_COST / 100;
		_funds = (group player) call CTI_CO_FNC_GetFunds;
		if (_funds < _cost) exitWith {hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />Insufficient Funds to dismantle the <t color='#ccffaf'>%1</t>. Need <t color='%2'>$%3</t>.",  _var_classname select CTI_UNIT_LABEL, CTI_P_Coloration_Money, _cost]};

		//remove model
		_position = getPosATL _nearest;
		deleteVehicle _nearest;
		CTI_P_TeamsRequests_FOB_Dismantle = 0;

		//update variables
		_fob = _nearest getVariable "cti_fob";
		_large_fob = _nearest getVariable "cti_large_fob";
		if (!isNil {_fob}) then { //--- Erase this FOB upon destruction
			CTI_P_SideLogic setVariable ["cti_fobs", (CTI_P_SideLogic getVariable "cti_fobs") - [objNull, _nearest], true];
		};
		if (!isNil {_large_fob}) then { //--- Erase this Large FOB upon destruction
			CTI_P_SideLogic setVariable ["cti_large_fobs", (CTI_P_SideLogic getVariable "cti_large_fobs") - [objNull, _nearest], true];
		};

		//create new vehicle
		_vehicle = [_truckType, _position, direction _nearest, CTI_P_SideJoined, false, true, true] call CTI_CO_FNC_CreateVehicle;

		// Reinit unit scripts
		_script = _var_classname select CTI_UNIT_SCRIPT;
		_customid = -1;
		if (typeName (_var_classname select CTI_UNIT_SCRIPT) isEqualTo "ARRAY") then { 
			_model = (_var_classname select CTI_UNIT_SCRIPT) select 0; 		
			_script = (_var_classname select CTI_UNIT_SCRIPT) select 1; 
			_customid = (_var_classname select CTI_UNIT_SCRIPT) select 2};

			if (!(_script isEqualTo "") && alive _vehicle) then {
				[_vehicle, CTI_P_SideJoined, _script] spawn CTI_CO_FNC_InitializeCustomVehicle;
				if (_customid > -1) then {_vehicle setVariable ["cti_customid", _customid, true]};
			};
		_type = (_var_classname select CTI_UNIT_LABEL);
		[group player, -_cost] call CTI_CO_FNC_ChangeFunds; //--- Change the buyer's funds
		hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br />The <t color='#ccffaf'>%1</t> has been mobilized for <t color='%2'>$%3</t>.",  _type, CTI_P_Coloration_Money, _cost];
		["fob-dismantled", [_type, _position, name player]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS]; 
	};
};