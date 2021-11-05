Private ["_nearby","_group"];

_nearby = _this select 0;

if!(_nearby)then{
	{
		_group = _x;
		{
			deleteVehicle _x;
		} forEach (units _x);

		deleteGroup _group;
		
	} forEach CTI_HC_BasePatrolTeams;
};
CTI_HC_BasePatrolTeams = CTI_HC_BasePatrolTeams - [objNull];