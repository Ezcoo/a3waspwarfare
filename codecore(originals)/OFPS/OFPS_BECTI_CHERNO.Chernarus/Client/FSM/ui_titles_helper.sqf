private["_delay","_lastCheck","_lastSID","_txt","_colorBlue","_colorGreen","_colorRed","_colorYellow","_nearest","_update","_commander","_upgrade_txt","_running","_alivehq","_hq","_structures","_factories","_logic","_fobs","_fobslarge","_supply","_supply_in","_income","_side_income","_timeleft","_supply_eta_txt","_sideID","_curSV","_maxSV","_town_camps_total","_town_camps_side","_town_groups_alive","_town_units_alive","_upgrades","_towns_near","_camp","_camps","_barColor","_control","_textControl"];

_delay = 4;
_lastCheck = "";
_lastSID = -1;
_txt = "";

_colorBlue = [0,0,0.7,0.6];
_colorGreen = [0,0.7,0,0.6];
_colorRed = [0.7,0,0,0.6];
_colorYellow = [0.7,0.7,0,0.6];

600200 cutRsc["CTI_CaptureBar","PLAIN",0];
if (!isNull (uiNamespace getVariable "cti_title_capture")) then {
	{((uiNamespace getVariable "cti_title_capture") displayCtrl _x) ctrlShow false} forEach [601000,601001];
};

while {!CTI_GameOver} do {

	_nearest = (player) call CTI_CO_FNC_GetClosestTown;
	_update = [false, true] select (player distance _nearest < CTI_UI_TOWNS_PROGRESSBAR_DISTANCE && alive player);

	if !(isNull (uiNamespace getVariable "cti_title_capture")) then {
		_commander = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideCommanderTeam;
		if (isNull _commander) then {
			_commander = "N/A";
		} else {
			_commander = name leader _commander;
		};
		
		_upgrade_txt = "No Upgrade Running";
		_running = CTI_P_SideLogic getVariable "cti_upgrade";
		if (_running > -1) then {
			_upgrade_txt = format ["Upgrading: %1 %2 :: %3 s left.", ((missionNamespace getVariable format["CTI_%1_UPGRADES_LABELS", CTI_P_SideJoined]) select _running) select 0, ((CTI_P_SideJoined call CTI_CO_FNC_GetSideUpgrades) select _running)+1,CTI_P_SideLogic getVariable "cti_upgrade_lt"];
		};
		_alivehq= "Alive";
		_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	      if !(alive _hq) then {_alivehq = "Dead"};
		_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
		_factories = 0;
		{_factories = _factories + count([_x, _structures] call CTI_CO_FNC_GetSideStructuresByType)} forEach (missionNamespace getVariable format["CTI_%1_Factories", CTI_P_SideJoined]);

		_logic = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideLogic;
		_fobs = count(_logic getVariable "cti_fobs");
		_fobslarge = count(_logic getVariable "cti_large_fobs");
		
		_supply = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideSupply;
		_supply_in = ((CTI_P_SideJoined) call CTI_CO_FNC_GetTownsResources);
		_income = call CTI_CL_FNC_GetPlayerIncome;
		_side_income = ((CTI_P_SideJoined) call CTI_CO_FNC_GetTownsResources) * CTI_TOWNS_INCOME_RATIO;
		_timeleft = missionNamespace getVariable "CTI_ECONOMY_TIME";
		_supply_eta_txt = format [" Resource Drop: %1's | SV: %2 | Cash: $%3 / $%4", _timeleft, _supply_in, _income,_side_income];


		((uiNamespace getVariable "cti_title_capture") displayCtrl 601002) ctrlSetText format["%1 | $ %2 | %3 S | %4%5 HP", CTI_P_SideJoined, call CTI_CL_FNC_GetPlayerFunds, _supply, round(100 - (getDammage player * 100)), "%"];
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601002) ctrlSetTextColor [1,1,1,1];
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601003) ctrlSetText format["MHQ: %1 |  Factories: %2 |  Fobs: %3/%4 | %5/%6 | Com: %7",_alivehq,_factories, _fobs, CTI_BASE_FOB_MAX, _fobslarge, CTI_BASE_LARGE_FOB_MAX, _commander];
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601003) ctrlSetTextColor [0.859,1,0.867,1];
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601006) ctrlSetText _supply_eta_txt;
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601006) ctrlSetTextColor [0.624,1,0.643,1];
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601004) ctrlSetText _upgrade_txt;
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601004) ctrlSetTextColor [0.859,1,0.867,1];
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601005) ctrlSetText format["Server: %1 | Headless Client: %2 | Client: %3", CTI_P_ServerFPS, CTI_P_HeadlessClientFPS, round diag_fps];
		((uiNamespace getVariable "cti_title_capture") displayCtrl 601005) ctrlSetTextColor [0.733,0.733,0.733,1];
	};

	if (isNull (uiNamespace getVariable "cti_title_capture") && isNull (uiNamespace getVariable "cti_title_coin")) then {
		600200 cutRsc["CTI_CaptureBar","PLAIN",0];
	};



	if (_update) then {

	_sideID = _nearest getVariable "cti_town_sideID";
	_curSV = _nearest getVariable "cti_town_sv";
	_maxSV = _nearest getVariable "cti_town_sv_max";
	_town_camps_total = count((_nearest) call CTI_CO_FNC_GetTownCamps);
	_town_camps_side = count([_nearest, CTI_P_SideJoined] call CTI_CO_FNC_GetTownCampsOnSide);
	_town_groups_alive = count((_nearest) call CTI_CO_FNC_GetTownGroupsAlive);
	_town_units_alive = count((_nearest) call CTI_CO_FNC_GetTownGroupsUnitsAlive);
	_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;

	_towns_near = [getPos player, CTI_Towns, CTI_UI_TOWNS_PROGRESSBAR_DISTANCE*3] call CTI_CO_FNC_GetEntitiesInRange;
	_camps = [];
	{_camps = _camps + (_x call CTI_CO_FNC_GetTownCamps)} forEach _towns_near;
	_camp = [player, _camps] call CTI_CO_FNC_GetClosestEntity;

	if (!isNull _camp && _camp distance player < CTI_TOWNS_CAMPS_CAPTURE_RANGE) then {
		_sideID = _camp getVariable "cti_camp_sideID";
		_curSV = _camp getVariable "cti_camp_sv";
		if (_lastCheck isEqualTo "Town") then {_delay = 0};
		_txt = "";
		_lastCheck = "Camp";
	} else {
		if (_upgrades select CTI_UPGRADE_SATELLITE > 0 && [CTI_P_SideJoined, CTI_SATELLITE] call CTI_CO_FNC_HasStructure) then {
			_txt = Format ["Town SV: %1/%2 | %3/%4 | Squads: %5 , Units: %6",_curSV,_maxSV,_town_camps_side,_town_camps_total, _town_groups_alive, _town_units_alive];
			_lastCheck = "Town";	
		} else {
			_txt = Format ["Town SV: %1/%2 | %3/%4",_curSV,_maxSV,_town_camps_side,_town_camps_total];
			_lastCheck = "Town";
		};
	};

	if !(_sideID isEqualTo _lastSID) then {_delay = 0};

	if !(isNull (uiNamespace getVariable "cti_title_capture")) then {

		_barColor = switch (_sideID) do {
			case CTI_WEST_ID: {_colorBlue};
			case CTI_EAST_ID: {_colorRed};
			case CTI_RESISTANCE_ID: {_colorGreen};
			default {_colorGreen};
		};
		
		if (missionNamespace getVariable "CTI_TOWNS_PEACE" > 0) then {
			if (time < (_nearest getVariable "cti_town_peace")) then { _barColor = _colorYellow; }; //--- Peace mode is enabled
		};

		_control = (uiNamespace getVariable "cti_title_capture") displayCtrl 601000;
		_control ctrlShow true;
		_control ctrlSetTextColor _barColor;
		_textControl = (uiNamespace getVariable "cti_title_capture") displayCtrl 601001;
		_textControl ctrlShow true;
		_textControl ctrlSetText _txt;
		_control progressSetPosition (_curSV / _maxSV);
		_control ctrlCommit _delay;
		
		_delay = 4;
		_lastSID = _sideID;
	};

	} else {

		_delay = 0;
		if (!isNull (uiNamespace getVariable "cti_title_capture")) then {
			{((uiNamespace getVariable "cti_title_capture") displayCtrl _x) ctrlShow false} forEach [601000,601001];
		};

	};

	sleep 5;
};