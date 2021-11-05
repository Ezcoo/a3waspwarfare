Private ["_count","_destination","_index","_type","_units"];

_destination = _this select 0;
_index = _this select 1;

_units = [group player, false, _index, cti_Client_SideJoinedText] Call cti_CO_FNC_GetTeamArtillery;
_type = ((missionNamespace getVariable Format ['cti_%1_ARTILLERY_CLASSNAMES', cti_Client_SideJoinedText]) select _index) find (typeOf (_units select 0));

if (count _units < 1 || _type < 0) exitWith {};

{[_x, _destination, cti_Client_SideJoined, artyRange] Spawn cti_CO_FNC_FireArtillery} forEach _units;