{ctrlEnable [_x, false]} forEach [11002, 11005, 11006, 11007, 11008];

_enable = false;
if ((barracksInRange || lightInRange || heavyInRange || aircraftInRange || hangarInRange || depotInRange) && (player == leader cti_Client_Team)) then {_enable = true};
ctrlEnable [11001,_enable];
ctrlEnable [11006,commandInRange && (player == leader cti_Client_Team)]; //--- Special Menu

WF_MenuAction = -1;
cti_ForceUpdate = true;

while {alive player && dialog} do {
	//if (side player != cti_Client_SideJoined) exitWith {closeDialog 0};
	if (!dialog) exitWith {};

	//--- Build Units.
	_enable = false;
	if ((barracksInRange || lightInRange || heavyInRange || aircraftInRange || hangarInRange || depotInRange) && (player == leader cti_Client_Team)) then {_enable = true};
	ctrlEnable [11001,_enable];
	ctrlEnable [11002,gearInRange];
	ctrlEnable [11011,gearInRange];

	_enable = false; //added-MrNiceGuy
	if (!isNull(commanderTeam)) then {if (commanderTeam == group player) then {_enable = true}};
	ctrlEnable [11005,_enable]; //--- Team Orders
	ctrlEnable [11008,_enable]; //--- Commander Menu
	ctrlEnable [11006,commandInRange && (player == leader cti_Client_Team)]; //--- Special Menu
	ctrlEnable [11007,commandInRange]; //--- Upgrade Menu

	//--- Uptime.
	_uptime = Call EZC_fnc_Functions_Client_GetTime; //added-MrNiceGuy
	ctrlSetText [11015,Format[localize 'STR_WF_MAIN_Uptime',_uptime select 0,_uptime select 1,_uptime select 2, _uptime select 3]];

	//--- Buy Units.
	if (WF_MenuAction == 1) exitWith {
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_BuyUnits";
	};

	//--- Buy Gear.
	if (WF_MenuAction == 2) exitWith {
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "cti_BuyGearMenu";
	};

	//--- Team Menu.
	if (WF_MenuAction == 3) exitWith {
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Team";
	};

	//--- Role Menu.UC Menu now
    if (WF_MenuAction == 14) exitWith {
	
        WF_MenuAction = -1;
        closeDialog 0;
        createDialog "CTI_UCRscUnitsCamera";
        /*
		waitUntil {sleep 0.1; !isNull (findDisplay 2800)};
        [] call WSW_fnc_updateRolesMenu;
        _selectedRole = WSW_gbl_boughtRoles select 0;
        if(isnil '_selectedRole')then{
            lbSetCurSel [2801, 0];
        };
		*/
    };

	//--- Voting Menu.
	if (WF_MenuAction == 4) exitWith {
		WF_MenuAction = -1;
		if(!isNull(commanderTeam))then{
			if(commanderTeam == group player)then{
				if((cti_Client_Logic getVariable "cti_votetime") <= 0)then{
					ctrlEnable [509101,true];
					closeDialog 0;
					createDialog "cti_Commander_VoteMenu";

				}else{
					ctrlEnable [509101,false];
				};
			}else{
				_skip = false;
				if ((cti_Client_Logic getVariable "cti_votetime") <= 0) then {_skip = true};
				if (!_skip) then {
					closeDialog 0;
					createDialog "cti_VoteMenu";
				};

				if !(_skip) exitWith {};
				[cti_Client_SideJoined, name player] remoteExecCall ["cti_SE_PVF_RequestCommanderVote",2];
				voted = true;
				waitUntil {(cti_Client_Logic getVariable "cti_votetime") > 0 || !dialog || !alive player};
				if (!alive player || !dialog) exitWith {};
				closeDialog 0;
				createDialog "cti_VoteMenu";
			};
		}else{
			_skip = false;
			if ((cti_Client_Logic getVariable "cti_votetime") <= 0) then {_skip = true};
			if (!_skip) then {
				closeDialog 0;
				createDialog "cti_VoteMenu";
			};

			if !(_skip) exitWith {};
			[cti_Client_SideJoined, name player] remoteExecCall ["cti_SE_PVF_RequestCommanderVote",2];
			voted = true;
			waitUntil {(cti_Client_Logic getVariable "cti_votetime") > 0 || !dialog || !alive player};
			if (!alive player || !dialog) exitWith {};
			closeDialog 0;
			createDialog "cti_VoteMenu";
		};
	};

	//--- Unflip Vehicle.
	if (WF_MenuAction == 10) then { //added-MrNiceGuy
		WF_MenuAction = -1;
		_vehicle = vehicle player;
		if (player != _vehicle) then {
			if (getPos _vehicle select 2 > 3 && !surfaceIsWater (getPos _x)) then {
				[_vehicle, getPos _vehicle, 15] Call cti_CO_FNC_PlaceSafe;
			} else {
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 0.5];
				_vehicle setVelocity [0,0,-0.5];
			};
		};
		if (player == _vehicle) then {
			_objects = player nearEntities[["Car","Motorcycle","Tank"],10];
			if (count _objects > 0) then {
				{
					if (getPos _x select 2 > 3 && !surfaceIsWater (getPos _x)) then {
						[_x, getPos _x, 15] Call cti_CO_FNC_PlaceSafe;
					} else {
						_x setPos [getPos _x select 0, getPos _x select 1, 0.5];
						_x setVelocity [0,0,-0.5];
					};
				} forEach _objects;
			};
		};
	};

	//--- Headbug Fix.
	if (WF_MenuAction == 11) then { //added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		titleCut["","BLACK FADED",0];
		_pos = position player;
		_vehi = "Lada1" createVehicle [0,0,0];
		player moveInCargo _vehi;
		deleteVehicle _vehi;
		player setPos _pos;
		titleCut["","BLACK IN",5];
	};

	//--- Display Parameters.
	if (WF_MenuAction == 12) exitWith { //added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "RscDisplay_Parameters";
	};

	//--- Command Menu.
	if (WF_MenuAction == 5) exitWith { //added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		//createDialog "RscMenu_Command";
	};

	//--- Tactical Menu.
	if (WF_MenuAction == 6) exitWith { //added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Tactical";
	};

	//--- Upgrade Menu.
	if (WF_MenuAction == 7) exitWith { //added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "cti_UpgradeMenu";
	};

	//--- Economy Menu.
	if (WF_MenuAction == 8) exitWith { //added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Economy";
	};

	//--- Service Menu.
	if (WF_MenuAction == 9) exitWith { //added-MrNiceGuy
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Service";
	};

	//--- Help Menu
	if (WF_MenuAction == 13) exitWith { //added-spayker
		WF_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Help";
	};

	if (WF_MenuAction == 17) then {
		WF_MenuAction = -1;
	if ( zoomgps < 1 ) then { zoomgps = (zoomgps + 0.025); hint "zoom OUT";} else { zoomgps = 1; hint "GPS Zoom: \n MAX Value";};
	};
	if (WF_MenuAction == 18) then {
		WF_MenuAction = -1;
	if ( zoomgps >= 0.025) then { zoomgps = (zoomgps - 0.025); hint "zoom IN";} else { zoomgps = 0.025; hint "GPS Zoom: \n MIN Value";};
	};
	
	sleep 0.1;
};