		
		
while {!cti_GameOver} do {		
	_veh=vehicle player;
	
	//if (vehicle player != player) then { 
if !(_veh isKindOf "ParachuteBase") then { 

	if (_veh isKindOf "Air")then { 	
		_heightP= visiblePosition player select 2;
		
		if (_heightP >7) then {

	
		if (inputAction "Eject" == 1) then {

			
			
			
			
			
[player,true,false] call EZC_fnc_Functions_Client_HaloJump;


			
		};	
};
};
		};
	sleep 0.05;	
};		