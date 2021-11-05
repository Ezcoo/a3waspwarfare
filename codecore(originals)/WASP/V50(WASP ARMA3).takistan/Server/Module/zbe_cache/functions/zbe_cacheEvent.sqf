Private ['_result','_leader'];

_leader = _this;

_result = true;
{
    if((vehicle _x) distance _leader < zbe_aiCacheDist)exitwith{
        _result = false;
    };
}foreach (switchableUnits + playableUnits);

/*if(_result)then{
    _result = isNull (_leader findNearestEnemy _leader);
};*/

_result