Private ["_target", "_caller"];
_target=(_this select 0);
_caller=(_this select 1);


_caller allowDamage false;
//_caller action ["Eject", vehicle _caller];
unassignvehicle _caller;
moveout _caller;
sleep 3;
_position = (getPos _caller) vectorAdd [0,0,10];
_para = "Steerable_Parachute_F" createVehicle _position;
_para setPos _position;
_caller moveInDriver _para;
sleep 1;
_caller allowDamage true;