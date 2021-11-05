disableSerialization;

//--- Init.
WF_MenuAction = -1;

_listUnits = [];

_closest = objNull;
_commander = false;
_extracrew = false;
_countAlive = 0;
_currentCost = 0;
_currentIDC = 0;
_disabledColor = [0.7961, 0.8000, 0.7961, 1];
_display = _this select 0;
_driver = false;
_enabledColor = [0, 1, 0, 1];
_enabledColor2 = [1, 0, 0, 1]; //---NEW (LOCK)
_gunner = false;
_IDCLock = 12023;
_IDCS = [12005,12006,12007,12008,12020,12021];
_IDCSVehi = [12012,12013,12014,12041];
_isInfantry = false;
_isLocked = true;
_lastCheck = 0;
_lastSel = -1;
_lastType = 'nil';
_listBox = 12001;
_comboFaction = 12026;
_map = _display displayCtrl 12015;
_sorted = [];
_type = 'nil';
_update = true;
_updateDetails = true;
_updateList = true;
_updateMap = true;
_val = 0;
_mbu = missionNamespace getVariable 'WFBE_C_PLAYERS_AI_MAX';
_selectedRole = WSW_gbl_boughtRoles select 0;

ctrlSetText[12025,localize 'STR_WF_UNITS_FactionChoiceLabel' + ":"]; // changed-MrNiceGuy

//--- Get the closest Factory Type in range.
_break = false;
_status = [barracksInRange,lightInRange,heavyInRange,aircraftInRange,depotInRange,hangarInRange];
_statusLabel = ['Barracks','Light','Heavy','Aircraft','Depot','Airport'];
_statusVals = [0,1,2,3,4,3];
for [{_i = 0},{(_i < 6) && !_break},{_i = _i + 1}] do {
	if (_status select _i) then {
		_break = true;
		_currentIDC = _IDCS select _i;
		_type = _statusLabel select _i;
		_val = _statusVals select _i;
	};
};

if (_type == 'nil') exitWith {closeDialog 0};

//--- Destroy local variables.
_break = nil;
_status = nil;
_statusLabel = nil;
_statusVals = nil;

//--- Enable the current IDC.
_IDCS = _IDCS - [_currentIDC];
{
	_con = _display DisplayCtrl _x;
	_con ctrlSetTextColor [0.4, 0.4, 0.4, 1];
} forEach _IDCS;

//--- Loop.
while {alive player && dialog} do {
	//--- Nothing in range? exit!.
	if (!barracksInRange && !lightInRange && !heavyInRange && !aircraftInRange && !hangarInRange && !depotInRange) exitWith {closeDialog 0};
	if (side player != WFBE_Client_SideJoined || !dialog) exitWith {closeDialog 0};
	
	//--- Purchase.
	if (WF_MenuAction == 1) then {
		WF_MenuAction = -1;
		_currentRow = lnbCurSelRow _listBox;
		_currentValue = lnbValue[_listBox,[_currentRow,0]];
		_unit = _listUnits select _currentValue;
		_currentUnit = missionNamespace getVariable _unit;
		_currentCost = _currentUnit select QUERYUNITPRICE;
		if(_unit in WFBE_ADV_ARTILLERY) then {
		    if!(isNil '_selectedRole') then{
		        if(_selectedRole == WSW_ARTY_OPERATOR)then{
                    _currentCost = ceil (_currentCost - (_currentCost * WFBE_ADV_ARTY_DISCOUNT));
                };
		    };
        };
		_cpt = 1;
		_isInfantry = if (_unit isKindOf 'Man') then {true} else {false};
		if !(_isInfantry) then {
			_extra = 0;
			if (_driver) then {_extra = _extra + 1};
			if (_gunner) then {_extra = _extra + 1};
			if (_commander) then {_extra = _extra + 1};
			if (_extracrew) then {_extra = _extra + ((_currentUnit select QUERYUNITCREW) select 3)};
			_currentCost = _currentCost + ((missionNamespace getVariable "WFBE_C_UNITS_CREW_COST") * _extra);
		};
		if ((_currentRow) != -1) then {
			_funds = Call WFBE_CL_FNC_GetPlayerFunds;
			_skip = false;
			if (_funds < _currentCost) then {
			    _skip = true;
			    hint parseText(Format[localize 'STR_WF_INFO_Funds_Missing',_currentCost - _funds,_currentUnit select QUERYUNITLABEL])
			};
			//--- Make sure that we own all camps before being able to purchase infantry.
			if (_type == "Depot" && _isInfantry) then {
				_totalCamps = _closest Call WFBE_CO_FNC_GetTotalCamps;
				_campsSide = [_closest,WFBE_Client_SideJoined] Call WFBE_CO_FNC_GetTotalCampsOnSide;
				if (_totalCamps != _campsSide) then {_skip = true; hint parseText(localize 'STR_WF_INFO_Camps_Purchase')};
			};
			if !(_skip) then {
				_size = Count ((Units (group player)) Call WFBE_CO_FNC_GetLiveUnits);
				//--- Get the infantry limit based off the infantry upgrade.
				_realSize = ((WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideUpgrades) select WFBE_UP_BARRACKS;
				switch (_realSize) do {
					case 0: {_realSize = round(_mbu / 3)};
					case 1: {_realSize = round(_mbu / 4)*2};
					case 2: {_realSize = round(_mbu / 4)*3};
					case 3: {_realSize = _mbu};
					default {_realSize = _mbu};
				};

				if (!isNull(commanderTeam)) then {
                    if (commanderTeam == group player) then {
                        _realSize = _realSize + 5;
                    };
                };

				if (_isInfantry) then {if ((unitQueu + _size + 1) > _realSize) then {_skip = true;hint parseText(Format [localize 'STR_WF_INFO_MaxGroup',_realSize])}};

				if (!_isInfantry && !_skip) then {
					_cpt = 0;
					if (_driver) then {_cpt = _cpt + 1};
					if (_gunner) then {_cpt = _cpt + 1};
					if (_commander) then {_cpt = _cpt + 1};
					if (_extracrew) then {_cpt = _cpt + ((_currentUnit select QUERYUNITCREW) select 3)};
					if ((unitQueu + _size + _cpt) > _realSize && _cpt != 0) then {_skip = true;hint parseText(Format [localize 'STR_WF_INFO_MaxGroup',_realSize])};
				};
			};
			if !(_skip) then {
				//--- Check the max queu.
				if ((missionNamespace getVariable Format["WFBE_C_QUEUE_%1",_type]) < (missionNamespace getVariable Format["WFBE_C_QUEUE_%1_MAX",_type])) then {
					missionNamespace setVariable [Format["WFBE_C_QUEUE_%1",_type],(missionNamespace getVariable Format["WFBE_C_QUEUE_%1",_type])+1];
					
					_queu = _closest getVariable 'queu';
					_txt = parseText(Format [localize 'STR_WF_INFO_BuyEffective',_currentUnit select QUERYUNITLABEL]);
					if (!isNil '_queu') then {if (count _queu > 0) then {_txt = parseText(Format [localize 'STR_WF_INFO_Queu',_currentUnit select QUERYUNITLABEL])}};
					hint _txt;
					_params = if (_isInfantry) then {[_closest,_unit,[],_type,_cpt]} else {[_closest,_unit,[_driver,_gunner,_commander,_extracrew,_isLocked],_type,_cpt]};
					_params Spawn WFBE_CL_FNC_BuildUnit;
					-(_currentCost) Call WFBE_CL_FNC_ChangePlayerFunds;
				} else {
					hint parseText(Format [localize 'STR_WF_INFO_Queu_Max',missionNamespace getVariable Format["WFBE_C_QUEUE_%1_MAX",_type]]);
				};
			};
		};
	};
	
	//--- Tabs selection.
	if (WF_MenuAction == 101) then {WF_MenuAction = -1;if (barracksInRange) then {_currentIDC = 12005;_type = 'Barracks';_val = 0;_update = true}};
	if (WF_MenuAction == 102) then {WF_MenuAction = -1;if (lightInRange) then {_currentIDC = 12006;_type = 'Light';_val = 1;_update = true}};
	if (WF_MenuAction == 103) then {WF_MenuAction = -1;if (heavyInRange) then {_currentIDC = 12007;_type = 'Heavy';_val = 2;_update = true}};
	if (WF_MenuAction == 104) then {WF_MenuAction = -1;if (aircraftInRange) then {_currentIDC = 12008;_type = 'Aircraft';_val = 3;_update = true}};
	if (WF_MenuAction == 105) then {WF_MenuAction = -1;if (depotInRange) then {_currentIDC = 12020;_type = 'Depot';_val = 4;_update = true}};
	if (WF_MenuAction == 106) then {WF_MenuAction = -1;if (hangarInRange) then {_currentIDC = 12021;_type = 'Airport';_val = 3;_update = true}};
	
	//--- driver-gunner-commander icons.
	if (WF_MenuAction == 201) then {WF_MenuAction = -1;_driver = if (_driver) then {false} else {true};_updateDetails = true};
	if (WF_MenuAction == 202) then {WF_MenuAction = -1;_gunner = if (_gunner) then {false} else {true};_updateDetails = true};
	if (WF_MenuAction == 203) then {WF_MenuAction = -1;_commander = if (_commander) then {false} else {true};_updateDetails = true};
	if (WF_MenuAction == 204) then {WF_MenuAction = -1;_extracrew = if (_extracrew) then {false} else {true};_updateDetails = true};
	
	//--- Factory DropDown list value has changed.
	if (WF_MenuAction == 301) then {WF_MenuAction = -1;_factSel = lbCurSel 12018;_closest = _sorted select _factSel;_updateMap = true};
	
	//--- Selection change, we update the details.
	if (WF_MenuAction == 302) then {WF_MenuAction = -1;_updateDetails = true};
	
	//--- Faction Filter changed.
	if (WF_MenuAction == 303) then {WF_MenuAction = -1;_update = true;missionNamespace setVariable [Format["WFBE_%1%2CURRENTFACTIONSELECTED",WFBE_Client_SideJoinedText,_type],(lbCurSel _comboFaction)]};
	
	//--- Lock icon.
	if (WF_MenuAction == 401) then {WF_MenuAction = -1;_isLocked = if (_isLocked) then {false} else {true};_updateDetails = true};
	
	//--- Player funds.
	ctrlSetText [12019,Format [localize 'STR_WF_UNITS_Cash',Call WFBE_CL_FNC_GetPlayerFunds]];
	
	//--- Update tabs.
	if (_update) then {
		_listUnits = missionNamespace getVariable Format ['WFBE_%1%2UNITS',WFBE_Client_SideJoinedText,_type];

		[_comboFaction,_type] Call WFBE_CL_FNC_UIChangeComboBuyUnits;

		{
			_un = _x;
			if(isNil "_un")then{
				_listUnits deleteAt _forEachIndex;
			}else{
				_selUnit = missionNamespace getVariable _un;
				if(isNil "_selUnit")then{
					_listUnits deleteAt _forEachIndex;

				};
			}
		}foreach _listUnits;
		
		[_listUnits,_type,_listBox,_val] Call WFBE_CL_FNC_UIFillListBuyUnits;
		
		lnbSortByValue [_listBox, 1, false];
		
		//--- Update tabs icons.
		_IDCS = [12005,12006,12007,12008,12020,12021];
		_IDCS = _IDCS - [_currentIDC];
		_con = _display DisplayCtrl _currentIDC;
		_con ctrlSetTextColor [1, 1, 1, 1];
		{_con = _display DisplayCtrl _x;_con ctrlSetTextColor [0.4, 0.4, 0.4, 1]} forEach _IDCS;
		
		_update = false;
		_updateList = true;
		_updateDetails = true;
	};
	
	//--- Update factories.
	if (_updateList) then {
		switch (_type) do {
			//--- Specials.
			case 'Depot': {
				_sorted = [[vehicle player, missionNamespace getVariable "WFBE_C_TOWNS_PURCHASE_RANGE"] Call WFBE_CL_FNC_GetClosestDepot];
			};
			case 'Airport': {
				_sorted = [[vehicle player, missionNamespace getVariable "WFBE_C_UNITS_PURCHASE_HANGAR_RANGE"] Call WFBE_CL_FNC_GetClosestAirport];
			};
			//--- Factories
			default {
				_buildings = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideStructures;
				_factories = [WFBE_Client_SideJoined,missionNamespace getVariable Format ['WFBE_%1%2TYPE',WFBE_Client_SideJoinedText,_type],_buildings] Call WFBE_CO_FNC_GetFactories;
				_sorted = [vehicle player,_factories] Call WFBE_CO_FNC_SortByDistance;
				_closest = _sorted select 0;
				_countAlive = count _factories;
			};
		};

		//--- Refresh the Factory DropDown list.
		lbClear 12018;
		{
			_nearTown = ([_x, towns] Call WFBE_CO_FNC_GetClosestEntity) getVariable 'name';
			_txt = _type + ' ' + _nearTown + ' ' + str (round((vehicle player) distance _x)) + 'M';
			lbAdd[12018,_txt];
		} forEach _sorted;
		lbSetCurSel [12018,0];
		
		_updateList = false;
		_updateMap = true;
	};
	
	//--- Display Factory Queu.
	_queu = _closest getVariable "queu";
	_value = if (isNil '_queu') then {0} else {count (_closest getVariable "queu")};
	ctrlSetText[12024,Format[localize 'STR_WF_UNITS_QueuedLabel',str _value]];
	
	//--- List selection changed.
	if (_updateDetails) then {
		_currentRow = lnbCurSelRow _listBox;
		//--- Our list is not empty.
		if (_currentRow != -1) then {
			_currentValue = lnbValue[_listBox,[_currentRow,0]];
			_unit = _listUnits select _currentValue;
			_currentUnit = missionNamespace getVariable _unit;
			ctrlSetText [12009,_currentUnit select QUERYUNITPICTURE];
			ctrlSetText [12033,_currentUnit select QUERYUNITFACTION];
			ctrlSetText [12035,str (_currentUnit select QUERYUNITTIME)];
			_currentCost = _currentUnit select QUERYUNITPRICE;
			if(_unit in WFBE_ADV_ARTILLERY) then {
                if!(isNil '_selectedRole')then{
                    if(_selectedRole == WSW_ARTY_OPERATOR)then{
                        _currentCost = ceil (_currentCost - (_currentCost * WFBE_ADV_ARTY_DISCOUNT));
                    };
                };
            };
			
			_isInfantry = if (_unit isKindOf 'Man') then {true} else {false};
			
			//--- Update driver-gunner-commander icons.
			if !(_isInfantry) then {
				ctrlSetText [12036,"N/A"];
				ctrlSetText [12037,str (getNumber (configFile >> 'CfgVehicles' >> _unit >> 'transportSoldier'))];
				ctrlSetText [12038,str (getNumber (configFile >> 'CfgVehicles' >> _unit >> 'maxSpeed'))];
				ctrlSetText [12039,str (getNumber (configFile >> 'CfgVehicles' >> _unit >> 'armor'))];
				if (_type != 'Depot') then {
					_slots = _currentUnit select QUERYUNITCREW;
					
					if (typeName _slots == "ARRAY") then {
						_hasCommander = _slots select 0;
						_hasGunner = _slots select 1;
						_turretsCount = _slots select 3;
						_extra = 0;
						
						_maxOut = false;
						if (_lastType != _type || _lastSel != _currentRow) then {_maxOut = true};
						
						if (_maxOut) then {
							_driver = true;
							_gunner = true;
							_commander = true;
							_extracrew = false;
						};
						
						if !(_hasGunner) then {_gunner = false};
						
						if !(_hasCommander) then {_commander = false};
						
						if (_turretsCount == 0) then {_extracrew = false};
						
						ctrlShow[_IDCSVehi select 0, true];
						ctrlShow[_IDCSVehi select 1, _hasGunner];
						ctrlShow[_IDCSVehi select 2, _hasCommander];
						ctrlShow[_IDCSVehi select 3, if (_turretsCount == 0) then {false} else {true}];
						
						_c = 0;
						{
							_color = if (_x) then {_enabledColor} else {_disabledColor};
							_con = _display displayCtrl (_IDCSVehi select _c);
							_con ctrlSetTextColor _color;

							_c = _c + 1;
						} forEach [_driver,_gunner,_commander,_extracrew];
						
						if (_driver) then {_extra = _extra + 1};
						if (_gunner) then {_extra = _extra + 1};
						if (_commander) then {_extra = _extra + 1};
						if (_extracrew) then {_extra = _extra + _turretsCount};
						
						//--- Set the 'extra' price.
						_currentCost = _currentCost + ((missionNamespace getVariable "WFBE_C_UNITS_CREW_COST") * _extra);
					} else {//--- Backward compability.
						_c = 0;
						_extra = 0;
						
						//--- Enabled AI by default.
						_extracrew = false;
						_maxOut = false;
						if (_lastType != _type || _lastSel != _currentRow) then {_maxOut = true};
						
						switch (_slots) do {
							case 1: {
								if (_maxOut) then {_driver = true};
								if (_driver) then {_extra = _extra + 1};
								_gunner = false;
								_commander = false;
							};
							case 2: {
								if (_maxOut) then {_driver = true;_gunner = true};
								if (_driver) then {_extra = _extra + 1};
								if (_gunner) then {_extra = _extra + 1};
								_commander = false;
							};
							case 3: {
								if (_maxOut) then {_driver = true;_gunner = true;_commander = true};
								if (_driver) then {_extra = _extra + 1};
								if (_gunner) then {_extra = _extra + 1};
								if (_commander) then {_extra = _extra + 1};					
							};
						};
						
						//--- Show the icons.
						{
							_show = false;
							if (_c < _slots) then {_show = true};
							ctrlShow [_x,_show];
							_c = _c + 1;
						} forEach _IDCSVehi;
						
						//--- Mask extra crew.
						ctrlShow[_IDCSVehi select 3, false];
						
						_i = 0;
						
						//--- Set the icons.
						{
							_color = if (_x) then {_enabledColor} else {_disabledColor};
							_con = _display displayCtrl (_IDCSVehi select _i);
							_con ctrlSetTextColor _color;
							_i = _i + 1;
						} forEach [_driver,_gunner,_commander,_extracrew];

						//--- Set the 'extra' price.
						_currentCost = _currentCost + ((missionNamespace getVariable "WFBE_C_UNITS_CREW_COST") * _extra);
					};
				} else {
					{ctrlShow [_x,false]} forEach (_IDCSVehi);
					_driver = false;
					_gunner = false;
					_commander = false;
					_extracrew = false;
				};
			} else {
				ctrlSetText [12036,Format ["%1/100",(_currentUnit select QUERYUNITSKILL) * 100]];
				ctrlSetText [12037,"N/A"];
				ctrlSetText [12038,"N/A"];
				ctrlSetText [12039,"N/A"];
			
				{ctrlShow [_x,false]} forEach (_IDCSVehi);
				_driver = false;
				_gunner = false;
				_commander = false;
				_extracrew = false;
				
				//--- Display a unit's loadout.
				_weapons = (getArray (configFile >> 'CfgVehicles' >> _unit >> 'weapons')) - ['Put','Throw'];
				_magazines = getArray (configFile >> 'CfgVehicles' >> _unit >> 'magazines');
				
				_classMags = [];
				_classMagsAmount = [];
				_MagsLabel = [];
				
				{
					_findAt = _classMags find _x;
					if (_findAt == -1) then {
						_classMags pushBack _x;
						_classMagsAmount pushBack 1;
						_MagsLabel pushBack ([_x,'displayName','CfgMagazines'] Call WFBE_CO_FNC_GetConfigInfo);
					} else {
						_classMagsAmount set [_findAt, (_classMagsAmount select _findAt) + 1];
					};
				} forEach _magazines;
				_txt = "<t color='#42b6ff' shadow='1'>" + (localize 'STR_WF_UNITS_Weapons') + ":</t><br />";				
				
				_txttg = "";
				_txtta = "";
				
				for [{_i = 0},{_i < count _weapons},{_i = _i + 1}] do {
					_txttg = _txttg + "<t color='#eee58b' shadow='2'>" + ([(_weapons select _i),'displayName','CfgWeapons'] Call WFBE_CO_FNC_GetConfigInfo) + "</t>";
					
					if ((_i+1) < count _weapons) then {_txttg = _txttg + "<t color='#D3A119' shadow='2'>,</t> "}; 
				};
				
				for "_j" from 0 to ((count WFBE_C_INFANTRY_TO_REQUIP) - 1) do
				{
					_currentElement = WFBE_C_INFANTRY_TO_REQUIP select _j;	
					if (_unit in _currentElement) exitWith {
						//--Weapons--						
						_cnt = count (_currentElement select 1);
						if(_cnt > 0) then {
							_cnt = _cnt - 1;
							_txttg = "";							
							for "_k" from 0 to _cnt do
							{							
								_curEl = (_currentElement select 1) select _k;							
								_txttg = _txttg + "<t color='#eee58b' shadow='2'>" + _curEl + "</t>";
								if(_k < _cnt) then {_txttg = _txttg + "<t color='#D3A119' shadow='2'>,</t> "};
							};
						};
						
						//--Ammo--						
						_cnt = count (_currentElement select 2);
						if(_cnt > 0) then {
							_cnt = _cnt - 1;
							_txtta = "";							
							for "_l" from 0 to _cnt do
							{							
								_curEl = (_currentElement select 2) select _l;							
								_txtta = _txtta + "<t color='#eee58b' shadow='2'>" + _curEl + "</t>";
								if(_l < _cnt) then {_txtta = _txtta + "<t color='#D3A119' shadow='2'>,</t> "};
							};
						};
					};					
				};
				
				_txt = _txt + _txttg;
				
				_txt = _txt + "<t color='#D3A119' shadow='2'></t><br /><br />";
				_txt = _txt + "<t color='#42b6ff' shadow='1'>" + (localize 'STR_WF_UNITS_Magazines') + ":</t><br />";
				
				if(_txtta == "") then {
					for [{_i = 0},{_i < count _MagsLabel},{_i = _i + 1}] do {
						_txt = _txt + "<t color='#eee58b' shadow='2'>" + ((_MagsLabel select _i) + "</t> <t color='#42b6ff' shadow='1'>x</t><t color='#42b6ff' shadow='1'>" + str (_classMagsAmount select _i)) + "</t>";
						if ((_i+1) < count _MagsLabel) then {_txt = _txt + "<t color='#D3A119' shadow='2'>,</t> "}; 
					};
				}
				else
				{
					_txt = _txt + _txtta;
				};				
				
				_txt = _txt + "<t color='#D3A119' shadow='2'></t>";
				
				(_display displayCtrl 12022) ctrlSetStructuredText (parseText _txt);
			};
			
			//--- Lock Icon.
			if !(_isInfantry) then {
				ctrlShow[_IDCLock,true];
				_color = if (_isLocked) then {_enabledColor2} else {_disabledColor};
				_con = _display displayCtrl _IDCLock;
				_con ctrlSetTextColor _color;
			} else {
				ctrlShow[_IDCLock,false];
			};

			//--- Long description.
			if !(_isInfantry) then {
				if (isClass (configFile >> 'CfgVehicles' >> _unit >> 'Library')) then {
					_txt = getText (configFile >> 'CfgVehicles' >> _unit >> 'Library' >> 'libTextDesc');
					(_display displayCtrl 12022) ctrlSetStructuredText (parseText _txt);
				} else {
					(_display displayCtrl 12022) ctrlSetStructuredText (parseText '');
				};
			};
			
			ctrlSetText [12034,Format ["$ %1",_currentCost]];
			_updateDetails = false;
		} else {
			{ctrlSetText [_x , ""]} forEach [12009,12010,12027,12028,12029,12030,12031,12032,12033,12034,12035,12036,12037,12038,12039];
			(_display displayCtrl 12022) ctrlSetStructuredText (parseText '');
		};
	};
	
	//--- Update the Factory Minimap position.
	if (_updateMap) then {
		ctrlMapAnimClear _map;
		_map ctrlMapAnimAdd [2,.075,getPos _closest];
		ctrlMapAnimCommit _map;
		_updateMap = false;
	};
	
	//--- Check that the factories of the current type are still alive.
	_lastCheck = _lastCheck + 0.1;
	if (_lastCheck > 2 && _type != 'Depot' && _type != 'Airport') then {
		_lastCheck = 0;
		_buildings = (WFBE_Client_SideJoined) Call WFBE_CO_FNC_GetSideStructures;
		_factories = [WFBE_Client_SideJoined,missionNamespace getVariable Format ['WFBE_%1%2TYPE',WFBE_Client_SideJoinedText,_type],_buildings] Call WFBE_CO_FNC_GetFactories;
		if (count _factories != _countAlive) then {_updateList = true};
	};
	
	_lastSel = lnbCurSelRow _listBox;
	_lastType = _type;
	sleep 0.1;
	
	//--- Back Button.
	if (WF_MenuAction == 2) exitWith { //---added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "WF_Menu";
	};
};