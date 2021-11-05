private ["_rank","_info1", "_info2", "_info3", "_info4", "_info5", "_info6","_info7", "_upgrade_barracks_ai", "_upgrades", "_upgrade_barracks","_last_rank","_weapon_sway"];

_info1 = 0;
_info2 = 0;
_info3 = 0;
_info4 = 0;
_info5 = 0;
_info6 = 0;
_info7 = 0;
_upgrade_barracks_ai = 3;
_last_rank = "NOOB";

while {!CTI_GameOver} do {

	//--- Barracks player AI update
	_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
	_upgrade_barracks = _upgrades select CTI_UPGRADE_BARRACKS;
	switch (_upgrade_barracks) do {
		case 0: {
			_upgrade_barracks_ai = 3;
		};
		case 1: {
			_upgrade_barracks_ai = 4;
		};
		case 2: {
			_upgrade_barracks_ai = 5;
			player setUnitTrait ["Medic",true];
		};
		case 3: {
			_upgrade_barracks_ai = 6;
			player setUnitTrait ["Medic",true];
			player setUnitTrait ["explosiveSpecialist",true];
		};
		case 4: {
			_upgrade_barracks_ai = 7;
			player setUnitTrait ["Medic",true];
			player setUnitTrait ["explosiveSpecialist",true];
		};
		case 5: {
			_upgrade_barracks_ai = 8;
			player setUnitTrait ["Medic",true];
			player setUnitTrait ["explosiveSpecialist",true];
		};
		case 6: {
			_upgrade_barracks_ai = 9;
			player setUnitTrait ["Medic",true];
			player setUnitTrait ["explosiveSpecialist",true];
			player setUnitTrait ["UAVHacker",true];
		};
	};

	//--- Lets give commander more AI
	if (call CTI_CL_FNC_IsPlayerCommander) then {_upgrade_barracks_ai = 10;};

	if ( CTI_PLAYERS_GROUPSIZE isEqualTo 0) then {
		player setVariable ["CTI_PLAYER_GROUPSIZE", _upgrade_barracks_ai, true];
		} else {
			player setVariable ["CTI_PLAYER_GROUPSIZE", CTI_PLAYERS_GROUPSIZE, true];
	};

	_rank = (player) call CTI_CO_FNC_GetUnitsRank;

	if !(_last_rank isEqualTo _rank) then {

		switch (true) do {
			case (_rank isEqualTo "PRIVATE") : { 
				player enableStamina false;
				_weapon_sway = 0.6;
				player setVariable ["cti_weapon_sway",_weapon_sway, true];
				player setCustomAimCoef _weapon_sway;
				player setUnitTrait ["audibleCoef",1];
				player setUnitTrait ["loadCoef",1];
				player setUnitTrait ["camouflageCoef",1];
				_last_rank = (player) call CTI_CO_FNC_GetUnitsRank;
				if (_info1 isEqualTo 0) then {
					["rank-up", [name player ,_rank, "Noob - Stealth / Weapon Sway"]] call CTI_CL_FNC_DisplayMessage;
					_info1 = 1;
				};	
			};
			case (_rank isEqualTo "CORPORAL") : { 
				player enableStamina false;
				_weapon_sway = 0.6;
				player setVariable ["cti_weapon_sway",_weapon_sway, true];
				player setCustomAimCoef _weapon_sway;
				player setUnitTrait ["audibleCoef",0.9];
				player setUnitTrait ["loadCoef",0.9];
				player setUnitTrait ["camouflageCoef",0.9];
				_last_rank = (player) call CTI_CO_FNC_GetUnitsRank;
				if (_info2 isEqualTo 0) then {
					["rank-up", [name player ,_rank, "Better - Stealth / Weapon Sway"]] call CTI_CL_FNC_DisplayMessage;
					_info2 = 1;
				};
			};
			case (_rank isEqualTo "SERGEANT") : { 
				player enableStamina false;
				_weapon_sway = 0.5;
				player setCustomAimCoef _weapon_sway;
				player setVariable ["cti_weapon_sway",_weapon_sway, true];
				player setCustomAimCoef _weapon_sway;
				player setUnitTrait ["audibleCoef",0.8];
				player setUnitTrait ["loadCoef",0.8];
				player setUnitTrait ["camouflageCoef",0.8];
				_last_rank = (player) call CTI_CO_FNC_GetUnitsRank;
				if (_info3 isEqualTo 0) then {
					["rank-up", [name player ,_rank, "Better - Stealth / Weapon Sway"]] call CTI_CL_FNC_DisplayMessage;
					_info3 = 1;
				};
			};
			case (_rank isEqualTo "LIEUTENANT") : { 
				player enableStamina false;
				_weapon_sway = 0.4;
				player setVariable ["cti_weapon_sway",_weapon_sway, true];
				player setCustomAimCoef _weapon_sway;
				player setUnitTrait ["audibleCoef",0.7];
				player setUnitTrait ["loadCoef",0.7];
				player setUnitTrait ["camouflageCoef",0.7];
				_last_rank = (player) call CTI_CO_FNC_GetUnitsRank;
				if (_info4 isEqualTo 0) then {
					["rank-up", [name player ,_rank, "Good - Stealth / Weapon Sway"]] call CTI_CL_FNC_DisplayMessage;
					_info4 = 1;
				};
			};
			case (_rank isEqualTo "CAPTAIN") : {
				player enableStamina false;
				_weapon_sway = 0.3;
				player setVariable ["cti_weapon_sway",_weapon_sway, true];
				player setCustomAimCoef _weapon_sway;
				player setUnitTrait ["audibleCoef",0.5];
				player setUnitTrait ["loadCoef",0.5];
				player setUnitTrait ["camouflageCoef",0.5];
				_last_rank = (player) call CTI_CO_FNC_GetUnitsRank;
				if (_info6 isEqualTo 0) then {
					["rank-up", [name player ,_rank, "Badass - Stealth / Weapon Sway"]] call CTI_CL_FNC_DisplayMessage;
					_info6 = 1;
				};	
				
			};
			case (_rank isEqualTo "MAJOR") : { 
				player enableStamina false;
				_weapon_sway = 0.3;
				player setVariable ["cti_weapon_sway",_weapon_sway, true];
				player setCustomAimCoef _weapon_sway;
				player setUnitTrait ["audibleCoef",0.4];
				player setUnitTrait ["loadCoef",0.4];
				player setUnitTrait ["camouflageCoef",0.4];
				_last_rank = (player) call CTI_CO_FNC_GetUnitsRank;
				if (_info5 isEqualTo 0) then {
					["rank-up", [name player ,_rank, "Pro - Stealth / Weapon Sway"]] call CTI_CL_FNC_DisplayMessage;
					_info5 = 1;
				};

			};
			case (_rank isEqualTo "COLONEL") : {
				player enableStamina false;
				_weapon_sway = 0.2;
				player setVariable ["cti_weapon_sway",_weapon_sway, true];
				player setCustomAimCoef _weapon_sway;
				player setUnitTrait ["audibleCoef",0.2];
				player setUnitTrait ["loadCoef",0.2];
				player setUnitTrait ["camouflageCoef",0.2];
				_last_rank = (player) call CTI_CO_FNC_GetUnitsRank;
				if (_info7 isEqualTo 0) then {
					["rank-up", [name player ,_rank, "Chuck Norris Stealth - Weapon Sway"]] call CTI_CL_FNC_DisplayMessage;
					_info7 = 1;
				};
					
			};
		};
		//-- Apply parameter sway Rank one is turned off.
		if !(CTI_WEAPON_SWAY isEqualTo -1) then {
			player setVariable ["cti_weapon_sway",(CTI_WEAPON_SWAY/100), true];
		};
	};
	sleep 5;
};