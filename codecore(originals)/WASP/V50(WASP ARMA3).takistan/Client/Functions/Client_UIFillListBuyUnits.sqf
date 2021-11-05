Private ['_addin','_c','_currentUpgrades','_filler','_filter','_i','_listBox','_listNames','_u','_value','_selectedRole'];
_listNames = _this select 0;
_filler = _this select 1;
_listBox = _this select 2;
_value = _this select 3;
_selectedRole = WSW_gbl_boughtRoles select 0;

_u = 0;
_i = 0;

_currentUpgrades = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideUpgrades;
_filter = missionNamespace getVariable Format["WFBE_%1%2CURRENTFACTIONSELECTED",WFBE_Client_SideJoinedText,_filler];
if (isNil '_filter') then {_filter = "nil"} else {
	if (_filter == 0) then {
		_filter = 'nil';
	} else {
		_filter = ((missionNamespace getVariable Format["WFBE_%1%2FACTIONS",WFBE_Client_SideJoinedText,_filler]) select _filter);
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

_UpBar = ((WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideUpgrades) select WFBE_UP_BARRACKS;
_UpLight = ((WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideUpgrades) select WFBE_UP_LIGHT;
_UpHeavy = ((WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideUpgrades) select WFBE_UP_HEAVY;
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

		if (_x in WFBE_ADV_ARTILLERY)then{ _isAdvVehicle = true;};

        if!(isNil '_selectedRole')then{
            if(_selectedRole == WSW_ARTY_OPERATOR)then{
                if(_filler == 'Light')then{
                    if (_isAdvVehicle && _UpLight == _c select QUERYUNITUPGRADE)then{
                        _addit = true;
                    };
                };
                if(_filler == 'Heavy')then{
                    if (_isAdvVehicle && _UpHeavy == _c select QUERYUNITUPGRADE)then{
                        _addit = true;
                    };
                };
            };
        };

		if (((_c select QUERYUNITUPGRADE) <= (_currentUpgrades select _value) && _addin && !_isAdvVehicle) || (_addit&&_addin)) then {
		    _cost = _c select QUERYUNITPRICE;
		    if(_isAdvVehicle) then {

		        if!(isNil '_selectedRole')then{
		            if(_selectedRole == WSW_ARTY_OPERATOR)then{
                        _cost = ceil (_cost - (_cost * WFBE_ADV_ARTY_DISCOUNT));
                        lnbAddRow [_listBox,['$'+str (_cost),(_c select QUERYUNITLABEL)]];
                    }else{
                        lnbAddRow [_listBox,['$'+str (_c select QUERYUNITPRICE),(_c select QUERYUNITLABEL)]];
                    };
		        }else{
		            lnbAddRow [_listBox,['$'+str (_c select QUERYUNITPRICE),(_c select QUERYUNITLABEL)]];
		        };
		        lnbSetData [_listBox,[_i,0],_filler];
                lnbSetValue [_listBox,[_i,0],_u];
                lnbSetValue [_listBox,[_i,1],_cost];
                lnbSetColor [_listBox,[_i,0],[0.6, 0.4, 0.6, 1.0]];
                lnbSetColor [_listBox,[_i,1],[0.6, 0.4, 0.6, 1.0]];
		    } else {
		        lnbAddRow [_listBox,['$'+str (_cost),(_c select QUERYUNITLABEL)]];
                lnbSetData [_listBox,[_i,0],_filler];
                lnbSetValue [_listBox,[_i,0],_u];
                lnbSetValue [_listBox,[_i,1],_cost];
		    };
			_i = _i + 1;
		};
		_u = _u + 1;
	};
	
} forEach _listNames;

if (_i > 0) then {lnbSetCurSelRow [_listBox,0]} else {lnbSetCurSelRow [_listBox,-1]};