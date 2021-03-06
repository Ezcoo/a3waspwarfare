/*
  # HEADER #
	Script: 		Server\Functions\Server_OnTownDeactivation.sqf
	Alias:			CTI_SE_FNC_OnTownDeactivation
	Description:	Triggered when town get deactivated
	Author: 		Benny
	Creation Date:	28-03-2017
	Revision Date:	28-03-2017
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Side]: The Side which will be deactivated
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_OnTownDeactivation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	
  # EXAMPLE #
    [Provins, West] call CTI_SE_FNC_OnTownDeactivation
	  -> Provins west occupation forces will be deactivated
    [Levie, Resistance] call CTI_SE_FNC_OnTownDeactivation
	  -> Levie resistance forces will be deactivated
*/

params ["_town", "_side", ["_time",-1]];
private ["_buildings", "_variable"];

_variable = ["occupation", "resistance"] select (_side isEqualTo resistance);

if !(_time isEqualTo -1) then {
    sleep _time;
};
//--- Order the HC to perform a cleanup on their side
if !(isNil {missionNamespace getVariable "CTI_HEADLESS_CLIENTS"}) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_OnTownDeactivation.sqf", format["Town [%1] delegated units for side [%2] will be removed by the HC(s)", _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
	};
	
	{
		[_town, _side] remoteExec ["CTI_PVF_HC_OnTownDelegationRemoval", _x select 1];
	} forEach (missionNamespace getVariable "CTI_HEADLESS_CLIENTS");
};

//--- Cleanup the units and groups in an spawned thread
(_town getVariable format["cti_town_%1_groups", _variable]) spawn {
	{
		if !(isNil '_x') then {
			if !(isNull _x) then {
				{deleteVehicle _x; sleep 0.5;} forEach units _x;
				sleep 0.2; //--- Be careful with this might cause issue with empty units on the map
				deleteGroup _x;
			};
		};
	} forEach _this;
};

//--- Cleanup the vehicles if needed (Skip it if the player owns it)
{
	if (alive _x) then {
		if (!isPlayer _x && (count crew _x > 0) && ({side _x isEqualTo _side} count crew _x isEqualTo count crew _x)) then {deleteVehicle _x};
	};
} forEach (_town getVariable format["cti_town_%1_active_vehicles", _variable]);

//--- Cleanup the destroyed AI Spawning structures if needed
_buildings = +(_town getVariable ["cti_town_spawn_building", []]);
if (count _buildings > 0) then {
	{if !(alive _x) then {_buildings set [_forEachIndex, "nil"]}} forEach (_town getVariable ["cti_town_spawn_building", []]);
	_buildings = _buildings - ["nil"];
	_town setVariable ["cti_town_spawn_building", _buildings];
};

//--- Cleanup the potential town defenses
if !(isNil {_town getVariable "cti_town_hasdefenses"}) then {
	[_town, _side] call CTI_SE_FNC_RemoveTownDefenses;
};

//--- Cleanup the potential static town defenses
if !(isNil {_town getVariable "cti_town_static_defenses_active"}) then {
	[_town, _side] call CTI_SE_FNC_RemoveStaticTownDefenses;
};

_town setVariable [format["cti_town_%1_groups", _variable], []];
_town setVariable [format["cti_town_%1_active_vehicles", _variable], []];
_town setVariable [format["cti_town_%1_active", _variable], false];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_OnTownDeactivation.sqf", format["Town [%1] [%2] forces have been deactivated", _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
};