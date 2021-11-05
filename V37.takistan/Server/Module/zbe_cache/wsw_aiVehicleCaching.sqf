Private["_distance","_distance","_players"];

_distance = _this select 0;

if(typeName allUnits == "ARRAY" && typeName playableUnits == "ARRAY")then{

    while {!WFBE_GameOver} do {
            _players = switchableUnits + playableUnits;
            for "_i" from 0 to count zbe_cached_vehicles -1 do {
                _vehicle = zbe_cached_vehicles select _i;

                if!(isNil '_vehicle')then{
                    if (zbe_debug) then { diag_log format ["ZBE_Cache starting for vehicle %1",_vehicle]; };

                    if!(alive _vehicle)then{
                        if (zbe_debug) then { diag_log format ["ZBE_Cache ending for vehicle %1",_vehicle]; };
                        zbe_cached_vehicles = zbe_cached_vehicles - [_vehicle];
                    }else{

                        _isCachedAlready = _vehicle getVariable "zbe_cachedAlready";

                        if(isNil '_isCachedAlready')then{
                            _vehicle setVariable ["zbe_cachedAlready",false];
                            _isCachedAlready = false;
                        };

                        if(count (crew _vehicle) == 0 || ({_x distance _vehicle < _distance} count _players == 0))then{
                            if!(_isCachedAlready)then{
                                _vehicle enablesimulationglobal false;
                                _vehicle setVariable ["zbe_cachedAlready",true];
                                //diag_log format ["_vehicle is cached: %1", _vehicle];
                            };
                        };

                        if(count (crew _vehicle) == 0 || ({_x distance _vehicle < _distance} count _players > 0))then{
                            if(_isCachedAlready)then{
                                _vehicle enablesimulationglobal true;
                                _vehicle setVariable ["zbe_cachedAlready",false];
                                //diag_log format ["_vehicle is uncached: %1", _vehicle];
                            };
                        };
                    };
                }else {
                    zbe_cached_vehicles = zbe_cached_vehicles - [objNull];
                };
            };
        sleep 5;
    };
};