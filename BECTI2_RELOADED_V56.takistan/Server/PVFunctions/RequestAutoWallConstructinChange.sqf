Private ['_isAutoWallConstructingEnabled'];

_isAutoWallConstructingEnabled = _this select 0;
_player = _this select 1;

isAutoWallConstructingEnabled = _isAutoWallConstructingEnabled;
['auto-wall-constructing-changed', isAutoWallConstructingEnabled] remoteExecCall ["cti_CL_FNC_HandleSpecial", _player];
