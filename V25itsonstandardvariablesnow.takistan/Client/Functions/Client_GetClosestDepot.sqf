/*	Return the closest depot of the given entitie.	 Parameters:		- Object*/Private ["_closest","_near","_pos","_range"];_closest = objNull;_pos = getPos (_this select 0);_range = _this select 1;_near = _pos nearEntities [CTI_Logic_Depot, _range];{if !(isNil {_x getVariable "sideID"}) then {if ((_x getVariable "sideID") == sideID && isNil {_x getVariable "CTI_inactive"}) then {_closest = _x}}} forEach _near;_closest