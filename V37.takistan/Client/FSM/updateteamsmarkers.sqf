private["_sideText","_label","_count"];

_sideText = WFBE_Client_SideJoinedText;
_markerType = "b_inf";
_maxPlayersInTeam = WF_MAXPLAYERS_IN_TEAM;

while {!WFBE_GameOver} do {
	deleteMarkerLocal "";
	_label = "";
	
	WFBE_Client_Teams = missionNamespace getVariable Format['WFBE_%1TEAMS',WFBE_Client_SideJoined];
	WFBE_Client_Teams = WFBE_Client_Teams - [grpNull]; // cleaning of empty or null groups in array
	WFBE_Client_Teams_Count = count WFBE_Client_Teams;
	_count = 1;
	
	for "_i" from 1 to _maxPlayersInTeam do {
		_markerToRemove = Format["%1AdvancedSquad%2Marker",_sideText,_i];
		deleteMarkerLocal _markerToRemove
	};
	
	{
		_marker = Format["%1AdvancedSquad%2Marker",_sideText,_count];

		if (alive (leader _x)) then {
			_label = "";
			if (isPlayer (leader _x)) then {
				_marker = Format["%1AdvancedSquad%2Marker",_sideText,_count];
				createMarkerLocal [_marker,[0,0,0]];
				_marker setMarkerTypeLocal _markerType;
				_marker setMarkerColorLocal "ColorBlue";
				_marker setMarkerSizeLocal [1,1];
				_label = Format["%1 [%2]",name (leader _x),_count];
				_marker setMarkerTextLocal _label;
				_marker setMarkerPosLocal GetPos (leader _x);
				_marker setMarkerAlphaLocal 1;
			}else {
				deleteMarkerLocal _marker
			};
		} else {
			deleteMarkerLocal _marker;
		};
		_count = _count + 1;
	} forEach WFBE_Client_Teams;
	sleep 2;
};