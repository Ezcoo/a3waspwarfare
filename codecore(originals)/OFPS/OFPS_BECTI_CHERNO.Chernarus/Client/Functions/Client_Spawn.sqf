private ["_swayamount","_displayscorehud","_statusscorehud"];

waitUntil {vehicle player isEqualTo player};
waituntil {!isnull (finddisplay 46)};

//--- Tablet Activation
[] spawn {cmKeyPressWin = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) isEqualTo tablet_hotkeyDIKCodeNumberWin) then {[] call cm_Tablet_FUNc;};"];};

_swayamount = 0.6; //--- default
//--- No more weapon sway
if (local player) then {
_swayamount = player getVariable "cti_weapon_sway";
	player setCustomAimCoef _swayamount;
};

//--- Hide score on HUD
disableSerialization;
_displayscorehud = uiNamespace getVariable [ "RscMissionStatus_display", displayNull ];
if ( !isNull _displayscorehud ) then {
	_statusscorehud = _displayscorehud displayCtrl 15283;
	_statusscorehud ctrlShow false;	
};