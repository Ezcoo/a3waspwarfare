


params ["_label", "_color", "_vehicles", ["_altitude",false]];

private ["_marker"];

/*if (typeName _altitude isEqualTo "BOOL") then
{
        _altitude = _vehicle getVariable "initial_side";
}; */

_time_limit = 5;

if (isNil "m_vehicles") then
{
	m_vehicles = [];
};

// m_lock is used to prevent us from generating a shitload of sleeps
if (isNil "m_lock") then
{
	m_lock = false;
};


is_expired = 
{
	params ["_v"];
	
	_expired = false;

	_e = _v getVariable "time_seen";

	if (isNil {_v getVariable "time_seen"}) exitWith
	{ 	
		true;
	};

	// time diff		
	if ((time - _e) >= _time_limit) exitWith
	{
		true;
	};
	
	_expired;
};


remove_expired = 
{
	_exp = [];
	{
		if ((_x call is_expired) || !(alive _x)) then
		{
			deleteMarkerLocal (format ["%1", (netId _x)]);
			_exp pushBack _x;
			
		};
	
	} forEach m_vehicles;	

	{
		m_vehicles deleteAt (m_vehicles find (_x));
	
	} forEach _exp;
};

set_marker_text =
{
	params ["_marker", "_v"];
	
	private _marker_text = "n/a";

	switch (_label) do
	{
		
		case 1:
		{
			private _mn = getText(configFile >> "CfgVehicles" >> typeOf _v >> "displayName");
			_marker_text = _mn;
		};

		case 2:
		{
                   	//round ((getPosASL _vehicle) select 2)
			_ts = getText(configFile >> "CfgVehicles" >> typeOf _v >> "textSingular");
			// save _ts for later
			_v setVariable ["type", _ts];
			private _mn = format ["%1 [%2m AGL]", _ts, round ((getPosATL _v) select 2)];
			_marker_text = _mn;
		};

		case 3:
		{
			_marker_text = "ECM vehicle";
			_v setVariable ["type", _marker_text];
		};
		
	};
	
	_marker setMarkerTextLocal _marker_text;
	_v setVariable ["marker_text", _marker_text];
};

create_marker =
{
	// This draws the marker, then returns it

	params ["_v"];
	private ["_marker", "_i"];
	
	_mn = "";
	_cn = typeOf _v;
	_l  = format ["%1", (netID _v)];


	// generate a marker
	_marker = createMarkerLocal [_l, (getPosWorld _v)];

	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerColorLocal _color;
	_marker setMarkerSizeLocal [1.2, 1.2];
	[_marker, _v] call set_marker_text;
	_marker setMarkerAlphaLocal 1;

	_marker;
};

announce = 
{
	params ["_v"];
	
	private _mn = _v getVariable "type";
	
	//_n = format ["Enemy %1 spotted %2m from your location", _mn, (round (_v distance2D CTI_P_Controlled))];
	_n = format ["Enemy %1 spotted", _mn];
	//hint _n;
	// _notification = [_text,COLOR_GREEN,_time] call CTI_CL_FNC_NotificationCreate;
	[_n, [1,0,0,1], 15, "right"] spawn CTI_CL_FNC_NotificationCreate;
};
	

// Draw the markers if we haven't seen them
{
	private ["_marker"];


	// Create a new marker and store it if we havent seen it before	
	if !(_x in m_vehicles) then
	{
	
		

		m_vehicles pushBack _x;
		_marker = _x call create_marker;

		// to prevent the same accounce from happening over and over
		if (isNil {_x getVariable "time_seen"}) then 
		{
			_x spawn announce; 
		};

		// create a time variable
		_x setVariable ["time_seen", time, false];

		// attach the marker
		_x setVariable ["m_marker", _marker, false];
	}

	// Otherwise update the marker position
	else
	{
		// occasionaly the marker isn't created
		if !(isNil {_x getVariable "m_marker"}) then
		{
			_marker = (_x getVariable "m_marker");
			[_marker, _x] call set_marker_text;
			_marker setMarkerPosLocal (getPosWorld _x);
		}

		else
		{
			_marker = (_x call create_marker);
			_x setVariable ["m_marker", _marker, false];
		};
		
		
		_x setVariable ["time_seen", time, false];
	};

} forEach _vehicles;


// This right here keeps us from having a shitload of uisleep's
// m_lock prevents us from having more than one while loop
if (m_lock) exitWith {};

// ok gonna use a while loop, it wont always be running tho
m_lock = true;
while {(count m_vehicles) > 0} do
{
	uisleep 10;
	call remove_expired;
};

m_lock = false;
