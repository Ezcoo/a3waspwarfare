private ["_logic"];

while {!CTI_GameOver} do {
	
	{
		_logic = (_x) call CTI_CO_FNC_GetSideLogic;
		
		//--- Make sure that AIs didn't ran out of their statics
		{
			if (vehicle _x isEqualTo _x) then {deleteVehicle _x};
		} forEach units (_logic getVariable "cti_defensive_team");

	} forEach CTI_PLAYABLE_SIDES;

	sleep 30;

};