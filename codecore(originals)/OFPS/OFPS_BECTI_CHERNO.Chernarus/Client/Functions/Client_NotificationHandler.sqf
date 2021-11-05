/*
 File: Client_NotificationHandler.sqf
 Author: MischievousRaven
 Parameter:
 0: Text <STRING> type of action to create a notification for
 1: Text <STRING> or [<STRING>,<STRING>] Lines that should show in notification
*/
params [
    ["_action","default",[""]],
    ["_args",[],[[]]]
];

// Some test cases.
/* call compile preprocessFile "Client\Functions\UI\Functions_UI_DisplayRewards.sqf";
CTI_CL_FNC_NotificationCreate = compile preprocessFile "Client\Functions\Client_NotificationCreate.sqf";
CTI_CL_FNC_NotificationHandle = compile preprocessFile "Client\Functions\Client_NotificationHandler.sqf";
[] spawn {
	["kill",["Killed an AI", "<t align='right'><t color='#85bb65'>+$100</t>, <t color='#4e6182'>+5p</t></t>"]] call CTI_CL_FNC_NotificationHandle;
	sleep .5;
	["pkill",["Killed a player", "<t align='right'><t color='#85bb65'>+$500</t>, <t color='#4e6182'>+20p</t></t>"]] call CTI_CL_FNC_NotificationHandle;
	sleep .5;
	["tkill",["Killed a teammate", "<t align='right'><t color='#d41f1f'>-$500</t>, <t color='#d41f1f'>-5p</t></t>"]] call CTI_CL_FNC_NotificationHandle;
	sleep .5;
	["bkill",["Destroyed a building", "<t align='right'><t color='#85bb65'>+$10,000</t>, <t color='#4e6182'>+50p</t></t>"]] call CTI_CL_FNC_NotificationHandle;
	sleep .5;
	["capture",["Captured a camp", "<t align='right'><t color='#85bb65'>+$1,000</t>, <t color='#4e6182'>+10p</t></t>"]] call CTI_CL_FNC_NotificationHandle;
	sleep .5;
	["service",["Rearming your vehicle","<t align='right'><t color='#f6d443'>43s</t> left</t>"]] call CTI_CL_FNC_NotificationHandle;
	sleep .5;
}; */

if (isDedicated || !hasInterface) exitWith {};

#define ALPHA .9
#define COLOR_RED [1.000,0.263,0.212,ALPHA]
#define COLOR_ORANGE [1.000,0.596,0.000,ALPHA]
#define COLOR_GREEN [0.298,0.686,0.314,ALPHA]
#define COLOR_WHITE [0.900,0.900,0.900,ALPHA]
#define COLOR_TEAL [0,0.588,0.533,ALPHA]
#define COLOR_DYNAMIC [(profileNamespace getvariable ['GUI_BCG_RGB_R',0.3843]),(profileNamespace getvariable ['GUI_BCG_RGB_G',0.7019]),(profileNamespace getvariable ['GUI_BCG_RGB_B',0.8862]),ALPHA]
#define COLOR_CASH "85bb65"
#define COLOR_SCORE "33a8ff"

NotificationHandler_CashAndScoreString = {
  params [
      ["_cash",0,[0]],
      ["_score",0,[0]]
  ];
  private _string = [];
  if !(_cash isEqualTo 0) then {
      _cashDir = (["-","+"] select (_cash > 0));
      _string pushBack format["<t color='#%1'>%2$%3</t>",COLOR_CASH,_cashDir,_cash];
  };
  if !(_score isEqualTo 0) then {
      _scoreDir = (["-","+"] select (_score > 0));
      _string pushBack format["<t color='#%1'>%2%3p</t>",COLOR_SCORE,_scoreDir,_score];
  };

  _string = _string joinString " : ";
  _string
};


/*
NotificationCreate parameters
params [
    ["_text","",["",[]]],
    ["_color",[1,1,1,1],[[]]],
    ["_speed",10,[10]],
    ["_location","right",[""]]
];
*/
_text = [];
_time = 10;
disableSerialization;
_notification = controlNull;
switch (_action) do {
  // Killed an AI
  case "kill":{
  // args shouls be [_killed,_cashReward,_scoreReward]
    _args call {
      params [
        ["_target","",["",objNull]],
        ["_cashReward",0,[0]],
        ["_scoreReward",0,[0]]
      ];
      if !(isNil "_target") then {
        if !(_target isEqualTo "") then {
           _targetClassname = _target;
          if (_target isEqualType objNull) then {
            _targetClassname = typeOf _target;
          };
          
          _targetName = getText (configFile >> "CfgVehicles" >> _targetClassname >> "displayName"); 
          _text pushBack format["Killed %1", _targetName];
          _text pushBack ([_cashReward,_scoreReward] call NotificationHandler_CashAndScoreString);
          _notification = [_text,COLOR_GREEN,_time] call CTI_CL_FNC_NotificationCreate;
        };
      };
    };
  };

  // Killed a player
  case "pkill":{
    _args call {
      params [
        ["_target","",["",objNull]],
        ["_cashReward",0,[0]],
        ["_scoreReward",0,[0]]
      ];
      if !(isNil "_target") then {
        if !(_target isEqualTo "") then {
          _text pushBack format["Killed %1", name _target];
          _text pushBack ([_cashReward,_scoreReward] call NotificationHandler_CashAndScoreString);
          _notification = [_text,COLOR_ORANGE,_time] call CTI_CL_FNC_NotificationCreate;
        };
      };
    };
  };
  // Killed a teammate
  case "tkill":{
    // args shouls be [_killed,_cashReward,_score]
    //[_text,COLOR_RED,_time] call CTI_CL_FNC_NotificationCreate;
  };
  // Destroyed a base building
  case "bkill":{
    _args call {
        params [
          ["_buildingName","",["",objNull]],
          ["_cashReward",0,[0]],
          ["_scoreReward",0,[0]]
        ];
        if !(isNil "_buildingName") then {
          if !(_buildingName isEqualTo "") then {
            _text pushBack format["Destroyed %1", _buildingName];
            _text pushBack ([_cashReward,_scoreReward] call NotificationHandler_CashAndScoreString);
			_notification = [_text,COLOR_GREEN,_time] call CTI_CL_FNC_NotificationCreate;
          };
        };
      };
    // args shouls be [_killed,_cashReward,_score]
    //[_text,COLOR_GREEN,_time] call CTI_CL_FNC_NotificationCreate;
  };
  // Captured a camp or a town
  case "capture":{
    // args shouls be [camp or town capture,camp/town name, cash reward, score reward]
    _args call {
      params [
        ["_captureType","",[""]],
        ["_town","",["",objNull]],
        ["_cashReward",0,[0]],
        ["_scoreReward",0,[0]]
      ];
      switch (_captureType) do {
        case "camp": {
          _text = [];
          _text pushBack "Captured a camp.";
          _text pushBack ([_cashReward,_scoreReward] call NotificationHandler_CashAndScoreString);
          _notification = [_text,COLOR_GREEN,_time] call CTI_CL_FNC_NotificationCreate;
        };
        case "town": {
          _text = [];
          _text pushBack format["Captured %1.",_town];
          _text pushBack ([_cashReward,_scoreReward] call NotificationHandler_CashAndScoreString);
          _notification = [_text,COLOR_GREEN,_time] call CTI_CL_FNC_NotificationCreate; 
        };
        default {};
      }
    };
  };

  // Vehicles being serviced
  case "service":{
    // args shouls be [_targetVehicle,_serviceName,_ETA]\
    _args call {
      params [
        ["_target","",["",objNull]],
        ["_serviceName","",[""]],
        ["_time",0,[0]]
      ];
      _startTime = time;
      _text = format["%1 is being %2: %3s", _target, toLower _serviceName, _time];
      _notification = [_text,COLOR_TEAL,_time] call CTI_CL_FNC_NotificationCreate;

      // Create thread to update the time ETA for the service notification
	  // We'll just have the service loop handle this itself - JEDMario
      /*_serviceUpdate = [_notification, _startTime, _time, _args] spawn {
		disableSerialization;
		_args = _this select 3;
        _notificationText = (_this select 0) select 1;
        _time = _this select 1;
		_text = format["<t color='#ccffaf'>%1</t> is being %2: <br/>ETA %3", _args select 0, _args select 1, _time];
        _notification ctrlSetStructuredText _text;
        while {time - _startTime < _time} do {
                _text = format["%1 is being %2: <br/>ETA %3", _args select 0, _args select 1, _time];
                _notification ctrlSetStructuredText _text;
                sleep 1;
        };
      };*/
    };

  };
   case "purchase":{
    /*_args call {
      params [
        ["_time","",["",objNull]],
        ["_label","",[""]],
        ["_factory",0,[0]]
      ];*/
      _startTime = time;
      //_text = format["%1 | Building %2 at ", _time, _label, _factory];
      _text = "-1 | Building a thing";
	  _notification = [_text,COLOR_TEAL,-1] call CTI_CL_FNC_NotificationCreate;
    //};

  };
  default {
    _args call {
      params [
        ["_text","",["",[]]]
      ];
      _notification = [_text,COLOR_WHITE,_time] call CTI_CL_FNC_NotificationCreate;
    };
  };
};
_notification