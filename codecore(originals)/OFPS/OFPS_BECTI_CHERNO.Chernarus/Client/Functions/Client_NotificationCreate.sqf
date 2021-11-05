/*
 File: Client_NotificationCreate.sqf
 Original Author: TanKode
 Modified By: MischievousRaven and JEDMario
 License: MIT
 Parameters:
 0: Text <STRING> text to display in the notification
 1: Type <STRING> type of this notification or the colorname or the color as array/object
 2: Speed <INTEGER> time in seconds to show this notification
 3: Location <STRING> location of the notifications, left or right
 4: Alpha <INTEGER> the alpha value of the notification
*/
params [
    ["_text","",["",[]]],
    ["_color",[1,1,1,1],[[]]],
    ["_time",10,[10]],
    ["_location","right",[""]]
];

if (isDedicated || !hasInterface) exitWith {};

if(isNil "CTI_Active_Notifications") then {
    CTI_Active_Notifications = [];
};

CTI_Max_Active_Notifications = 8;
CTI_Notification_Background_Color = [0.15,0.15,0.15,_color select 3];

disableSerialization;
_display = findDisplay 46;

_numLines = 1;
_textString = _text;
if (_text isEqualType "") then {
  _text = parseText _text;
} else {
  _numLines = count _text;
  _textString = _text joinString "<br/>";
  _text = parseText (_text joinString "<br/>");
};

playSound "HintExpand";

_margin = 0.01;
// Width + colorTagWidth should = 300
_width = 295 * pixelW;
_colorTagWidth = 5 * pixelW;
_textWidth = _width - _colorTagWidth;
_posX = 0;
_posXOffset = 0.009;
_posY = 1;
_heightPadding = 0.002;

if(_location isEqualTo "left") then {
    _posX = _margin + safeZoneX + _posXOffset;
} else {
    _posX = safeZoneW + safeZoneX - _margin - _width - _posXOffset;
};


private _TempCtrl = _display ctrlCreate ["RscText", -1];
_TempCtrl ctrlSetText _textString;
_adjustedHeight = ctrlTextHeight _TempCtrl;
ctrlDelete _TempCtrl;

_adjustedHeight = _heightPadding + (_adjustedHeight * _numLines);

// Text
private _MessageCtrl = _display ctrlCreate ["RscStructuredText", -1];
_MessageCtrl ctrlSetStructuredText _text;
_MessageCtrl ctrlSetPosition [(_posX + _colorTagWidth), _posY, _textWidth, _adjustedHeight];
_MessageCtrl ctrlSetBackgroundColor CTI_Notification_Background_Color;

// Colored marker
private _ColorTagCtrl = _display ctrlCreate ["RscText", -1];
_ColorTagCtrl ctrlSetBackgroundColor _color;
_ColorTagCtrl ctrlSetPosition [_posX, _posY, _colorTagWidth, _adjustedHeight];

{
  _x ctrlSetFade 1;
  _x ctrlCommit 0;
  _x ctrlSetFade 0;
  _x ctrlCommit 0.4;
} forEach [_ColorTagCtrl,_MessageCtrl];

// Create thread to handle notification cleanup
if (_this select 2 != -1) then {
	[_ColorTagCtrl,_MessageCtrl,_time] spawn {
		disableSerialization;
		uiSleep (_this select 2);
		[_this select 0, _this select 1] call CTI_CL_FNC_NotificationRemove;
	};
};
CTI_Active_Notifications = ([[_ColorTagCtrl,_MessageCtrl]] + CTI_Active_Notifications);

_offsetY = 0;
if (count CTI_Active_Notifications > 0) then {
    private _activeNotifications = 0;
    {
        private _ctrlBorder = _x select 0;
        private _ctrlText = _x select 1;
        if (!isNull _ctrlBorder && !isNull _ctrlText) then {
            _ctrlBorder ctrlSetPosition [_posX, (_posY + _offsetY)];
            _ctrlText ctrlSetPosition [(_posX + _colorTagWidth), (_posY + _offsetY)];
            _ctrlBorder ctrlCommit 0.1;
            _ctrlText ctrlCommit 0.1;

            _offsetY = _offsetY + _margin + ((ctrlPosition _ctrlText) select 3);
            if (_activeNotifications >= CTI_Max_Active_Notifications) then {
                _ctrlText ctrlSetFade 1;
                _ctrlText ctrlCommit 0;
                _ctrlBorder ctrlSetFade 1;
                _ctrlBorder ctrlCommit 0;
                ctrlDelete _ctrlText;
                ctrlDelete _ctrlBorder;
            };
        };
        _activeNotifications = _activeNotifications + 1;
    } forEach CTI_Active_Notifications;
};

[_ColorTagCtrl, _MessageCtrl];