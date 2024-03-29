Private ["_destination","_formations","_mission","_radius","_team","_update"];
_team = _this select 0;
_destination = _this select 1;
_mission = _this select 2;
_radius = if (count _this > 3) then {_this select 3} else {30};
_formation = if (count _this > 4) then {_this select 3} else {'DIAMOND'};
_team setCombatMode "RED";
_team setBehaviour "COMBAT";
_team setFormation _formation;
_team setSpeedMode "NORMAL";

["INFORMATION", Format ["AI_MoveTo.sqf: [%1] Team [%2] is heading to [%3].", side _team,_team,_destination]] Call EZC_fnc_Functions_Common_LogContent;

[_team,true,[ [_destination, _mission, _radius, 20, "", []] ]] Call EZC_fnc_AI_AI_WPAdd;