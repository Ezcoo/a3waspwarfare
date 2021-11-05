_Org_FO = _this select 0;
_AIFO_module_name = _this select 1;
_FO_grp = group _Org_FO;
waituntil {sleep 5; _AIFO_module_name getvariable "AIFO_init"};
//hint "running";
waituntil {sleep 5; !alive _Org_FO};
_grp_num = (count (units _FO_grp));
if (_grp_num > 0) then
{
	_new_FO = _grp_num -1;
	_Fallen_pos = getpos _Org_FO;
	_FO = (units _FO_grp) select _new_FO;
	_FO domove _Fallen_pos;
	_time_of_death = time;
	//hint format ["%1\n%2", typeof _FO,_FO distance _Fallen_pos];
	waituntil {( _FO distance _Fallen_pos) < 3 or (_time_of_death + 120) < time };
	//hint "here";
	//sleep 2;
	if ((_time_of_death + 120) > time) then
	{
		//hint "OK I've got the radio";
		//sleep 2;
		[_FO,_AIFO_module_name] CALL Blakes_Add_FO;
		//_sh = [_FO,_AIFO_module_name] execVM "\aiFO\Take_FO_Role.sqf";
	};
};
//hint "done";