/*	Return the closest airport of the given entitie.	 Parameters:		- Object*/Private ["_closest","_near","_pos","_range"];_closest = objNull;_pos = _this select 0;_range = _this select 1;_near = _pos nearEntities [CTI_Logic_Airfield, _range];{if !(isNil {_x getVariable "CTI_hangar"}) then {if (alive (_x getVariable "CTI_hangar")) then {_closest = _x}}} forEach _near;_closest