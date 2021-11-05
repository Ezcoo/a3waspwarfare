/*
Ai Artillery Framework
By [ZSU]Blake www.zspecialunit.org

Ok this is a sample script for the Ai artillery Framework. It can be used in isolation or incorporated into something more complicated without having to recreate all the important aspects from scratch.
The basic implementation requires at a minimum a target.
eg null = [FO] execVM "FO-ai.sqf" it requires you have a artillery object synced to an artillery module named Art1.
Place this in a FO units init line.

Optional arguments are

Battery - which is the name of the artillery module you are calling (Default Art1)
Range - How far around the ai FO will he prosecute targets (Default 500)
Number of rounds - How many rounds to fire assuming the artillery has the ammunition (Default 1)
Dispersion - Basically how much spread between rounds (Default 100)
Prediction Calibrator - A way to influence how far ahead in the current direction of the target to rounds land (Default 20)
Skill - A basic way to see how accurate the placement is values from 1 to 10 (Default 5)
Friendly - Checks to ensure their is not a friendly of this type within 50m of the impact location (Default "SoldierWB")


*/

if (!isserver) exitWith {};
FIREMISSION = compile preprocessFile "\aiFO\aifiremission.sqf";
//hint "you are an FO";

Sleep (4 + (random 4));

_FO = _this select 0;
_battery = if (count _this > 1) then {_this select 1} else {Art1};
_Range = if (count _this > 2) then {_this select 2} else {500};
_NoRnds = if (count _this > 3) then {_this select 3} else {1};
_RndType = if (count _this > 4) then {_this select 4} else {"HE"};
_Dispersion = if (count _this > 5) then {_this select 5} else {100};
_adjmult = if (count _this > 6) then {_this select 6} else {20};
_skill = if (count _this > 7) then {_this select 7} else {5};
_modulename = _this select 8;
//_friendlycheck = if (count _this > 8) then {_this select 8} else {"SoldierEB"};
_enemy = WEST;
_friendly = EAST;
_Impact_Point = [0,0,0];
_FO setvariable ["Num_Firemissions",0,false];
_FO setvariable ["Calling_mission",false,false];
_cancall = _FO getvariable "Can_Call";
_ten_count = 10;
if (isNil ("_cancall")) then
{ 
	_FO setvariable ["Can_Call",true,false];
};


//hint format ["Module:%1",_modulename];
sleep 2;
//removeAllWeapons _FO;
_unarmed = 0;
if (primaryweapon _FO == "") then
{
	_unarmed = 1;
};

_Init_Dispersion = _Dispersion;
_LastTgt = objNull;
_has_bino = false;
{
	if(_x == "Binocular") then
	{
		_has_bino = true;
	};
	sleep 0.01;
}foreach weapons _FO;
if (!_has_bino) then {_FO addWeapon "Binocular"};

_FindRoads = [];
_error = (10-_skill)*10;
_TgtTrack = {
	_tgt = _this select 0;
	_adjmult = _this select 1;
	_skill = _this select 2;
	_avSpeed = 0;
	_avDist = 0;
	_adjmax = 500;
	_adjmin = -500;
	_error = (10-_skill)*10;
	
	_Ipos = getpos _tgt;
	_Tx = 0;
	_Ty = 0;
	_Otime = 10;
	for "_count" from 1 to _Otime do
	{
		_Xpart = getpos _tgt select 0;
		_Ypart = getpos _tgt select 1;
		_Tx = _Tx + _Xpart;
		_Ty = _Ty + _Ypart;
		Sleep 1;
	};
	_Ax = _Tx/_Otime - (_Ipos select 0);
	_Ay = _Ty/_Otime - (_Ipos select 1);
	_pAngle = _Ax atan2 _Ay;
	_Dist = _Ipos distance [_Ax + (_Ipos select 0),_Ay + (_Ipos select 1),0];
	_Avspeed = _Dist * 2 / _Otime * 3.6 ;
	if (_pAngle < 0 ) then 
	{
		_pAngle = _pAngle + 360;
	};
	//hintsilent format ["H:%1 D:%2 S:%3 ", _pAngle,_Dist,_Avspeed];
	if ((!isNull (assignedTarget _tgt)) or (_tgt KnowsAbout _FO) > 0.1) then
	{
		_adjmult = _adjmult/3;
	};
	_Yadj = _Avspeed * cos _pAngle * _adjmult;
	if (_Yadj > _adjmax) then {_Yadj = _adjmax};
	if (_Yadj < _adjmin) then {_Yadj = _adjmin};
	_Xadj = _Avspeed * sin _pAngle * _adjmult;
	if (_Xadj > _adjmax) then {_Xadj = _adjmax};
	if (_Xadj < _adjmin) then {_Xadj = _adjmin};
	
	_impact = [(getpos (_tgt) select 0) + _Xadj+(random _error - _error/2), (getpos (_tgt) select 1) + _Yadj+(random _error - _error/2), getpos (_tgt) select 2];
	_impact
};
_Prc_FO_Call_anim_rtn_gear =
{
	_FO = _this select 0;
	_TgtNow = _this select 1;
	_weapons = _this select 2;
	_magazines = _this select 3;
	_FO dowatch getpos _TgtNow;
	//_FO dotarget _TgtNow;
	
	if (_unarmed == 1) then
	{
		_FO playmove "AmovPercMstpSlowWrflDnon_Salute";
	};
	sleep 10;
	_FO dowatch objNull;
		//hint "sending target now";
	{_FO addMagazine _x} forEach _magazines;
	{_FO addWeapon _x} forEach _weapons;
	_primw = primaryWeapon _FO;
	if (_primw != "") then
	{
		_FO selectWeapon _primw;
		// Fix for weapons with grenade launcher
		_muzzles = getArray(configFile>>"cfgWeapons" >> _primw >> "muzzles");
		_FO selectWeapon (_muzzles select 0);
	};
};

_Prc_FO_Call_In_Mission =
{
	_FO = _this select 0;
	_unarmed = _this select 1;
	_Mission_data = _this select 2;
	//hint format ["%1",_mission_data];
	_TgtNow = _Mission_data select 0;
	_rndType = _Mission_data select 3;
	if (!((_Mission_data select 9) getvariable "busy")) then
	{
		_weapons = weapons _FO;
		_magazines = magazines _FO;
		removeAllItems _FO;
		removeAllWeapons _FO;
		_FO addWeapon "Binocular";
		_Mission_data call FIREMISSION;
		_FO setvariable ["Num_Firemissions",(_FO getvariable "Num_Firemissions") + 1,false];
		"Blakes_FO_Position" setmarkerpos getpos _FO;
		sleep 1;
				
		if (_unarmed == 1) then
		{
			_FO playmove "AmovPercMstpSlowWrflDnon_Salute";
		};
		sleep 10;
		_FO dowatch objNull;
			//hint "sending target now";
		{_FO addMagazine _x} forEach _magazines;
		{_FO addWeapon _x} forEach _weapons;
		_primw = primaryWeapon _FO;
		if (_primw != "") then
		{
			_FO selectWeapon _primw;
			// Fix for weapons with grenade launcher
			_muzzles = getArray(configFile>>"cfgWeapons" >> _primw >> "muzzles");
			_FO selectWeapon (_muzzles select 0);
		};
	};
};

_Fnc_Trace_Road = 
{
_Tgt_pos = _this select 0;
_Impact_pos = _this select 1;
_straight_dist = _Tgt_pos distance _Impact_pos;
_culm_dist = 0;
_next_pos = ObjNull;
_result = _Impact_pos;
	_list = _Tgt_pos nearRoads 15;
	if (count _list > 0) then
	{
		_curr_pos = _list select 0;
		_finished = 0;
		//_count = 0;
		_old_pos = ObjNull;
		_choices = [];
		while {_finished == 0} do
		{
			_options = roadsConnectedTo _curr_pos;
			if ((count _options) != 1) then
			{
				_distance = 99999;
				_New_dist = 0;
				//_next_pos = ObjNull;
				{
					_New_dist = (_x distance _Impact_pos);
					if ( _New_dist < _distance) then
					{
						_next_pos = _x;
						_distance = _New_dist;
						if(_straight_dist < _culm_dist) then
						{
								_finished = 1;
						};
					};
				}foreach (_options -  [_old_pos] );
				_culm_dist = _culm_dist + (_curr_pos distance _next_pos);
				_old_pos = _curr_pos;
				_curr_pos = _next_pos;
				/*
				_name = format ["marker%1", _count];
				_marker = createMarker [_name, position _next_pos ];
				_marker setMarkerShape "ICON";
				_name setMarkerType "DOT";
				_count = _count + 1;
				*/
				sleep 0.01;
			}
			else
			{
				_finished = 1;
			};
		};
		if((_next_pos distance _Tgt_pos) > (_straight_dist * 0.5)) then
		{
			_result = getpos _next_pos;
		};
		
	};

	_result
};


sleep 5;
_FO selectWeapon "Binocular";

_friendlycheck = side _FO;
_Arty_group = _FO getvariable "Arty_group";
While {alive _FO and (count (units _Arty_group)) > 0} do {
	
	
	sleep random 2;
	if (!(_modulename getvariable "busy")) then
	{
		_RndType = "HE";
		_TgtNow = objNull;
		_TgtList = _FO nearTargets _Range;
		_Priority = 0;
		{
			_Side = _x select 2;
				
			//if (_side == _Enemy) then 
			if((((side _FO) getFriend (_x select 2))) < 0.6) then
			//if((((side _FO) getFriend (side (_x select 4)))) < 0.6) then
			{
				if ((speed (_x select 4)) < 25) then
				{
					if (((getpos (_x select 4)) select 2) < 2) then
					{
						if (_Priority < _x select 3) then
						{
							_tgtNow = _x select 4;
							_Priority = _x select 3;
							Sleep 0.01;
						};
					};
				};
			};
		Sleep 0.05;	
		} forEach _TgtList;
		
		
		If ((_FO getvariable "Can_Call") and !(_FO getvariable "Calling_mission")) then
		{
			If (!isNull _TgtNow ) then
			{
				_FO setvariable ["Calling_mission",true,false];
				/*
				if((daytime > 19 or daytime < 5) and currentVisionMode _FO != 1) then
				{
					_chnce = floor random 3;
					if (_chnce == 0 and (_modulename getvariable "ILLUMcount") > 0) then
					{
						_RndType = "ILLUM";
					}
					else
					{
						_RndType = "HE";
					};
				
				};
				*/
				
				if(sunOrMoon < 0.15 and currentVisionMode _FO != 1) then
				{
					/*
					_chnce = 0.8 * (1 - moonIntensity) + 0.1 ;
					if ((random 1) <= _chnce and (_modulename getvariable "ILLUMcount") > 0) then
					{
						_RndType = "ILLUM";
					}
					else
					{
						_RndType = "HE";
					};
					*/
					_chnce = floor(( moonIntensity) * 5 ) + 1;
					//hintsilent format ["Chance: %1\Count: %2\n Result %3",_chnce,_ten_count,(_ten_count Mod _chnce)];
					if ((_ten_count Mod _chnce) == 0 and (_modulename getvariable "ILLUMcount") > 0) then
					{
						_RndType = "ILLUM";
					}
					else
					{
						_RndType = "HE";
					};
				
					
					if (_ten_count == 1) then
					{
						_ten_count = 11;
						_RndType = "HE";
					};
					_ten_count = _ten_count - 1;
				};
				
				
				if(_RndType == "HE") then
				{
					_Impact_Point = [_TgtNow, _adjmult, _skill] CALL _TgtTrack;
				}
				else
				{
					_Impact_Point = getpos _TgtNow;
				};
				
				IF((_TgtNow ISKINDOF "Wheeled_APC" OR _TgtNow ISKINDOF "Tank") and (_modulename getvariable "SADARMcount") > 0 ) then
				{
					IF([_battery,getPosASL _TgtNow,["IMMEDIATE", "SADARM", 3, _NoRnds]] CALL BIS_ARTY_F_Available) THEN
					{
						_RndType = "SADARM";
					};
				};
			
			
			
				if (_TgtNow distance _FO > 100 and ([_battery,getPosASL _TgtNow,["IMMEDIATE", _RndType, 3, _NoRnds]] CALL BIS_ARTY_F_Available)) then 
				{
					//Check to ensure tgt pos will def return a valid position. No idea but sometimes it doesn't?
					_tgt_pos = getpos _TgtNow;
					if (count _tgt_pos == 3) then
					{
						//if (isonroad _TgtNow) then
						if (isonroad _tgt_pos) then
						{
							_Impact_Point = [getpos _TgtNow,_Impact_Point] CALL _Fnc_Trace_Road;
							//hint format ["Road:%1",_Impact_Point];
							/*
								_FindRoads = _Impact_Point nearRoads 150;
								
								if ((count _FindRoads) > 0 ) then
								{
									_Impact_Point = getpos (_FindRoads select (floor (random (count _FindRoads))));
									_Impact_Point = [(_Impact_Point select 0) +(random _error - _error/2), (_Impact_Point select 1) +(random _error - _error/2),0];
								};
							*/
						};
					};
					//hintsilent format ["cFRs:%1 IP:%2 FRs:%3", count _FindRoads, _Impact_Point, _FindRoads];
					//"tt" setmarkerpos _Impact_Point;
					//hintsilent format ["Impact Call:%1",_Impact_Point];
					if (_LastTgt == _TgtNow and _Dispersion > 50 ) then
					{
						_Dispersion = _Dispersion - 25;
					}
					else
					{
						_Dispersion = _Init_Dispersion;
					};
					//removeAllWeapons _FO;
					if(([_battery,_Impact_Point,_RndType] CALL BIS_ARTY_F_PosInRange)) then
					{	
						if(((_RndType == "HE" and (_modulename getvariable "HEcount") > 0)) or (_RndType == "ILLUM" ) or (_RndType == "SADARM")) then
						{
							[_FO,_unarmed,[_TgtNow,_battery,_NoRnds,_RndType,_Dispersion,_adjmult,_skill,_friendlycheck,_Impact_Point,_modulename]] CALL _Prc_FO_Call_In_Mission;
							_LastTgt = _TgtNow;
						};
						/*
						_weapons = weapons _FO;
						_magazines = magazines _FO;
						removeAllItems _FO;
						removeAllWeapons _FO;
						_FO addWeapon "Binocular";
						[_TgtNow,_battery,_NoRnds,_RndType,_Dispersion,_adjmult,_skill,_friendlycheck,_Impact_Point] call FIREMISSION;
						_FO setvariable ["Num_Firemissions",(_FO getvariable "Num_Firemissions") + 1,false];
						"Blakes_FO_Position" setmarkerpos getpos _FO;
						sleep 1;
						_LastTgt = _TgtNow;
						
						[_FO,_TgtNow,_weapons,_magazines] CALL _Prc_FO_Call_in_mission_anim;
						*/
						
					};
					
				
				};
				_FO setvariable ["Calling_mission",false,false];
			}
			else
			{
				_wp_idx = currentWaypoint (group _FO);
				_wp_type = waypointType [group _FO,_wp_idx];
				_wp_behaviour = waypointBehaviour [group _FO,_wp_idx];
				_wp_pos = waypointPosition [group _FO,_wp_idx];
				_heightASL = getTerrainHeightASL _wp_pos;
				_wp_pos = [_wp_pos select 0,_wp_pos select 1,_heightASL];
				if (_wp_type == "SAD" or _wp_type == "DESTROY") then
				{
				
					if (_wp_behaviour == "AWARE" or _wp_behaviour == "COMBAT") then
					{
						if (([_battery,_wp_pos,["IMMEDIATE", "WP", 3, (_NoRnds )]] CALL BIS_ARTY_F_Available) and (_modulename getvariable "WPcount") > 0) then
						{
							_RndType = "WP";
							
							if(([_battery,_wp_pos,_RndType] CALL BIS_ARTY_F_PosInRange)) then
							{
								if ((_FO distance _wp_pos) < 1000) then
								{
									if  (_friendlycheck countside (_wp_pos nearEntities [["man","ship","landvehicle"],350] ) == 0 ) then
									{
										//_dd = _Dispersion * 3;
										_dd = 400;
										[_FO,_unarmed,[_wp_pos,_battery,(_NoRnds),_RndType,_dd,_adjmult,_skill,_friendlycheck,_Impact_Point,_modulename]] CALL _Prc_FO_Call_In_Mission;
									};
								};
							};
						}
						else
						{
							if (([_battery,waypointPosition [group _FO,_wp_idx],["IMMEDIATE", "SMOKE", 3, (_NoRnds )]] CALL BIS_ARTY_F_Available) and (_modulename getvariable "SMOKEcount") > 0 and _rndType == "SMOKE") then
							{
								if(([_battery,_wp_pos,_RndType] CALL BIS_ARTY_F_PosInRange)) then
								{
									if ((_FO distance _wp_pos) < 800) then
									{
										if  (_friendlycheck countside (_wp_pos nearEntities [["man","ship","landvehicle"],350] ) == 0 ) then
										{
											//_dd = _Dispersion * 3;
											_dd = 400;
											[_FO,_unarmed,[_wp_pos,_battery,(_NoRnds),_RndType,_dd,_adjmult,_skill,_friendlycheck,_Impact_Point,_modulename]] CALL _Prc_FO_Call_In_Mission;
										};
									};
								};
							};
						};
					
					};
				
				
				};
			};

		};
	
	};
Sleep (2 + (random 10));
};

_takeover = _modulename getvariable "NoTakeOverFO";
if (isNil ("_takeover")) then
{ 
	_sh2 = [_FO,_modulename] execvm "\aiFO\Take_FO_Role.sqf";
};