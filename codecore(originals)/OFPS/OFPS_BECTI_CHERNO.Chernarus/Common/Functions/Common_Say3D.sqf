/*
  # HEADER #
	Script: 		Common\Functions\Common_Say3D.sqf
	Alias:			Common_Say3D
	Description:	Play sound in 3D from object
	Author: 		OFPS
	Creation Date:	01-01-2017
	Revision Date:	01-01-2017
	
  # PARAMETERS #
    0	[Object]: The Object Source
    1	[Variable]: soundname
	2	[Integer]: Length in seconds
	
  # SYNTAX #
	[OBJECT,SOUNDNAME,DISTANCE] call Common_Say3D;
	
  # EXAMPLE #
    [_bestCRAM,"incoming",60] call Common_Say3D;
*/

params ["_obj","_snd","_distance"];

 
//--- Broadcast PV
Radio_Say3D = [_obj,_snd,_distance];
publicVariable "Radio_Say3D";
 
//--- Run on all player clients including player host
if (hasInterface) then {_obj say3D [_snd,_distance,1]};
 
true