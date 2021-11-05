_templates = profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATE_%1", CTI_Client_SideJoined];

_roles = [WSW_SNIPER, WSW_SOLDIER, WSW_ENGINEER, WSW_SPECOPS, WSW_ARTY_OPERATOR, WSW_UAV_OPERATOR];
{
	_roleTemplates = (missionNamespace getVariable format["CTI_gear_list_templates_%1_%2", CTI_Client_SideJoined, _x]);
	if(!isNil "_template")then{
		_templates = _templates + _roleTemplates;
};
} foreach _roles;

_side_gear = [];
{
	_side_gear = _side_gear + ((missionNamespace getVariable _x) call CTI_CO_FNC_ArrayToLower);
} forEach ["CTI_gear_list_primary","CTI_gear_list_secondary","CTI_gear_list_pistol","CTI_gear_list_magazines","CTI_gear_list_accessories","CTI_gear_list_misc","CTI_gear_list_special","CTI_gear_list_uniforms","CTI_gear_list_vests","CTI_gear_list_backpacks","CTI_gear_list_headgear","CTI_gear_list_glasses","CTI_gear_list_explosives"];

//--- Attempt to load the "proper" templates
_list = [];
if (typeName _templates == "ARRAY") then { //--- The variable itself is an array
	{
		// [_label, _picture, _cost, _x]
		if (typeName _x == "ARRAY") then { //--- Each items are arrays >> [_label, _picture, _cost, _x, upgrade]
			_gear = _x select 3;
			if (typeName (_x select 0) == "STRING" && typeName (_x select 1) == "STRING" && typeName _gear == "ARRAY") then {
				if (count _gear == 4) then { //--- Make sure that we have the sections (weapons/container+mags/equipment/equipment2)
					_flag_load = true;
					
					//--- #1 Now the party begin! first we check the weapons (primary/secondary/handgun)
					_gear_sub = _gear select 0;
					if (typeName _gear_sub == "ARRAY") then {
						{
							//--- Check that the weapon... is a weapon! >> 
							if (typeName _x == "ARRAY") then {
								if (count _x == 3) then { //--- Make sure that we have the weapon/accessories/current magazine
									_weapon = toLower(_x select 0);
									_accessories = (_x select 1) call CTI_CO_FNC_ArrayToLower;
									_magazine = (_x select 2) call CTI_CO_FNC_ArrayToLower;
									
									if (typeName _weapon == "STRING" && typeName _accessories == "ARRAY" && typeName _magazine == "ARRAY") then { //--- The data format is valid
										{
											if (typeName _x == "STRING") then { //--- The accessory is a string
												if (_x != "") then { //--- Empty accessories are skipped
													if (!isClass (configFile >> "CfgWeapons" >> _x) || !(_x in _side_gear)) exitWith {_flag_load = false}; //--- The accessory ain't valid or it's not within the side's gear
													if (getNumber(configFile >> "CfgWeapons" >> _x >> "type") != CTI_TYPE_ITEM) exitWith {_flag_load = false}; //--- The accessory is not a valid base class!
													if !(getNumber(configFile >> "CfgWeapons" >> _x >> "ItemInfo" >> "type") in [CTI_SUBTYPE_ACC_MUZZLE,CTI_SUBTYPE_ACC_OPTIC,CTI_SUBTYPE_ACC_SIDE]) exitWith {_flag_load = false}; //--- The accessory is not a valid base class (we don't care bout the order)!
												};
											};
											//if !(_flag_load) exitWith {};
										} forEach _accessories;
										if !(_flag_load) exitWith {}; //--- Something went wrong with the accessories
										
										//if !(count _magazine in [0,1]) exitWith {_flag_load = false};
										if (count _magazine == 1) then { //--- Make sure that the magazine is valid
											_magazine = _magazine select 0;
											//if (!isClass (configFile >> "CfgMagazines" >> _magazine) || !(_magazine in _side_gear)) exitWith {_flag_load = false};
										};
										//if !(_flag_load) exitWith {}; //--- Something went wrong with the magazine
									} else {
										_flag_load = false;
									};
								} else {
									_flag_load = false;
								};
							} else {
								_flag_load = false;
							};
							
						} forEach _gear_sub;
					} else {
						_flag_load = false;
					};
					
					if (_flag_load) then {
						//--- #2 then we check the containers (uniform/vest/backpack)
						_gear_sub = _gear select 1;
						
						if (typeName _gear_sub == "ARRAY") then {
							if (count _gear_sub == 3) then { //--- Make sure that we have the sections (uniform/vest/backpack)
								{
									if (typeName _x == "ARRAY") then {
										if (count _x == 2) then { //--- Each array need to have the container and the items
											if (typeName (_x select 0) == "STRING" && typeName (_x select 1) == "ARRAY") then { //--- The container is a string, the items are an array
												_container = toLower(_x select 0);
												_items = (_x select 1) call CTI_CO_FNC_ArrayToLower;
												
												if (_container != "") then { //--- If the container is empty, we don't bother any further
												
													//--- We check the items sanity now
													{
														//if (typeName _x != "STRING") exitWith {_flag_load = false};
														_config_type = switch (true) do { //--- Determine the kind of item that we're dealing with
															case (isClass (configFile >> "CfgWeapons" >> _x)): {"CfgWeapons"};
															case (isClass (configFile >> "CfgMagazines" >> _x)): {"CfgMagazines"};
															case (isClass (configFile >> "CfgVehicles" >> _x)): {"CfgVehicles"};
															case (isClass (configFile >> "CfgGlasses" >> _x)): {"CfgGlasses"};
															default {"nil"};
														};
														
														//if (_config_type == "nil") exitWith {_flag_load = false};
													} forEach _items;
												};
												
												//if !(_flag_load) exitWith {};
											} else {
												_flag_load = false;
											};
										} else {
											_flag_load = false;
										};
									} else {
										_flag_load = false;
									};
								} forEach _gear_sub;
							} else {
								_flag_load = false;
							};
						}  else {
							_flag_load = false;
						};
					};
					
					if (_flag_load) then {
						//--- #3 next we check the head equipment (helm/goggles)
						_gear_sub = _gear select 2;
						
						if (typeName _gear_sub == "ARRAY") then {
							if (count _gear_sub == 2) then {} else {
								_flag_load = false;
							};
						} else {
							_flag_load = false;
						};
						
						if (_flag_load) then {
							//--- #4 next we check the items (binoc, nvg, items like gps)
							_gear_sub = _gear select 3;
							
							if (typeName _gear_sub == "ARRAY") then {
								if (count _gear_sub == 2) then {
									//--- Check nvg/binocs
									if (typeName (_gear_sub select 0) == "ARRAY") then {
										if (count(_gear_sub select 0) == 2) then {} else {
											_flag_load = false;
										};
									};
									
									//--- Check items
									if (typeName (_gear_sub select 1) == "ARRAY") then {
										if (count(_gear_sub select 1) == 5) then {
											{
												if (_x != "") then {
													if (getNumber(configFile >> "CfgWeapons" >> _x >> "ItemInfo" >> "type") != CTI_SUBTYPE_ITEM) 
												};
											} forEach (_gear_sub select 1);
										} else {
											_flag_load = false;
										};
									};
								};
							};
							
							if (_flag_load) then {
								//todo, get cost & upgrade
								_flat = (_x select 3) call CTI_CO_FNC_ConvertGearToFlat;
								_cost = 0;
								{
									_cost = _cost + (_x call CTI_CO_FNC_GetGearItemCost);
								} forEach _flat;
								_x set [2, _cost];
								
								_list pushBack _x;
							};
						};
					};
				};
			};
		};
	} forEach _templates;
};

if (count _list > 0) then { //--- If we have more than one template then we overwrite the existing one
	missionNamespace setVariable ["CTI_gear_list_templates", _list];
};