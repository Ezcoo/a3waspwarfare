zbe_aiCacheDist				= _this select 0;
zbe_aiVehicleCachingDistance= _this select 1;
zbe_minFrameRate			= _this select 2;
zbe_debug					= _this select 3;
zbe_vehicleCacheDistCar		= _this select 4;
zbe_vehicleCacheDistAir		= _this select 5;
zbe_vehicleCacheDistBoat	= _this select 6;

zbe_allGroups	   			    = 0;
zbe_cachedGroups   			    = [];
zbe_cachedStaticDefenseGroups   = [];
zbe_cached_vehicles             = [];
zbe_cachedUnits	   			    = 0;
zbe_cachedVehicles 			    = 0;
zbe_objectView	   			    = 0;
zbe_players					    = [];
_resSides                       = [resistance, civilian];

zbe_mapsize = [] call bis_fnc_mapSize;
zbe_mapside = zbe_mapsize / 2;
zbe_centerPOS = [zbe_mapside, zbe_mapside, 0];

zbe_cache = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_cache.sqf";
zbe_cacheEvent = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_cacheEvent.sqf";
zbe_closestUnit = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_closestUnit.sqf";
zbe_deleteunitsnotleader = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_deleteunitsnotleader.sqf";
zbe_deleteunitsnotleaderfnc = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_deleteunitsnotleaderfnc.sqf";
zbe_removeDead = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_removeDead.sqf";
zbe_setPosFull = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_setPosFull.sqf";
zbe_setPosLight = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_setPosLight.sqf";
zbe_unCache = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_unCache.sqf";
zbe_vehicleCache = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_vehicleCache.sqf";
zbe_vehicleUncache = Compile preprocessFileLineNumbers "Server\Module\zbe_cache\functions\zbe_vehicleUncache.sqf";

[zbe_aiCacheDist, zbe_debug] spawn WSW_AICaching;
[zbe_aiCacheDist, zbe_debug] spawn WSW_AIStaticDefenceCaching;
[zbe_aiVehicleCachingDistance] spawn WSW_AIVehicleCaching;

[_resSides] spawn  {
    _resSides = _this select 0;
	while {!WFBE_GameOver} do {
	    sleep 5;
	    zbe_players = (switchableUnits + playableUnits);
	    {
	        _groupSide = side _x;

	        if (count units _x>0 && _groupSide in _resSides) then {
	            _isStaticDefenseGroup = false;
                {
                    if((vehicle _x) isKindOf "StaticWeapon")exitwith{
                        _isStaticDefenseGroup = true;
                    };
                } foreach units _x;

	            if!(_isStaticDefenseGroup) then {
                    switch (_groupSide)do{
                        case resistance:{ zbe_cachedGroups pushBackUnique _x; };
                        case civilian:{ zbe_cachedGroups pushBackUnique _x; };
                    };
	            }else{
	                switch (_groupSide)do{
                        case resistance:{ zbe_cachedStaticDefenseGroups pushBackUnique _x; };
                        case civilian:{ zbe_cachedStaticDefenseGroups pushBackUnique _x; };
                    };
	            };
	        };
	    } forEach allGroups;
/*	    diag_log format ["zbe_cachedGroups: %1", zbe_cachedGroups];
	    diag_log format ["count zbe_cachedGroups: %1", count zbe_cachedGroups];

	    diag_log format ["zbe_cachedStaticDefenseGroups: %1", zbe_cachedStaticDefenseGroups];
	    diag_log format ["count zbe_cachedStaticDefenseGroups: %1", count zbe_cachedStaticDefenseGroups];*/
	};
};

// Vehicle Caching Beta (for client FPS)
//todo: put in group of vehicle a correspond flag to catch it for further caching
/*
[] spawn {
	private ["_assetsVehicle"];

	while {!WFBE_GameOver} do {
		_assetsVehicle = zbe_centerPOS nearEntities [["Car","APC","Tank","Boat"], zbe_mapside];
		{
            switch (side _x)do{
                case resistance:{ zbe_cached_vehicles pushBackUnique _x;};
                case civilian:{ zbe_cached_vehicles pushBackUnique _x; };
            };
		} forEach _assetsVehicle;
		sleep 5;
	};
};*/
