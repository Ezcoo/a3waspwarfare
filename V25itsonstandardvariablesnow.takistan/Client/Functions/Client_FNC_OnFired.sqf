/*
	Client OnFired events.
	 Scope: Client.
*/

/*
	Triggered whenever the player place a satchel.
	 Parameters:
		- unit: Object - Object the event handler is assigned to
		- projectile: object - Object of the projectile that was shot
*/
CTI_CL_FNC_OnFiredSatchel = {
	Private ["_closest", "_projectile", "_side_structures", "_unit"];

	_unit = _this select 0;
	_projectile = _this select 1;

	//--- Retrieve the side structures.
	_side_structures = (CTI_Client_SideJoined Call CTI_CO_FNC_GetSideStructures) + [CTI_Client_SideJoined Call CTI_CO_FNC_GetSideHQ];

	//--- Get the closest structure.
	_closest = [_unit, _side_structures] Call CTI_CO_FNC_GetClosestEntity;

	//--- Check the distance between the _unit and the closest friendly building.
	if (_closest distance _unit < 30) then {
		deleteVehicle _projectile;

		//--- Show ID
		_uid = getPlayerUID _unit;

		//--- Notify about the TK attempt.
		['StructureTK', name _unit, _uid, _closest, CTI_Client_SideJoinedText] remoteExecCall ["CTI_CL_FNC_LocalizeMessage"];
	};
};

//--- Handle the client Firing.
CTI_CL_FNC_OnFired = {
	if ((_this select 4) == "PipeBomb") then {[_this select 0, _this select 6] Spawn CTI_CL_FNC_OnFiredSatchel}; //--- Satchel Handler.
};