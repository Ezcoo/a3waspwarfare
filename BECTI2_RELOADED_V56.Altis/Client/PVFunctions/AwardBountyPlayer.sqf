Private["_assist","_bounty","_get","_name","_type"];


_killed = _this select 0;
_name = name _killed;

_bounty = if (score _killed < 0) then {100} else {100+11*(score _killed)};

Format[Localize "STR_WF_CHAT_Award_Bounty", _bounty, _name] Call EZC_fnc_Functions_Client_GroupChatMessage;
(_bounty) Call EZC_fnc_Functions_Client_ChangePlayerFunds;