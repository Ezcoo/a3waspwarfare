/*
  # HEADER #
	Script: 		Common\Functions\Common_OnUnitGetOut.sqf
	Alias:			CTI_CO_FNC_OnUnitGetOut
	Description:	Triggered by the GetOut EH whenever a unit leaves the vehicles (similar to GetIn)
					Note this function shall be called by an Event Handler (EH)
	Author: 		Benny (Modified by JEDMario)
	Creation Date:	18-09-2013
	Revision Date:	11-01-2018
	
  # PARAMETERS #
    0	[Object]: The vehicle
    1	[String]: The position in the vehicle
    2	[Object]: The unit
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[VEHICLE, POSITION, UNIT] call CTI_CO_FNC_OnUnitGetOut
	
  # EXAMPLE #
    _vehicle addEventHandler ["getOut", {_this spawn CTI_CO_FNC_OnUnitGetOut}];
*/

params ["_vehicle", "_vehicle_pos", "_unit"];
private ["_side", "_lastPos", "_lastTown", "_currentTown", "_owner_UID", "_owner_p"];

if (alive _unit) then {
	_lastPos = _unit getVariable "cti_last_pos";
	if !(isNil "_lastPos") then {
		_lastTown = _unit getVariable "cti_last_town";
		_currentTown = _unit call CTI_CO_FNC_GetClosestTown;
		if (_unit distance2D _lastPos >= CTI_TEAMPLAY_TRANSPORT_DISTANCE && (_unit distance2D _lastTown >= CTI_TEAMPLAY_TRANSPORT_DISTANCE_TOWN_LAST || isNull _lastTown) && !(_currentTown isEqualTo _lastTown)) then {
			_unit setVariable ["cti_last_pos", position _unit, true];
			_unit setVariable ["cti_last_town", _currentTown, true];
			if (!isNull driver _vehicle) then {
				if (local driver _vehicle) then {
					if !(_unit isEqualTo player) then {
						sleep 1;
						(CTI_TEAMPLAY_TRANSPORT_REWARD) call CTI_CL_FNC_ChangePlayerFunds;
						[player, CTI_TEAMPLAY_TRANSPORT_SCORE] remoteExec ["CTI_PVF_SRV_RequestAddScore", CTI_PV_SERVER];
						["Transported Unit", "transport", CTI_TEAMPLAY_TRANSPORT_REWARD] call CTI_DisplayReward_Display;
					};
				} else {
					if ((group driver _vehicle) call CTI_CO_FNC_IsGroupPlayable) then {
						remoteExec ["CTI_PVF_CLT_OnDropOffUnit", driver _vehicle];
					};
				};
			} else {
				_owner_UID = _vehicle getVariable "cti_originalowner";
				if !(isNil "_owner_UID") then {
					_owner_p =_owner_UID call CTI_CO_FNC_GetPlayerFromUID;
					if !(_owner_p isEqualTo player) then {
						if !(isNull _owner_p) then {
							remoteExec ["CTI_PVF_CLT_OnDropOffUnit", _owner_p];
						};
					} else { 
						if !(_unit isEqualTo player) then {
							sleep 1;
							(CTI_TEAMPLAY_TRANSPORT_REWARD) call CTI_CL_FNC_ChangePlayerFunds;
							[player, CTI_TEAMPLAY_TRANSPORT_SCORE] remoteExec ["CTI_PVF_SRV_RequestAddScore", CTI_PV_SERVER];
							["Transported Unit", "transport", CTI_TEAMPLAY_TRANSPORT_REWARD] call CTI_DisplayReward_Display;
						};
					};
				};
			};
		};
	};
};