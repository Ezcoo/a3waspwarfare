private ["_is"];

while {!CTI_GameOver} do {

	{
		if (_x isKindOf "Air") then
		{
			_is  = _x getVariable "initial_side";

			if !(isNil "_is") then 
			{
				// These functions have limiters built in to check whether 
				// they have already added the vehicle or not. 	
				[_x, _is] spawn CTI_CO_FNC_UpdateJam;
				[_x, _is] spawn CTI_CO_FNC_UpdateAirRadarMarker;
			}	

			else
			{
				//"initial_side is nil, skipping" spawn CTI_CO_FNC_DebugSay;
			};
		
		};

	} forEach ( vehicles select { alive _x });

	sleep 10;
};