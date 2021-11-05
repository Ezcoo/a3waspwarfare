/*
	Description
		This script displays nicely looking monetary rewards for certain player actions like kills
		When a reward is given, it will show the reward and a log of the rewards in the last (maxAge) seconds, but max (maxNum) entries

	Author
		blubFisch

*/

// Configuration
CTI_DisplayReward_maxAge = 2;
CTI_DisplayReward_maxNum = 8;				// Related to title height and text size
CTI_DisplayReward_redisplayAfterSecs = 4;	// Related to title duration
CTI_DisplayReward_maxSubjectlength = 42;	// Related to title width and text size

// State
CTI_DisplayReward_linetexts = [];
CTI_DisplayReward_linetimes = [];
CTI_DisplayReward_lastDispShowTime = -1;

/*
CTI_DisplayReward_Display = {
params["_subject", "_type", "_amount", ["_score",0,[0]]];
if (count _subject > CTI_DisplayReward_maxSubjectlength) then {
	_subject = ([_subject, 0, CTI_DisplayReward_maxSubjectlength - 3] call BIS_fnc_trimString) + "...";
};

_color = switch (_type) do {
	case "kill": {"#ffcc00"};
	case "playerkill": {"#ff0000"};
	case "capture": {"#0099ff"};
	default {"#ffffff"};
};
_actionType = switch (_type) do {
	case "kill": {"kill"};
	case "playerkill": {"pkill"};
	case "capture": {"capture"};
	default {"default"};
};
_lightBlue = '#85A7B2';
private _topLine = format ["<t color='%2'>%1</t>", _subject, _color];
private _bottomLine = format ["<t color='%2'>+$%1</t> <t color='%4'>+%3p</t>", _amount, CTI_P_Coloration_Money, _score, _lightBlue];
private _formattedText = [_topLine, _bottomLine];
[_actionType, _formattedText] call CTI_CL_FNC_NotificationHandle;
}; */

CTI_DisplayReward_Display = {
	params["_subject", "_type", "_amount"];

	//--- Clean previous entries after the previous display disappears
	if (isNull (uiNamespace getVariable "cti_title_rewarddisplay")) then {
		CTI_DisplayReward_linetexts = [];
		CTI_DisplayReward_linetimes = [];
	};

	//--- Assemble new line
	// Shorten if needed
	if (count _subject > CTI_DisplayReward_maxSubjectlength) then {
		_subject = ([_subject, 0, CTI_DisplayReward_maxSubjectlength - 3] call BIS_fnc_trimString) + "...";
	};

	_subject_color = switch (_type) do {
		case "kill": {"#ffcc00"};
		case "playerkill": {"#ff0000"};
		case "capture": {"#0099ff"};
		case "transport": {"#ffffff"};
		case "paradrop": {"#ffffff"};
		default {"#ffffff"};
	};
	private _newtxt = format ["<t color='%3'>+$%1</t> <t color='%4'>%2</t>", _amount, _subject, CTI_P_Coloration_Money, _subject_color];
	CTI_DisplayReward_linetexts pushBack _newtxt;
	CTI_DisplayReward_linetimes pushBack time;

	//--- Remove old entries
	{
		if (_x < time - CTI_DisplayReward_maxAge || count CTI_DisplayReward_linetexts > CTI_DisplayReward_maxNum) then {
			CTI_DisplayReward_linetexts deleteAt 0;
			CTI_DisplayReward_linetimes deleteAt 0;
		}
	} forEach CTI_DisplayReward_linetimes;

	//--- Assemble text
	private _fulltext = "";

	private _blanksadded = 0;
	// Fill blanks
	while {_blanksadded < CTI_DisplayReward_maxNum - count CTI_DisplayReward_linetimes} do {
		_fulltext = _fulltext + "<br />";
		_blanksadded = _blanksadded + 1;
	};

	//--- Set log lines
	{
		_fulltext = _fulltext + _x + "<br />";
	} forEach CTI_DisplayReward_linetexts;

	//--- Display
	if (time - CTI_DisplayReward_lastDispShowTime > CTI_DisplayReward_redisplayAfterSecs || CTI_DisplayReward_lastDispShowTime == -1) then {
		600100 cutRsc ["CTI_RewardDisplay", "PLAIN", 0];
		CTI_DisplayReward_lastDispShowTime = time;
	};
	((uiNamespace getVariable "cti_title_rewarddisplay") displayCtrl 610001) ctrlSetStructuredText parseText _fulltext;
};