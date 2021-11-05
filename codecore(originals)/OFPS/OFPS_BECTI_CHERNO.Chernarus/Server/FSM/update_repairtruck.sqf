params ["_vehicle","_side"];
private ["_logic","_action","_target","_constructs","_repairs","_virtual_damages","_can_repair"];

_logic = (_side) call CTI_CO_FNC_GetSideLogic;

while {!CTI_GameOver && alive _vehicle} do {

	if (alive driver _vehicle) then {

		_action = "";
		_target = objNull;
		_constructs = (_logic getVariable "cti_structures_wip") select {_vehicle distance _x < CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR_RANGE}; //--- Construction come first

		if (count _constructs > 0) then {
			_target = [_vehicle, _constructs] call CTI_CO_FNC_GetClosestEntity;
			_action = "construct";
		} else { //--- Nothing to build? What about repairs
			_repairs = [];
			{
				_virtual_damages = _x getVariable ["cti_altdmg", -1];
				if ((!(getDammage _x isEqualTo 0) || _virtual_damages > 0) && (_vehicle distance _x < CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR_RANGE)) then {_repairs pushBack _x};
			} forEach (_side call CTI_CO_FNC_GetSideStructures);
			
			if (count _repairs > 0) then {
				_can_repair = "";
				
				//--- If SV consumption with Repair truck is enabled, then we have to make sure that we have enough supply to fix the building
				switch (CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR_USE_SV) do {
					case 1: { //--- SV Cost is based on the repair value (CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR * 100)
						if (((_side call CTI_CO_FNC_GetSideSupply) - (CTI_VEHICLES_REPAIRTRUCK_BASE_REPAIR * 100)) < 0) then {_can_repair = "decay_nosupply"};
					};
				};
				
				if (_can_repair isEqualTo "") then {
					_target = [_vehicle, _repairs] call CTI_CO_FNC_GetClosestEntity;	
					_action = "repair";
				} else {
					//--- Notify why the truck is unable to perform a structural repair
					switch (_can_repair) do {
						case "decay_nosupply": {["building-decay-repair"] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];};
					};
				};
			};
		};

		switch (_action) do {
			case "construct": {[_vehicle, _target] call CTI_FSM_RepairTruck_Construct};
			case "repair": {[_side, _vehicle, _target] call CTI_FSM_RepairTruck_Repair};
		};
	};
sleep 15;
};