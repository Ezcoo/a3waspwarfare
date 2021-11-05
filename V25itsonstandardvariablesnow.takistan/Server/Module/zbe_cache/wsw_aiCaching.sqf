Private["_delayed","_distance","_group","_leader","_toCache","_fps","_debug","_groupcount","_trandomc","_trandomu"];

_distance = _this select 0;
_debug = _this select 1;

if(typeName allUnits == "ARRAY" && typeName playableUnits == "ARRAY")then{

    while {!CTI_GameOver} do {

            for "_i" from 0 to count zbe_cachedGroups -1 do {
                _group = zbe_cachedGroups select _i;

                if!(isNil '_group')then{
                    if (zbe_debug) then { diag_log format ["ZBE_Cache starting for group %1",_group]; };
                     _leader = leader _group;
                     _groupCount = ({alive _x} count units _group);
                     _isCachedAlready = _group getVariable "zbe_cachedAlready";
                     _originalGroupCount = _group getVariable "zbe_originalGroupCount";

                     _groupDataArray = [_group, _leader];
                     _shallCacheIt = _leader call zbe_cacheEvent;

                     if(isNil '_isCachedAlready')then{
                         _group setVariable ["zbe_cachedAlready",false];
                         _isCachedAlready = false;
                     };

                     if(isNil '_originalGroupCount')then{
                         _group setVariable ["zbe_originalGroupCount",_groupCount];
                     };

                     if(_isCachedAlready)then{
                         _originalGroupCount = _group getVariable "zbe_originalGroupCount";

                         if(_originalGroupCount < count ((units _group) - [(_leader)]))then{
                             _groupDataArray call zbe_cache;
                             _group setVariable ["zbe_cachedAlready",true];
                             _isCachedAlready = true;
                         };
                     };

                     if({alive _x} count units _group == 0)then{ _groupDataArray call zbe_unCache; };

                     if(_shallCacheIt) then{
                         if!(_isCachedAlready)then{
                             _groupDataArray call zbe_cache;
                             _group setVariable ["zbe_cachedAlready",true];
                         };
                     }else{
                         if(_isCachedAlready)then{
                             _groupDataArray call zbe_unCache;
                             _groupDataArray call zbe_setPosFull;
                             _group setVariable ["zbe_cachedAlready",false];
                         };
                     };

                     if(_groupCount > ({alive _x} count units _group))then{
                         _groupDataArray call zbe_removeDead;
                         _groupCount = ({alive _x} count units _group);
                     };
                };
            };
            zbe_cachedGroups = zbe_cachedGroups - [grpNull];

        sleep CTI_C_RESPAWN_DELAY + 5;
    };
};