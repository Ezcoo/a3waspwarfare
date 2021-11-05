//*****************************************************************************************
//Description: Creates a small construction site.
//*****************************************************************************************
Private ["_construct","_constructed","_direction","_group","_index","_logik","_nearLogic","_position","_rlType","_side","_sideID","_site","_siteName","_startTime","_structures","_structuresNames","_time","_timeNextUpdate","_type"];
_type = _this select 0;
_side = _this select 1;
_position = _this select 2;
_direction = _this select 3;
_index = _this select 4;
_logik = (_side) Call cti_CO_FNC_GetSideLogic;
_sideID = (_side) Call cti_CO_FNC_GetSideID;

_time = ((missionNamespace getVariable Format ["cti_%1STRUCTURETIMES",str _side]) select _index) / 2;

_siteName = missionNamespace getVariable Format["cti_%1CONSTRUCTIONSITE",str _side];

_structures = missionNamespace getVariable Format ['cti_%1STRUCTURES',str _side];
_structuresNames = missionNamespace getVariable Format ['cti_%1STRUCTURENAMES',str _side];
_rlType = _structures select (_structuresNames find _type);

_startTime = time;
_timeNextUpdate = _startTime + _time;

_constructed = ([_position,_direction,cti_MEDIUM_SITE_1_OBJECTS] Call cti_SE_FNC_CreateObjectsFromArray);

//--- Create the logic.
(createGroup sideLogic) createUnit ["LocationArea_F",_position,[],0,"NONE"];

_nearLogic = objNull;
if ((missionNamespace getVariable "cti_C_STRUCTURES_CONSTRUCTION_MODE") == 0) then {
	//--- Grab the logic.
	_nearLogic = _position nearEntities [["LocationArea_F"],15];
	_nearLogic = [_position, _nearLogic] Call cti_CO_FNC_GetClosestEntity;
	
	if (isNull _nearLogic) exitWith {};
	
	//--- Position the logic.
	_nearLogic setPos _position;
	
	_nearLogic setVariable ["cti_B_Type", _rlType];

	waitUntil {time >= _timeNextUpdate};
	_timeNextUpdate = _startTime + _time * 2;
} else {
	//--- Grab the logic.
	_nearLogic = _position nearEntities [["LocationArea_F"],15];
	_nearLogic = [_position, _nearLogic] Call cti_CO_FNC_GetClosestEntity;
	
	if (isNull _nearLogic) exitWith {};
	
	//--- Position the logic.
	_nearLogic setPos _position;
	
	//--- Instanciate the logic.
	_nearLogic setVariable ["cti_B_Completion", 0];
	_nearLogic setVariable ["cti_B_CompletionRatio", 0.6];
	_nearLogic setVariable ["cti_B_Direction", _direction];
	_nearLogic setVariable ["cti_B_Position", _position];
	_nearLogic setVariable ["cti_B_Repair", false];
	_nearLogic setVariable ["cti_B_Type", _rlType];
	
	//--- Add the logic to the list.
	_logik setVariable ["cti_structures_logic", (_logik getVariable "cti_structures_logic") + [_nearLogic]];
	
	//--- Awaits for 33% of completion.
	while {true} do {
		sleep 1;
		if ((_nearLogic getVariable "cti_B_Completion") >= 33.33) exitWith {};
	};
};

_constructed = _constructed + ([_position,_direction,cti_MEDIUM_SITE_2_OBJECTS] Call cti_SE_FNC_CreateObjectsFromArray);

if ((missionNamespace getVariable "cti_C_STRUCTURES_CONSTRUCTION_MODE") == 0) then {
	waitUntil {time >= _timeNextUpdate};
	_timeNextUpdate = _startTime + _time * 3;
} else {
	//--- Awaits for 66%
	while {true} do {
		sleep 1;
		if ((_nearLogic getVariable "cti_B_Completion") >= 66.66) exitWith {};
	};
};

_constructed = _constructed + ([_position,_direction,cti_MEDIUM_SITE_3_OBJECTS] Call cti_SE_FNC_CreateObjectsFromArray);

if ((missionNamespace getVariable "cti_C_STRUCTURES_CONSTRUCTION_MODE") == 0) then {
	waitUntil {time >= _timeNextUpdate};
	
	if !(isNull _nearLogic) then {
		_group = group _nearLogic;
		deleteVehicle _nearLogic;
		deleteGroup _group;
	};
} else {
	//--- Awaits for 100%
	while {true} do {
		sleep 1;
		if ((_nearLogic getVariable "cti_B_Completion") >= 100) exitWith {};
	};
	
	//--- Remove the logic from the list since it's built. Add it back if destroyed.
	_logik setVariable ["cti_structures_logic", (_logik getVariable "cti_structures_logic") - [_nearLogic]];
};

if(!isNil "_constructed")then{
	{
	    if!(isNull _x)then{
	        deleteVehicle _x
	    };
	} forEach _constructed;
};
_site = createVehicle [_type, _position, [], 0, "NONE"];
_site setDir _direction;
_site setPos _position;
_site setVariable ["cti_side", _side];
_site setVariable ["cti_structure_type", _rlType];

//--Not for AAR construction--
if(isAutoWallConstructingEnabled && !(_rlType in ["AARadar","ArtyRadar"]))then{
_defenses = [_site, missionNamespace getVariable format ["cti_NEURODEF_%1_WALLS", _rlType]] call cti_SE_FNC_CreateDefenseTemplate;
_site setVariable ["cti_Walls", _defenses];
};

[_side, "Constructed", ["Base", _site]] Spawn cti_SE_FNC_SideMessage;

if (!IsNull _site) then {
	_logik setVariable ["cti_structures", (_logik getVariable "cti_structures") + [_site], true];
	
	[[[_site,false,_sideID], "Client\Init\Init_BaseStructure.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;
	
	_site addEventHandler ["hit",{_this Spawn cti_SE_FNC_BuildingDamaged}];
	_site addEventHandler ['handleDamage',{[_this select 0,_this select 2,_this select 3] Call cti_SE_FNC_BuildingHandleDamages}];
	Call Compile Format ["_site AddEventHandler ['killed',{[_this select 0,_this select 1,'%1'] Spawn cti_SE_FNC_BuildingKilled}];",_type];
	
	["INFORMATION", Format ["Construction_MediumSite.sqf: [%1] Structure [%2] has been constructed.", str _side, _type]] Call cti_CO_FNC_LogContent;
};