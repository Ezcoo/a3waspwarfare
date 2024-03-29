private["_delay","_lastCheck","_lastSID","_lastUpdate","_txt","_colorBlue","_colorGreen","_colorRed","_colorBlack","_colorFriendly","_colorEnemy","_colorResistance","_ui_bg","_town_capture_mode"];

disableSerialization;
_delay = 4;
_lastCheck = "";
_lastSID = -1;
_lastUpdate = time;
_txt = "";

_colorBlue = [0,0,0.7,0.6];
_colorGreen = [0,0.7,0,0.6];
_colorRed = [0.7,0,0,0.6];
_colorBlack = [0,0,0,0.6];

_colorFriendly = _colorGreen;
_colorEnemy =_colorRed;
_colorResistance =_colorBlue;

_ui_bg = [0,0,0,0.7];
_town_capture_mode = missionNamespace getVariable "cti_C_TOWNS_CAPTURE_MODE";
_update = false;

while {!cti_GameOver} do {
	_nearest = [player,towns] Call EZC_fnc_Functions_Common_GetClosestEntity;
	waitUntil {sleep 0.25;!(isNil "_nearest")};
	_update = if (player distance _nearest < (_nearest getVariable "range") && alive player) then {true} else {false};
	
	if(isNil "_update") then {_update = true};
	
	if(_update)then{
		_sideID = _nearest getVariable "sideID";
		_curSV = _nearest getVariable "supplyValue";
		_maxSV = _nearest getVariable "maxSupplyValue";

		if(isNil "_curSV")then{_curSV = 1};
		if(isNil "_maxSV")then{_maxSV = 1};

		_camp = [vehicle player, 12, true] Call EZC_fnc_Functions_Client_GetClosestCamp;

		if (_town_capture_mode != 0 && !isNull _camp) then {
			if (alive (_camp getVariable "cti_camp_bunker")) then {
				_sideID = _camp getVariable "sideID";
				_curSV = _camp getVariable "supplyValue";
				if (_lastCheck == "Town") then {_delay = 0};
				_txt = "";
				_lastCheck = "Camp";
			};
		} else {
		_txt = Format [localize "STR_WF_TownSV", _curSV,_maxSV];
		_lastCheck = "Town";
		};

		if!(isnil "_sideID")then{
		if (_sideID != _lastSID) then {_delay = 0};
		if (isNull (uiNamespace getVariable "cti_title_capture")) then {600200 cutRsc["CaptureBar","PLAIN",0];_delay = 0};
		if !(isNull (uiNamespace getVariable "cti_title_capture")) then {
	
			_barColor = _colorResistance;
			if ((_sideID == WESTID)&&(sideID == WESTID) || (_sideID == EASTID)&&(sideID == EASTID)) then {_barColor = _colorFriendly}; //--- Green
			if ((_sideID == WESTID)&&(sideID == EASTID) || (_sideID == EASTID)&&(sideID == WESTID)) then {_barColor = _colorEnemy};

			_control = (uiNamespace getVariable "cti_title_capture") displayCtrl 601001;
			_control ctrlShow true;
			_control ctrlSetBackgroundColor _barColor;
			_backgroundControl = (uiNamespace getVariable "cti_title_capture") displayCtrl 601000;
			_backgroundControl ctrlShow true;
			_backgroundControl ctrlSetBackgroundColor _ui_bg;
			_textControl = (uiNamespace getVariable "cti_title_capture") displayCtrl 601002;
			_textControl ctrlShow true;
			_textControl ctrlSetText _txt;
			_maxWidth = (ctrlPosition _backgroundControl Select 2) - 0.02;
			_position = ctrlPosition _control;
			_position set [2,_maxWidth * _curSV / _maxSV];
			_control ctrlSetPosition _position;
			_control ctrlCommit _delay;
			_delay = 4;
			_lastSID = _sideID;
		};
	};
	};
	if(!_update && !cti_GameOver)then{
		_delay = 0;
		if (isNull (uiNamespace getVariable "cti_title_capture")) then {600200 cutRsc["CaptureBar","PLAIN",0]};
		if (!isNull (uiNamespace getVariable "cti_title_capture")) then {
			{((uiNamespace getVariable "cti_title_capture") displayCtrl _x) ctrlShow false} forEach [601000,601001,601002];
		};
	};
	sleep 5;
};