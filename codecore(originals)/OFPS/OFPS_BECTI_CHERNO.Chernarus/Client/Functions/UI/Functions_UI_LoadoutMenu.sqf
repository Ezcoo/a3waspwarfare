//CUSTOM LOADOUT FUNCTIONS

//DIALOG UI Elements
//Dialog idd 790000
//Unit Title : 790002
//Unit Info : 790003
//PylonTitle 790004
//PylonList 790005
//AmmoListTitle 790006
//AmmoList 790007
//AmmoStatTitle 790008
//AmmoStat 790009
//Qty 790010
//Flares 790011
//Camo 790111
//RePrice 790012
//Price 790013
//Clear 790014
//Rearm 790015
//Purchase 790016
//Exit 790017
//Music 790018
//Cur Mag Title 790019
//Cur Mag List 790020
//Status Area 790021
//status bar 790024

//Update Main unit title
CTI_UI_Loadout_UpdateMode = {
	_mode = "Test";
	switch (CTI_VEHICLES_LOADOUTS) do {
		case 0: {
			_mode = "Disabled";
		};
		case 1: {
			_mode = "Realistic Mode";
		};
		case 2: {
			_mode = "Unlocked Mode";
		};
	};
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790004) ctrlSetStructuredText (parseText format["<t color='#2b76a5'>Loadout System<t> <t color='#8a8b8d'> (%1) <t>", _mode]);
};
CTI_UI_Loadout_UpdateTitle = {
	_unit = _this;
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_classname = typeOf _unit;
	_unitname = getText(configFile >> 'CfgVehicles' >> _classname >> 'displayName');
	_unithealth = format	["<t color='#00ff00' size='0.7'><img image='A3\ui_f\data\IGUI\Cfg\Actions\heal_ca.paa' size='0.5'/>%1</t>", ceil( (1- getDammage	( _unit))*100)];
	_maxFuel = getNumber (configfile >> "CfgVehicles" >> typeof _unit >> "fuelCapacity");
	_currentFuel = _maxFuel * (fuel _unit);
	//set unit name
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790002) ctrlSetStructuredText (parseText format["<t color='#3EE312'>%1<t><br /> <t color='#FFFFFF' size='0.7'>%2 | %3/%4 <t>", _unitname, _unithealth, _currentFuel, _maxFuel]);
};
//Update Main unit Description and stats
CTI_UI_Loadout_UpdateDescription = {
	_unit = _this;
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_classname = typeOf _unit;
	_validPylons = (("isClass _x" configClasses (configfile >> "CfgVehicles" >> typeof _unit >> "Components" >> "TransportPylonsComponent" >> "Pylons")) apply {configname _x});
	
	_turretlist = [];
	_maglist = [];
	_pathlist = [];
	_countlist = [];
	_typelist = [];
	{ 
		_turrets = getArray (_x >> "weapons"); 
		if ( count _turrets > 0 ) then {
			{
				_turretlist pushback _x;	
			} forEach _turrets;
		};
		//_turretlist pushback _turrets;
		_magsfull = magazinesAllTurrets _unit;
		{
			_maglist pushback (_x select 0);
			_pathlist pushback (_x select 1);
			_countlist pushback (_x select 2);	
		} forEach _magsfull;	
		_typelist pushback "Turret";	
	} forEach ([_unit, configNull] call BIS_fnc_getTurrets);		


	//Update Stat rows - 790003
	lnbClear 790003;	
	lnbAddRow [790003, ["Mounts: ", format ["%1", str (count _validPylons)]]];
	//lnbAddRow [790003, ["Turrets: ", format ["%1", _turretlist joinString " | "]]];
	//lnbAddRow [790003, ["Magazines: ", format ["%1", _maglist joinString " | "]]];
	//lnbAddRow [790003, ["Count: ", format ["%1", _countlist joinString " | "]]];
	//lists all mags and ammo counts --- gets a bit long...
	/*_magazinesAmmo = magazinesAmmo _unit;
	{
		_magclass = _x select 0;
		_ammocount = _x select 1;
		lnbAddRow [790003, [format ["%1 : ", _magclass], format ["%1", _ammocount]]];
	} forEach _magazinesAmmo;*/
	lnbAddRow [790003, ["Max speed: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'maxSpeed'))]];
	lnbAddRow [790003, ["Brake Dist: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'brakeDistance'))]];
	lnbAddRow [790003, ["Capacity: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'transportSoldier'))]];
	lnbAddRow [790003, ["Max load: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'maximumLoad'))]];
	lnbAddRow [790003, ["Armor: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'armor'))]];
	lnbAddRow [790003, ["Structural: ", str (getNumber (configFile >> 'CfgVehicles' >> _classname >> 'armorStructural'))]];

};
CTI_UI_Loadout_inittemplates = {

	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitvalidturretmaglist"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitvalidturretmaglist",[]]; 
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretselected"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitturretselected",[]]; 
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitlvosseraselected"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitlvosseraselected",[]]; 
	};
	//set ui plyon mag list
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitpylonselected"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitpylonselected",[]];
	};
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmaglist",[]];
	//selected pylon valid mag list
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitvalidmaglist",[]];
	//selected magazine
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedmag"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedmag",[]];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedmag"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedmag",[]];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosseramag"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedlvosseramag",[]];
	};	
	//selected purchase ["_veh","_pylonName","_mag","_finalAmount","_magDispName","_pylonName"]
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedpurchase",[]];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedturretpurchase",[]];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedlvosserapurchase",[]];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_purchasetype"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_purchasetype",[]];
	};	
	//systemchat format ["SAVE: %1 | %2 | %3 | %4",typeOf _unit,_validPylons,_activePylonMags,_activePylonMagsCount];
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_flarelist"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_flarelist",[]];
	};
	//reset camo list on load
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_camolist",[]];
	if (isNil {_this getVariable "cti_unit_camo"}) then {
		_this setVariable ["cti_unit_camo", "Default", true];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_price"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_price", 0];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_currentmagexchange"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmagexchange", 0];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_rearmprice"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_rearmprice", 0];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_clearmagprice"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_clearmagprice", 0];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_clearmag"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_clearmag", []];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_clearprice"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_clearprice", 0];
	};	
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_currentmags"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmags", [0,1]];
	};		
	if (isNil {_this getVariable "cti_unit_loadout_lastinstall"}) then {
		_this setVariable ["cti_unit_loadout_lastinstall", [], true];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", 0];
	} else{
		//clear credits on load
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", 0];
	};
	if (isNil {uiNamespace getVariable "cti_dialog_ui_loadoutmenu_music"}) then {
		uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_music", 0];
	};
};
//save and set main loadout variables
CTI_UI_Loadout_savetemplates = {
	_unit = _this;
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_classname = typeOf _unit;
	
	//Pylons
	_activePylonMags = GetPylonMagazines _unit;//skip pylons
	_validPylons = (("isClass _x" configClasses (configfile >> "CfgVehicles" >> typeof _unit >> "Components" >> "TransportPylonsComponent" >> "Pylons")) apply {configname _x});

	_activePylonMagsCount = [];
	_typepylonlist = [];
	{
		_ammoCount = _unit ammoOnPylon _x;
		_activePylonMagsCount pushback _ammoCount;
		_typepylonlist pushback "Pylon";
	} forEach _validPylons;	
	
	_turretlist = (_unit) call CTI_UI_Loadout_getArms;

	//set all pylonlist
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitpylonlist",_validPylons]; //array of pylon strings
	//set all active pylon mags
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitpylonmaglist",_activePylonMags]; //array of pylon mag strings
	//set all Turretlist
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitturretlist",_turretlist]; //array of turret strings
	//set all pylonlist [unitobj, pylonid, pylon mags, ammocount]
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitpylonfull",[_validPylons,_activePylonMags,_activePylonMagsCount]];//set master list
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_weaponsfull",[_turretlist,[_validPylons,_activePylonMags,_activePylonMagsCount]]]; //array of turret strings	
	//set unit variables
	_this setVariable ["cti_unit_loadout_lastinstall", [_turretlist,[_validPylons,_activePylonMags,_activePylonMagsCount]], true];

};
CTI_UI_Loadout_getSource = {
	_unit = _this;

	//--- Retrieve the current structures
	_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;

	//--- Check for ammo factory
	_availables = [CTI_AMMO, _structures, _unit, CTI_SERVICE_AMMO_DEPOT_RANGE] call CTI_CO_FNC_GetSideStructuresByType;

	//--- Check for Ammo Truck
	_closest_list = [];
	_ammotruck = [_unit, CTI_SPECIAL_AMMOTRUCK, CTI_SERVICE_AMMO_TRUCK_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles;
	if (count _ammotruck > 0) then {_closest_list pushBack (_ammotruck select 0)};
	if (count _closest_list > 0) then {
		_ammoobj = [_unit, _closest_list] call CTI_CO_FNC_GetClosestEntity;
		_availables pushBack _ammoobj;
	};

	//--- Check for depot
	_depot = [_unit, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
	if (!(isNull _depot) && CTI_Base_DepotInRange) then {_availables pushBack _depot};

	//--- Check for naval depot
	_naval_depot = [_unit, CTI_P_SideID] call CTI_CO_FNC_GetClosestNavalDepot;
	if (!(isNull _naval_depot) && CTI_Base_NavalDepotInRange) then {_availables pushBack _naval_depot};
	
	//--- Check for large FOB
	_large_fob = [_unit, CTI_P_SideID] call CTI_CO_FNC_GetClosestLargeFOB;
	if (!(isNull _large_fob) && CTI_Base_LargeFOBInRange) then {_availables pushBack _large_fob};

	_type = "";
	if (count _availables > 0) then {
		_fetched = [_unit, _availables] call CTI_CO_FNC_GetClosestEntity;
		
		_var = _fetched getVariable "cti_structure_type";
		if !(isNil '_var') then {
			_var = missionNamespace getVariable format ["CTI_%1_%2", CTI_P_SideJoined, _var];
			_type = (_var select CTI_STRUCTURE_LABELS) select 0;
			_index = switch (_type) do {
				case CTI_BARRACKS: {CTI_FACTORY_BARRACKS};
				case CTI_LIGHT: {CTI_FACTORY_LIGHT};
				case CTI_HEAVY: {CTI_FACTORY_HEAVY};
				case CTI_AIR_ROTARY: {CTI_FACTORY_AIR_ROTARY};
				case CTI_AIR_FIXED: {CTI_FACTORY_AIR_FIXED};
				case CTI_REPAIR: {CTI_FACTORY_REPAIR};
				case CTI_AMMO: {CTI_FACTORY_AMMO};
				case CTI_NAVAL: {CTI_FACTORY_NAVAL};
				default {-1};
			};
		} else {			
			if !(isNil {_fetched getVariable "cti_depot"}) then {
				_index = CTI_FACTORY_DEPOT;
				_type = CTI_DEPOT;
				if !(isNil {(_fetched getVariable "cti_depot") getVariable "cti_naval_depot"}) then {
					_index = CTI_FACTORY_DEPOT;
					_type = CTI_DEPOT_NAVAL;
				};
			};
			if !(isNil {_fetched getVariable "cti_large_fob"}) then {
				_index = CTI_FACTORY_DEPOT;//use depot index instead CTI_FACTORY_LARGE_FOB
				_type = CTI_LARGE_FOB;
			};
			if !(isNil {_fetched getVariable "cti_spec"}) then {
				_type = CTI_AMMO_TRUCK;
			};	
		};
	};
	//systemChat format["CLOSEST: %1", _type];

	_type

};

CTI_UI_Purchase_CheckOrdinanceAvailability = {
	private ["_mag_class"];
	_currentsource = _this select 0;
	_mag_class = _this select 1;
	_unit_available = false;

	_magvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_mag_class];
	if !(isNil "_magvar") then {
		_mag_enabled = _magvar select CTI_AMMO_ENABLED;
		_mag_name = _magvar select CTI_AMMO_NAME;
		_mag_type = _magvar select CTI_AMMO_TYPE;
		_mag_class = _magvar select CTI_AMMO_CLASSNAME;
		_mag_location = _magvar select CTI_AMMO_LOCATION;
		_mag_upgrade = _magvar select CTI_AMMO_UPGRADE;
		_mag_price = _magvar select CTI_AMMO_PRICE;
		_mag_time = _magvar select CTI_AMMO_TIME;
		_mag_filters = _magvar select CTI_AMMO_FILTERS;

		if (_mag_enabled) then { //--- Add if item enabled
			_unit_source = "";
			_unit_type = "";
			_unit_lvl = 0;

			//check gear upgrade
			{
				_unit_source_temp = "";
				_unit_type_temp = "";
				_unit_lvl_temp = 0;
				_count = 0;
				switch (typeName _x) do {
					case "STRING": { 
						_unit_source_temp = _x;
						_unit_type_temp = "ordinance";
						_unit_lvl_temp = _mag_upgrade;
						if (_x isEqualTo "All") then {
							_unit_source_temp = "All";
						};
						if (_x isEqualTo "External") then {
							_unit_source_temp = "External";
						};						
					};
					case "ARRAY": { 
						//check to source
						_count = count _x;
						_unit_source_temp = _x select 0;
						_unit_type_temp = _x select 1;
						if (_unit_source_temp isEqualTo "All") then {
							_unit_source_temp = "All";
						};
						if (_unit_source_temp isEqualTo "External") then {
							_unit_source_temp = "External";
						};						
						if (_count > 2) then {
							_unit_lvl_temp = _x select 2;
						} else {
							_unit_lvl_temp = _mag_upgrade;
						};
					};
				};
				if (_unit_source_temp isEqualTo _currentsource) then {
					_unit_source = _unit_source_temp;
					_unit_type = _unit_type_temp;
					_unit_lvl = _unit_lvl_temp;						
				};
				if (_unit_source_temp isEqualTo "All") then {
					_unit_source = _unit_source_temp;
					_unit_type = _unit_type_temp;
					_unit_lvl = _unit_lvl_temp;					
				};
				if (_unit_source_temp isEqualTo "External" && !(_currentsource isEqualTo CTI_AMMO)) then {
					_unit_source = _unit_source_temp;
					_unit_type = _unit_type_temp;
					_unit_lvl = _unit_lvl_temp;					
				};
			} foreach _mag_location;		

			_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
			switch (_unit_type) do {
				case "ordinance": {
					_upgrade_lvl = 10;
					if (_mag_type isEqualTo "Land" && CTI_VEHICLES_LAND_ORDINANCE isEqualTo 1) then {
						_upgrade_lvl = _upgrades select CTI_UPGRADE_LAND_ORDINANCE;
					};
					if (_mag_type isEqualTo "Air" && CTI_VEHICLES_AIR_ORDINANCE isEqualTo 1) then {
						_upgrade_lvl = _upgrades select CTI_UPGRADE_AIR_ORDINANCE;
					};
					_unit_available = _unit_lvl <= _upgrade_lvl;
				};
				case "logistics": {
					_unit_available = _unit_lvl <= (_upgrades select CTI_UPGRADE_TOWNS);
				};
				default {_unit_available = false};
			};
			//systemChat format ["Available: %1 | %2 | %3 | %4 | %5", _mag_type, _unit_available, _unit_source, _unit_type, _unit_lvl];
		};
	};

	//--- Return
	_unit_available	
};

CTI_UI_Loadout_getArms = {
	_unit = _this;

	_turretlist = [];/*["cannon_120mm","LMG_coax","HMG_127_MBT","SmokeLauncher"]*/
	_maglist = [];
	_pathlist = [];
	_countlist = [];
	//_typelist = [];
	{ 
		_turrets = getArray (_x >> "weapons"); 

		if ( count _turrets > 0 ) then {
			{
				_turretlist pushback _x;	
			} forEach _turrets;
		};	
	} forEach ([_unit, configNull] call BIS_fnc_getTurrets);	
	
	_magsfull = magazinesAllTurrets _unit;
	{
		_maglist pushback (_x select 0);
		_pathlist pushback (_x select 1);
		_countlist pushback (_x select 2);	
	} forEach _magsfull;	
	//_typelist pushback "Turret";

	_uniquepaths = [];
	{
		if !(_x in _uniquepaths) then {
			_uniquepaths pushBack _x;
		}
	}forEach _pathlist;

	//Pylons
	_activePylonMags = GetPylonMagazines _unit;//skip pylons
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_allCompatiblePylonMags = _unit getCompatiblePylonMagazines 0;
	_allPylonWeapons = [];
	{
		{
			_pylonweapon = getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon");
			if !(isNil '_pylonweapon') then {
				_allPylonWeapons pushBack _pylonweapon;
			};
		}forEach _x;
	}forEach _allCompatiblePylonMags;

	//_uniquepaths = _classname call BIS_fnc_allTurrets;
	//_uniquepaths = allTurrets _unit;
	_turretlist = [];
	{
		_weappath = _x;
		_weapons = _unit weaponsTurret _weappath;
		//_magazines = _unit magazinesTurret _weappath;
		_magazines = magazinesAllTurrets _unit;

		{
			_selectedturret = _x;
			
			//all compatible turret magazine
			_compatiblemags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> "magazines");
			//add subturret magazines
			if ((count getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles")) > 0 ) then {
				{
					_submags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> _x >> "magazines");
					{
						_compatiblemags pushback _x;
					} foreach _submags;
				} foreach getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles");
			};
			_isplyon = false;
			_turretmags = [];
			{
				_magclass = _x select 0;
				_turretpath = _x select 1;
				_ammocount = _x select 2;
				if (_magclass in _compatiblemags && _turretpath isEqualTo _weappath) then {
					_turretmags pushback [_magclass, _ammocount];
					//systemChat format["isplyon: %1 | %2", _magclass, _activePylonMags];
					if (_magclass in _activePylonMags) then {
						_isplyon = true;
					};
				};
			}forEach _magazines;

			if (_selectedturret in _allPylonWeapons) then {
				_isplyon = true;
			};	

			//systemChat format["_weappath: %1 | %2 | %3", _isplyon, _weappath, _selectedturret];
			if !(_isplyon) then {
				_turretlist pushBack [_selectedturret , _turretmags, _weappath];
			};
			
		} forEach _weapons;

	} forEach _uniquepaths;
	//systemChat format["Turrets: %1", _turretlist];
	//copyToClipboard str _turretlist;
		
	/*_pathmags = [];
	_pathcounts = [];
	{
		_pathid = _x;
		{ 
			if (_pathid isEqualTo _x) then {
				_pathmags pushBack (_maglist select _foreachindex);
				_pathcounts pushBack (_countlist select _foreachindex);
			};
		} forEach _pathlist;
	} forEach _uniquepaths;*/
	_turretlist;
};

//Add all valid turrets and pylons
CTI_UI_Loadout_viewAllArms = {
	_unit = _this;
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_classname = typeOf _unit;

	/*_turretlist = [];
	_maglist = [];
	_countlist = [];
	{ 
		_turrets = getArray (_x >> "weapons"); 
		if ( count _turrets > 0 ) then {
			{
				_turretlist pushback _x;	
			} forEach _turrets;
		};
		//_turretlist pushback _turrets;
		_magsfull = magazinesAllTurrets _unit;
		{
			_maglist pushback (_x select 0);
			_countlist pushback (_x select 2);	
		} forEach _magsfull;		
	} forEach ([_unit, configNull] call BIS_fnc_getTurrets);*/
	_turretlist = (_unit) call CTI_UI_Loadout_getArms;
	
	//systemchat format ["getturrets: %1 | %2 | %3",_turretlist, _maglist, _countlist ];
	
	_indexcount = 0;
	//clear list
	lbclear 790005;
	//add turrets
	if !(isNil '_turretlist') then {
		if ((count _turretlist) > 0) then {
			{
				_selectedturret =  _x select 0;
				//_turretmags = _x select 1;
				//_weappath = _x select 2;

				//Block any turret on air unit and is missile/bomb/rocket/etc
				//due to removal/installation complications 
				_isair = _unit isKindOf "Air";
				_ismissle = "LauncherCore" in ([configfile >> "CfgWeapons" >> _selectedturret, true] call BIS_fnc_returnParents); 

				_displayname = getText (configFile >> "CfgWeapons" >> _selectedturret >> "DisplayName");
				if !(_isair && _ismissle || _displayname isEqualTo "Horn") then {
					lbAdd [790005,format ["%1 | %2 ", _foreachindex, _selectedturret]];
					lbsetData [790005,_foreachindex, _selectedturret];
				} else {
					lbAdd [790005,format ["%1 | %2 ", _foreachindex, "Not Supported"]];
					lbsetData [790005,_foreachindex, "disabled"];
				};
			}forEach _turretlist;

			/*{
				_displayname = getText (configFile >> "CfgWeapons" >> _x >> "DisplayName");
				if !(_displayname isEqualTo "Horn") then {
					lbAdd [790005,format ["%1 | %2 ", _foreachindex, _x]];
					lbsetData [790005,_foreachindex, _x];
				};
			} forEach _turretlist;	*/
			playSound "Click";//audio feedback
		} else {
			_hint = "No Valid Weapons";
			lbAdd [790005,format ["%1", _hint]];
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Valid Weapons";
		};
	} else {
		_hint = "No Weapons";
		lbAdd [790005,format ["%1", _hint]];
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Weapons or Magazines";
	};

	//add pylons
	_unitpylonfull = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitpylonfull";
	_validPylons = _unitpylonfull select 0;
	_activePylonMags = _unitpylonfull select 1;
	_activePylonMagsCount = _unitpylonfull select 2;
	if !(isNil '_validPylons') then {
		if ((count _validPylons) > 0) then {
			_indexcount = (count _turretlist);
			{
				lbAdd [790005,format ["%1 | %2 ", _foreachindex+_indexcount, _x, _activePylonMags select _foreachindex, _activePylonMagsCount select _foreachindex]];
				lbsetData [790005,_foreachindex+_indexcount, _x];
			} forEach _validPylons;	
			playSound "Click";//audio feedback
		} else {
			_hint = "No Valid Pylons";
			lbAdd [790005,format ["%1", _hint]];
			//hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Valid Pylons";
		};
	} else {
		_validPylons= 0;
		_hint = "No Pylons";
		lbAdd [790005,format ["%1", _hint]];
		//hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Pylons or Magazines";
	};

	//---Add LVOSS system
	if (CTI_VEHICLES_LVOSS isEqualTo 1) then {
		if (_unit isKindOf "Car") then {
			_indexcount = (count _turretlist) + (count _validPylons);
			lbAdd [790005,format ["%1 | %2 ", _indexcount + 1, "LVOSS Left"]];
			lbsetData [790005,_indexcount + 1, "LVOSS_left"];
			lbAdd [790005,format ["%1 | %2 ", _indexcount + 2, "LVOSS Right"]];
			lbsetData [790005,_indexcount + 2, "LVOSS_right"];
		};
	};
	//---Add ERA system
	if (CTI_VEHICLES_ERA isEqualTo 1) then {
		if (_unit isKindOf "Tank") then {
			_indexcount = (count _turretlist) + (count _validPylons);
			lbAdd [790005,format ["%1 | %2 ", _indexcount + 1, "ERA Left"]];
			lbsetData [790005,_indexcount + 1, "ERA_left"];
			lbAdd [790005,format ["%1 | %2 ", _indexcount + 2, "ERA Right"]];
			lbsetData [790005,_indexcount + 2, "ERA_right"];

		};
	};

};
CTI_UI_Loadout_viewAllCustomizations = {
	_unit = _this;//classname
	//_animationslist = getArray (configfile >> "CfgVehicles" >> _unit >> "animationList");
	_getunitcustom = (_unit) call bis_fnc_getVehicleCustomization;
	_variant = _getunitcustom select 0;
	_customizations = _getunitcustom select 1;
	_price = 250;
	//set customiation variable
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_customization",_customizations];

	//systemChat format["Customizations: %1 | %2", _customizations, (count _customizations)];
	//display options
	if !(isNil '_customizations') then {
		if ((count _customizations) > 0) then {
			{	
				if (typeName _x isEqualTo "STRING") then {
					if(_x isEqualTo "showCamonetTurret") then {
						_price = 500;
					};
					if(_x isEqualTo "showCamonetHull") then {
						_price = 500;
					};
					if(_x isEqualTo "showSLATTurret") then {
						_price = 1000;
					};
					if(_x isEqualTo "showSLATHull") then {
						_price = 2000;
					};
					lbAdd [790025,format ["%1", _x]];
					lbsetData [790025,_foreachIndex,_x];
				} else {
					if (_x isEqualTo 0) then {
						lbAdd [790025,format ["%1", "DISABLED"]];
						lbsetData [790025,_foreachIndex,_x];
						//add price to list
						lbAdd [790025,format ["%1", _price]];
						lbsetData [790025,_foreachIndex,_price];
					} else {
						lbAdd [790025,format ["%1", "INSTALLED"]];
						lbsetData [790025,_foreachIndex,_x];
						//add price to list
						lbAdd [790025,format ["%1", 0]];
						lbsetData [790025,_foreachIndex,0];
					};
				};
			} forEach _customizations;
		} else {
			lbAdd [790025,format ["%1", "No Customizations"]];
			lbsetData [790025,0,0];
			lbAdd [790025,format ["%1", ""]];
			lbsetData [790025,0,0];
			lbAdd [790025,format ["%1", ""]];
			lbsetData [790025,0,0];
		};
	};	
};

CTI_UI_Loadout_UpdateCustomizations = {
	_unit = _this;//classname
	_getunitcustom = (_unit) call bis_fnc_getVehicleCustomization;
	_variant = _getunitcustom select 0;
	_customizations = _getunitcustom select 1;
	_price = 250;

	//Update Stat rows - 790003
	lnbClear 790025;	
	if !(isNil '_customizations') then {
		if ((count _customizations) > 0) then {
			{
				if (typeName _x isEqualTo "STRING") then {
					if(_x isEqualTo "showCamonetTurret") then {
						_price = 500;
					};
					if(_x isEqualTo "showCamonetHull") then {
						_price = 500;
					};
					if(_x isEqualTo "showSLATTurret") then {
						_price = 1000;
					};
					if(_x isEqualTo "showSLATHull") then {
						_price = 2000;
					};					
					lbAdd [790025,format ["%1", _x]];
					lbsetData [790025,_foreachIndex,_x];
				} else {
					if (_x isEqualTo 0) then {
						lbAdd [790025,format ["%1", "DISABLED"]];
						lbsetData [790025,_foreachIndex,_x];
						//add price to list
						lbAdd [790025,format ["%1", format["$%1",_price]]];
						lbsetData [790025,_foreachIndex,_price];
					} else {
						lbAdd [790025,format ["%1", "INSTALLED"]];
						lbsetData [790025,_foreachIndex,_x];
						//add price to list
						lbAdd [790025,format ["%1", format["$%1",0]]];
						lbsetData [790025,_foreachIndex,0];
					};
				};				
			} forEach _customizations;
		} else {
			lbAdd [790025,format ["%1", "No Customizations"]];
			lbsetData [790025,0,0];
			lbAdd [790025,format ["%1", ""]];
			lbsetData [790025,0,0];
			lbAdd [790025,format ["%1", ""]];
			lbsetData [790025,0,0];
		};
	};
};
CTI_UI_Loadout_clearCustomization = {
	_unit = _this select 0;//classname
	_selected = _this select 1;
	//systemChat format["Clear: %1 | %2", _unit, _selected];
	_selected = _selected * 2;
	_enabled = _selected + 1;
	_installtime = 5;

	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	
	_getunitcustom = (_unit) call bis_fnc_getVehicleCustomization;
	_customizations = _getunitcustom select 1;
	_custom_name = _customizations select _selected;
	_new = [];
	{
		if (_foreachIndex isEqualTo _enabled) then {
			_x = 0;
		};
		_new pushBack _x;
	} forEach _customizations;

	//Update progress bar
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	for "_i" from 1 to _installtime do {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			_timeleft = _installtime - (_i - 1);
			(parseText format["Removing Unit Customization - %1 | %2s", _custom_name, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
			_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
			//_pos = progressPosition _controlbar;
			_fraction = 1 / _installtime;
			_pos = _i * _fraction;
			_controlbar progressSetPosition (_pos);
		};
		sleep 1;
	}; 

	//--- https://community.bistudio.com/wiki/Vehicle_Customization_(VhC)
	[
		_unit,
		nil, //variant
		_new //animations
	] call BIS_fnc_initVehicle;
	
	//Notify user
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(parseText format["Unit Customization %1 was removed", _custom_name]) call CTI_UI_Loadout_UpdateStatus;
		(_unit) call CTI_UI_Loadout_UpdateCustomizations;
	};

	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];

};
CTI_UI_Loadout_InstallCustomization = {
	_unit = _this select 0;//classname
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_selected = _this select 1;
	//systemChat format["Buy: %1 | %2", _unit, _selected];
	_selected = _selected * 2;
	_enabled = _selected + 1;
	_installtime = 10;

	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	
	_getunitcustom = (_unit) call bis_fnc_getVehicleCustomization;
	_customizations = _getunitcustom select 1;
	_custom_name = _customizations select _selected;
	_new = [];
	{
		if (_foreachIndex isEqualTo _enabled) then {
			_x = 1;
		};
		_new pushBack _x;
	} forEach _customizations;

	_process = false;
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	for "_i" from 1 to _installtime do {
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			_timeleft = _installtime - (_i - 1);
			(parseText format["Installing Customization - %1 | %2s",_custom_name, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
			_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
			//_pos = progressPosition _controlbar;
			_fraction = 1 / _installtime;
			_pos = _i * _fraction;
			_controlbar progressSetPosition (_pos);
		};

		if (_installtime isEqualTo _i) exitWith {_process = true};
		sleep 1;
	}; 

	if (_process) then {
		//--- https://community.bistudio.com/wiki/Vehicle_Customization_(VhC)
		[
			_unit,
			nil, //variant
			_new //animations
		] call BIS_fnc_initVehicle;
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Unit Customization %1 was installed", _custom_name]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Couldn't finish the Unit Customization %1 was installed", _custom_name]) call CTI_UI_Loadout_UpdateStatus;
		};
	};	
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateCustomizations;
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];
};
CTI_UI_Loadout_viewAllMags = {
	_unit = _this select 0;
	_selectedturret = _this select 1;
	_magclassname = _this select 2;
	_classname = typeOf _unit;
	_source = (_unit) call CTI_UI_Loadout_getSource;
	//all compatible turret magazine
	_compatiblemags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> "magazines");
	//add subturret magazines
	if ((count getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles")) > 0 ) then {
		{
			_submags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> _x >> "magazines");
			{
				_compatiblemags pushback _x;
			} foreach _submags;
		} foreach getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles");
	};

	//Pylons
	_enableall = false;
	if (CTI_VEHICLES_LOADOUTS isEqualTo 2) then {_enableall = true;};
	_getCompatibles = getArray (configfile >> "CfgVehicles" >> _classname >> "Components" >> "TransportPylonsComponent" >> "Pylons" >> _selectedturret >> "hardpoints");
	if (_getCompatibles isEqualTo []) then {
		//darn BI for using "Pylons" and "pylons" all over the place as if it doesnt fucking matter ffs honeybadger
		_getCompatibles = getArray (configfile >> "CfgVehicles" >> _classname >> "Components" >> "TransportPylonsComponent" >> "pylons" >> _selectedturret >> "hardpoints");
	};
	//systemchat format ["getCompatibles: %1 ",_getCompatibles];
	_allPylonMags = ("count( getArray (_x >> 'hardpoints')) > 0" configClasses (configfile >> "CfgMagazines")) apply {configname _x};
	_validPylonMags = _allPylonMags select {!((getarray (configfile >> "CfgMagazines" >> _x >> "hardpoints") arrayIntersect _getCompatibles) isEqualTo [])};
	if (_enableall) then {_validPylonMags = _allPylonMags;};
	_validDispNames = _validPylonMags apply {getText (configfile >> "CfgMagazines" >> _x >> "displayName")};
	_allPylonMagazines = "toUpper (configname _x) find 'PYLON' >= 0" configClasses (configfile >> "CfgMagazines");
	_allPylonMagazinesDispNames = _allPylonMagazines apply {getText (configfile >> "CfgMagazines" >> _magclassname >> "displayName")};

	//clear list
	lbClear 790007;
	//Is it a Turret Mag?
	if !(isNil '_compatiblemags') then {
		if ((count _compatiblemags) > 0) then {
			{
				_is_available = [_source, _x] call CTI_UI_Purchase_CheckOrdinanceAvailability;
				if (_is_available) then {
					lbAdd [790007,format ["%1 ", getText (configfile >> "CfgMagazines" >> _x >> "displayName")]];
					lbsetData [790007,_foreachIndex,_x];
				};
			} forEach _compatiblemags;
			playSound "Click";//audio feedback
		} else {
			_hint = "No Valid Mags";
			lbAdd [790007,format ["%1", _hint]];
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Valid Magazines";
		};
	} else {
		_hint = "No Mags";
		lbAdd [790007,format ["%1", _hint]];
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Magazines";
	};	
	//Is it a Pylon Mag?
	if !(isNil '_validPylonMags') then {
		if ((count _validPylonMags) > 0) then {
			{
				_is_available = [_source, _x] call CTI_UI_Purchase_CheckOrdinanceAvailability;
				if (_is_available) then {
					lbAdd [790007,format ["%1 ", _validDispNames select _foreachIndex]];
					lbsetData [790007,_foreachIndex,_x];
				};
			} forEach _validPylonMags;
			playSound "Click";//audio feedback
		} else {
			_hint = "No Valid Mags";
			lbAdd [790007,format ["%1", _hint]];
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Valid Magazines";
		};
	} else {
		_hint = "No Mags";
		lbAdd [790007,format ["%1", _hint]];
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Magazines";
	};	

	playSound "Click";

};
CTI_UI_Loadout_viewTurretMags = {
	_unit = _this select 0;
	_turret = _this select 1;
	_selectedturret = _turret select 0;
	_selectedturretmags = _turret select 1;
	_selectedturretpath = _turret select 2;
	_classname = typeOf _unit;
	_source = (_unit) call CTI_UI_Loadout_getSource;

	_isair = _unit isKindOf "Air";
	_ismissle = "LauncherCore" in ([configfile >> "CfgWeapons" >> _selectedturret, true] call BIS_fnc_returnParents); 

	_compatiblemags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> "magazines");
	//add subturret magazines
	if ((count getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles")) > 0 ) then {
		{
			_submags = getArray (configfile >> "CfgWeapons" >> _selectedturret >> _x >> "magazines");
			{
				_compatiblemags pushback _x;
			} foreach _submags;
		} foreach getArray (configfile >> "CfgWeapons" >> _selectedturret >> "muzzles");
	};
	//get all setHit
	//_allturrets = getArray (configfile >> "CfgWeapons" >> _x);
	_finalcompatiblemags = [];
	lbClear 790007;
	//TODO: add check for magazine prices
	if !(isNil '_compatiblemags') then {
		if !(_isair && _ismissle) then {
			if ((count _compatiblemags) > 0) then {
				_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
				{	
					_is_available = [_source, _x] call CTI_UI_Purchase_CheckOrdinanceAvailability;
					if (_is_available) then {
						_hasName = getText (configfile >> "CfgMagazines" >> _x >> "displayName");
						if (_hasName isEqualTo "") then {_hasName = getText(configFile >> 'CfgMagazines' >> _x >> 'ammo')};
						lbAdd [790007,format ["%1", _hasName]];
						lbsetData [790007,_foreachIndex,_x];
					} else {
						_hasName = getText (configfile >> "CfgMagazines" >> _x >> "displayName");
						if (_hasName isEqualTo "") then {_hasName = getText(configFile >> 'CfgMagazines' >> _x >> 'ammo')};
						lbAdd [790007,format ["NOT AVAIL - %1", _x]];
						lbsetData [790007,_foreachIndex,"blocked"];
					};
					_finalcompatiblemags pushBack _x;							
				} forEach _compatiblemags;
				playSound "Click";//audio feedback
			} else {
				_hint = "No Valid Mags";
				lbAdd [790007,format ["%1", _hint]];
				hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Valid Magazines";
			};
		} else {
			_hint = "Weapon Not Supported";
			lbAdd [790007,format ["%1", _hint]];
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />Weapon Not Supported";
		};
	} else {
		_hint = "No Mags";
		lbAdd [790007,format ["%1", _hint]];
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Magazines";
	};	
	//copyToClipboard str _compatiblemags;//OUTPUT ALL MAGS
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitturretselected",[_selectedturret,_selectedturretmags,_selectedturretpath]];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitvalidturretmaglist",_finalcompatiblemags];
	playSound "Click";

};
//View all compatible Magazines for associated pylon
CTI_UI_Loadout_viewMags = {
	_unit = _this select 0;
	_pylon = _this select 1;
	_magclassname = _this select 2;
	_classname = typeOf _unit;
	_source = (_unit) call CTI_UI_Loadout_getSource;
	
	_enableall = false;
	if (CTI_VEHICLES_LOADOUTS isEqualTo 2) then {_enableall = true;};
	_getCompatibles = getArray (configfile >> "CfgVehicles" >> _classname >> "Components" >> "TransportPylonsComponent" >> "Pylons" >> _pylon >> "hardpoints");
	if (_getCompatibles isEqualTo []) then {
		//darn BI for using "Pylons" and "pylons" all over the place as if it doesnt fucking matter ffs honeybadger
		_getCompatibles = getArray (configfile >> "CfgVehicles" >> _classname >> "Components" >> "TransportPylonsComponent" >> "pylons" >> _pylon >> "hardpoints");
	};
	//systemchat format ["getCompatibles: %1 ",_getCompatibles];
	_allPylonMags = ("count( getArray (_x >> 'hardpoints')) > 0" configClasses (configfile >> "CfgMagazines")) apply {configname _x};
	_validPylonMags = _allPylonMags select {!((getarray (configfile >> "CfgMagazines" >> _x >> "hardpoints") arrayIntersect _getCompatibles) isEqualTo [])};
	if (_enableall) then {_validPylonMags = _allPylonMags;};
	_validDispNames = _validPylonMags apply {getText (configfile >> "CfgMagazines" >> _x >> "displayName")};
	_allPylonMagazines = "toUpper (configname _x) find 'PYLON' >= 0" configClasses (configfile >> "CfgMagazines");
	_allPylonMagazinesDispNames = _allPylonMagazines apply {getText (configfile >> "CfgMagazines" >> _magclassname >> "displayName")};
	//TODO: add check for magazine prices
	lbClear 790007;
	if !(isNil '_validPylonMags') then {
		if ((count _validPylonMags) > 0) then {
			_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
			{
				_is_available = [_source, _x] call CTI_UI_Purchase_CheckOrdinanceAvailability;
				if (_is_available) then {
					lbAdd [790007,format ["%1 ", _validDispNames select _foreachIndex]];
					lbsetData [790007,_foreachIndex,_x];
				} else {
					lbAdd [790007, format ["NOT AVAIL - %1", _validPylonMags select _foreachIndex]];
					lbsetData [790007,_foreachIndex,"blocked"];	
				};

			} forEach _validPylonMags;
			playSound "Click";//audio feedback
		} else {
			_hint = "No Valid Mags";
			lbAdd [790007,format ["%1", _hint]];
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Valid Magazines";
		};
	} else {
		_hint = "No Mags";
		lbAdd [790007,format ["%1", _hint]];
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No Magazines";
	};	
	//copyToClipboard str _validPylonMags;//OUTPUT ALL MAGS
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitpylonselected",[_pylon]];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitvalidmaglist",_validPylonMags];
	playSound "Click";

};
CTI_UI_Loadout_viewLvossEraMags = {
	_unit = _this select 0;
	_data = _this select 1;
	_type = "";
	_side = "";
	if(_data isEqualTo "LVOSS_left" || _data isEqualTo "LVOSS_right") then {
		_type = "LVOSS";
		if(_data isEqualTo "LVOSS_left") then {
			_side = "left";
		} else {
			_side = "right";
		};
	};
	if(_data isEqualTo "ERA_left" || _data isEqualTo "ERA_right") then {
		_type = "ERA";
		if(_data isEqualTo "ERA_left") then {
			_side = "left";
		} else {
			_side = "right";
		};		
	};

	lbClear 790007;
	//TODO: add check for magazine prices
	if (_type isEqualTo "LVOSS" || _type isEqualTo "ERA") then {
		lbAdd [790007,format ["%1 mag", _type]];
		lbsetData [790007,0,format["%1_%2",_type,_side]];
		playSound "Click";//audio feedback

	} else {
		_hint = "No LVOSS or ERA";
		lbAdd [790007,format ["%1", _hint]];
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />No LVOSS or ERA";
	};	

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_unitlvosseraselected",[_type,_side]];
	playSound "Click";

};
//Update sale price in UI
CTI_UI_Loadout_UpdateMagTitle = {
	_currentmags = _this select 0;
	_currentmax = _this select 1;

	//set current mags variable
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmags", [_currentmags,_currentmax]];

	//set title and counts
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790019) ctrlSetStructuredText (parseText format["<t color='#2b76a5'>Current Mag(s) </t><t color='#3EE312'>%1/%2</t>", _currentmags, _currentmax]);

};
//Display selected Turret Magazines
CTI_UI_Loadout_viewCurrentTurretMag = {
	_unit = _this select 0;
	_curmagturret = _this select 1;

	_weaponvar = missionNamespace getVariable format["CTI_Weapon_%1_%2",CTI_P_SideJoined,_curmagturret];
	_mag_name = "";
	_weaponclass = nil;
	_weaponmax = 1;
	if !(isNil "_weaponvar") then {
		_enabled = _weaponvar select CTI_WEAPON_ENABLED;
		_weapon_name = _weaponvar select CTI_WEAPON_NAME;
		_weaponclass = _weaponvar select CTI_WEAPON_CLASSNAME;
		_weaponmax = _weaponvar select CTI_WEAPON_MAXMAGS;
	};	

	_turretlist = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretlist");
	//systemChat format["view: %1", _turretlist];
	_curmags = [];
	{
		_selectedturret =  _x select 0;
		_turretmags = _x select 1;
		_weappath = _x select 2;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			if (_curmagturret isEqualTo _selectedturret) then {
				_curmags pushBack [false, _selectedturret, _weappath, _magclass, _ammocount];
			};
		}forEach _turretmags;
	}forEach _turretlist;
	//systemChat format["curmags: %1", _curmags];

	//_curmags = _unit magazinesTurret _path;
	lnbClear 790020;
	if(count _curmags > 0) then {
		{
			_ispylon = _x select 0;
			_selectedturret = _x select 1;
			_selectedpath = _x select 2;
			_selectedmag = _x select 3; 
			_selectedcount = _x select 4;	
			//lnbAddRow [790020, [format["%1 | %2", _x select 1, _x select 0]]];
			//systemChat format["magcur | %1", _x];
			lbAdd [790020,format["%1 | %2", _selectedcount, _selectedmag]];
			lbsetData [790020,_foreachindex, _selectedturret, _selectedpath, _selectedmag, _selectedcount];
		} forEach _curmags;	
	} else {
		lnbAddRow [790020, ["No Mags "]];
	};
	_current_mag_count = (count _curmags);
	//return 0 count if mag empty
	if ((count _curmags) isEqualTo 1 && ((_curmags select 0) select 4 isEqualTo 0)) then {
		_current_mag_count = 0;
	};

	[_current_mag_count,_weaponmax] call CTI_UI_Loadout_UpdateMagTitle;

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmaglist",_curmags];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmagexchange",0];
	playSound "Click";
	
};
//Display selected Pylon Magazines
CTI_UI_Loadout_viewCurrentPylonMag = {
	_unit = _this select 0;
	_selectedpylon = _this select 1;
	_selectedmag = _this select 2; 
	_selectedcount = _this select 3;

	_ammoclass = getText(configFile >> 'CfgMagazines' >> _selectedmag >> 'ammo');
	_ammoclassvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
	_mag_price = 0;
	if !(isNil "_ammoclassvar") then {
		_mag_price = _ammoclassvar select CTI_AMMO_PRICE;
	};
	_mag_price_final = _selectedcount * _mag_price;

	_name = getText(configFile >> 'CfgMagazines' >> _selectedmag >> 'displayName');
	//systemchat format ["_curmagclass: %1 | %2",_name, _curmagclass];
	lnbClear 790020;
	_curmags = 0;
	_allcurrent = [];
	if(_selectedmag isEqualTo "") then {
		lnbAddRow [790020, ["No Mags "]];	
		_curmags = 0;
	} else {
		//lnbAddRow [790020, [format["%1 | %2", _selectedcount, _name]]];
		lbAdd [790020,format["%1 | %2", _selectedcount, _selectedmag]];
		lbsetData [790020,_foreachindex,  _selectedpylon,  _selectedmag,  _selectedcount];
		_allcurrent pushBack [true, _selectedpylon,  _selectedmag,  _selectedcount];
		_curmags = 1;
	};
	_current_mag_count = _curmags;
	//return 0 count if mag empty
	if (_curmags isEqualTo 1 && _selectedcount isEqualTo 0) then {
		_current_mag_count = 0;
	};

	[_current_mag_count,1] call CTI_UI_Loadout_UpdateMagTitle;

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmaglist",_allcurrent];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmagexchange",_mag_price_final];
	playSound "Click";
	
};

//Display selected Pylon Magazines
CTI_UI_Loadout_viewCurrentLvossEraMag = {
	_unit = _this select 0;
	_data = _this select 1;
	_type = "";
	_side = "";
	if(_data isEqualTo "LVOSS_left" || _data isEqualTo "LVOSS_right") then {
		_type = "LVOSS";
		if(_data isEqualTo "LVOSS_left") then {
			_side = "left";
		} else {
			_side = "right";
		};
	};
	if(_data isEqualTo "ERA_left" || _data isEqualTo "ERA_right") then {
		_type = "ERA";
		if(_data isEqualTo "ERA_left") then {
			_side = "left";
		} else {
			_side = "right";
		};		
	};
	_ammoside = 0;
	if (_side isEqualTo "left") then {
		_ammoside = _unit getVariable "ammo_left";
		if (isNil "_ammoside") then {_ammoside = 0};
	} else {
		_ammoside = _unit getVariable "ammo_right";
		if (isNil "_ammoside") then {_ammoside = 0};
	};

	lnbClear 790020;
	if (_unit isKindOf "Car") then {
		lnbAddRow [790020, [format["%1 | LVOSS",_ammoside]]];
	};
	if (_unit isKindOf "Tank") then {
		lnbAddRow [790020, [format["%1 | ERA",_ammoside]]];
	};
	_curmags = 0;
	if (_ammoside > 0) then {_curmags = 1;};

	_current_mag_count = _curmags;
	//return 0 count if mag empty
	if (_curmags isEqualTo 1 && _ammoside isEqualTo 0) then {
		_current_mag_count = 0;
	};

	[_current_mag_count,1] call CTI_UI_Loadout_UpdateMagTitle;

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_currentmagexchange",0];
	playSound "Click";
	
};
//Display selected Magazines Stats and update UI
CTI_UI_Loadout_viewMagStats = {
	_magclass = _this;
	_pylonName = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitpylonselected") select 0;

	_unitpylonfull = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitpylonfull";
	_validPylons = _unitpylonfull select 0;
	_pylonNum = 0;
	{
		if (_x isEqualTo _pylonName) then {_pylonNum = _foreachindex};
	} foreach _validPylons;

	_magDispName = getText (configfile >> "CfgMagazines" >> _magclass >> "displayName");
	_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
	_ammoupgrade = 0;
	_ammoprice = 0;
	_ammotime = 0;	
	//systemchat format ["_ammoclass: %1",_ammoclass];
	//get ammo class from list
	_ammo_var = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
	//systemchat format ["_ammoclass2: %1 | %2 | %3 | %4", _magclass, _ammoprice, _ammoupgrade, _ammotime];
	if (isNil "_ammo_var") then {
		_ammoprice = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'cost');
	} else {
		_ammoupgrade = _ammo_var select CTI_AMMO_UPGRADE;
		_ammoprice = _ammo_var select CTI_AMMO_PRICE;
		_ammotime = _ammo_var select CTI_AMMO_TIME;
	};
	
	_maxAmount = getNumber (configfile >> "CfgMagazines" >> _magclass >> "count");
	_setAmount = if (count (ctrlText 790010) > 0) then {call compile (ctrlText 790010)} else {_maxAmount};
	//systemchat format ["ct: %1 %2",_setAmount, _maxAmount];
	_finalAmount = _setAmount min _maxAmount;

	//systemchat format ["selected: %1 | %2 | %3 | %4 ",_pylonName,_magclass,_finalAmount,_magDispName];
	_ammostat_fuseDistance = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'fuseDistance');
	_ammostat_hit = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'hit');
	_ammostat_htmax = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'htMax');
	_ammostat_htmin = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'htMin');
	_ammostat_maxspeed = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'maxSpeed');
	_ammostat_maxdist = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'missileLockMaxDistance');

	//clear Quantity
	ctrlSetText [790010, ""];

	//Magazine Stats
	lnbClear 790009;
	lnbAddRow [790009, ["Name: ", getText(configFile >> 'CfgMagazines' >> _magclass >> 'displayName')]];
	lnbAddRow [790009, ["Ammo: ", str (_ammoclass)]];
	lnbAddRow [790009, ["Max qty: ", str (_maxAmount)]];
	lnbAddRow [790009, ["Price: ", str (_ammoprice)]];
	lnbAddRow [790009, ["Reload Time: ", str (_ammotime)]];
	lnbAddRow [790009, ["Mass: ", str (getNumber(configFile >> 'CfgMagazines' >> _magclass >> 'mass'))]];
	
	lnbAddRow [790009, ["fuseDistance: ", str (_ammostat_fuseDistance)]];
	lnbAddRow [790009, ["hit: ", str (_ammostat_hit)]];
	lnbAddRow [790009, ["htmax: ", str (_ammostat_htmax)]];
	lnbAddRow [790009, ["htmin: ", str (_ammostat_htmin)]];
	lnbAddRow [790009, ["maxspeed: ", str (_ammostat_maxspeed)]];
	lnbAddRow [790009, ["maxdist: ", str (_ammostat_maxdist)]];

	//set final pylon selected
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedmag", _magclass];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedpurchase", [_pylonNum,_pylonName,_magclass,_maxAmount,_maxAmount,_magDispName]];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_purchasetype", "pylon"];
	//update qty and price
	[_magclass, _maxAmount, _pylonName] call CTI_UI_Loadout_magazineQty;
	//enable button
	ctrlEnable [790016, true];//purchase
	playSound "Click";
	
};
//Display selected Magazines Stats and update UI
CTI_UI_Loadout_viewTurretMagStats = {
	_magclass = _this;
	_turret = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretselected";
	_turretName = _turret select 0;
	_turretMags = _turret select 1;
	_turretPath = _turret select 2;

	_maxAmount = getNumber (configfile >> "CfgMagazines" >> _magclass >> "count");
	//_setAmount = if (count (ctrlText 790010) > 0) then {call compile (ctrlText 790010)} else {0};
	//_finalAmount = _setAmount min _maxAmount;
	_magDispName = getText (configfile >> "CfgMagazines" >> _magclass >> "displayName");
	_ammostat_price = 0;
	//get ammo class from list
	_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
	_ammoclassvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
	_ammotime = 1;
	if (isNil "_ammoclassvar") then {
		_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _magclass >> 'cost');
	} else {
		_ammostat_price = _ammoclassvar select CTI_AMMO_PRICE;
		_ammotime = _ammoclassvar select CTI_AMMO_TIME;
	};
	
	//systemchat format ["selected: %1 | %2 | %3 | %4 ",_pylonName,_magclass,_finalAmount,_magDispName];
	_ammostat_fuseDistance = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'fuseDistance');
	_ammostat_hit = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'hit');



	//Magazine Stats
	lnbClear 790009;
	lnbAddRow [790009, ["Name: ", getText(configFile >> 'CfgMagazines' >> _magclass >> 'displayName')]];
	lnbAddRow [790009, ["Ammo: ", str (_ammoclass)]];
	lnbAddRow [790009, ["Max qty: ", str (_maxAmount)]];
	lnbAddRow [790009, ["Price: ", str (_ammostat_price)]];
	lnbAddRow [790009, ["Reload Time: ", str (_ammotime)]];
	lnbAddRow [790009, ["fuseDistance: ", str (_ammostat_fuseDistance)]];
	lnbAddRow [790009, ["hit: ", str (_ammostat_htmin)]];
	
	//set final selected
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedturretmag", _magclass];
	//turret selected
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedturretpurchase", [_turretName,_magclass,_maxAmount,_maxAmount,_turretPath]];
	//systemchat format ["BUY: %1 | %2 | %3", _turretName,_magclass,_maxAmount];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_purchasetype", "turret"];
	//update qty
	[_magclass, _maxAmount, _turretName] call CTI_UI_Loadout_magazineQty;
	//refresh price UI
	//_qty = count (ctrlText 790010);
	_totalprice = _ammostat_price * _maxAmount;
	[_totalprice] call CTI_UI_Loadout_UpdatePrice;
	//enable button
	ctrlEnable [790016, true];//purchase
	playSound "Click";
	
};
CTI_UI_Loadout_viewLvossEraStats = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_data = _this select 0;
	_type = "";
	_side = "";
	if(_data isEqualTo "LVOSS_left" || _data isEqualTo "LVOSS_right") then {
		_type = "LVOSS";
		if(_data isEqualTo "LVOSS_left") then {
			_side = "left";
		} else {
			_side = "right";
		};
	};
	if(_data isEqualTo "ERA_left" || _data isEqualTo "ERA_right") then {
		_type = "ERA";
		if(_data isEqualTo "ERA_left") then {
			_side = "left";
		} else {
			_side = "right";
		};		
	};
	_ammoside = 0;
	//get current ammo
	if (_side isEqualTo "left") then {
		_ammoside = _unit getVariable "ammo_left";
		if (isNil "_ammoside") then {_ammoside = 0};
	} else {
		_ammoside = _unit getVariable "ammo_right";
		if (isNil "_ammoside") then {_ammoside = 0};
	};

	_type = "";
	_maxAmount = 0;
	_ammostat_price = 0;
	_ammotime = 0;
	//add lvoss/era
	_upgrades = nil;
	_upgrade_lvoss = 0;
	_upgrade_era = 0;
	if (count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) > 0) then {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_VEHICLES_LVOSS isEqualTo 1) then {_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;};
		if (CTI_VEHICLES_ERA isEqualTo 1) then {_upgrade_era = _upgrades select CTI_UPGRADE_ERA;};
	};
	if (isNil "_upgrade_lvoss") then {_upgrade_lvoss = 0;};
	if (isNil "_upgrade_era") then {_upgrade_era = 0;};
	if (_unit isKindOf "Car") then {
		_type = "LVOSS";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_LVOSS_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_LVOSS_TIME;
		if (_upgrade_lvoss > 0) then {
			switch (_upgrade_lvoss) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
			};
		};
	};
	if (_unit isKindOf "Tank") then {
		_type = "ERA";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_ERA_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_ERA_TIME;
		if (_upgrade_era > 0) then {
			switch (_upgrade_era) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
				case 3: {
					_maxAmount = 3;
				};
				case 4: {
					_maxAmount = 4;
				};
			};
		};
	};

	//Magazine Stats
	lnbClear 790009;
	lnbAddRow [790009, ["Name: ", _type]];
	lnbAddRow [790009, ["Max qty: ", str (_maxAmount)]];
	lnbAddRow [790009, ["Price: ", str (_ammostat_price)]];
	lnbAddRow [790009, ["Reload Time: ", str (_ammotime)]];

	_purchase_qty = _maxAmount - _ammoside;
	
	//set final selected
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedlvosseramag", _type];
	//turret selected
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedlvosserapurchase", [_type,_side,_purchase_qty,_maxAmount]];
	//systemchat format ["BUY: %1 | %2 | %3", _turretName,_magclass,_maxAmount];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_purchasetype", "lvossera"];
	//update qty
	ctrlSetText [790010, str _purchase_qty];
	//refresh price UI
	//_qty = count (ctrlText 790010);
	_totalprice = _ammostat_price * _purchase_qty;
	[_totalprice] call CTI_UI_Loadout_UpdatePrice;
	//enable button
	ctrlEnable [790016, true];//purchase
	playSound "Click";

};
CTI_UI_Loadout_updateClearMag = {
	_magvar = _this;
	_ispylon = _magvar select 0;
	//systemChat format["MAG: %1", _magvar];
	_magclass = "";
	_ammocount = 0;
	_selectedturret = "";
	if (_ispylon) then {
		//_selectedpylon select 1;
		_magclass = _magvar select 2;
		_ammocount = _magvar select 3;
	} else {
		//_selectedturret = _magvar select 1;
		//_selectedpath = _magvar select 2;
		_magclass = _magvar select 3;
		_ammocount = _magvar select 4;
	};
	_ammostat_price = 0;
	_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
	_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
	if (isNil "_ammovar") then {
		_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _magclass >> 'cost');
	} else {
		_ammostat_price = _ammovar select CTI_AMMO_PRICE;
	};
	//systemChat format["MAG: %1 | %2 | %3", _magclass,_ammocount,_ammostat_price];
	_qtyprice = _ammostat_price * _ammocount;
	_finalprice = _qtyprice;	

	//set current mag variable
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_clearmag", _magvar];

	(_finalprice) call CTI_UI_Loadout_updateClearMagPrice;
};
CTI_UI_Loadout_updateClearMagPrice = {
	_finalprice = _this;

	//add tax
	_finalprice = CTI_VEHICLES_LOADOUTS_REFUND_RATE * _finalprice;

	//set unit name
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790037) ctrlSetStructuredText (parseText format["<t color='#FFFFFF'>Clear Mag: <t><t color='#3EE312'>$%1<t>", _finalprice]);

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_clearmagprice", _finalprice];
};
//Update clear all price
CTI_UI_Loadout_UpdateClearAllPrice = {
	_unitfullloadout = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_weaponsfull";
	_finalprice = 0;

	//get all turrets
	_turretlist = _unitfullloadout select 0;
	_curmags = [];
	{
		_selectedturret =  _x select 0;
		_turretmags = _x select 1;
		_weappath = _x select 2;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			_ammostat_price = 0;
			_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
			_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
			if (isNil "_ammovar") then {
				_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _magclass >> 'cost');
			} else {
				_ammostat_price = _ammovar select CTI_AMMO_PRICE;
			};
			_qtyprice = _ammostat_price * _ammocount;
			_finalprice = _finalprice + _qtyprice;
		}forEach _turretmags;
	}forEach _turretlist;

	//get all pylons
	_unitpylonfull = _unitfullloadout select 1;
	_validPylons = _unitpylonfull select 0;
	_activePylonMags = _unitpylonfull select 1;
	_activePylonMagsCount = _unitpylonfull select 2;
	//systemchat format ["REARM: %1 ",_activePylonMags];
	{
		_ammoclass = getText(configFile >> 'CfgMagazines' >> _x >> 'ammo');
		_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
		_ammostat_price = 0;
		if (isNil "_ammovar") then {
			_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'cost');
		} else {
			_ammostat_price = _ammovar select CTI_AMMO_PRICE;
		};	
		//systemchat format ["REARM pr: %1", _ammostat_price ];
		_curcount = _activePylonMagsCount select _foreachindex;
		_qtyprice = _ammostat_price * _curcount;
		_finalprice = _finalprice + _qtyprice;
		//systemchat format ["REARM: %1 | %2 | %3", _count, _qtyprice, _finalprice ];
	} forEach _activePylonMags;

	//add tax
	_finalprice = CTI_VEHICLES_LOADOUTS_REFUND_RATE * _finalprice;

	//set unit name
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790028) ctrlSetStructuredText (parseText format["<t color='#FFFFFF'>Clear All: <t><t color='#3EE312'>$%1<t>", _finalprice]);

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_clearprice", _finalprice];

};
//Update rearm price
CTI_UI_Loadout_UpdateRearmPrice = {
	_unitfullloadout = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_weaponsfull";
	_current_credit = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
	_finalprice = 0;

	//get all turrets
	_turretlist = _unitfullloadout select 0;
	_curmags = [];
	{
		_selectedturret =  _x select 0;
		_turretmags = _x select 1;
		_weappath = _x select 2;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			_ammostat_price = 0;
			_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
			_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
			if (isNil "_ammovar") then {
				_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _magclass >> 'cost');
			} else {
				_ammostat_price = _ammovar select CTI_AMMO_PRICE;
			};
			_maxAmount = getNumber (configfile >> "CfgMagazines" >> _magclass >> "count");
			_count = _maxAmount - _ammocount;
			_qtyprice = _ammostat_price * _count;
			_finalprice = _finalprice + _qtyprice;
		}forEach _turretmags;
	}forEach _turretlist;

	//get all pylons
	_unitpylonfull = _unitfullloadout select 1;
	_validPylons = _unitpylonfull select 0;
	_activePylonMags = _unitpylonfull select 1;
	_activePylonMagsCount = _unitpylonfull select 2;
	//systemchat format ["REARM: %1 ",_activePylonMags];
	{
		_ammoclass = getText(configFile >> 'CfgMagazines' >> _x >> 'ammo');
		_ammovar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
		_ammostat_price = 0;
		if (isNil "_ammovar") then {
			_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'cost');
		} else {
			_ammostat_price = _ammovar select CTI_AMMO_PRICE;
		};	
		//systemchat format ["REARM pr: %1", _ammostat_price ];
		_curcount = _activePylonMagsCount select _foreachindex;
		_maxAmount = getNumber (configfile >> "CfgMagazines" >> _x >> "count");
		_count = _maxAmount - _curcount;
		_qtyprice = _ammostat_price * _count;
		_finalprice = _finalprice + _qtyprice;
		//systemchat format ["REARM: %1 | %2 | %3", _count, _qtyprice, _finalprice ];
	} forEach _activePylonMags;	

	//LVOSS ERA
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	//get existing ammo
	_ammoleft = _unit getVariable "ammo_left";
	if (isNil "_ammoleft") then {_ammoleft = 0};
	_ammoright = _unit getVariable "ammo_right";
	if (isNil "_ammoright") then {_ammoright = 0};

	_type = "";
	_maxAmount = 0;
	_ammostat_price = 0;
	_ammotime = 0;
	//add lvoss/era
	_upgrades = nil;
	_upgrade_lvoss = 0;
	_upgrade_era = 0;
	if (count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) > 0) then {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_VEHICLES_LVOSS isEqualTo 1) then {_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;};
		if (CTI_VEHICLES_ERA isEqualTo 1) then {_upgrade_era = _upgrades select CTI_UPGRADE_ERA;};
	};
	if (isNil "_upgrade_lvoss") then {_upgrade_lvoss = 0;};
	if (isNil "_upgrade_era") then {_upgrade_era = 0;};
	if (_unit isKindOf "Car") then {
		_type = "LVOSS";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_LVOSS_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_LVOSS_TIME;
		if (_upgrade_lvoss > 0) then {
			switch (_upgrade_lvoss) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
			};
		};
	};
	if (_unit isKindOf "Tank") then {
		_type = "ERA";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_ERA_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_ERA_TIME;
		if (_upgrade_era > 0) then {
			switch (_upgrade_era) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
				case 3: {
					_maxAmount = 3;
				};
				case 4: {
					_maxAmount = 4;
				};
			};
		};
	};
	_ammo_left_total = _maxAmount - _ammoleft;
	_ammo_right_total = _maxAmount - _ammoright;
	_ammo_total = _ammo_left_total + _ammo_right_total;

	_qtyprice = _ammostat_price * _ammo_total;
	_finalprice = _finalprice + _qtyprice;
	//Apply tax if needed
	_closest = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
	_tax = 1;
	if (isNull _closest) then {_tax = 1} else { _tax = CTI_SERVICE_PRICE_DEPOT_COEF};
	_closest_large_fob = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestLargeFOB;
	_tax = 1;
	if (isNull _closest_large_fob) then {_tax = 1} else { _tax = CTI_SERVICE_PRICE_LARGE_FOB_COEF};
	//check for credits
	_finalprice = _finalprice * _tax;
	_totalprice = _finalprice;
	if (_current_credit > 0) then {
		_finalcredit = _current_credit - _finalprice;
		if (_finalcredit < 0 ) then {
			_finalprice = _finalcredit * -1;
		} else {
			_finalprice = 0;
		};
		
	};

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_rearmprice",[_finalprice, _totalprice]];
	//set unit name
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790012) ctrlSetStructuredText (parseText format["<t color='#FFFFFF'>Rearm All: <t><t color='#3EE312'>$%1<t>", _finalprice]);

};
//Update sale price in UI
CTI_UI_Loadout_UpdatePrice = {
	_magprice = _this select 0;
	[_magprice] call CTI_UI_Loadout_UpdateCredit;
	_current_credit = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";

	_current_exchange = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_currentmagexchange";
	//add tax
	_current_exchange = CTI_VEHICLES_LOADOUTS_EXCHANGE_RATE * _current_exchange;

	_finalprice = _magprice;

	_finalexchange = _current_exchange - _magprice;
	if (_finalexchange < 0 ) then {
		_finalprice = _finalexchange * -1;
		if (_current_credit > 0) then {
			_finalcredit = _current_credit - _finalprice;
			if (_finalcredit < 0 ) then {
				_finalprice = _finalcredit * -1;
			} else {
				_finalprice = 0;
			};
		};		
	} else {
		_finalprice = 0;
	};		

	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_price",[_finalprice, _magprice]];
	//set unit name
	//((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790012) ctrlSetStructuredText (parseText format["<t color='#FFFFFF'>Rearm All:<t><t color='#3EE312'>%1<t>", _totalprice]);
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790013) ctrlSetStructuredText (parseText format["<t color='#FFFFFF'>Price: <t><t color='#3EE312'>$%1<t><t color='#FFFFFF'>", _finalprice]);

};
CTI_UI_Loadout_UpdateAllPrices = {
	//update variables
	(_unit) call CTI_UI_Loadout_savetemplates;
	//update clear mag price
	(0) call CTI_UI_Loadout_updateClearMagPrice;
	//update clear price
	(_unit) call CTI_UI_Loadout_UpdateClearAllPrice;
	//update rearm price
	(_unit) call CTI_UI_Loadout_UpdateRearmPrice;	
	[0] call CTI_UI_Loadout_UpdatePrice;
};
//Update credit price in UI
CTI_UI_Loadout_UpdateCredit = {
	_magprice = _this select 0;
	_current_credit = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
	_finalcredit = _current_credit - _magprice;
	if (_finalcredit < 0) then {_finalcredit = 0;};
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790036) ctrlSetStructuredText (parseText format["<t color='#FFFFFF'>Credit: <t><t color='#ff0000'>$%1<t>", _finalcredit]);
};
//Update Status
CTI_UI_Loadout_UpdateStatus = {
	_content = _this;
	//set unit name
	((uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790021) ctrlSetStructuredText (_content);
};
//Update total magazine count
CTI_UI_Loadout_MagazinesCountUpdate = {
	_unit = _this;
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_classname = typeOf _unit;

	_allPylonMagazines = "toUpper (configname _x) find 'PYLON' >= 0" configClasses (configfile >> "CfgMagazines");
	_allPylonMagazinesDispNames = _allPylonMagazines apply {getText (configfile >> "CfgMagazines" >> _classname >> "displayName")};
	_allPylonMagazinesClassNames = _allPylonMagazines apply {_classname};
	
	_mag = _allPylonMagazinesClassNames select lbCursel 790005;
	_count = getNumber (configfile >> "CfgMagazines" >> _mag >> "count");

	ctrlSetText [790010,str _count];
	playSound "Click";

};
//Install Purchased Pylons
CTI_UI_Loadout_installPylons = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_pylonNum = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 0;
	_pylonNum = _pylonNum + 1;//no 0 pylon index
	_pylonName = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 1;
	_selectedmag = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 2;
	_finalAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 3;
	_maxAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 4;
	_magDispName = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 5;

	//check owner
	_pylonOwner = _unit getVariable ["GOM_fnc_aircraftLoadoutPylonOwner",[]];
	_pylonOwnerName = "Pilot";
	_nextOwnerName = "Gunner";
	if !(_pylonOwner isEqualTo []) then {_pylonOwnerName = "Gunner"};
	//clear pylon
	[_unit,[_pylonNum,"",true,_pylonOwner]] remoteexec ["setPylonLoadOut",0];

	[_unit,[_pylonNum,_selectedmag,true,_pylonOwner]] remoteexec ["setPylonLoadOut",0];

	[_unit,[_pylonNum,0]] remoteexec ["SetAmmoOnPylon",0];
	//get magazine reload time
	_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_selectedmag];
	_ammoclassname = nil;
	_ammotime = 10;
	_ammoDisplayName = "";
	if !(isNil "_ammoclass") then {
		_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
		_ammotime = _ammoclass select CTI_AMMO_TIME;
		_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
	};

	//check mag type for new rearm time
	_ispermag= false;
	_ammoclassarm = "";
	//[configfile >> "CfgWeapons" >> "CUP_Vacannon_2A14_veh", true] call BIS_fnc_returnParents;
	//uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_busy",false];	
	_magparentclasses = [configfile >> "CfgWeapons" >> _ammoclassname, true] call BIS_fnc_returnParents;
	if (_ammoclassname in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
	{
		if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
	}forEach _magparentclasses;
	_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _ammoclassname >> 'ammo');
	_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
	if !(isNil "_ammoclassarmvar") then {
		_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
	};
	if !(_ispermag) then {
		//_ammotime = _maxAmount * _ammotime;
	};
	//systemChat format["PER: %1 | %2 | %3 | %4 | %5", _ispermag,_ammoclassname,_selectedmag,_ammoclassarm, _ammotime];

	_process = false;
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	_install_count = _finalamount;
	if (_ispermag) then {_install_count = 1;};
	for "_i" from 1 to _install_count do {
		_process_sub = false;
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};		
		_totali = (_i);
		[_unit,[_pylonNum,0]] remoteexec ["animatePylon",0];
		[_unit,[_pylonNum,0]] remoteexec ["animateBay",0];
		for "_i" from 1 to _ammotime do {
			if (_source isEqualTo "" || !alive _unit) exitWith {};		
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {	
				_timeleft = _ammotime - (_i - 1);
				_timeammo = (_ammotime * _install_count) - (_totali * (_i - 1));
				(parseText format["Installing %1 %2 | %3 on %4 | %5! in %6s | %7s",_finalamount,_magDispName, _ammoDisplayName ,_pylonNum, _pylonName, _timeleft, _timeammo]) call CTI_UI_Loadout_UpdateStatus;
				_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
				//_pos = progressPosition _controlbar;
				_fraction = 1 / (_install_count * _ammotime);
				_pos = (_i * _totali) * _fraction;
				_controlbar progressSetPosition (_pos);
			};
			sleep 1;
			if (_ammotime isEqualTo _i) exitWith {_process_sub = true};
		}; 
		if (_process_sub) then {
			_amount = _i;
			if (_ispermag) then {_amount = _finalamount};
			[_unit,[_pylonNum,_amount]] remoteexec ["SetAmmoOnPylon",0];
			[_unit,[_pylonNum,1]] remoteexec ["animatePylon",0];
			[_unit,[_pylonNum,1]] remoteexec ["animateBay",0];
			playSound "Click";
			if (_install_count isEqualTo _totali) exitWith {_process = true};
		};
	}; 

	if (_process) then {		
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Successfully installed %1 %2 on %3!",_finalAmount,_magDispName,_pylonName]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Couldn't finish installing %1 %2 on %3!",_finalAmount,_magDispName,_pylonName]) call CTI_UI_Loadout_UpdateStatus;
		};
	};	

	//update variables
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		ctrlEnable [790016, false];//purchase
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];
	
};
//Install Purchased Turrets
CTI_UI_Loadout_installturrets = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_classname = typeOf _unit;
	_turretName = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 0;
	_selectedmag = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 1;
	_finalAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 2;
	_maxAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 3;
	_turretpath = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 4;

	_turretlist = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretlist");
	//systemChat format["view: %1", _turretlist];
	_curmags = [];
	{
		_selectedturret =  _x select 0;
		_turretmags = _x select 1;
		_weappath = _x select 2;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			if (_turretName isEqualTo _selectedturret) then {
				_curmags pushBack [_magclass, _ammocount, _weappath];
			};
		}forEach _turretmags;
	}forEach _turretlist;

	//get magazine reload time
	_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_selectedmag];
	_ammoclassname = nil;
	_ammotime = 10;
	_ammoDisplayName = "";
	if !(isNil "_ammoclass") then {
		_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
		_ammotime = _ammoclass select CTI_AMMO_TIME;
		_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
	};

	//check mag type for new rearm time
	_ispermag= false;
	_ammoclassarm = "";
	//[configfile >> "CfgWeapons" >> "CUP_Vacannon_M197_veh", true] call BIS_fnc_returnParents;
	//uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_busy",false];
	_magparentclasses = [configfile >> "CfgWeapons" >> _turretName, true] call BIS_fnc_returnParents;
	if (_selectedmag in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
	{
		if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
	}forEach _magparentclasses;
	if(_ispermag) then {
		_ammoclassarm = _selectedmag;
	}else {
		_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _selectedmag >> 'ammo');
	};
	_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
	if !(isNil "_ammoclassarmvar") then {
		_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
	};
	if !(_ispermag) then {
		_ammotime = _maxAmount * _ammotime;
	};
	//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_turretName,_selectedmag,_ammoclassarm];
	_forcereinstall = false;
	_displayname = getText (configFile >> "CfgWeapons" >> _turretName >> "DisplayName");
	//systemChat format["Name: %1", _displayname];
	if (_displayname isEqualTo "Flares" || _displayname isEqualTo "Smoke Screen" || _displayname isEqualTo "Laser Marker") then {
		_forcereinstall = true;
	};

	_process = false;
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	for "_i" from 1 to _ammotime do {
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};	

		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			_timeleft = _ammotime - (_i - 1);
			(parseText format["Installing %1 %2 on %3 - %4 in %5s",_finalAmount, _ammoDisplayName, _turretName, _turretpath, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
			_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
			//_pos = progressPosition _controlbar;
			_fraction = 1 / _ammotime;
			_pos = _i * _fraction;
			_controlbar progressSetPosition (_pos);
		};
		sleep 1;
		if (_ammotime isEqualTo _i) exitWith {_process = true};
	}; 

	if (_process) then {
		if(_forcereinstall) then {
			//_unit removeMagazineTurret [_selectedmag, _turretpath];
			{
				_mag = _x select 0;
				_unit removeMagazinesTurret [_mag , _turretpath];
			} forEach _curmags;
			_unit removeWeaponTurret [_turretName, _turretpath];
			_unit addMagazineTurret [_selectedmag, _turretpath,_finalAmount];
			_unit addWeaponTurret [_turretName, _turretpath];

		} else {
			{
				_mag = _x select 0;
				_mag_count = _x select 1;
				_path = _x select 2;
				if (_mag_count isEqualTo 0) then {
					_unit removeMagazineTurret [_mag, _path];
				};
			} forEach _curmags;
			_unit addMagazineTurret [_selectedmag, _turretpath,_finalAmount];
		};
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Successfully installed %1 %2 on %3 | %4",_finalAmount, _selectedmag, _turretName, _turretpath]) call CTI_UI_Loadout_UpdateStatus;
		};
		playSound "Click";
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Couldn't finish installing  %1 %2 on %3 | %4",_finalAmount, _selectedmag, _turretName, _turretpath]) call CTI_UI_Loadout_UpdateStatus;
		};
	};
	
	//update variables
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;	
		ctrlEnable [790016, false];//purchase
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];
};
CTI_UI_Loadout_install_lvossera = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_lvossera_type = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 0;
	_lvossera_side = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 1;
	_lvossera_num = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 2;
	_lvossera_max = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 3;

	//get existing ammo
	_ammoleft = _unit getVariable "ammo_left";
	if (isNil "_ammoleft") then {_ammoleft = 0};
	_ammoright = _unit getVariable "ammo_right";
	if (isNil "_ammoright") then {_ammoright = 0};

	_ammotime = 0;
	if (_lvossera_type isEqualTo "LVOSS") then {
		_ammotime = CTI_VEHICLES_LOADOUTS_LVOSS_TIME;
	} else {
		_ammotime = CTI_VEHICLES_LOADOUTS_ERA_TIME;
	};
	_ammotime = _ammotime * _lvossera_num;

	_process = false;
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	for "_i" from 1 to _ammotime do {
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};	
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			_timeleft = _ammotime - (_i - 1);
			(parseText format["Installing %1 %2 mags on %3 side in %4s",_lvossera_num, _lvossera_type, _lvossera_side, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
			_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
			//_pos = progressPosition _controlbar;
			_fraction = 1 / _ammotime;
			_pos = _i * _fraction;
			_controlbar progressSetPosition (_pos);
		};
		sleep 1;
		if (_ammotime isEqualTo _i) exitWith {_process = true};
	}; 
	if (_process) then {
		if (_lvossera_side isEqualTo "left") then {
			_ammonew = _ammoleft + _lvossera_num;
			_unit setVariable ["ammo_left", _ammonew, true];
			_unit setVariable ["reloading_left", 0, true];
		} else {
			_ammonew = _ammoright + _lvossera_num;
			_unit setVariable ["ammo_right", _ammonew, true];
			_unit setVariable ["reloading_right", 0, true];
		};
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Successfully installed %1 %2 mags on %3 mount",_lvossera_num, _lvossera_type, _lvossera_side]) call CTI_UI_Loadout_UpdateStatus;
		};
		playSound "Click";
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Couldn't finish installing  %1 %2 mags on %3 mount",_lvossera_num, _lvossera_type, _lvossera_side]) call CTI_UI_Loadout_UpdateStatus;
		};
	};

	//update variables
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		ctrlEnable [790016, false];//purchase
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];
};
//Rearm All Turrets
CTI_UI_Loadout__rearmturrets = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_type = typeOf _unit;
	//--- Driver
	{_unit removeMagazineTurret [_x, [-1]]; _unit addMagazineTurret [_x, [-1]]} forEach (getArray(configFile >> "CfgVehicles" >> _type >> "magazines"));
	//--- Turrets
	_config = configFile >> "CfgVehicles" >> _type >> "turrets";
	for '_i' from 0 to (count _config)-1 do {
		_turret_main = _config select _i;
		_config_sub = _turret_main >> "turrets";
		{_unit removeMagazineTurret [_x, [_i]]; _unit addMagazineTurret [_x, [_i]]} forEach (getArray(_turret_main >> "magazines"));
		for '_j' from 0 to (count _config_sub) -1 do {
			_turret_sub = _config_sub select _j;
			{_unit removeMagazineTurret [_x, [_i, _j]]; _unit addMagazineTurret [_x, [_i, _j]]} forEach (getArray(_turret_sub >> "magazines"));
		};
	};
	//systemchat format ["Successfully installed turrets on %1",_type];
};
//Set Custom Skin if supported
CTI_UI_Loadout_listSkins = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_side = CTI_P_SideJoined;
	_uid = getPlayerUID player;
	_playerrank = (player) call CTI_CO_FNC_GetUnitsRank;
	_speciallvl = 0;
	if(_uid in CTI_VP_LIST_UID) then {_speciallvl = 1;};
	if(_uid in CTI_ADMIN_LIST_UID) then {_speciallvl = 2;};
	if(_uid in CTI_DEV_LIST_UID) then {_speciallvl = 3;};

	_colorConfigs = "true" configClasses (configfile >> "CfgVehicles" >> typeof _unit >> "textureSources");
	_vehDispName = getText (configfile >> "CfgVehicles" >> typeof _unit >> "displayName");
	_colorTextures = [];
	_colorNames = [];
	_colorPrice = [];
	_colorType = [];

	//Default hidden texture based
	_hiddentextures = getArray (configfile >> "CfgVehicles" >> typeof _unit >> "hiddenSelectionsTextures");
	lbclear 790111;
	if (count _hiddentextures > 0) then {
		lbAdd [790111, "Default - $0"];
		_colorNames pushback ("Default");
		_colorTextures pushback (_hiddentextures);
		_colorPrice pushBack 0;
		_colorType pushBack "Default";
	};	
	//Default texture source based
	if (count _colorConfigs > 0) then {
		{														
			lbAdd [790111,format["%1 - $500", (getText (configfile >> "CfgVehicles" >> typeof _unit >> "textureSources" >> configName _x >> "displayName"))]];
			_colorNames pushback (getText (configfile >> "CfgVehicles" >> typeof _unit >> "textureSources" >> configName _x >> "displayName"));
			_colorTextures pushback (getArray (configfile >> "CfgVehicles" >> typeof _unit >> "textureSources" >> configName _x >> "textures"));
			_colorPrice pushBack 500;
			_colorType pushBack "Default";
		} foreach _colorConfigs;

	};
	//get custom skins
	_skinlist = missionNamespace getVariable format ["CTI_%1_SKINS", _side];
	_rank_lvl = 0;
	switch (true) do {
		case (_playerrank isEqualTo "PRIVATE") : { 
			_rank_lvl = 1;
		};
		case (_playerrank isEqualTo "CORPORAL") : { 
			_rank_lvl = 2;
		};
		case (_playerrank isEqualTo "SERGEANT") : { 
			_rank_lvl = 3;
		};
		case (_playerrank isEqualTo "LIEUTENANT") : { 
			_rank_lvl = 4;
		};
		case (_playerrank isEqualTo "CAPTAIN") : { 
			_rank_lvl = 5;
		};
		case (_playerrank isEqualTo "MAJOR") : { 
			_rank_lvl = 6;
		};
		case (_playerrank isEqualTo "COLONEL") : { 
			_rank_lvl = 7;
		};
	};

	{
		//set skin variable
		_skin = missionNamespace getVariable _x;
		_enabled = _skin select 0;
		_name = _skin select 1;
		_menuname = _skin select 2;
		_texture = _skin select 3;
		_price = _skin select 4;
		_rank = _skin select 5;
		_special = _skin select 6;

		_skin_lvl = 0;
		switch (_rank) do {
			case "PRIVATE" : { 
				_skin_lvl = 1;
			};
			case "CORPORAL" : { 
				_skin_lvl = 2;
			};
			case "SERGEANT" : { 
				_skin_lvl = 3;
			};
			case "LIEUTENANT" : { 
				_skin_lvl = 4;
			};
			case "CAPTAIN" : { 
				_skin_lvl = 5;
			};
			case "MAJOR" : { 
				_skin_lvl = 6;
			};
			case "COLONEL" : { 
				_skin_lvl = 7;
			};
		};

		if (_enabled) then {
			if (_skin_lvl <= _rank_lvl) then {
				if (_speciallvl >= _special) then {
					lbAdd [790111, format["%1 - $%2", _menuname,_price]];
					_colorNames pushback (_name);
					_colorTextures pushback ([_texture,_texture,_texture,_texture,_texture,_texture,_texture,_texture]);	
					_colorPrice pushBack _price;
					_colorType pushBack "Custom";
				};
			};
		};

	}forEach _skinlist;

	//systemchat format ["_colorNames %1",_colorNames];
	uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_camolist", [_colorNames, _colorTextures, _colorPrice, _colorType]];
};
CTI_UI_Loadout_setSkin = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_vehDispName = getText (configfile >> "CfgVehicles" >> typeof _unit >> "displayName");
	//systemchat format ["this %1",_this];
	_colorName = _this select 0;
	_colorTextures = _this select 1;
	_colorType = _this select 2;
	_colorCount = count _colorTextures;
	_colori = 0;
	if !(isNil "_colorTextures") then {
		//(parseText format["Painting new skin %1 on %2 ...", _colorName, _vehDispName]) call CTI_UI_Loadout_UpdateStatus;
		disableserialization; 
		_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
		if (_colorType isEqualTo "Custom") then {			
			{
				if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
					_timeleft = _colorCount - (_colori - 1);
					(parseText format["Painting new skin %1 on %2 in %3s", _colorName, _vehDispName, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
					_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
					//_pos = progressPosition _controlbar;
					_fraction = 1 / _colorCount;
					_pos = _colori  * _fraction;
					_controlbar progressSetPosition (_pos);
				};
				sleep 1;
				_unit setObjectTextureGlobal [_foreachindex, (_colorTextures ) select _foreachindex];
				playSound "Click";
				//END PROGRESS
				_colori = _colori +1;
			} foreach (_colorTextures );
		} else	{
			{
				if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				_timeleft = _colorCount - (_colori - 1);
				(parseText format["Painting new skin %1 on %2 in %3s", _colorName, _vehDispName, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
				_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
				//_pos = progressPosition _controlbar;
				_fraction = 1 / _colorCount;
				_pos = _colori  * _fraction;
				_controlbar progressSetPosition (_pos);
				};
				sleep 1;
				_index = (_colorTextures ) find _x;
				_unit setObjectTextureGlobal [_index, (_colorTextures ) select _index];
				playSound "Click";
				//END PROGRESS		
				_colori = _colori +1;		
			} foreach (_colorTextures );
		};
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Successfully installed new skin %1 on %2", _colorName, _vehDispName]) call CTI_UI_Loadout_UpdateStatus;
		};
		_unit setVariable ["cti_unit_camo", _colorName, true];
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];
};
//Remove selected pylon from vehicle
CTI_UI_Loadout_clearMag = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_classname = typeOf _unit;

	_magvar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_clearmag");
	_ispylon = _magvar select 0;
	//systemChat format["MAG: %1", _magvar];
	_magclass = "";
	_ammocount = 0;
	if (_ispylon) then {
		_selectedpylon = _magvar select 1;
		_pylonindex = _selectedpylon select 0;
		_pylonname = _selectedpylon select 1;
		
		_magclass = _magvar select 2;
		_ammocount = _magvar select 3;

		_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_magclass];
		_mag_name = "";
		_ammoclassname = nil;
		_ammotime = 5;
		_ammoDisplayName = "";
		if !(isNil "_ammoclass") then {
			//_mag_name = _ammoclass select CTI_AMMO_NAME;
			_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
			_ammotime = _ammoclass select CTI_AMMO_TIME;
			_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
		};

		//check mag type for new rearm time
		_ispermag= false;
		_ammoclassarm = "";
		_magparentclasses = [configfile >> "CfgWeapons" >> _ammoclassname, true] call BIS_fnc_returnParents;
		if (_ammoclassname in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
		{
			if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
		}forEach _magparentclasses;
		if(_ispermag) then {
			_ammoclassarm = _ammoclassname;				
		}else {
			_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _ammoclassname >> 'ammo');
		};
		_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
		if !(isNil "_ammoclassarmvar") then {
			_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
		};
		if !(_ispermag) then {
			_ammotime = _ammocount * _ammotime;
		};
		//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_ammoclassname,_selectedmag,_ammoclassarm];
		
		_ammotime = 1 max (round (_ammotime / CTI_VEHICLES_LOADOUTS_CLEAR_DIVISOR));
		_process = false;
		disableserialization; 
		_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			_controlbar progressSetPosition 0;
		};
		for "_i" from 1 to _ammotime do {
			_source = (_unit) call CTI_UI_Loadout_getSource;
			if (_source isEqualTo "" || !alive _unit) exitWith {};	
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				_timeleft = _ammotime - (_i - 1);
				(parseText format["Removing pylon %1 in %2s",_ammoDisplayName,_timeleft]) call CTI_UI_Loadout_UpdateStatus;
				_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
				//_pos = progressPosition _controlbar;
				_fraction = 1 / _ammotime;
				_pos = _i  * _fraction;
				_controlbar progressSetPosition (_pos);
			};
			sleep 1;
			if (_ammotime isEqualTo _i) exitWith {_process = true};
		}; 
		if (_process) then {
			[_unit,[_pylonindex+1,0]] remoteexec ["SetAmmoOnPylon",0];
			playSound "Click";
		};

	} else {
		_selectedturret = _magvar select 1;
		_selectedpath = _magvar select 2;
		_magclass = _magvar select 3;
		_ammocount = _magvar select 4;
		_turretlist = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretlist";
		_maxAmount = getNumber (configfile >> "CfgMagazines" >> _magclass >> "count");

		//get magazine reload time
		_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_magclass];
		_ammoclassname = nil;
		_ammotime = 10;
		_ammoDisplayName = "";
		if !(isNil "_ammoclass") then {
			_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
			_ammotime = _ammoclass select CTI_AMMO_TIME;
			_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
		};

		//check mag type for new rearm time
		_ispermag= false;
		_ammoclassarm = "";
		_magparentclasses = [configfile >> "CfgWeapons" >> _selectedturret, true] call BIS_fnc_returnParents;
		if (_magclass in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
		{
			if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
		}forEach _magparentclasses;
		if(_ispermag) then {
			_ammoclassarm = _magclass;
		}else {
			_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
		};
		_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
		if !(isNil "_ammoclassarmvar") then {
			_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
		};
		if !(_ispermag) then {
			_ammotime = _ammocount * _ammotime;
		};
		//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_selectedturret,_selectedmag,_ammoclassarm];		

		_ammotime = 1 max (round (_ammotime / CTI_VEHICLES_LOADOUTS_CLEAR_DIVISOR));
		_process = false;
		disableserialization; 
		_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			_controlbar progressSetPosition 0;
		};
		for "_i" from 1 to _ammotime do {
			_source = (_unit) call CTI_UI_Loadout_getSource;
			if (_source isEqualTo "" || !alive _unit) exitWith {};	
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				_timeleft = _ammotime - (_i - 1);
				(parseText format["Removing %1 from %2 - %3 in %4s",_ammoDisplayName, _selectedturret, _selectedpath, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
				_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
				//_pos = progressPosition _controlbar;
				_fraction = 1 / _ammotime;
				_pos = _i  * _fraction;
				_controlbar progressSetPosition (_pos);
			};
			sleep 1;
			if (_ammotime isEqualTo _i) exitWith {_process = true};
		}; 
		if (_process) then {
			//clean any empty mags first
			{
				_turret = _x select 0;
				_mags = _x select 1;
				_path = _x select 2;
				_magcount = count _mags;
				{
					_magi = _foreachIndex;
					_mag_class = _x select 0;
					_mag_count = _x select 1;
					if (_mag_count isEqualTo 0 && _magcount > 1) then {
						//_unit removeMagazineTurret [_mag_class, _path];
					};
				}forEach _mags;
			} forEach _turretlist;	
			//remove mag of same classname and with ammo	
			{
				_turret = _x select 0;
				_mags = _x select 1;
				_path = _x select 2;
				_magcount = count _mags;
				_turreti = _foreachIndex;
				_removed = false;
				{
					_magi = _foreachIndex;
					_mag_class = _x select 0;
					_mag_count = _x select 1;
					if (_removed isEqualTo false && _turret isEqualTo _selectedturret && _mag_count > 0) then {
						_unit removeMagazineTurret [_magclass, _selectedpath];
						if (_magcount isEqualTo 1) then {
							_unit addMagazineTurret [_magclass, _selectedpath,0];
						};
						_removed = true;
					};
					if (_turret isEqualTo _selectedturret && _mag_count isEqualTo 0 && _magcount > 1) then {
						//_unit removeMagazineTurret [_mag_class, _selectedpath];
					};
					playSound "Click";
				}forEach _mags;
			} forEach _turretlist;
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				(parseText format["Vehicle magazine type %1 cleared!",_magclass]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				(parseText format["Vehicle magazine type %1 clear failed!",_magclass]) call CTI_UI_Loadout_UpdateStatus;
			};
		};		

	};

	//Update Unit Variables
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		(_unit) call CTI_UI_Loadout_viewAllArms;
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];
};
CTI_UI_Loadout_ClearAll = {
	_unit = _this;

	_clearturrets = (_unit) spawn CTI_UI_Loadout_clearAllTurrets;
	waitUntil {scriptDone _clearturrets};
	_clearpylons = (_unit) spawn CTI_UI_Loadout_clearAllPylons;
	waitUntil {scriptDone _clearpylons};
	lbClear 790007;//clear mag list
	lbClear 790020;//clear current mag list	

};

//Remove all existing pylons from vehicle
CTI_UI_Loadout_clearAllPylons = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_classname = typeOf _unit;
	//(parseText format["Removing pylons...",_classname]) call CTI_UI_Loadout_UpdateStatus;
	_activePylonMags = GetPylonMagazines _unit;
	_pyloncount = count _activePylonMags;
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	_i = 0;

	_validPylons = (("isClass _x" configClasses (configfile >> "CfgVehicles" >> typeof _unit >> "Components" >> "TransportPylonsComponent" >> "Pylons")) apply {configname _x});
	_activePylonMagsCount = [];
	_typepylonlist = [];
	{
		_ammoCount = _unit ammoOnPylon _x;
		_activePylonMagsCount pushback _ammoCount;
		_typepylonlist pushback "Pylon";
	} forEach _validPylons;	

	_process = false;
	{
		_process_sub = false;
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};			
		_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_x];
		_mag_name = "";
		_ammoclassname = nil;
		_ammotime = 5;
		_ammoDisplayName = "";
		if !(isNil "_ammoclass") then {
			//_mag_name = _ammoclass select CTI_AMMO_NAME;
			_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
			_ammotime = _ammoclass select CTI_AMMO_TIME;
			_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
		};

		_curcount = _activePylonMagsCount select _foreachindex;
		//check mag type for new rearm time
		_ispermag= false;
		_ammoclassarm = "";
		_magparentclasses = [configfile >> "CfgWeapons" >> _ammoclassname, true] call BIS_fnc_returnParents;
		if (_ammoclassname in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
		{
			if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
		}forEach _magparentclasses;
		if(_ispermag) then {
			_ammoclassarm = _ammoclassname;				
		}else {
			_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _ammoclassname >> 'ammo');
		};
		_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
		if !(isNil "_ammoclassarmvar") then {
			_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
		};
		if !(_ispermag) then {
			_ammotime = _curcount * _ammotime;
		};
		//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_turretName,_selectedmag,_ammoclassarm];

		_ammotime = 1 max (round (_ammotime / CTI_VEHICLES_LOADOUTS_CLEAR_DIVISOR));
		_magindex = _foreachIndex;
		for "_i" from 1 to _ammotime do {
			if (_source isEqualTo "" || !alive _unit) exitWith {};	
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				_timeleft = _ammotime - (_i - 1);
				(parseText format["Removing pylon %1 in %2s",_ammoDisplayName,_timeleft]) call CTI_UI_Loadout_UpdateStatus;
				_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
				//_pos = progressPosition _controlbar;
				_fraction = 1 / _ammotime;
				_pos = _i  * _fraction;
				_controlbar progressSetPosition (_pos);
			}; 
			sleep 1;
			if (_ammotime isEqualTo _i) exitWith {_process_sub = true};
		}; 
		if (_process_sub) then {
			[_unit,[_magindex + 1,0]] remoteexec ["SetAmmoOnPylon",0];
			playSound "Click";
			if (_pyloncount isEqualTo _magindex+1) exitWith {_process = true};
		};		
	} forEach _activePylonMags;

	if (_process) then {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle pylons cleared!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle pylons failed to be cleared!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	};
	
	//Update Unit Variables
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		(_unit) call CTI_UI_Loadout_viewAllArms;
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];

};

//Remove all existing turrets from vehicle
CTI_UI_Loadout_clearAllTurrets = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_classname = typeOf _unit;

	_turretlist = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretlist";	
	_turretcount = count _turretlist;	
	_process = false;
	_source = "";
	{
		_process_sub = false;
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};			
		_selectedturret = _x select 0;
		_mags = _x select 1;
		_path = _x select 2;
		_magcount = count _mags;
		_turreti = _foreachIndex;
		{
			_process_subsub = false;
			if (_source isEqualTo "" || !alive _unit) exitWith {};	
			_magi = _foreachIndex;
			_mag_class = _x select 0;
			_mag_count = _x select 1;
			_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_mag_class];
			_ammoclassname = nil;
			_ammoDisplayName = "";
			_ammotime = 5;
			if !(isNil "_ammoclass") then {
				_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
				_ammotime = _ammoclass select CTI_AMMO_TIME;
				_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
			};

			//check mag type for new rearm time
			_ispermag= false;
			_ammoclassarm = "";
			_magparentclasses = [configfile >> "CfgWeapons" >> _selectedturret, true] call BIS_fnc_returnParents;
			if (_mag_class in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
			{
				if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
			}forEach _magparentclasses;
			if(_ispermag) then {
				_ammoclassarm = _mag_class;				
			}else {
				_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _mag_class >> 'ammo');
			};
			_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
			if !(isNil "_ammoclassarmvar") then {
				_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
			};
			if !(_ispermag) then {
				_ammotime = _mag_count * _ammotime;
			};	
			//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_turretName,_selectedmag,_ammoclassarm];		

			_ammotime = 1 max (round (_ammotime / CTI_VEHICLES_LOADOUTS_CLEAR_DIVISOR));
			_displayname = getText (configFile >> "CfgWeapons" >> _selectedturret >> "DisplayName");
			disableserialization; 
			_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				_controlbar progressSetPosition 0;
			};
			//PROGRESSBAR
			_ammoi = _foreachIndex;
			for "_i" from 1 to _ammotime do {
				if (_source isEqualTo "" || !alive _unit) exitWith {};	
				if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
					_timeleft = _ammotime - (_i - 1);
					(parseText format["Removing %1 from %2 in %3s",_ammoDisplayName,_displayname,_timeleft]) call CTI_UI_Loadout_UpdateStatus;
					_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
					//_pos = progressPosition _controlbar;
					_fraction = 1 / _ammotime;
					_pos = _i  * _fraction;
					_controlbar progressSetPosition (_pos);
				};
				sleep 1;
				if (_ammotime isEqualTo _i) exitWith {_process_subsub = true};
			}; 
			if (_process_subsub) then {
				//remove all magazines
				_unit removeMagazineTurret [_mag_class, _path];
				if (_foreachindex isEqualTo (_magcount -1)) then {
					_unit addMagazineTurret [_mag_class, _path,0];
				};
				playSound "Click";
				if (_turretcount isEqualTo _turreti+1) exitWith {_process = true};
			};			
		}forEach _mags;
	} forEach _turretlist;

	if (_process) then {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle turrets removed!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle turrets failed to be removed!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	};	

	//Update Unit Variables
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		(_unit) call CTI_UI_Loadout_viewAllArms;
	};
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];

};
CTI_UI_Loadout_RearmAll = {
	_unit = _this;

	_rearmpylons = (_unit) spawn CTI_UI_Loadout_rearmAllPylons;
	waitUntil {scriptDone _rearmpylons};
	_rearmturrets = (_unit) spawn CTI_UI_Loadout_rearmAllTurrets;
	waitUntil {scriptDone _rearmturrets};
	_rearmlvossera = (_unit) spawn CTI_UI_Loadout_rearmAlllvossera;
	waitUntil {scriptDone _rearmlvossera};
	lbClear 790007;//clear mag list
	lbClear 790020;//clear current mag list

};
//Rearm all currently empty magazines
CTI_UI_Loadout_rearmAllPylons = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_classname = typeOf _unit;
	//(parseText format["Rearming All Pylons...",_classname]) call CTI_UI_Loadout_UpdateStatus;

	_unitpylonfull = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitpylonfull";
	_activePylonMags = _unitpylonfull select 1;
	_activePylonMagsCount = _unitpylonfull select 2;	
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};	
	_totaltime = 0;
	{
		_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_x];
		_ammoclassname = nil;
		_ammotime = 10;
		if !(isNil "_ammoclass") then {
			_ammotime = _ammoclass select CTI_AMMO_TIME;
		};
		_totaltime = _totaltime + _ammotime;
	} forEach _activePylonMags;	
	_magcount = count _activePylonMags;
	_process = false;
	{
		_process_sub = false;
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};	

		_ammoclass = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_x];
		_ammoclassname = nil;
		_ammotime = 10;
		if !(isNil "_ammoclass") then {
			_ammoclassname = _ammoclass select CTI_AMMO_CLASSNAME;
			_ammotime = _ammoclass select CTI_AMMO_TIME;
		};
		_maxAmount = getNumber (configfile >> "CfgMagazines" >> _x >> "count");
		_ammocount = _activePylonMagsCount select _foreachIndex;		

		//check mag type for new rearm time
		_ispermag= false;
		_ammoclassarm = "";
		_magparentclasses = [configfile >> "CfgWeapons" >> _ammoclassname, true] call BIS_fnc_returnParents;
		if (_ammoclassname in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
		{
			if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
		}forEach _magparentclasses;
		if(_ispermag) then {
			_ammoclassarm = _ammoclassname;				
		}else {
			_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _ammoclassname >> 'ammo');
		};
		_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
		if !(isNil "_ammoclassarmvar") then {
			_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
		};
		if !(_ispermag) then {
			_ammotime = (_maxAmount - _ammocount) * _ammotime;
		};
		//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_turretName,_selectedmag,_ammoclassarm];

		//only add time if mag used
		if (_ammocount isEqualTo _maxAmount) then {
			_ammotime = 0;
		};
		//PROGRESSBAR
		_ammoi = _foreachIndex;
		for "_i" from 1 to _ammotime do {
			if (_source isEqualTo "" || !alive _unit) exitWith {};	
			if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
				_timeleft = _ammotime - (_i - 1);
				_timeammo = (_ammotime * _magcount) - (_ammoi * (_i - 1));
				(parseText format["Rearming All Pylons in %1s | %2s",_timeleft, _timeammo]) call CTI_UI_Loadout_UpdateStatus;
				_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
				//_pos = progressPosition _controlbar;
				_fraction = 1 / _totaltime;
				_pos = _i  * _fraction;
				_controlbar progressSetPosition (_pos);
			}; 
			sleep 1;
			if (_ammotime isEqualTo _i) exitWith {_process_sub = true};
		}; 
		if (_process_sub) then {
			_unit SetAmmoOnPylon [_foreachIndex+1,_maxAmount];
			playSound "Click";
			if (_magcount isEqualTo _ammoi+1) exitWith {_process = true};
		};		
	} forEach _activePylonMags;
	
	if (_process) then {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle pylons rearmed!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle pylons failed to be rearmed!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	};

	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		(_unit) call CTI_UI_Loadout_viewAllArms;
	};

	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];	
};
//Rearm all currently empty turrets
CTI_UI_Loadout_rearmAllTurrets = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_classname = typeOf _unit;
	//(parseText format["Rearming All Turrets...",_classname]) call CTI_UI_Loadout_UpdateStatus;

	_turretlist = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_unitturretlist";
	/*_activeTurrets = [];
	{
		_selectedturret =  _x select 0;
		_turretmags = _x select 1;
		_weappath = _x select 2;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			_activeTurrets pushBack [_selectedturret,_magclass,_weappath];
		}forEach _turretmags;
	}forEach _turretlist;*/

	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	_totaltime = 0;
	{
		_selectedturret =  _x select 0;
		_mags = _x select 1;
		{
			_magclass = _x select 0;
			_ammocount = _x select 1;
			_ammotime = 10;
			_maxAmount = getNumber (configfile >> "CfgMagazines" >> _magclass >> "count");

			//check mag type for new rearm time
			_ispermag= false;
			_ammoclassarm = "";
			_magparentclasses = [configfile >> "CfgWeapons" >> _selectedturret, true] call BIS_fnc_returnParents;
			if (_magclass in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
			{
				if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
			}forEach _magparentclasses;
			if(_ispermag) then {
				_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
			}else {
				_ammoclassarm = _magclass;
			};
			_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
			if !(isNil "_ammoclassarmvar") then {
				_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
			};	
			if !(_ispermag) then {
				_ammotime = (_maxAmount - _ammocount) * _ammotime;
			};	
			//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_selectedturret,_selectedmag,_ammoclassarm];		
			//only add time if mag used
			if (_ammocount < _maxAmount) then {
				_totaltime = _totaltime + _ammotime;
			};
		}forEach _mags;
	} forEach _turretlist;	

	_turretcount = count _turretlist;	
	_process = false;
	{
		_process_sub = false;
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};	

		_selectedturret = _x select 0;
		_mags = _x select 1;
		_path = _x select 2;
		_magcount = count _mags;
		_turreti = _foreachIndex;
		{
			_process_subsub = false;
			if (_source isEqualTo "" || !alive _unit) exitWith {};	

			_magi = _foreachIndex;
			_mag_class = _x select 0;
			_mag_count = _x select 1;
			_ammoclassvaar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_mag_class];
			_ammoclassname = _mag_class;
			_ammotime = 10;
			_ammoDisplayName = "";
			if !(isNil "_ammoclassvar") then {
				_ammoclassname = _ammoclassvar select CTI_AMMO_CLASSNAME;
				_ammotime = _ammoclassvar select CTI_AMMO_TIME;
				_ammoDisplayName = getText(configFile >> "cfgmagazines" >> _ammoclassname >> "displayName");
			};
			_maxAmount = getNumber (configfile >> "CfgMagazines" >> _mag_class >> "count");
			//check mag type for new rearm time
			_ispermag= false;
			_ammoclassarm = "";
			_magparentclasses = [configfile >> "CfgWeapons" >> _selectedturret, true] call BIS_fnc_returnParents;
			if (_mag_class in CTI_VEHICLES_LOADOUTS_PERROUND) then {_ispermag = true;};
			{
				if (_x in CTI_VEHICLES_LOADOUTS_PERROUND_PARENT) then {_ispermag = true;};
			}forEach _magparentclasses;
			if(_ispermag) then {
				_ammoclassarm = _mag_class;
			}else {
				_ammoclassarm = getText(configFile >> 'CfgMagazines' >> _mag_class >> 'ammo');
			};
			_ammoclassarmvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclassarm];
			if !(isNil "_ammoclassarmvar") then {
				_ammotime = _ammoclassarmvar select CTI_AMMO_TIME;
			};
			if !(_ispermag) then {
				_ammotime = (_maxAmount - _mag_count) * _ammotime;
			};	
			if (_mag_count isEqualTo _maxAmount) then {
				_ammotime = 0;
			};
			//systemChat format["PER: %1 | %2 | %3 | %4", _ispermag,_selectedturret,_selectedmag,_ammoclassarm];

			_forcereinstall = false;
			_displayname = getText (configFile >> "CfgWeapons" >> _selectedturret >> "DisplayName");
			//systemChat format["Name: %1", _displayname];
			if (_displayname isEqualTo "Flares" || _displayname isEqualTo "Smoke Screen" || _displayname isEqualTo "Laser Marker") then {
				_forcereinstall = true;
			};
			//PROGRESSBAR
			for "_i" from 1 to _ammotime do {
				if (_source isEqualTo "" || !alive _unit) exitWith {};	
				if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
					_timeleft = _ammotime - (_i - 1);
					//_timeammo = (_turretcount * _magcount * _ammotime) - ((_turreti * _magi * _ammotime) * (_i - 1));
					(parseText format["Rearming %1 on %2 in %3s",_ammoDisplayName,_displayname,_timeleft]) call CTI_UI_Loadout_UpdateStatus;
					_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
					//_pos = progressPosition _controlbar;
					_fraction = 1 / _ammotime;
					_pos = _i  * _fraction;
					_controlbar progressSetPosition (_pos);
				};
				sleep 1;
				if (_ammotime isEqualTo _i) exitWith {_process_subsub = true};
			}; 
			if (_process_subsub) then {
				_maxAmount = getNumber (configfile >> "CfgMagazines" >> _ammoclassname >> "count");	
				//Add the magazine
				if(_forcereinstall) then {
					{
						_mag_class = _x select 0;
						_unit removeMagazinesTurret [_mag_class, _path];
					} forEach _mags;
					_unit removeWeaponTurret [_selectedturret, _path];
					_unit addMagazineTurret [_ammoclassname, _path];
					_unit addWeaponTurret [_selectedturret, _path];

				} else {
					if (_mag_count < _maxAmount) then {
						_unit removeMagazineTurret [_ammoclassname, _path];
						_unit addMagazineTurret [_ammoclassname, _path];
					} else {
						//_unit addMagazineTurret [_ammoclassname, _path];
					};
				};
				playSound "Click";
				if (_magcount isEqualTo _magi+1) exitWith {_process = true};
			};			
		}forEach _mags;
	} forEach _turretlist;

	if (_process) then {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle turrets rearmed!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Vehicle turrets failed to be rearmed!",_classname]) call CTI_UI_Loadout_UpdateStatus;
		};
	};	
	
	//Update Unit Variables
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		(_unit) call CTI_UI_Loadout_viewAllArms;
	};
	
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];

};
CTI_UI_Loadout_rearmAlllvossera = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",true];
	_classname = typeOf _unit;
	//get existing ammo
	_ammoleft = _unit getVariable "ammo_left";
	if (isNil "_ammoleft") then {_ammoleft = 0};
	_ammoright = _unit getVariable "ammo_right";
	if (isNil "_ammoright") then {_ammoright = 0};

	_type = "";
	_maxAmount = 0;
	_ammostat_price = 0;
	_ammotime = 0;
	//add lvoss/era
	_upgrades = nil;
	_upgrade_lvoss = 0;
	_upgrade_era = 0;
	if (count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) > 0) then {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_VEHICLES_LVOSS isEqualTo 1) then {_upgrade_lvoss = _upgrades select CTI_UPGRADE_LVOSS;};
		if (CTI_VEHICLES_ERA isEqualTo 1) then {_upgrade_era = _upgrades select CTI_UPGRADE_ERA;};
	};
	if (isNil "_upgrade_lvoss") then {_upgrade_lvoss = 0;};
	if (isNil "_upgrade_era") then {_upgrade_era = 0;};
	if (_unit isKindOf "Car") then {
		_type = "LVOSS";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_LVOSS_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_LVOSS_TIME;
		if (_upgrade_lvoss > 0) then {
			switch (_upgrade_lvoss) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
			};
		};
	};
	if (_unit isKindOf "Tank") then {
		_type = "ERA";
		_ammostat_price = CTI_VEHICLES_LOADOUTS_ERA_PRICE;
		_ammotime = CTI_VEHICLES_LOADOUTS_ERA_TIME;
		if (_upgrade_era > 0) then {
			switch (_upgrade_era) do {
				case 0: {
					_maxAmount = 0;
				};
				case 1: {
					_maxAmount = 1;
				};
				case 2: {
					_maxAmount = 2;
				};
				case 3: {
					_maxAmount = 3;
				};
				case 4: {
					_maxAmount = 4;
				};
			};
		};
	};
	_ammo_left_total = _maxAmount - _ammoleft;
	_ammo_right_total = _maxAmount - _ammoright;
	_ammo_total = _ammo_left_total + _ammo_right_total;

	_ammotime = _ammotime * _ammo_total;
	_process = false;
	disableserialization; 
	_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		_controlbar progressSetPosition 0;
	};
	for "_i" from 1 to _ammotime do {
		_source = (_unit) call CTI_UI_Loadout_getSource;
		if (_source isEqualTo "" || !alive _unit) exitWith {};	
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			_timeleft = _ammotime - (_i - 1);
			(parseText format["Installing %1 %2 mags in %3s",_ammo_total, _type, _timeleft]) call CTI_UI_Loadout_UpdateStatus;
			_controlbar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu") displayCtrl 790024;
			//_pos = progressPosition _controlbar;
			_fraction = 1 / _ammotime;
			_pos = _i  * _fraction;
			_controlbar progressSetPosition (_pos);
		};
		sleep 1;
		if (_ammotime isEqualTo _i) exitWith {_process = true};
	}; 

	if (_process) then {
		_unit setVariable ["ammo_left", _maxAmount, true];
		_unit setVariable ["reloading_left", 0, true];
		_unit setVariable ["ammo_right", _maxAmount, true];
		_unit setVariable ["reloading_right", 0, true];		
		playSound "Click";
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Successfully installed %1 %2 mags",_ammo_total, _type]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
			(parseText format["Failed to install %1 %2 mags",_ammo_total, _type]) call CTI_UI_Loadout_UpdateStatus;
		};
	};	
	if (_unit isEqualTo (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit")) then {
		//Update Unit Variables
		(_unit) call CTI_UI_Loadout_UpdateAllPrices;
		//Update Pylonlist - fill
		(_unit) call CTI_UI_Loadout_viewAllArms;
	};

	_unit setVariable ["cti_dialog_ui_loadoutmenu_busy",false];

};
//Distplay Input magazine quantity
CTI_UI_Loadout_magazineQty = {
	_magclass = _this select 0;
	_maxAmount = _this select 1;
	_selectedturret = _this select 2;

	_ammoclass = getText(configFile >> 'CfgMagazines' >> _magclass >> 'ammo');
	_ammo_var = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
	_ammoprice = 10;
	if (isNil "_ammo_var") then {
		_ammoprice = getNumber(configFile >> 'CfgAmmo' >> _magclass >> 'cost');
	} else {
		_ammoprice = _ammo_var select CTI_AMMO_PRICE;
	};
	
	_setAmount = if (count (ctrlText 790010) > 0) then {call compile (ctrlText 790010)} else {_maxAmount};
	//systemchat format ["ct: %1 %2",_setAmount, _maxAmount];
	_finalAmount = _setAmount min _maxAmount;

	ctrlSetText [790010, str _maxAmount];

	//check if they had any existing
	
	//update pricing
	_totalprice = _ammoprice * _maxAmount;
	[_totalprice] call CTI_UI_Loadout_UpdatePrice;

};
CTI_UI_Loadout_magazineQtyChanged = {
	_qty = call compile (ctrlText 790010);
	_ammostat_price = 0;
	_selectedmag = "";
	_ammoclass = "";
	//systemChat format["qty: %1", _qty ];

	//systemchat format ["qty: %1 ",_qty];
	_type = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_purchasetype");
	switch (_type) do {
		case "turret": {
			_turretName = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 0;
			_selectedmag = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 1;
			_finalAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 2;
			_maxAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 3;
			_turretpath = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedturretpurchase") select 4;
			//limit mags to max
			if (_qty > _maxAmount) then {
				_qty = _maxAmount;
				ctrlSetText [790010, str _qty];
			};			
			uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedturretpurchase", [_turretName,_selectedmag,_qty,_maxAmount,_turretpath]];

			//get ammo class from list
			_ammoclass = getText(configFile >> 'CfgMagazines' >> _selectedmag >> 'ammo');
			_ammoclassvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
			if (isNil "_ammoclassvar") then {
				_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _selectedmag >> 'cost');
			} else {
				_ammostat_price = _ammoclassvar select CTI_AMMO_PRICE;
			};
		};
		case "pylon": {
			_pylonNum = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 0;
			_pylonName = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 1;
			_selectedmag = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 2;
			_finalAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 3;
			_maxAmount = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 4;
			_magDispName = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedpurchase") select 5;
			//limit mags to max
			if (_qty > _maxAmount) then {
				_qty = _maxAmount;
				ctrlSetText [790010, str _qty];
			};			
			uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedpurchase", [_pylonNum,_pylonName,_selectedmag,_qty,_maxAmount,_magDispName]];

			_ammoclass = getText(configFile >> 'CfgMagazines' >> _selectedmag >> 'ammo');
			//get ammo class from list
			_ammoclassvar = missionNamespace getVariable format["CTI_Ammo_%1_%2",CTI_P_SideJoined,_ammoclass];
			if (isNil "_ammoclassvar") then {
				_ammostat_price = getNumber(configFile >> 'CfgAmmo' >> _ammoclass >> 'cost');
			} else {
				_ammostat_price = _ammoclassvar select CTI_AMMO_PRICE;
			};
		};
		case "lvossera": {
			_lvossera_type = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 0;
			_lvossera_side = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 1;
			_lvossera_num = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 2;
			_lvossera_max = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_selectedlvosserapurchase") select 3;
			if (_lvossera_type isEqualTo "LVOSS") then {
				_ammostat_price = CTI_VEHICLES_LOADOUTS_LVOSS_PRICE;
			} else{
				_ammostat_price = CTI_VEHICLES_LOADOUTS_ERA_PRICE;
			};
			//limit mags to max
			if (_qty > _lvossera_max) then {
				_qty = _lvossera_max;
				ctrlSetText [790010, str _qty];
			};
			uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_selectedlvosserapurchase", [_lvossera_type,_lvossera_side,_qty]];
		};
	};

	_totalprice = _ammostat_price * _qty;
	[_totalprice] call CTI_UI_Loadout_UpdatePrice;	
};
CTI_UI_Loadout_PurchaseCustomization = {
	_unit = _this select 0;
	_selected = _this select 1;
	//systemChat format["selected",_selected];
	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_funds = call CTI_CL_FNC_GetPlayerFunds;
				_price = 1000;
				if (_funds >= _price) then {
					
					-(_price) call CTI_CL_FNC_ChangePlayerFunds;
					[_unit, _selected] spawn CTI_UI_Loadout_InstallCustomization;
						
				} else {
					(parseText format["You do not have enough funds"]) call CTI_UI_Loadout_UpdateStatus;
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};	
	
};
CTI_UI_Loadout_PurchaseRemoveCustomization = {
	_unit = _this select 0;
	_selected = _this select 1;
	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {	
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_funds = call CTI_CL_FNC_GetPlayerFunds;
				_price = 1000;
				if (_funds >= _price) then {
					
					-(_price) call CTI_CL_FNC_ChangePlayerFunds;
					[_unit, _selected] spawn CTI_UI_Loadout_clearCustomization;	
					
				} else {
					(parseText format["You do not have enough funds"]) call CTI_UI_Loadout_UpdateStatus;
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};	
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};
};
CTI_UI_Loadout_PurchaseSkin = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_colorName = _this select 0;
	_colorTextures = _this select 1;
	_colorPrice = _this select 2;
	_colorType = _this select 3;
	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {	
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_curcamo = _unit getVariable "cti_unit_camo";
				if (_curcamo isEqualTo _colorName) then {
					(parseText format["Skin Already Installed"]) call CTI_UI_Loadout_UpdateStatus;
				} else {
					_funds = call CTI_CL_FNC_GetPlayerFunds;
					if (_funds >= _colorPrice) then {
						
						-(_colorPrice) call CTI_CL_FNC_ChangePlayerFunds;
						[_colorName, _colorTextures, _colorType] spawn CTI_UI_Loadout_setSkin;	
						
					} else {
						(parseText format["You do not have enough funds"]) call CTI_UI_Loadout_UpdateStatus;
					};
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};	
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};	
};
//Purchase Selected Magazine to Pylon
CTI_UI_Loadout_purchasePylons = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {	
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_funds = call CTI_CL_FNC_GetPlayerFunds;
				_current_credit = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
				_pricevar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_price");
				_price = _pricevar select 0;
				_credit = _pricevar select 1;
				if (_funds >= _price) then {
					
					-(_price) call CTI_CL_FNC_ChangePlayerFunds;

					_finalcredit = _current_credit - _credit;
					if (_finalcredit < 0) then {_finalcredit = 0;};
					uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", _finalcredit];
					[0] call CTI_UI_Loadout_UpdateCredit;

					[_unit] call CTI_UI_Loadout_installPylons;
					lbClear 790007;//clear mag list
					lbClear 790020;//clear current mag list
					
				} else {
					(parseText format["You do not have enough funds"]) call CTI_UI_Loadout_UpdateStatus;
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};	
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};
};
CTI_UI_Loadout_purchaseTurrets = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_magsvar = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_currentmags";
	_curmag = _magsvar select 0;
	_curmagmax = _magsvar select 1;	
	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {	
		if !(isNil '_unit') then {
			if (alive _unit) then {
				if (_curmag < _curmagmax) then {
					_funds = call CTI_CL_FNC_GetPlayerFunds;
					_current_credit = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
					_pricevar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_price");
					_price = _pricevar select 0;
					_credit = _pricevar select 1;
					if (_funds >= _price) then {
						
						-(_price) call CTI_CL_FNC_ChangePlayerFunds;

						_finalcredit = _current_credit - _credit;
						if (_finalcredit < 0) then {_finalcredit = 0;};
						uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", _finalcredit];
						[0] call CTI_UI_Loadout_UpdateCredit;

						[_unit] spawn CTI_UI_Loadout_installturrets;
						lbClear 790007;//clear mag list
						lbClear 790020;//clear current mag list
						
					} else {
						(parseText format["You do not have enough funds"]) call CTI_UI_Loadout_UpdateStatus;
					};
				} else {
					(parseText format["Max magazines already installed, please remove magazine and try again"]) call CTI_UI_Loadout_UpdateStatus;
				};	
			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};	
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};	
};
CTI_UI_Loadout_purchaseLvossEra = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {	
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_funds = call CTI_CL_FNC_GetPlayerFunds;
				_current_credit = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
				_pricevar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_price");
				_price = _pricevar select 0;
				_credit = _pricevar select 1;
				if (_funds >= _price) then {
					
					-(_price) call CTI_CL_FNC_ChangePlayerFunds;
					
					_finalcredit = _current_credit - _credit;
					if (_finalcredit < 0) then {_finalcredit = 0;};
					uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", _finalcredit];
					[0] call CTI_UI_Loadout_UpdateCredit;

					[_unit] spawn CTI_UI_Loadout_install_lvossera;
					lbClear 790007;//clear mag list
					lbClear 790020;//clear current mag list
					
				} else {
					(parseText format["You do not have enough funds"]) call CTI_UI_Loadout_UpdateStatus;
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};		
};
//Purchase Rearm
CTI_UI_Loadout_purchaseRearm = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");
	_closest = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
	_tax = 1;
	if (isNull _closest) then {_tax = 1} else { _tax = CTI_SERVICE_PRICE_DEPOT_COEF};
	_closest_large_fob = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestLargeFOB;
	_tax = 1;
	if (isNull _closest_large_fob) then {_tax = 1} else { _tax = CTI_SERVICE_PRICE_LARGE_FOB_COEF};

	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_funds = call CTI_CL_FNC_GetPlayerFunds;
				_current_credit = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
				_pricevar = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_rearmprice");
				_price = _pricevar select 0;
				_credit = _pricevar select 1;

				if (_funds >= _price) then {
					
					-(_price) call CTI_CL_FNC_ChangePlayerFunds;

					_finalcredit = _current_credit - _credit;
					if (_finalcredit < 0) then {_finalcredit = 0;};
					uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", _finalcredit];
					[0] call CTI_UI_Loadout_UpdateCredit;
					(_unit) spawn CTI_UI_Loadout_RearmAll;
					
				} else {
					(parseText format["You do not have enough funds"]) call CTI_UI_Loadout_UpdateStatus;
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};		
};
//Purchase Clear Mag
CTI_UI_Loadout_purchaseClearMag = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");

	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_funds = call CTI_CL_FNC_GetPlayerFunds;
				_price = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_clearmagprice");
				if (_price > 0) then {
					(_unit) spawn CTI_UI_Loadout_clearMag;

					lbClear 790007;//clear mag list
					lbClear 790020;//clear current mag list
					_current_credits = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
					_credits = _current_credits + _price;
					uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", _credits];
					[0] call CTI_UI_Loadout_UpdateCredit;	
								
				} else {
					(parseText format["Nothing to refund"]) call CTI_UI_Loadout_UpdateStatus;
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};		
};
//Purchase Clear ALl
CTI_UI_Loadout_purchaseClearAll = {
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");

	_isbusy = _unit getVariable "cti_dialog_ui_loadoutmenu_busy";
	if !(_isbusy) then {
		if !(isNil '_unit') then {
			if (alive _unit) then {
				_funds = call CTI_CL_FNC_GetPlayerFunds;
				_price = (uiNamespace getVariable "cti_dialog_ui_loadoutmenu_clearprice");
				if (_price > 0) then {
					//(_price) call CTI_CL_FNC_ChangePlayerFunds;
					(_unit) spawn CTI_UI_Loadout_clearAll;
					_current_credits = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_credit";
					_credits = _current_credits + _price;
					uiNamespace setVariable ["cti_dialog_ui_loadoutmenu_credit", _credits];
					[0] call CTI_UI_Loadout_UpdateCredit;	
								
				} else {
					(parseText format["Nothing to refund"]) call CTI_UI_Loadout_UpdateStatus;
				};

			} else {
				(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
			};
		} else {
			(parseText format["Cannot perform this operation on a destroyed unit"]) call CTI_UI_Loadout_UpdateStatus;
		};
	} else {
		(parseText format["Loadout system is busy"]) call CTI_UI_Loadout_UpdateStatus;
	};		
};
//Toggle Motivation Music
CTI_UI_Loadout_toggleMusic = {

};

CTI_UI_Loadout_InitializeProfileTemplates = {
	//get preset templates
	_templates = missionNamespace getVariable "cti_loadout_template_presets";
	if (isNil {missionNamespace getVariable "cti_loadout_template_presets"}) then {
		_templates = [];
	};	

	profileNamespace setVariable [format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined], _templates];
	saveProfileNamespace;
};
CTI_UI_Loadout_viewAllTemplates = {
	_unit = _this;//classname

	_templates = profileNamespace getVariable format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined];

	if !(isNil '_templates') then {
		if ((count _templates) > 0) then {
			_validctn = 0;
			{
				_classname = _x select 0;
				_name = _x select 1;
				_turretlist = _x select 2;
				_unitpylonfull = _x select 3;
				if (_unit isEqualTo _classname) then {
					lbAdd [790025,format ["%1", _name]];
					lbsetData [790025,_foreachIndex,_name];
					_validctn = _validctn +1;
				};
			}forEach _templates;
			if (_validctn isEqualTo 0) then {
				lbAdd [790025,format ["%1", "No Templates for this unit"]];
				lbsetData [790025,0,0];
			};
		} else {
			lbAdd [790025,format ["%1", "No Templates"]];
			lbsetData [790025,0,0];
		};
	};	
};
CTI_UI_Loadout_SaveProfileTemplate = {
	private ["_index", "_seed", "_templates"];
	_seed = _this;
	_unit = (uiNamespace getVariable "cti_dialog_ui_servicemenu_loadoutunit");

	_unitfullloadout = uiNamespace getVariable "cti_dialog_ui_loadoutmenu_weaponsfull";
	_turretlist = _unitfullloadout select 0;
	_unitpylonfull = _unitfullloadout select 1;

	//_templates format
	_template =	[_classname, _name, _turretlist, _unitpylonfull];

	_templates = profileNamespace getVariable format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined];
	_index = -1;
	{
		if ((_x select 5) isEqualTo _seed) exitWith {_index = _forEachIndex};
	} forEach _templates;

	if (_index > -1) then {
		if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FUNCTION: CTI_UI_Gear_SaveProfileTemplate", format["Saved the persistent gear template located at position [%1] in the persistent gear profile which had a seed value of [%2]", _index, _seed]] call CTI_CO_FNC_Log};

		_templates deleteAt _index;
		profileNamespace setVariable [format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined], _templates];
		saveProfileNamespace;
	};
};
CTI_UI_Loadout_RemoveProfileTemplate = {
	private ["_index", "_seed", "_templates"];
	_seed = _this;

	_templates = profileNamespace getVariable format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined];
	_index = -1;
	{if ((_x select 5) isEqualTo _seed) exitWith {_index = _forEachIndex}} forEach _templates;

	if (_index > -1) then {
		if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FUNCTION: CTI_UI_Gear_RemoveProfileTemplate", format["Removed the persistent gear template located at position [%1] in the persistent gear profile which had a seed value of [%2]", _index, _seed]] call CTI_CO_FNC_Log};

		_templates deleteAt _index;
		profileNamespace setVariable [format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined], _templates];
		saveProfileNamespace;
	};
};

CTI_UI_Loadout_RenameProfileTemplate = {
	private ["_index", "_seed", "_templates", "_newName"];
	_seed = _this select 0;
	_newName = _this select 1;

	_templates = profileNamespace getVariable format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined];
	_index = -1;
	{if ((_x select 5) isEqualTo _seed) exitWith {_index = _forEachIndex}} forEach _templates;

	if (_index > -1) then {
		if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FUNCTION: CTI_UI_Gear_RenameProfileTemplate", format["Renamed the persistent gear template located at position [%1] in the persistent gear profile which had a seed value of [%2]", _index, _seed]] call CTI_CO_FNC_Log};

		(_templates select _index) set [0, _newName];
		profileNamespace setVariable [format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined], _templates];
		saveProfileNamespace;
	};
};
CTI_UI_Loadout_GetProfileTemplateName = {
	_seed = _this;
	_name = "";

	_templates = profileNamespace getVariable format["cti_loadout_templatelist_v1_%1", CTI_P_SideJoined];
	_index = -1;
	{if ((_x select 5) isEqualTo _seed) exitWith {_index = _forEachIndex}} forEach _templates;

	if (_index > -1) then {
		_name = (_templates select _index) select 0;
	};
	_name
};


//-------------------------------------------------------------------------------------------
/*
Collect Classnames
*/
/*CTI_UI_Loadout_getClassnames = {
	//activatedAddons select {! (["a3_", _x] call BIS_fnc_inString) }

	_addonNames =  getArray ( configFile >> "CfgPatches");
	_weaponNames = [];
	_magNames = [];
	{
		_weaponNames = _weaponNames + getArray ( configFile >> "CfgPatches" >> _x >> "weapons" );
		_magNames = _magNames + getText ( configFile >> "CfgPatches" >> _x >> "CfgMagazines" );
	} foreach activatedAddons select {! (["a3_", _x] call BIS_fnc_inString) };

};*/
/*
_weaponsList = [];
_namelist = [];
_cfgweapons = configFile >> "cfgWeapons";
for "_i" from 0 to (count _cfgweapons)-1 do {
	_weapon = _cfgweapons select _i;
	if (isClass _weapon) then {
		_wCName = configName(_weapon);
		_wDName = getText(configFile >> "cfgWeapons" >> _wCName >> "displayName");
		_wModel = getText(configFile >> "cfgWeapons" >> _wCName >> "model");
		_wType = getNumber(configFile >> "cfgWeapons" >> _wCName >> "type");
		_wscope = getNumber(configFile >> "cfgWeapons" >> _wCName >> "scope");
		_wPic =  getText(configFile >> "cfgWeapons" >> _wCName >> "picture");
		_wDesc = getText(configFile >> "cfgWeapons" >> _wCName >> "Library" >> "libTextDesc");	

		_isFake = false;
		_wHits=0;
		_mags=[];
		_muzzles = getArray(configfile >> "cfgWeapons" >> _wCName >> "muzzles");
		if ((_muzzles select 0)=="this") then {
			_muzzles=[_wCName];
			_mags = getArray(configfile >> "cfgWeapons" >> _wCName >> "magazines");
		} else {
			{
				_muzzle=_x;
				_mags = getArray(configfile >> "cfgWeapons" >> _wCName >> _muzzle >> "magazines");
			}forEach _muzzles;
		};
		{
			_ammo = getText(configfile >> "cfgMagazines" >> _x >> "ammo");
			_hit = getNumber(configfile >> "cfgAmmo" >> _ammo >> "hit");
			_wHits = _wHits + _hit;
		}forEach _mags;

		if ((_wCName!="") && (_wDName!="") && (_wModel!="") && (_wPic!="")) then {
			if !(_wDName in _namelist) then {
				_weaponsList = _weaponsList + [_wCName];
					_namelist = _namelist + [_wDName];
			};
		};
	};
};
_weaponsList

_weaponsList = [];
_cfgWeapons = configFile >> "cfgWeapons";
for "_i" from 0 to (count _cfgWeapons)-1 do {
	_weapon = _cfgWeapons select _i;
	if (isClass _weapon) then {
		_mCName = configName(_weapon);
		_mDName = getText(configFile >> "cfgWeapons" >> _mCName >> "displayName");	

		_mags=[];
		_muzzles = getArray(configfile >> "cfgWeapons" >> _mCName >> "muzzles");
		if ((_muzzles select 0)=="this") then {
			_muzzles=[_mCName];
			_mags = getArray(configfile >> "cfgWeapons" >> _mCName >> "magazines");
		} else {
			{
				_muzzle=_x;
				_mags = getArray(configfile >> "cfgWeapons" >> _mCName >> _muzzle >> "magazines");
			}forEach _muzzles;
		};			

		if ((_mCName!="") && (_mDName!="") && (count _mags > 0)) then {
			if !(_mCName in _weaponsList) then {
				_weaponsList = _weaponsList + [_mCName];
			};
		};
	};
};
_weaponsList


_mags = [];
_ammos = [];
_cfgmagazines = configFile >> "CfgMagazines";
for "_i" from 0 to (count _cfgmagazines)-1 do {
	_magazine = _cfgmagazines select _i;
	if (isClass _magazine) then {
		_mCName = configName(_magazine);
		_mDName = getText(configFile >> "cfgmagazines" >> _mCName >> "displayName");
		_mModel = getText(configFile >> "cfgmagazines" >> _mCName >> "model");
		_mAmmo = getText(configfile >> "cfgMagazines" >> _mCName >> "ammo");	

		if ((_mCName!="") && (_mDName!="") && (_mModel!="") && (_mAmmo !="")) then {
			if !(_mCName in _mags) then {
				_mags = _mags + [_mCName];
			};
			if !(_mAmmo in _ammos) then {
				_ammos = _ammos + [_mAmmo];
			};
		};
	};
};
_ammos
*/





