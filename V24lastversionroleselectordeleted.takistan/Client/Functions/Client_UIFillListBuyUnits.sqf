Private ['_addin','_c','_currentUpgrades','_filler','_filter','_i','_listBox','_listNames','_u','_value'];
_listNames = _this select 0;
_filler = _this select 1;
_listBox = _this select 2;
_value = _this select 3;


_u = 0;
_i = 0;

_currentUpgrades = (cti_Client_SideJoined) Call cti_CO_FNC_GetSideUpgrades;
_filter = missionNamespace getVariable Format["cti_%1%2CURRENTFACTIONSELECTED",cti_Client_SideJoinedText,_filler];
if (isNil '_filter') then {_filter = "nil"} else {
	if (_filter == 0) then {
		_filter = 'nil';
	} else {
		_filter = ((missionNamespace getVariable Format["cti_%1%2FACTIONS",cti_Client_SideJoinedText,_filler]) select _filter);
	};
};

lnbClear _listBox;

{
	if(isNil "_x")then{
		_listNames deleteAt _forEachIndex;
	}else{
		_selUnit = missionNamespace getVariable _x;
		if(isNil "_selUnit")then{
			_listNames deleteAt _forEachIndex;
		};
	}
}foreach _listNames;

_UpBar = ((cti_Client_SideJoined) Call cti_CO_FNC_GetSideUpgrades) select cti_UP_BARRACKS;
_UpLight = ((cti_Client_SideJoined) Call cti_CO_FNC_GetSideUpgrades) select cti_UP_LIGHT;
_UpHeavy = ((cti_Client_SideJoined) Call cti_CO_FNC_GetSideUpgrades) select cti_UP_HEAVY;
{
	_addin = true;
	_isAdvVehicle = false;
	_c = missionNamespace getVariable _x;
	
	if!(isNil "_c")then{
		if (_filter != "nil") then {
			if ((_c select QUERYUNITFACTION) != _filter) then {_addin = false};
		};

		_addit = false;
		if(_filler == 'Depot') then
		{

			if ((_x in ['rhs_vdv_des_machinegunner', 'rhsusf_army_ucp_arb_machinegunner']) && _UpBar>=1)then{_addit  = true;};
			if ((_x in ['rhs_vdv_des_LAT', 'rhsusf_army_ucp_arb_riflemanat']) && _UpBar>=1)then{_addit = true;};
			if ((_x in ['rhs_vdv_des_engineer', 'rhsusf_army_ucp_arb_engineer']) && _UpBar>=1)then{_addit = true;};
			if ((_x in ['rhs_vdv_des_aa','rhsusf_army_ucp_aa']) && _UpBar>=3)then{_addit = true;};
		};

		if (_x in cti_ADV_ARTILLERY)then{ _isAdvVehicle = true;};

        
		_u = _u + 1;
	};
	
} forEach _listNames;

if (_i > 0) then {lnbSetCurSelRow [_listBox,0]} else {lnbSetCurSelRow [_listBox,-1]};