Private ["_logic", "_side", "_commander"];

_side = _this;
_commander = _this select 1;
_logic = (_side) Call CTI_CO_FNC_GetSideLogic;


//--- Notify the clients.
["new-commander-assigned", _commander] remoteExecCall ["CTI_CL_FNC_HandleSpecial", _side];

//--- Process the AI Commander FSM if it's not running.
if !(isNull _commander) then {
	if (_logic getVariable "CTI_aicom_running") then {_logic setVariable ["CTI_aicom_running", false]};
};