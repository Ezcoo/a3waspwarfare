//--- Basic loop that records player position eveyr 60 seconds and compares to to old one.
//--- Times are preset in this files only.

_name = name player;

while { hasInterface } do {
    private _lastpos = getPosATL player;
    private _lastdir = getDir player;
    private _starttime = time;
    private _messagecreated = false;
    private _run = true;
    sleep 60;
    while { (getPosATL player) isEqualTo _lastpos && (getDir player) isEqualTo _lastdir && _run} do {
      if(_messagecreated) then{
        if !(uiNamespace getVariable "BIS_fnc_guiMessage_status") exitWith {
          _run = false;
        };
      };
      _diff = round (time - _starttime);
      //diag_log ["DIFFERENCE:", _diff];
      switch (_diff) do {
          // 20 Minutes
          case (1200 ):{
            diag_log "1st Warning";
            systemChat (_name + ", you have not moved for 20 minutes and will be kicked if stationary for another 10.");
          };
          // 14 Minutes
          case (1740):{
            diag_log "2nd Warning";
            // Create a hint window, if the player clicks OK then the timer resets
            _name spawn {[_this + ", you have 1 minute to click OK and MOVE your MAIN Player UNIT before you get kicked.", "Warning", true, false] call BIS_fnc_guiMessage;};
            _messagecreated = true;

          };
          // 15 Minutes
          case (1800): {
            diag_log "Kicking Player";
            // Close the hint window
            uiNamespace setVariable ["BIS_fnc_guiMessage_status", false];
            // Give player final message
            systemChat (_name + " you have inactive for 15 minutes and have been kicked.");
            sleep 5;
            // Kick the player
            "end5" call BIS_fnc_endMission;
          };
      };
      sleep 60;
    };
};