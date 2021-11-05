/*
  Client\Functions\Externals\RemoteContro\RemoteControlFunctions.sqf
  
  
  Modifications of functions already being used by players
  These functions have been modified to replace "player" with "CTI_P_Controlled", so that CTI_P_Controlleds can control
  their AI remotely and use them to perform logistics related tasks.
  Dependencies:
	Mods by duda:
		Advanced Slingloading 
		Advanced Towing
*/

#define CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Position(_object,_positionAGL,_returnSurfaceASL,_canFloat) \
_objectASL = AGLToASL (_object modelToWorldVisual (getCenterOfMass _object)); \
_surfaceIntersectStartASL = [_positionAGL select 0, _positionAGL select 1, (_objectASL select 2) + 1]; \
_surfaceIntersectEndASL = [_positionAGL select 0, _positionAGL select 1, (_objectASL select 2) - 5]; \
_surfaces = lineIntersectsSurfaces [_surfaceIntersectStartASL, _surfaceIntersectEndASL, _object, objNull, true, 5]; \
_returnSurfaceASL = AGLToASL _positionAGL; \
{ \
	scopeName "surfaceLoop"; \
	if( isNull (_x select 2) ) then { \
		_returnSurfaceASL = _x select 0; \
		breakOut "surfaceLoop"; \
	} else { \
		if!((_x select 2) isKindOf "RopeSegment") then { \
			_objectFileName = str (_x select 2); \
			if((_objectFileName find " t_") == -1 && (_objectFileName find " b_") == -1) then { \
				_returnSurfaceASL = _x select 0; \
				breakOut "surfaceLoop"; \
			}; \
		}; \
	}; \
} forEach _surfaces; \
if(_canFloat && (_returnSurfaceASL select 2) < 0) then { \
	_returnSurfaceASL set [2,0]; \
}; \

#define CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Model(_object,_modelOffset,_returnSurfaceASL,_canFloat) \
CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Position(_object, (_object modelToWorldVisual _modelOffset), _returnSurfaceASL,_canFloat);
			
#define CTI_CL_FNC_EXT_SA_Find_Surface_AGL_Under_Model(_object,_modelOffset,_returnSurfaceAGL,_canFloat) \
CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Model(_object,_modelOffset,_returnSurfaceAGL,_canFloat); \
_returnSurfaceAGL = ASLtoAGL _returnSurfaceAGL;

#define CTI_CL_FNC_EXT_SA_Get_Cargo(_vehicle,_cargo) \
if( count (ropeAttachedObjects _vehicle) == 0 ) then { \
	_cargo = objNull; \
} else { \
	_cargo = ((ropeAttachedObjects _vehicle) select 0) getVariable ["SA_Cargo",objNull]; \
};


CTI_CL_FNC_EXT_ASL_Rope_Get_Lift_Capability = {
	params ["_vehicle"];
	private ["_slingLoadMaxCargoMass"];
	_slingLoadMaxCargoMass = getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "slingLoadMaxCargoMass");
	if(_slingLoadMaxCargoMass <= 0) then {
		_slingLoadMaxCargoMass = 4000;
	};
	_slingLoadMaxCargoMass;	
};

CTI_CL_FNC_EXT_ASL_SLING_LOAD_POINT_CLASS_HEIGHT_OFFSET = [  
	["All", [-0.05, -0.05, -0.05]],  
	["CUP_CH47F_base", [-0.05, -2, -0.05]],  
	["CUP_AW159_Unarmed_Base", [-0.05, -0.06, -0.05]],
	["RHS_CH_47F", [-0.75, -2.6, -0.75]], 
	["rhsusf_CH53E_USMC", [-0.8, -1, -1.1]], 
	["rhsusf_CH53E_USMC_D", [-0.8, -1, -1.1]] 
];

CTI_CL_FNC_EXT_ASL_Get_Sling_Load_Points = {
	params ["_vehicle"];
	private ["_slingLoadPointsArray","_cornerPoints","_rearCenterPoint","_vehicleUnitVectorUp"];
	private ["_slingLoadPoints","_modelPoint","_modelPointASL","_surfaceIntersectStartASL","_surfaceIntersectEndASL","_surfaces","_intersectionASL","_intersectionObject"];
	_slingLoadPointsArray = [];
	_cornerPoints = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Corner_Points;
	_frontCenterPoint = (((_cornerPoints select 2) vectorDiff (_cornerPoints select 3)) vectorMultiply 0.5) vectorAdd (_cornerPoints select 3);
	_rearCenterPoint = (((_cornerPoints select 0) vectorDiff (_cornerPoints select 1)) vectorMultiply 0.5) vectorAdd (_cornerPoints select 1);
	_rearCenterPoint = ((_frontCenterPoint vectorDiff _rearCenterPoint) vectorMultiply 0.2) vectorAdd _rearCenterPoint;
	_frontCenterPoint = ((_rearCenterPoint vectorDiff _frontCenterPoint) vectorMultiply 0.2) vectorAdd _frontCenterPoint;
	_middleCenterPoint = ((_frontCenterPoint vectorDiff _rearCenterPoint) vectorMultiply 0.5) vectorAdd _rearCenterPoint;
	_vehicleUnitVectorUp = vectorNormalized (vectorUp _vehicle);
	
	_slingLoadPointHeightOffset = 0;
	{
		if(_vehicle isKindOf (_x select 0)) then {
			_slingLoadPointHeightOffset = (_x select 1);
		};
	} forEach CTI_CL_FNC_EXT_ASL_SLING_LOAD_POINT_CLASS_HEIGHT_OFFSET;
	
	_slingLoadPoints = [];
	{
		_modelPoint = _x;
		_modelPointASL = AGLToASL (_vehicle modelToWorldVisual _modelPoint);
		_surfaceIntersectStartASL = _modelPointASL vectorAdd ( _vehicleUnitVectorUp vectorMultiply -5 );
		_surfaceIntersectEndASL = _modelPointASL vectorAdd ( _vehicleUnitVectorUp vectorMultiply 5 );
		
		// Determine if the surface intersection line crosses below ground level
		// If if does, move surfaceIntersectStartASL above ground level (lineIntersectsSurfaces
		// doesn't work if starting below ground level for some reason
		// See: https://en.wikipedia.org/wiki/Line%E2%80%93plane_intersection
		
		_la = ASLToAGL _surfaceIntersectStartASL;
		_lb = ASLToAGL _surfaceIntersectEndASL;
		
		if(_la select 2 < 0 && _lb select 2 > 0) then {
			_n = [0,0,1];
			_p0 = [0,0,0.1];
			_l = (_la vectorFromTo _lb);
			if((_l vectorDotProduct _n) != 0) then {
				_d = ( ( _p0 vectorAdd ( _la vectorMultiply -1 ) ) vectorDotProduct _n ) / (_l vectorDotProduct _n);
				_surfaceIntersectStartASL = AGLToASL ((_l vectorMultiply _d) vectorAdd _la);
			};
		};
		
		_surfaces = lineIntersectsSurfaces [_surfaceIntersectStartASL, _surfaceIntersectEndASL, objNull, objNull, true, 100];
		_intersectionASL = [];
		{
			_intersectionObject = _x select 2;
			if(_intersectionObject == _vehicle) exitWith {
				_intersectionASL = _x select 0;
			};
		} forEach _surfaces;
		if(count _intersectionASL > 0) then {
			_intersectionASL = _intersectionASL vectorAdd (( _surfaceIntersectStartASL vectorFromTo _surfaceIntersectEndASL ) vectorMultiply (_slingLoadPointHeightOffset select (count _slingLoadPoints)));
			_slingLoadPoints pushBack (_vehicle worldToModelVisual (ASLToAGL _intersectionASL));
		} else {
			_slingLoadPoints pushBack [];
		};
	} forEach [_frontCenterPoint, _middleCenterPoint, _rearCenterPoint];
	
	if(count (_slingLoadPoints select 1) > 0) then {
		_slingLoadPointsArray pushBack [_slingLoadPoints select 1];
		if(count (_slingLoadPoints select 0) > 0 && count (_slingLoadPoints select 2) > 0 ) then {
			if( ((_slingLoadPoints select 0) distance (_slingLoadPoints select 2)) > 3 ) then {
				_slingLoadPointsArray pushBack [_slingLoadPoints select 0,_slingLoadPoints select 2];
				if( ((_slingLoadPoints select 0) distance (_slingLoadPoints select 1)) > 3 ) then {
					_slingLoadPointsArray pushBack [_slingLoadPoints select 0,_slingLoadPoints select 1,_slingLoadPoints select 2];
				};	
			};	
		};
	};
	_slingLoadPointsArray;
};

CTI_CL_FNC_EXT_ASL_Rope_Set_Mass = {
	private ["_obj","_mass"];
	_obj = [_this,0] call BIS_fnc_param;
	_mass = [_this,1] call BIS_fnc_param;
	_obj setMass _mass;
};

CTI_CL_FNC_EXT_ASL_Rope_Adjust_Mass = {
	params ["_obj","_heli",["_ropes",[]]];
	private ["_mass","_lift","_originalMass","_heavyLiftMinLift"];
	_lift = [_heli] call CTI_CL_FNC_EXT_ASL_Rope_Get_Lift_Capability;
	_originalMass = getMass _obj;
	_heavyLiftMinLift = missionNamespace getVariable ["ASL_HEAVY_LIFTING_MIN_LIFT_OVERRIDE",5000];
	if( _originalMass >= ((_lift)*0.8) && _lift >= _heavyLiftMinLift ) then {
		private ["_originalMassSet","_ends","_endDistance","_ropeLength"];
		_originalMassSet = (getMass _obj) == _originalMass;
		while { _obj in (ropeAttachedObjects _heli) && _originalMassSet } do {
			{
				_ends = ropeEndPosition _x;
				_endDistance = (_ends select 0) distance (_ends select 1);
				_ropeLength = ropeLength _x;
				if((_ropeLength - 2) <= _endDistance && ((position _heli) select 2) > 0 ) then {
					[[_obj, ((_lift)*0.8)],"CTI_CL_FNC_EXT_ASL_Rope_Set_Mass",_obj,true] call ASL_RemoteExec;
					_originalMassSet = false;
				};
			} forEach _ropes;
			sleep 0.1;
		};
		while { _obj in (ropeAttachedObjects _heli) } do {
			sleep 0.5;
		};
		[[_obj, _originalMass],"CTI_CL_FNC_EXT_ASL_Rope_Set_Mass",_obj,true] call ASL_RemoteExec;
	};	
};


/*
 Constructs an array of all active rope indexes and position labels (e.g. [[rope index,"Front"],[rope index,"Rear"]])
 for a specified vehicle
*/
CTI_CL_FNC_EXT_ASL_Get_Active_Ropes = {
	params ["_vehicle"];
	private ["_activeRopes","_existingRopes","_ropeLabelSets","_ropeIndex","_totalExistingRopes","_ropeLabels"];
	_activeRopes = [];
	_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
	_ropeLabelSets = [["Center"],["Front","Rear"],["Front","Center","Rear"]];
	_ropeIndex = 0;
	_totalExistingRopes = count _existingRopes;
	{
		if(count _x > 0) then {
			_ropeLabels = _ropeLabelSets select (_totalExistingRopes - 1);
			_activeRopes pushBack [_ropeIndex,_ropeLabels select _ropeIndex];
		};
		_ropeIndex = _ropeIndex + 1;
	} forEach _existingRopes;
	_activeRopes;
};

/*
 Constructs an array of all inactive rope indexes and position labels (e.g. [[rope index,"Front"],[rope index,"Rear"]])
 for a specified vehicle
*/
CTI_CL_FNC_EXT_ASL_Get_Inactive_Ropes = {
	params ["_vehicle"];
	private ["_inactiveRopes","_existingRopes","_ropeLabelSets","_ropeIndex","_totalExistingRopes","_ropeLabels"];
	_inactiveRopes = [];
	_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
	_ropeLabelSets = [["Center"],["Front","Rear"],["Front","Center","Rear"]];
	_ropeIndex = 0;
	_totalExistingRopes = count _existingRopes;
	{
		if(count _x == 0) then {
			_ropeLabels = _ropeLabelSets select (_totalExistingRopes - 1);
			_inactiveRopes pushBack [_ropeIndex,_ropeLabels select _ropeIndex];
		};
		_ropeIndex = _ropeIndex + 1;
	} forEach _existingRopes;
	_inactiveRopes;
};

CTI_CL_FNC_EXT_ASL_Get_Active_Ropes_With_Cargo = {
	params ["_vehicle"];
	private ["_activeRopesWithCargo","_existingCargo","_activeRopes","_cargo"];
	_activeRopesWithCargo = [];
	_existingCargo = _vehicle getVariable ["ASL_Cargo",[]];
	_activeRopes = _this call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
	{
		_cargo = _existingCargo select (_x select 0);
		if(!isNull _cargo) then {
			_activeRopesWithCargo pushBack _x;
		};
	} forEach _activeRopes;
	_activeRopesWithCargo;
};

CTI_CL_FNC_EXT_ASL_Get_Active_Ropes_Without_Cargo = {
	params ["_vehicle"];
	private ["_activeRopesWithoutCargo","_existingCargo","_activeRopes","_cargo"];
	_activeRopesWithoutCargo = [];
	_existingCargo = _vehicle getVariable ["ASL_Cargo",[]];
	_activeRopes = _this call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
	{
		_cargo = _existingCargo select (_x select 0);
		if(isNull _cargo) then {
			_activeRopesWithoutCargo pushBack _x;
		};
	} forEach _activeRopes;
	_activeRopesWithoutCargo;
};

CTI_CL_FNC_EXT_ASL_Get_Ropes = {
	params ["_vehicle","_ropeIndex"];
	private ["_allRopes","_selectedRopes"];
	_selectedRopes = [];
	_allRopes = _vehicle getVariable ["ASL_Ropes",[]];
	if(count _allRopes > _ropeIndex) then {
		_selectedRopes = _allRopes select _ropeIndex;
	};
	_selectedRopes;
};


CTI_CL_FNC_EXT_ASL_Get_Ropes_Count = {
	params ["_vehicle"];
	count (_vehicle getVariable ["ASL_Ropes",[]]);
};

CTI_CL_FNC_EXT_ASL_Get_Cargo = {
	params ["_vehicle","_ropeIndex"];
	private ["_allCargo","_selectedCargo"];
	_selectedCargo = objNull;
	_allCargo = _vehicle getVariable ["ASL_Cargo",[]];
	if(count _allCargo > _ropeIndex) then {
		_selectedCargo = _allCargo select _ropeIndex;
	};
	_selectedCargo;
};
	
CTI_CL_FNC_EXT_ASL_Get_Ropes_And_Cargo = {
	params ["_vehicle","_ropeIndex"];
	private ["_selectedCargo","_selectedRopes"];
	_selectedCargo = (_this call CTI_CL_FNC_EXT_ASL_Get_Cargo);
	_selectedRopes = (_this call CTI_CL_FNC_EXT_ASL_Get_Ropes);
	[_selectedRopes, _selectedCargo];
};

CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu = {
	params ["_title", "_functionName","_ropesIndexAndLabelArray",["_ropesLabel","Ropes"]];
	CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu_Array = [[_title,false]];
	{
		CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu_Array pushBack [ (_x select 1) + " " + _ropesLabel, [0], "", -5, [["expression", "["+(str (_x select 0))+"] call " + _functionName]], "1", "1"];
	} forEach _ropesIndexAndLabelArray;
	CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu_Array pushBack ["All " + _ropesLabel, [0], "", -5, [["expression", "{ [_x] call " + _functionName + " } forEach [0,1,2];"]], "1", "1"];
	showCommandingMenu "";
	showCommandingMenu "#USER:CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu_Array";
};
	
CTI_CL_FNC_EXT_ASL_Extend_Ropes = {
	params ["_vehicle","_CTI_P_Controlled",["_ropeIndex",0]];
	if(local _vehicle) then {
		private ["_existingRopes"];
		_existingRopes = [_vehicle,_ropeIndex] call CTI_CL_FNC_EXT_ASL_Get_Ropes;
		if(count _existingRopes > 0) then {
			_ropeLength = ropeLength (_existingRopes select 0);
			if(_ropeLength <= 100 ) then {
				{
					ropeUnwind [_x, 3, 5, true];
				} forEach _existingRopes;
			};
		};
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Extend_Ropes",_vehicle,true] call ASL_RemoteExec;
	};
};

CTI_CL_FNC_EXT_ASL_Extend_Ropes_Action = {
	private ["_vehicle"];
	_vehicle = vehicle CTI_P_Controlled;
	if([_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Extend_Ropes) then {
		private ["_activeRopes"];
		_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
		if(count _activeRopes > 1) then {
			CTI_P_Controlled setVariable ["ASL_Extend_Index_Vehicle", _vehicle];
			["Extend Cargo Ropes","CTI_CL_FNC_EXT_ASL_Extend_Ropes_Index_Action",_activeRopes] call CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu;
		} else {
			if(count _activeRopes == 1) then {
				[_vehicle,CTI_P_Controlled,(_activeRopes select 0) select 0] call CTI_CL_FNC_EXT_ASL_Extend_Ropes;
			};
		};
	};
};

CTI_CL_FNC_EXT_ASL_Extend_Ropes_Index_Action = {
	params ["_ropeIndex"];
	private ["_vehicle","_canDeployRopes"];
	_vehicle = CTI_P_Controlled getVariable ["ASL_Extend_Index_Vehicle", objNull];
	if(_ropeIndex >= 0 && !isNull _vehicle && [_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Extend_Ropes) then {
		[_vehicle,CTI_P_Controlled,_ropeIndex] call CTI_CL_FNC_EXT_ASL_Extend_Ropes;
	};
};

CTI_CL_FNC_EXT_ASL_Extend_Ropes_Action_Check = {
	if(vehicle CTI_P_Controlled == CTI_P_Controlled) exitWith {false};
	[vehicle CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Can_Extend_Ropes;
};

CTI_CL_FNC_EXT_ASL_Can_Extend_Ropes = {
	params ["_vehicle"];
	private ["_existingRopes","_activeRopes"];
	if(CTI_P_Controlled distance _vehicle > 10) exitWith { false };
	if!([_vehicle] call CTI_CL_FNC_EXT_ASL_Is_Supported_Vehicle) exitWith { false };
	_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
	if((count _existingRopes) == 0) exitWith { false };
	_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
	if((count _activeRopes) == 0) exitWith { false };
	true;
};

CTI_CL_FNC_EXT_ASL_Shorten_Ropes = {
	params ["_vehicle","_CTI_P_Controlled",["_ropeIndex",0]];
	if(local _vehicle) then {
		private ["_existingRopes"];
		_existingRopes = [_vehicle,_ropeIndex] call CTI_CL_FNC_EXT_ASL_Get_Ropes;
		if(count _existingRopes > 0) then {
			_ropeLength = ropeLength (_existingRopes select 0);
			if(_ropeLength <= 2 ) then {
				_this call CTI_CL_FNC_EXT_ASL_Release_Cargo;
			} else {
				{
					if(_ropeLength >= 10) then {
						ropeUnwind [_x, 3, -5, true];
					} else {
						ropeUnwind [_x, 3, -1, true];
					};
				} forEach _existingRopes;
			};
		};
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Shorten_Ropes",_vehicle,true] call ASL_RemoteExec;
	};
};

CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Action = {
	private ["_vehicle"];
	_vehicle = vehicle CTI_P_Controlled;
	if([_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Shorten_Ropes) then {
		private ["_activeRopes"];
		_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
		if(count _activeRopes > 1) then {
			CTI_P_Controlled setVariable ["ASL_Shorten_Index_Vehicle", _vehicle];
			["Shorten Cargo Ropes","CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Index_Action",_activeRopes] call CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu;
		} else {
			if(count _activeRopes == 1) then {
				[_vehicle,CTI_P_Controlled,(_activeRopes select 0) select 0] call CTI_CL_FNC_EXT_ASL_Shorten_Ropes;
			};
		};
	};
};

CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Index_Action = {
	params ["_ropeIndex"];
	private ["_vehicle"];
	_vehicle = CTI_P_Controlled getVariable ["ASL_Shorten_Index_Vehicle", objNull];
	if(_ropeIndex >= 0 && !isNull _vehicle && [_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Shorten_Ropes) then {
		[_vehicle,CTI_P_Controlled,_ropeIndex] call CTI_CL_FNC_EXT_ASL_Shorten_Ropes;
	};
};

CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Action_Check = {
	if(vehicle CTI_P_Controlled == CTI_P_Controlled) exitWith {false};
	[vehicle CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Can_Shorten_Ropes;
};

CTI_CL_FNC_EXT_ASL_Can_Shorten_Ropes = {
	params ["_vehicle"];
	private ["_existingRopes","_activeRopes"];
	if(CTI_P_Controlled distance _vehicle > 10) exitWith { false };
	if!([_vehicle] call CTI_CL_FNC_EXT_ASL_Is_Supported_Vehicle) exitWith { false };
	_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
	if((count _existingRopes) == 0) exitWith { false };
	_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
	if((count _activeRopes) == 0) exitWith { false };
	true;
};
	
CTI_CL_FNC_EXT_ASL_Release_Cargo = {
	params ["_vehicle","_CTI_P_Controlled",["_ropeIndex",0]];
	if(local _vehicle) then {
		private ["_existingRopesAndCargo","_existingRopes","_existingCargo","_allCargo"];
		_existingRopesAndCargo = [_vehicle,_ropeIndex] call CTI_CL_FNC_EXT_ASL_Get_Ropes_And_Cargo;
		_existingRopes = _existingRopesAndCargo select 0;
		_existingCargo = _existingRopesAndCargo select 1; 
		{
			_existingCargo ropeDetach _x;
		} forEach _existingRopes;
		_allCargo = _vehicle getVariable ["ASL_Cargo",[]];
		_allCargo set [_ropeIndex,objNull];
		_vehicle setVariable ["ASL_Cargo",_allCargo, true];
		_this call CTI_CL_FNC_EXT_ASL_Retract_Ropes;
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Release_Cargo",_vehicle,true] call ASL_RemoteExec;
	};
};
	
CTI_CL_FNC_EXT_ASL_Release_Cargo_Action = {
	private ["_vehicle"];
	_vehicle = vehicle CTI_P_Controlled;
	if([_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Release_Cargo) then {
		private ["_activeRopes"];
		_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes_With_Cargo;
		if(count _activeRopes > 1) then {
			CTI_P_Controlled setVariable ["ASL_Release_Cargo_Index_Vehicle", _vehicle];
			["Release Cargo","CTI_CL_FNC_EXT_ASL_Release_Cargo_Index_Action",_activeRopes,"Cargo"] call CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu;
		} else {
			if(count _activeRopes == 1) then {
				[_vehicle,CTI_P_Controlled,(_activeRopes select 0) select 0] call CTI_CL_FNC_EXT_ASL_Release_Cargo;
			};
		};
	};
};

CTI_CL_FNC_EXT_ASL_Release_Cargo_Index_Action = {
	params ["_ropesIndex"];
	private ["_vehicle"];
	_vehicle = CTI_P_Controlled getVariable ["ASL_Release_Cargo_Index_Vehicle", objNull];
	if(_ropesIndex >= 0 && !isNull _vehicle && [_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Release_Cargo) then {
		[_vehicle,CTI_P_Controlled,_ropesIndex] call CTI_CL_FNC_EXT_ASL_Release_Cargo;
	};
};

CTI_CL_FNC_EXT_ASL_Release_Cargo_Action_Check = {
	if(vehicle CTI_P_Controlled == CTI_P_Controlled) exitWith {false};
	[vehicle CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Can_Release_Cargo;
};

CTI_CL_FNC_EXT_ASL_Can_Release_Cargo = {
	params ["_vehicle"];
	private ["_existingRopes","_activeRopes"];
	if(CTI_P_Controlled distance _vehicle > 10) exitWith { false };
	if!([_vehicle] call CTI_CL_FNC_EXT_ASL_Is_Supported_Vehicle) exitWith { false };
	_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
	if((count _existingRopes) == 0) exitWith { false };
	_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes_With_Cargo;
	if((count _activeRopes) == 0) exitWith { false };
	true;
};

CTI_CL_FNC_EXT_ASL_Retract_Ropes = {
	params ["_vehicle","_CTI_P_Controlled",["_ropeIndex",0]];
	if(local _vehicle) then {
		private ["_existingRopesAndCargo","_existingRopes","_existingCargo","_allRopes","_activeRopes"];
		_existingRopesAndCargo = [_vehicle,_ropeIndex] call CTI_CL_FNC_EXT_ASL_Get_Ropes_And_Cargo;
		_existingRopes = _existingRopesAndCargo select 0;
		_existingCargo = _existingRopesAndCargo select 1; 
		if(isNull _existingCargo) then {
			_this call CTI_CL_FNC_EXT_ASL_Drop_Ropes;
			{
				[_x,_vehicle] spawn {
					params ["_rope","_vehicle"];
					private ["_count"];
					_count = 0;
					ropeUnwind [_rope, 3, 0];
					while {(!ropeUnwound _rope) && _count < 20} do {
						sleep 1;
						_count = _count + 1;
					};
					ropeDestroy _rope;
				};
			} forEach _existingRopes;
			_allRopes = _vehicle getVariable ["ASL_Ropes",[]];
			_allRopes set [_ropeIndex,[]];
			_vehicle setVariable ["ASL_Ropes",_allRopes,true];
		};
		_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
		if(count _activeRopes == 0) then {
			_vehicle setVariable ["ASL_Ropes",nil,true];
		};
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Retract_Ropes",_vehicle,true] call ASL_RemoteExec;
	};
};

CTI_CL_FNC_EXT_ASL_Retract_Ropes_Action = {
	private ["_vehicle","_canRetractRopes"];
	if(vehicle CTI_P_Controlled == CTI_P_Controlled) then {
		_vehicle = cursorTarget;
	} else {
		_vehicle = vehicle CTI_P_Controlled;
	};
	if([_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Retract_Ropes) then {
		private ["_activeRopes"];
		_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes_Without_Cargo;
		if(count _activeRopes > 1) then {
			CTI_P_Controlled setVariable ["ASL_Retract_Ropes_Index_Vehicle", _vehicle];
			["Retract Cargo Ropes","CTI_CL_FNC_EXT_ASL_Retract_Ropes_Index_Action",_activeRopes] call CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu;
		} else {
			if(count _activeRopes == 1) then {
				[_vehicle,CTI_P_Controlled,(_activeRopes select 0) select 0] call CTI_CL_FNC_EXT_ASL_Retract_Ropes;
			};
		};
	};
};

CTI_CL_FNC_EXT_ASL_Retract_Ropes_Index_Action = {
	params ["_ropesIndex"];
	private ["_vehicle"];
	_vehicle = CTI_P_Controlled getVariable ["ASL_Retract_Ropes_Index_Vehicle", objNull];
	if(_ropesIndex >= 0 && !isNull _vehicle && [_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Retract_Ropes) then {
		[_vehicle,CTI_P_Controlled,_ropesIndex] call CTI_CL_FNC_EXT_ASL_Retract_Ropes;
	};
};

CTI_CL_FNC_EXT_ASL_Retract_Ropes_Action_Check = {
	if(vehicle CTI_P_Controlled == CTI_P_Controlled) then {
		[cursorTarget] call CTI_CL_FNC_EXT_ASL_Can_Retract_Ropes;
	} else {
		[vehicle CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Can_Retract_Ropes;
	};
};

CTI_CL_FNC_EXT_ASL_Can_Retract_Ropes = {
	params ["_vehicle"];
	private ["_existingRopes","_activeRopes"];
	if(CTI_P_Controlled distance _vehicle > 30) exitWith { false };
	if!([_vehicle] call CTI_CL_FNC_EXT_ASL_Is_Supported_Vehicle) exitWith { false };
	_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
	if((count _existingRopes) == 0) exitWith { false };
	_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes_Without_Cargo;
	if((count _activeRopes) == 0) exitWith { false };
	true;
};

CTI_CL_FNC_EXT_ASL_Deploy_Ropes = {
	params ["_vehicle","_CTI_P_Controlled",["_cargoCount",1],["_ropeLength",15]];
	if(local _vehicle) then {
		private ["_existingRopes","_cargoRopes","_startLength","_slingLoadPoints"];
		_slingLoadPoints = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Sling_Load_Points;
		_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
		if(count _existingRopes == 0) then {
			if(count _slingLoadPoints == 0) exitWith {
				[["Vehicle doesn't support cargo ropes", false],"CTI_CL_FNC_EXT_ASL_Hint",_CTI_P_Controlled] call ASL_RemoteExec;
			};
			if(count _slingLoadPoints < _cargoCount) exitWith {
				[["Vehicle doesn't support " + _cargoCount + " cargo ropes", false],"CTI_CL_FNC_EXT_ASL_Hint",_CTI_P_Controlled] call ASL_RemoteExec;
			};
			_cargoRopes = [];
			_cargo = [];
			for "_i" from 0 to (_cargoCount-1) do
			{
				_cargoRopes pushBack [];
				_cargo pushBack objNull;
			};
			_vehicle setVariable ["ASL_Ropes",_cargoRopes,true];
			_vehicle setVariable ["ASL_Cargo",_cargo,true];
			for "_i" from 0 to (_cargoCount-1) do
			{
				[_vehicle,_CTI_P_Controlled,_i] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Index;
			};
		} else {
			[["Vehicle already has cargo ropes deployed", false],"CTI_CL_FNC_EXT_ASL_Hint",_CTI_P_Controlled] call ASL_RemoteExec;
		};
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Deploy_Ropes",_vehicle,true] call ASL_RemoteExec;
	};
};

CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Index = {
	params ["_vehicle","_CTI_P_Controlled",["_ropesIndex",0],["_ropeLength",15]];
	if(local _vehicle) then {
		private ["_existingRopes","_existingRopesCount","_allRopes"];
		_existingRopes = [_vehicle,_ropesIndex] call CTI_CL_FNC_EXT_ASL_Get_Ropes;
		_existingRopesCount = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Ropes_Count;
		if(count _existingRopes == 0) then {
			_slingLoadPoints = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Sling_Load_Points;
			_cargoRopes = [];
			_cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0]; 
			_cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0]; 
			_cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0]; 
			_cargoRopes pushBack ropeCreate [_vehicle, (_slingLoadPoints select (_existingRopesCount - 1)) select _ropesIndex, 0]; 
			{
				ropeUnwind [_x, 5, _ropeLength];
			} forEach _cargoRopes;
			_allRopes = _vehicle getVariable ["ASL_Ropes",[]];
			_allRopes set [_ropesIndex,_cargoRopes];
			_vehicle setVariable ["ASL_Ropes",_allRopes,true];
		};
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Index",_vehicle,true] call ASL_RemoteExec;
	};
};

CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Action = {
	private ["_vehicle","_canDeployRopes"];
	if(vehicle CTI_P_Controlled == CTI_P_Controlled) then {
		_vehicle = cursorTarget;
	} else {
		_vehicle = vehicle CTI_P_Controlled;
	};
	if([_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Deploy_Ropes) then {
	
		_canDeployRopes = true;
		
		if!(missionNamespace getVariable ["ASL_LOCKED_VEHICLES_ENABLED",false]) then {
			if( locked _vehicle > 1 ) then {
				["Cannot deploy cargo ropes from locked vehicle",false] call CTI_CL_FNC_EXT_ASL_Hint;
				_canDeployRopes = false;
			};
		};
		
		if(_canDeployRopes) then {
			
			_inactiveRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Inactive_Ropes;
			
			if(count _inactiveRopes > 0) then {
				
				if(count _inactiveRopes > 1) then {
					CTI_P_Controlled setVariable ["ASL_Deploy_Ropes_Index_Vehicle", _vehicle];	
					["Deploy Cargo Ropes","CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Index_Action",_inactiveRopes] call CTI_CL_FNC_EXT_ASL_Show_Select_Ropes_Menu;
				} else {
					[_vehicle,CTI_P_Controlled,(_inactiveRopes select 0) select 0] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Index;
				};
			
			} else {
			
				_slingLoadPoints = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Sling_Load_Points;
				if(count _slingLoadPoints > 1) then {
					CTI_P_Controlled setVariable ["ASL_Deploy_Count_Vehicle", _vehicle];
					CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Menu = [
							["Deploy Ropes",false]
					];
					CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Menu pushBack ["For Single Cargo", [0], "", -5, [["expression", "[1] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Action"]], "1", "1"];
					if((count _slingLoadPoints) > 1) then {
						CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Menu pushBack ["For Double Cargo", [0], "", -5, [["expression", "[2] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Action"]], "1", "1"];
					};
					if((count _slingLoadPoints) > 2) then {
						CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Menu pushBack ["For Triple Cargo", [0], "", -5, [["expression", "[3] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Action"]], "1", "1"];
					};
					showCommandingMenu "";
					showCommandingMenu "#USER:CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Menu";
				} else {			
					[_vehicle,CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes;
				};
				
			};
			
		};
	
	};
};

CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Index_Action = {
	params ["_ropesIndex"];
	private ["_vehicle"];
	_vehicle = CTI_P_Controlled getVariable ["ASL_Deploy_Ropes_Index_Vehicle", objNull];
	if(_ropesIndex >= 0 && !isNull _vehicle && [_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Deploy_Ropes) then {
		[_vehicle,CTI_P_Controlled,_ropesIndex] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Index;
	};
};

CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Count_Action = {
	params ["_count"];
	private ["_vehicle","_canDeployRopes"];
	_vehicle = CTI_P_Controlled getVariable ["ASL_Deploy_Count_Vehicle", objNull];
	if(_count > 0 && !isNull _vehicle && [_vehicle] call CTI_CL_FNC_EXT_ASL_Can_Deploy_Ropes) then {
		[_vehicle,CTI_P_Controlled,_count] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes;
	};
};

CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Action_Check = {
	if(vehicle CTI_P_Controlled == CTI_P_Controlled) then {
		[cursorTarget] call CTI_CL_FNC_EXT_ASL_Can_Deploy_Ropes;
	} else {
		[vehicle CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Can_Deploy_Ropes;
	};
};

CTI_CL_FNC_EXT_ASL_Can_Deploy_Ropes = {
	params ["_vehicle"];
	private ["_existingRopes","_activeRopes"];
	if(CTI_P_Controlled distance _vehicle > 10) exitWith { false };
	if!([_vehicle] call CTI_CL_FNC_EXT_ASL_Is_Supported_Vehicle) exitWith { false };
	_existingVehicle = CTI_P_Controlled getVariable ["ASL_Ropes_Vehicle", []];
	if(count _existingVehicle > 0) exitWith { false };
	_existingRopes = _vehicle getVariable ["ASL_Ropes",[]];
	if((count _existingRopes) == 0) exitWith { true };
	_activeRopes = [_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes;
	if((count _existingRopes) > 0 && (count _existingRopes) == (count _activeRopes)) exitWith { false };
	true;
};

CTI_CL_FNC_EXT_ASL_Get_Corner_Points = {
	params ["_vehicle"];
	private ["_centerOfMass","_bbr","_p1","_p2","_rearCorner","_rearCorner2","_frontCorner","_frontCorner2"];
	private ["_maxWidth","_widthOffset","_maxLength","_lengthOffset","_widthFactor","_lengthFactor","_maxHeight","_heightOffset"];
	
	// Correct width and length factor for air
	_widthFactor = 0.5;
	_lengthFactor = 0.5;
	if(_vehicle isKindOf "Air") then {
		_widthFactor = 0.3;
	};
	if(_vehicle isKindOf "Helicopter") then {
		_widthFactor = 0.2;
		_lengthFactor = 0.45;
	};
	
	_centerOfMass = getCenterOfMass _vehicle;
	_bbr = boundingBoxReal _vehicle;
	_p1 = _bbr select 0;
	_p2 = _bbr select 1;
	_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
	_widthOffset = ((_maxWidth / 2) - abs ( _centerOfMass select 0 )) * _widthFactor;
	_maxLength = abs ((_p2 select 1) - (_p1 select 1));
	_lengthOffset = ((_maxLength / 2) - abs (_centerOfMass select 1 )) * _lengthFactor;
	_maxHeight = abs ((_p2 select 2) - (_p1 select 2));
	_heightOffset = _maxHeight/6;
	
	_rearCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	_rearCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	_frontCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	_frontCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	
	[_rearCorner,_rearCorner2,_frontCorner,_frontCorner2];
};


CTI_CL_FNC_EXT_ASL_Attach_Ropes = {
	params ["_cargo","_CTI_P_Controlled"];
	_vehicleWithIndex = _CTI_P_Controlled getVariable ["ASL_Ropes_Vehicle", [objNull,0]];
	_vehicle = _vehicleWithIndex select 0;
	if(!isNull _vehicle) then {
		if(local _vehicle) then {
			private ["_ropes","_attachmentPoints","_objDistance","_ropeLength","_allCargo"];
			_ropes = [_vehicle,(_vehicleWithIndex select 1)] call CTI_CL_FNC_EXT_ASL_Get_Ropes;
			if(count _ropes == 4) then {
				_attachmentPoints = [_cargo] call CTI_CL_FNC_EXT_ASL_Get_Corner_Points;
				_ropeLength = (ropeLength (_ropes select 0));
				_objDistance = (_cargo distance _vehicle) + 2;
				if( _objDistance > _ropeLength ) then {
					[["The cargo ropes are too short. Move vehicle closer.", false],"CTI_CL_FNC_EXT_ASL_Hint",_CTI_P_Controlled] call ASL_RemoteExec;
				} else {		
					[_vehicle,_CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Drop_Ropes;
					[_cargo, _attachmentPoints select 0, [0,0,-1]] ropeAttachTo (_ropes select 0);
					[_cargo, _attachmentPoints select 1, [0,0,-1]] ropeAttachTo (_ropes select 1);
					[_cargo, _attachmentPoints select 2, [0,0,-1]] ropeAttachTo (_ropes select 2);
					[_cargo, _attachmentPoints select 3, [0,0,-1]] ropeAttachTo (_ropes select 3);
					_allCargo = _vehicle getVariable ["ASL_Cargo",[]];
					_allCargo set [(_vehicleWithIndex select 1),_cargo];
					_vehicle setVariable ["ASL_Cargo",_allCargo, true];
					if(missionNamespace getVariable ["ASL_HEAVY_LIFTING_ENABLED",true]) then {
						[_cargo, _vehicle, _ropes] spawn CTI_CL_FNC_EXT_ASL_Rope_Adjust_Mass;		
					};				
				};
			};
		} else {
			[_this,"CTI_CL_FNC_EXT_ASL_Attach_Ropes",_vehicle,true] call ASL_RemoteExec;
		};
	};
};

CTI_CL_FNC_EXT_ASL_Attach_Ropes_Action = {
	private ["_vehicle","_cargo","_canBeAttached"];
	_cargo = cursorTarget;
	_vehicle = (CTI_P_Controlled getVariable ["ASL_Ropes_Vehicle", [objNull,0]]) select 0;
	if([_vehicle,_cargo] call CTI_CL_FNC_EXT_ASL_Can_Attach_Ropes) then {
		
		_canBeAttached = true;
		
		if!(missionNamespace getVariable ["ASL_LOCKED_VEHICLES_ENABLED",false]) then {
			if( locked _cargo > 1 ) then {
				["Cannot attach cargo ropes to locked vehicle",false] call CTI_CL_FNC_EXT_ASL_Hint;
				_canBeAttached = false;
			};
		};
		
		if!(missionNamespace getVariable ["ASL_EXILE_SAFEZONE_ENABLED",false]) then {
			if(!isNil "ExilePlayerInSafezone") then {
				if( ExilePlayerInSafezone ) then {
					["Cannot attach cargo ropes in safe zone",false] call CTI_CL_FNC_EXT_ASL_Hint;
					_canBeAttached = false;
				};
			};
		};
	
		if(_canBeAttached) then {
			[_cargo,CTI_P_Controlled] call CTI_CL_FNC_EXT_ASL_Attach_Ropes;
		};
		
	};
};

CTI_CL_FNC_EXT_ASL_Attach_Ropes_Action_Check = {
	private ["_vehicleWithIndex","_cargo"];
	_vehicleWithIndex = CTI_P_Controlled getVariable ["ASL_Ropes_Vehicle", [objNull,0]];
	_cargo = cursorTarget;
	[_vehicleWithIndex select 0,_cargo] call CTI_CL_FNC_EXT_ASL_Can_Attach_Ropes;
};

CTI_CL_FNC_EXT_ASL_Can_Attach_Ropes = {
	params ["_vehicle","_cargo"];
	if(!isNull _vehicle && !isNull _cargo) then {
		[_vehicle,_cargo] call CTI_CL_FNC_EXT_ASL_Is_Supported_Cargo && vehicle CTI_P_Controlled == CTI_P_Controlled && CTI_P_Controlled distance _cargo < 10 && _vehicle != _cargo;
	} else {
		false;
	};
};

CTI_CL_FNC_EXT_ASL_Drop_Ropes = {
	params ["_vehicle","_CTI_P_Controlled",["_ropesIndex",0]];
	if(local _vehicle) then {
		private ["_helper","_existingRopes"];
		_helper = (_CTI_P_Controlled getVariable ["ASL_Ropes_Pick_Up_Helper", objNull]);
		if(!isNull _helper) then {
			_existingRopes = [_vehicle,_ropesIndex] call CTI_CL_FNC_EXT_ASL_Get_Ropes;		
			{
				_helper ropeDetach _x;
			} forEach _existingRopes;
			detach _helper;
			deleteVehicle _helper;		
		};
		_CTI_P_Controlled setVariable ["ASL_Ropes_Vehicle", nil,true];
		_CTI_P_Controlled setVariable ["ASL_Ropes_Pick_Up_Helper", nil,true];
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Drop_Ropes",_vehicle,true] call ASL_RemoteExec;
	};
};

CTI_CL_FNC_EXT_ASL_Drop_Ropes_Action = {
	private ["_vehicleAndIndex"];
	if([] call CTI_CL_FNC_EXT_ASL_Can_Drop_Ropes) then {	
		_vehicleAndIndex = CTI_P_Controlled getVariable ["ASL_Ropes_Vehicle", []];
		if(count _vehicleAndIndex == 2) then {
			[_vehicleAndIndex select 0, CTI_P_Controlled, _vehicleAndIndex select 1] call CTI_CL_FNC_EXT_ASL_Drop_Ropes;
		};
	};
};

CTI_CL_FNC_EXT_ASL_Drop_Ropes_Action_Check = {
	[] call CTI_CL_FNC_EXT_ASL_Can_Drop_Ropes;
};

CTI_CL_FNC_EXT_ASL_Can_Drop_Ropes = {
	count (CTI_P_Controlled getVariable ["ASL_Ropes_Vehicle", []]) > 0 && vehicle CTI_P_Controlled == CTI_P_Controlled;
};

CTI_CL_FNC_EXT_ASL_Get_Closest_Rope = {
	private ["_nearbyVehicles","_closestVehicle","_closestRopeIndex","_closestDistance"];
	private ["_vehicle","_activeRope","_ropes","_ends"];
	private ["_end1","_end2","_minEndDistance"];
	_nearbyVehicles = missionNamespace getVariable ["CTI_CL_FNC_EXT_ASL_Nearby_Vehicles",[]];
	_closestVehicle = objNull;
	_closestRopeIndex = 0;
	_closestDistance = -1;
	{
		_vehicle = _x;
		{
			_activeRope = _x;
			_ropes = [_vehicle,(_activeRope select 0)] call CTI_CL_FNC_EXT_ASL_Get_Ropes;
			{
				_ends = ropeEndPosition _x;
				if(count _ends == 2) then {
					_end1 = _ends select 0;
					_end2 = _ends select 1;
					_minEndDistance = ((position CTI_P_Controlled) distance _end1) min ((position CTI_P_Controlled) distance _end2);
					if(_closestDistance == -1 || _closestDistance > _minEndDistance) then {
						_closestDistance = _minEndDistance;
						_closestRopeIndex = (_activeRope select 0);
						_closestVehicle = _vehicle;
					};
				};
			} forEach _ropes;
		} forEach ([_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes);
	} forEach _nearbyVehicles;
	[_closestVehicle,_closestRopeIndex];
};

CTI_CL_FNC_EXT_ASL_Pickup_Ropes = {
	params ["_vehicle","_CTI_P_Controlled",["_ropesIndex",0]];
	if(local _vehicle) then {
		private ["_existingRopesAndCargo","_existingRopes","_existingCargo","_helper","_allCargo"];
		_existingRopesAndCargo = [_vehicle,_ropesIndex] call CTI_CL_FNC_EXT_ASL_Get_Ropes_And_Cargo;
		_existingRopes = _existingRopesAndCargo select 0;
		_existingCargo = _existingRopesAndCargo select 1;
		if(!isNull _existingCargo) then {
			{
				_existingCargo ropeDetach _x;
			} forEach _existingRopes;
			_allCargo = _vehicle getVariable ["ASL_Cargo",[]];
			_allCargo set [_ropesIndex,objNull];
			_vehicle setVariable ["ASL_Cargo",_allCargo, true];
		};
		_helper = "Land_Can_V2_F" createVehicle position _CTI_P_Controlled;
		{
			[_helper, [0, 0, 0], [0,0,-1]] ropeAttachTo _x;
			_helper attachTo [_CTI_P_Controlled, [-0.1, 0.1, 0.15], "Pelvis"];
		} forEach _existingRopes;
		hideObject _helper;
		[[_helper],"CTI_CL_FNC_EXT_ASL_Hide_Object_Global"] call ASL_RemoteExecServer;
		_CTI_P_Controlled setVariable ["ASL_Ropes_Vehicle", [_vehicle,_ropesIndex],true];
		_CTI_P_Controlled setVariable ["ASL_Ropes_Pick_Up_Helper", _helper,true];
	} else {
		[_this,"CTI_CL_FNC_EXT_ASL_Pickup_Ropes",_vehicle,true] call ASL_RemoteExec;
	};
};

CTI_CL_FNC_EXT_ASL_Pickup_Ropes_Action = {
	private ["_nearbyVehicles","_canPickupRopes","_closestRope"];
	_nearbyVehicles = missionNamespace getVariable ["CTI_CL_FNC_EXT_ASL_Nearby_Vehicles",[]];
	if([] call CTI_CL_FNC_EXT_ASL_Can_Pickup_Ropes) then {
		_closestRope = [] call CTI_CL_FNC_EXT_ASL_Get_Closest_Rope;
		if(!isNull (_closestRope select 0)) then {
			_canPickupRopes = true;
			if!(missionNamespace getVariable ["ASL_LOCKED_VEHICLES_ENABLED",false]) then {
				if( locked (_closestRope select 0) > 1 ) then {
					["Cannot pick up cargo ropes from locked vehicle",false] call CTI_CL_FNC_EXT_ASL_Hint;
					_canPickupRopes = false;
				};
			};
			if(_canPickupRopes) then {
				[(_closestRope select 0), CTI_P_Controlled, (_closestRope select 1)] call CTI_CL_FNC_EXT_ASL_Pickup_Ropes;
			};	
		};
	};
};

CTI_CL_FNC_EXT_ASL_Pickup_Ropes_Action_Check = {
	[] call CTI_CL_FNC_EXT_ASL_Can_Pickup_Ropes;
};

CTI_CL_FNC_EXT_ASL_Can_Pickup_Ropes = {
	count (CTI_P_Controlled getVariable ["ASL_Ropes_Vehicle", []]) == 0 && count (missionNamespace getVariable ["CTI_CL_FNC_EXT_ASL_Nearby_Vehicles",[]]) > 0 && vehicle CTI_P_Controlled == CTI_P_Controlled;
};

CTI_CL_FNC_EXT_ASL_SUPPORTED_VEHICLES = [
	"Helicopter",
	"VTOL_Base_F"
];

CTI_CL_FNC_EXT_ASL_Is_Supported_Vehicle = {
	params ["_vehicle","_isSupported"];
	_isSupported = false;
	if(not isNull _vehicle) then {
		{
			if(_vehicle isKindOf _x) then {
				_isSupported = true;
			};
		} forEach (missionNamespace getVariable ["ASL_SUPPORTED_VEHICLES_OVERRIDE",ASL_SUPPORTED_VEHICLES]);
	};
	_isSupported;
};

CTI_CL_FNC_EXT_ASL_SLING_RULES = [
	["All","CAN_SLING","All"]
];

CTI_CL_FNC_EXT_ASL_Is_Supported_Cargo = {
	params ["_vehicle","_cargo"];
	private ["_canSling"];
	_canSling = false;
	if(not isNull _vehicle && not isNull _cargo) then {
		{
			if(_vehicle isKindOf (_x select 0)) then {
				if(_cargo isKindOf (_x select 2)) then {
					if( (toUpper (_x select 1)) == "CAN_SLING" ) then {
						_canSling = true;
					} else {
						_canSling = false;
					};
				};
			};
		} forEach (missionNamespace getVariable ["ASL_SLING_RULES_OVERRIDE",ASL_SLING_RULES]);
	};
	_canSling;
};

CTI_CL_FNC_EXT_ASL_Hint = {
    params ["_msg",["_isSuccess",true]];
    if(!isNil "ExileClient_gui_notification_event_addNotification") then {
		if(_isSuccess) then {
			["Success", [_msg]] call ExileClient_gui_notification_event_addNotification; 
		} else {
			["Whoops", [_msg]] call ExileClient_gui_notification_event_addNotification; 
		};
    } else {
        hint _msg;
    };
};

CTI_CL_FNC_EXT_ASL_Hide_Object_Global = {
	params ["_obj"];
	if( _obj isKindOf "Land_Can_V2_F" ) then {
		hideObjectGlobal _obj;
	};
};

CTI_CL_FNC_EXT_ASL_Find_Nearby_Vehicles = {
	private ["_nearVehicles","_nearVehiclesWithRopes","_vehicle","_ends","_end1","_end2","_CTI_P_ControlledPosAGL"];
	_nearVehicles = [];
	{
		_nearVehicles append  (CTI_P_Controlled nearObjects [_x, 30]);
	} forEach (missionNamespace getVariable ["ASL_SUPPORTED_VEHICLES_OVERRIDE",ASL_SUPPORTED_VEHICLES]);
	_nearVehiclesWithRopes = [];
	{
		_vehicle = _x;
		{
			_ropes = _vehicle getVariable ["ASL_Ropes",[]];
			if(count _ropes > (_x select 0)) then {
				_ropes = _ropes select (_x select 0);
				{
					_ends = ropeEndPosition _x;
					if(count _ends == 2) then {
						_end1 = _ends select 0;
						_end2 = _ends select 1;
						_CTI_P_ControlledPosAGL = ASLtoAGL getPosASL CTI_P_Controlled;
						if((_CTI_P_ControlledPosAGL distance _end1) < 5 || (_CTI_P_ControlledPosAGL distance _end2) < 5 ) then {
							_nearVehiclesWithRopes =  _nearVehiclesWithRopes + [_vehicle];
						}
					};
				} forEach _ropes;
			};
		} forEach ([_vehicle] call CTI_CL_FNC_EXT_ASL_Get_Active_Ropes);
	} forEach _nearVehicles;
	_nearVehiclesWithRopes;
};

CTI_CL_FNC_EXT_ASL_Add_Player_Actions = {

	CTI_P_Controlled addAction ["Extend Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Extend_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Extend_Ropes_Action_Check"];
	
	CTI_P_Controlled addAction ["Shorten Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Shorten_Ropes_Action_Check"];
		
	CTI_P_Controlled addAction ["Release Cargo", { 
		[] call CTI_CL_FNC_EXT_ASL_Release_Cargo_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Release_Cargo_Action_Check"];
		
	CTI_P_Controlled addAction ["Retract Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Retract_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Retract_Ropes_Action_Check"];
	
	CTI_P_Controlled addAction ["Deploy Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Deploy_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Attach To Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Attach_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Attach_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Drop Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Drop_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Drop_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Pickup Cargo Ropes", { 
		[] call CTI_CL_FNC_EXT_ASL_Pickup_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_ASL_Pickup_Ropes_Action_Check"];

	CTI_P_Controlled addEventHandler ["Respawn", {
		CTI_P_Controlled setVariable ["ASL_Actions_Loaded",false];
	}];
	
};

CTI_CL_FNC_EXT_SA_Simulate_Towing_Speed = {
	
	params ["_vehicle"];
	
	private ["_runSimulation","_currentCargo","_maxVehicleSpeed","_maxTowedVehicles","_vehicleMass"];
	
	_maxVehicleSpeed = getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "maxSpeed");
	_vehicleMass = 1000 max (getMass _vehicle);
	_maxTowedCargo = missionNamespace getVariable ["SA_MAX_TOWED_CARGO",2];
	_runSimulation = true;
	
	private ["_currentVehicle","_totalCargoMass","_totalCargoCount","_findNextCargo","_towRopes","_ropeLength"];
	private ["_ends","_endsDistance","_currentMaxSpeed","_newMaxSpeed"];
	
	while {_runSimulation} do {
	
		// Calculate total mass and count of cargo being towed (only takes into account
		// cargo that's actively being towed (e.g. there's no slack in the rope)
		
		_currentVehicle = _vehicle;
		_totalCargoMass = 0;
		_totalCargoCount = 0;
		_findNextCargo = true;
		while {_findNextCargo} do {
			_findNextCargo = false;
			CTI_CL_FNC_EXT_SA_Get_Cargo(_currentVehicle,_currentCargo);
			if(!isNull _currentCargo) then {
				_towRopes = _currentVehicle getVariable ["SA_Tow_Ropes",[]];
				if(count _towRopes > 0) then {
					_ropeLength = ropeLength (_towRopes select 0);
					_ends = ropeEndPosition (_towRopes select 0);
					_endsDistance = (_ends select 0) distance (_ends select 1);
					if( _endsDistance >= _ropeLength - 2 ) then {
						_totalCargoMass = _totalCargoMass + (1000 max (getMass _currentCargo));
						_totalCargoCount = _totalCargoCount + 1;
						_currentVehicle = _currentCargo;
						_findNextCargo = true;
					};
				};
			};
		};
	
		_newMaxSpeed = _maxVehicleSpeed / (1 max ((_totalCargoMass /  _vehicleMass) * 2));
		_newMaxSpeed = (_maxVehicleSpeed * 0.75) min _newMaxSpeed;
		
		// Prevent vehicle from moving if trying to move more cargo than pre-defined max
		if(_totalCargoCount > _maxTowedCargo) then {
			_newMaxSpeed = 0;
		};
		
		_currentMaxSpeed = _vehicle getVariable ["SA_Max_Tow_Speed",_maxVehicleSpeed];
		
		if(_currentMaxSpeed != _newMaxSpeed) then {
			_vehicle setVariable ["SA_Max_Tow_Speed",_newMaxSpeed];
		};
		
		sleep 0.1;
		
	};
};

CTI_CL_FNC_EXT_SA_Simulate_Towing = {

	params ["_vehicle","_vehicleHitchModelPos","_cargo","_cargoHitchModelPos","_ropeLength"];

	private ["_lastCargoHitchPosition","_lastCargoVectorDir","_cargoLength","_maxDistanceToCargo","_lastMovedCargoPosition","_cargoHitchPoints"];
	private ["_vehicleHitchPosition","_cargoHitchPosition","_newCargoHitchPosition","_cargoVector","_movedCargoVector","_attachedObjects","_currentCargo"];
	private ["_newCargoDir","_lastCargoVectorDir","_newCargoPosition","_doExit","_cargoPosition","_vehiclePosition","_maxVehicleSpeed","_vehicleMass","_cargoMass","_cargoCanFloat"];	
	private ["_cargoCorner1AGL","_cargoCorner1ASL","_cargoCorner2AGL","_cargoCorner2ASL","_cargoCorner3AGL","_cargoCorner3ASL","_cargoCorner4AGL","_cargoCorner4ASL","_surfaceNormal1","_surfaceNormal2","_surfaceNormal"];
	private ["_cargoCenterASL","_surfaceHeight","_surfaceHeight2","_maxSurfaceHeight"];
	
	_maxVehicleSpeed = getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "maxSpeed");
	_cargoCanFloat = if( getNumber (configFile >> "CfgVehicles" >> typeOf _cargo >> "canFloat") == 1 ) then { true } else { false };
	
	private ["_cargoCenterOfMassAGL","_cargoModelCenterGroundPosition"];
	CTI_CL_FNC_EXT_SA_Find_Surface_AGL_Under_Model(_cargo,getCenterOfMass _cargo,_cargoCenterOfMassAGL,_cargoCanFloat);
	_cargoModelCenterGroundPosition = _cargo worldToModelVisual _cargoCenterOfMassAGL;
	_cargoModelCenterGroundPosition set [0,0];
	_cargoModelCenterGroundPosition set [1,0];
	_cargoModelCenterGroundPosition set [2, (_cargoModelCenterGroundPosition select 2) - 0.05]; // Adjust height so that it doesn't ride directly on ground
	
	// Calculate cargo model corner points
	private ["_cargoCornerPoints"];
	_cargoCornerPoints = [_cargo] call CTI_CL_FNC_EXT_SA_Get_Corner_Points;
	_corner1 = _cargoCornerPoints select 0;
	_corner2 = _cargoCornerPoints select 1;
	_corner3 = _cargoCornerPoints select 2;
	_corner4 = _cargoCornerPoints select 3;
	
	
	// Try to set cargo owner if the towing client doesn't own the cargo
	if(local _vehicle && !local _cargo) then {
		[[_cargo, clientOwner],"CTI_CL_FNC_EXT_SA_Set_Owner"] call SA_RemoteExecServer;
	};
	
	_vehicleHitchModelPos set [2,0];
	_cargoHitchModelPos set [2,0];
	
	_lastCargoHitchPosition = _cargo modelToWorld _cargoHitchModelPos;
	_lastCargoVectorDir = vectorDir _cargo;
	_lastMovedCargoPosition = getPos _cargo;
	
	_cargoHitchPoints = [_cargo] call CTI_CL_FNC_EXT_SA_Get_Hitch_Points;
	_cargoLength = (_cargoHitchPoints select 0) distance (_cargoHitchPoints select 1);
	
	_vehicleMass = 1 max (getMass _vehicle);
	_cargoMass = getMass _cargo;
	if(_cargoMass == 0) then {
		_cargoMass = _vehicleMass;
	};
	
	_maxDistanceToCargo = _ropeLength;

	_doExit = false;
	
	// Start vehicle speed simulation
	[_vehicle] spawn CTI_CL_FNC_EXT_SA_Simulate_Towing_Speed;
	
	while {!_doExit} do {

		_vehicleHitchPosition = _vehicle modelToWorld _vehicleHitchModelPos;
		_vehicleHitchPosition set [2,0];
		_cargoHitchPosition = _lastCargoHitchPosition;
		_cargoHitchPosition set [2,0];
		
		_cargoPosition = getPos _cargo;
		_vehiclePosition = getPos _vehicle;
		
		if(_vehicleHitchPosition distance _cargoHitchPosition > _maxDistanceToCargo) then {
		
			// Calculated simulated towing position + direction
			_newCargoHitchPosition = _vehicleHitchPosition vectorAdd ((_vehicleHitchPosition vectorFromTo _cargoHitchPosition) vectorMultiply _ropeLength);
			_cargoVector = _lastCargoVectorDir vectorMultiply _cargoLength;
			_movedCargoVector = _newCargoHitchPosition vectorDiff _lastCargoHitchPosition;
			_newCargoDir = vectorNormalized (_cargoVector vectorAdd _movedCargoVector);
			//if(_isRearCargoHitch) then {
			//	_newCargoDir = _newCargoDir vectorMultiply -1;
			//};
			_lastCargoVectorDir = _newCargoDir;
			_newCargoPosition = _newCargoHitchPosition vectorAdd (_newCargoDir vectorMultiply -(vectorMagnitude (_cargoHitchModelPos)));
			
			CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Position(_cargo,_newCargoPosition,_newCargoPosition,_cargoCanFloat);
			
			// Calculate surface normal (up) (more realistic than surfaceNormal function)
			CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Model(_cargo,_corner1,_cargoCorner1ASL,_cargoCanFloat);
			CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Model(_cargo,_corner2,_cargoCorner2ASL,_cargoCanFloat);
			CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Model(_cargo,_corner3,_cargoCorner3ASL,_cargoCanFloat);
			CTI_CL_FNC_EXT_SA_Find_Surface_ASL_Under_Model(_cargo,_corner4,_cargoCorner4ASL,_cargoCanFloat);
			_surfaceNormal1 = (_cargoCorner1ASL vectorFromTo _cargoCorner3ASL) vectorCrossProduct (_cargoCorner1ASL vectorFromTo _cargoCorner2ASL);
			_surfaceNormal2 = (_cargoCorner4ASL vectorFromTo _cargoCorner2ASL) vectorCrossProduct (_cargoCorner4ASL vectorFromTo _cargoCorner3ASL);
			_surfaceNormal = _surfaceNormal1 vectorAdd _surfaceNormal2;
			
			if(missionNamespace getVariable ["SA_TOW_DEBUG_ENABLED", false]) then {
				if(isNil "sa_tow_debug_arrow_1") then {
					sa_tow_debug_arrow_1 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
					sa_tow_debug_arrow_2 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
					sa_tow_debug_arrow_3 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
					sa_tow_debug_arrow_4 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
				};
				sa_tow_debug_arrow_1 setPosASL _cargoCorner1ASL;
				sa_tow_debug_arrow_1 setVectorUp _surfaceNormal;
				sa_tow_debug_arrow_2 setPosASL _cargoCorner2ASL;
				sa_tow_debug_arrow_2 setVectorUp _surfaceNormal;
				sa_tow_debug_arrow_3 setPosASL _cargoCorner3ASL;
				sa_tow_debug_arrow_3 setVectorUp _surfaceNormal;
				sa_tow_debug_arrow_4 setPosASL _cargoCorner4ASL;
				sa_tow_debug_arrow_4 setVectorUp _surfaceNormal;
			};
			
			// Calculate adjusted surface height based on surface normal (prevents vehicle from clipping into ground)
			_cargoCenterASL = AGLtoASL (_cargo modelToWorldVisual [0,0,0]);
			_cargoCenterASL set [2,0];
			_surfaceHeight = ((_cargoCorner1ASL vectorAdd ( _cargoCenterASL vectorMultiply -1)) vectorDotProduct _surfaceNormal1) /  ([0,0,1] vectorDotProduct _surfaceNormal1);
			_surfaceHeight2 = ((_cargoCorner1ASL vectorAdd ( _cargoCenterASL vectorMultiply -1)) vectorDotProduct _surfaceNormal2) /  ([0,0,1] vectorDotProduct _surfaceNormal2);
			_maxSurfaceHeight = (_newCargoPosition select 2) max _surfaceHeight max _surfaceHeight2;
			_newCargoPosition set [2, _maxSurfaceHeight ];
 			
			_newCargoPosition = _newCargoPosition vectorAdd ( _cargoModelCenterGroundPosition vectorMultiply -1 );
			
			_cargo setVectorDir _newCargoDir;
			_cargo setVectorUp _surfaceNormal;
			_cargo setPosWorld _newCargoPosition;
			
			_lastCargoHitchPosition = _newCargoHitchPosition;
			_maxDistanceToCargo = _vehicleHitchPosition distance _newCargoHitchPosition;
			_lastMovedCargoPosition = _cargoPosition;

			_massAdjustedMaxSpeed = _vehicle getVariable ["SA_Max_Tow_Speed",_maxVehicleSpeed];		
			if(speed _vehicle > (_massAdjustedMaxSpeed)+0.1) then {
				_vehicle setVelocity ((vectorNormalized (velocity _vehicle)) vectorMultiply (_massAdjustedMaxSpeed/3.6));
			};
			
		} else {

			if(_lastMovedCargoPosition distance _cargoPosition > 2) then {
				_lastCargoHitchPosition = _cargo modelToWorld _cargoHitchModelPos;
				_lastCargoVectorDir = vectorDir _cargo;
			};
			
		};
		
		// If vehicle isn't local to the client, switch client running towing simulation
		if(!local _vehicle) then {
			[_this,"CTI_CL_FNC_EXT_SA_Simulate_Towing",_vehicle] call CTI_CL_FNC_EXT_SA_RemoteExec;
			_doExit = true;
		};
		
		// If the vehicle isn't towing anything, stop the towing simulation
		CTI_CL_FNC_EXT_SA_Get_Cargo(_vehicle,_currentCargo);
		if(isNull _currentCargo) then {
			_doExit = true;
		};
		
		sleep 0.01;
		
	};
};

CTI_CL_FNC_EXT_SA_Get_Corner_Points = {
	params ["_vehicle"];
	private ["_centerOfMass","_bbr","_p1","_p2","_rearCorner","_rearCorner2","_frontCorner","_frontCorner2"];
	private ["_maxWidth","_widthOffset","_maxLength","_lengthOffset","_widthFactor","_lengthFactor"];
	
	// Correct width and length factor for air
	_widthFactor = 0.75;
	_lengthFactor = 0.75;
	if(_vehicle isKindOf "Air") then {
		_widthFactor = 0.3;
	};
	if(_vehicle isKindOf "Helicopter") then {
		_widthFactor = 0.2;
		_lengthFactor = 0.45;
	};
	
	_centerOfMass = getCenterOfMass _vehicle;
	_bbr = boundingBoxReal _vehicle;
	_p1 = _bbr select 0;
	_p2 = _bbr select 1;
	_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
	_widthOffset = ((_maxWidth / 2) - abs ( _centerOfMass select 0 )) * _widthFactor;
	_maxLength = abs ((_p2 select 1) - (_p1 select 1));
	_lengthOffset = ((_maxLength / 2) - abs (_centerOfMass select 1 )) * _lengthFactor;
	_rearCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) - _lengthOffset, _centerOfMass select 2];
	_rearCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) - _lengthOffset, _centerOfMass select 2];
	_frontCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) + _lengthOffset, _centerOfMass select 2];
	_frontCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) + _lengthOffset, _centerOfMass select 2];
	
	if(missionNamespace getVariable ["SA_TOW_DEBUG_ENABLED", false]) then {
		if(isNil "sa_tow_debug_arrow_1") then {
			sa_tow_debug_arrow_1 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
			sa_tow_debug_arrow_2 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
			sa_tow_debug_arrow_3 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
			sa_tow_debug_arrow_4 = "Sign_Arrow_F" createVehicleLocal [0,0,0];
		};
		sa_tow_debug_arrow_1 setPosASL  AGLtoASL (_vehicle modelToWorldVisual _rearCorner);
		sa_tow_debug_arrow_2 setPosASL  AGLtoASL (_vehicle modelToWorldVisual _rearCorner2);
		sa_tow_debug_arrow_3 setPosASL  AGLtoASL (_vehicle modelToWorldVisual _frontCorner);
		sa_tow_debug_arrow_4 setPosASL  AGLtoASL (_vehicle modelToWorldVisual _frontCorner2);
	};
			
	[_rearCorner,_rearCorner2,_frontCorner,_frontCorner2];
};

CTI_CL_FNC_EXT_SA_Get_Hitch_Points = {
	params ["_vehicle"];
	private ["_cornerPoints","_rearCorner","_rearCorner2","_frontCorner","_frontCorner2","_rearHitchPoint"];
	private ["_frontHitchPoint","_sideLeftPoint","_sideRightPoint"];
	_cornerPoints = [_vehicle] call CTI_CL_FNC_EXT_SA_Get_Corner_Points;
	_rearCorner = _cornerPoints select 0;
	_rearCorner2 = _cornerPoints select 1;
	_frontCorner = _cornerPoints select 2;
	_frontCorner2 = _cornerPoints select 3;
	_rearHitchPoint = ((_rearCorner vectorDiff _rearCorner2) vectorMultiply 0.5) vectorAdd  _rearCorner2;
	_frontHitchPoint = ((_frontCorner vectorDiff _frontCorner2) vectorMultiply 0.5) vectorAdd  _frontCorner2;
	//_sideLeftPoint = ((_frontCorner vectorDiff _rearCorner) vectorMultiply 0.5) vectorAdd  _frontCorner;
	//_sideRightPoint = ((_frontCorner2 vectorDiff _rearCorner2) vectorMultiply 0.5) vectorAdd  _frontCorner2;
	[_frontHitchPoint,_rearHitchPoint];
};

CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes = {
	params ["_cargo","_CTI_P_Controlled"];
	_vehicle = _CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Vehicle", objNull];
	if(!isNull _vehicle) then {
		if(local _vehicle) then {
			private ["_towRopes","_vehicleHitch","_cargoHitch","_objDistance","_ropeLength"];
			_towRopes = _vehicle getVariable ["]SA_Tow_Ropes",[]];
			if(count _towRopes == 1) then {
			
				/*
				private ["_cargoHitchPoints","_distanceToFrontHitch","_distanceToRearHitch","_isRearCargoHitch"];
				_cargoHitchPoints = [_cargo] call CTI_CL_FNC_EXT_SA_Get_Hitch_Points;
				_distanceToFrontHitch = CTI_P_Controlled distance (_cargo modelToWorld (_cargoHitchPoints select 0));
				_distanceToRearHitch = CTI_P_Controlled distance (_cargo modelToWorld (_cargoHitchPoints select 1));
				if( _distanceToFrontHitch < _distanceToRearHitch ) then {
					_cargoHitch = _cargoHitchPoints select 0;
					_isRearCargoHitch = false;
				} else {
					_cargoHitch = _cargoHitchPoints select 1;
					_isRearCargoHitch = true;
				};
				*/
				
				_cargoHitch = ([_cargo] call CTI_CL_FNC_EXT_SA_Get_Hitch_Points) select 0;
				
				_vehicleHitch = ([_vehicle] call CTI_CL_FNC_EXT_SA_Get_Hitch_Points) select 1;
				_ropeLength = (ropeLength (_towRopes select 0));
				_objDistance = ((_vehicle modelToWorld _vehicleHitch) distance (_cargo modelToWorld _cargoHitch));
				if( _objDistance > _ropeLength ) then {
					[["The tow ropes are too short. Move vehicle closer.", false],"CTI_CL_FNC_EXT_SA_Hint",_CTI_P_Controlled] call CTI_CL_FNC_EXT_SA_RemoteExec;
				} else {		
					[_vehicle,_CTI_P_Controlled] call CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes;
					_helper = "Land_Can_V2_F" createVehicle position _cargo;
					_helper attachTo [_cargo, _cargoHitch];
					_helper setVariable ["SA_Cargo",_cargo,true];
					hideObject _helper;
					[[_helper],"CTI_CL_FNC_EXT_SA_Hide_Object_Global"] call SA_RemoteExecServer;
					[_helper, [0,0,0], [0,0,-1]] ropeAttachTo (_towRopes select 0);
					[_vehicle,_vehicleHitch,_cargo,_cargoHitch,_ropeLength] spawn CTI_CL_FNC_EXT_SA_Simulate_Towing;
				};
			};
		} else {
			[_this,"CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes",_vehicle,true] call CTI_CL_FNC_EXT_SA_RemoteExec;
		};
	};
};

CTI_CL_FNC_EXT_SA_Take_Tow_Ropes = {
	params ["_vehicle","_CTI_P_Controlled"];
	if(local _vehicle) then {
		diag_log format ["Take Tow Ropes Called %1", _this];
		private ["_existingTowRopes","_hitchPoint","_rope"];
		_existingTowRopes = _vehicle getVariable ["]SA_Tow_Ropes",[]];
		if(count _existingTowRopes == 0) then {
			_hitchPoint = [_vehicle] call CTI_CL_FNC_EXT_SA_Get_Hitch_Points select 1;
			_rope = ropeCreate [_vehicle, _hitchPoint, 10];
			_vehicle setVariable ["]SA_Tow_Ropes",[_rope],true];
			_this call CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes;
		};
	} else {
		[_this,"CTI_CL_FNC_EXT_SA_Take_Tow_Ropes",_vehicle,true] call CTI_CL_FNC_EXT_SA_RemoteExec;
	};
};

CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes = {
	params ["_vehicle","_CTI_P_Controlled"];
	if(local _vehicle) then {
		private ["_attachedObj","_helper"];
		{
			_attachedObj = _x;
			{
				_attachedObj ropeDetach _x;
			} forEach (_vehicle getVariable ["]SA_Tow_Ropes",[]]);
			deleteVehicle _attachedObj;
		} forEach ropeAttachedObjects _vehicle;
		_helper = "Land_Can_V2_F" createVehicle position _CTI_P_Controlled;
		{
			[_helper, [0, 0, 0], [0,0,-1]] ropeAttachTo _x;
			_helper attachTo [_CTI_P_Controlled, [-0.1, 0.1, 0.15], "Pelvis"];
		} forEach (_vehicle getVariable ["]SA_Tow_Ropes",[]]);
		hideObject _helper;
		[[_helper],"CTI_CL_FNC_EXT_SA_Hide_Object_Global"] call SA_RemoteExecServer;
		_CTI_P_Controlled setVariable ["]SA_Tow_Ropes_Vehicle", _vehicle,true];
		_CTI_P_Controlled setVariable ["]SA_Tow_Ropes_Pick_Up_Helper", _helper,true];
	} else {
		[_this,"CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes",_vehicle,true] call CTI_CL_FNC_EXT_SA_RemoteExec;
	};
};

CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes = {
	params ["_vehicle","_CTI_P_Controlled"];
	if(local _vehicle) then {
		private ["_helper"];
		_helper = (_CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Pick_Up_Helper", objNull]);
		if(!isNull _helper) then {
			{
				_helper ropeDetach _x;
			} forEach (_vehicle getVariable ["]SA_Tow_Ropes",[]]);
			detach _helper;
			deleteVehicle _helper;
		};
		_CTI_P_Controlled setVariable ["]SA_Tow_Ropes_Vehicle", nil,true];
		_CTI_P_Controlled setVariable ["]SA_Tow_Ropes_Pick_Up_Helper", nil,true];
	} else {
		[_this,"CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes",_vehicle,true] call CTI_CL_FNC_EXT_SA_RemoteExec;
	};
};

CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes = {
	params ["_vehicle","_CTI_P_Controlled"];
	if(local _vehicle) then {
		private ["_existingTowRopes","_hitchPoint","_rope"];
		_existingTowRopes = _vehicle getVariable ["]SA_Tow_Ropes",[]];
		if(count _existingTowRopes > 0) then {
			_this call CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes;
			_this call CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes;
			{
				ropeDestroy _x;
			} forEach _existingTowRopes;
			_vehicle setVariable ["]SA_Tow_Ropes",nil,true];
		};
	} else {
		[_this,"CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes",_vehicle,true] call CTI_CL_FNC_EXT_SA_RemoteExec;
	};
};

CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes_Action = {
	private ["_vehicle","_cargo","_canBeTowed"];
	_cargo = cursorTarget;
	_vehicle = CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Vehicle", objNull];
	if([_vehicle,_cargo] call CTI_CL_FNC_EXT_SA_Can_Attach_Tow_Ropes) then {
		
		_canBeTowed = true;
		
		if!(missionNamespace getVariable ["SA_TOW_LOCKED_VEHICLES_ENABLED",false]) then {
			if( locked _cargo > 1 ) then {
				["Cannot attach tow ropes to locked vehicle",false] call CTI_CL_FNC_EXT_SA_Hint;
				_canBeTowed = false;
			};
		};
		
		if!(missionNamespace getVariable ["SA_TOW_IN_EXILE_SAFEZONE_ENABLED",false]) then {
			if(!isNil "ExilePlayerInSafezone") then {
				if( ExilePlayerInSafezone ) then {
					["Cannot attach tow ropes in safe zone",false] call CTI_CL_FNC_EXT_SA_Hint;
					_canBeTowed = false;
				};
			};
		};
	
		if(_canBeTowed) then {
			[_cargo,CTI_P_Controlled] call CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes;
		};
		
	};
};

CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes_Action_Check = {
	private ["_vehicle","_cargo"];
	_vehicle = CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Vehicle", objNull];
	_cargo = cursorTarget;
	[_vehicle,_cargo] call CTI_CL_FNC_EXT_SA_Can_Attach_Tow_Ropes;
};

CTI_CL_FNC_EXT_SA_Can_Attach_Tow_Ropes = {
	params ["_vehicle","_cargo"];
	if(!isNull _vehicle && !isNull _cargo) then {
		[_vehicle,_cargo] call CTI_CL_FNC_EXT_SA_Is_Supported_Cargo && vehicle CTI_P_Controlled == CTI_P_Controlled && CTI_P_Controlled distance _cargo < 10 && _vehicle != _cargo;
	} else {
		false;
	};
};

CTI_CL_FNC_EXT_SA_Take_Tow_Ropes_Action = {
	private ["_vehicle","_canTakeTowRopes"];
	_vehicle = cursorTarget;
	if([_vehicle] call CTI_CL_FNC_EXT_SA_Can_Take_Tow_Ropes) then {
	
		_canTakeTowRopes = true;
		
		if!(missionNamespace getVariable ["SA_TOW_LOCKED_VEHICLES_ENABLED",false]) then {
			if( locked _vehicle > 1 ) then {
				["Cannot take tow ropes from locked vehicle",false] call CTI_CL_FNC_EXT_SA_Hint;
				_canTakeTowRopes = false;
			};
		};
		
		if!(missionNamespace getVariable ["SA_TOW_IN_EXILE_SAFEZONE_ENABLED",false]) then {
			if(!isNil "ExilePlayerInSafezone") then {
				if( ExilePlayerInSafezone ) then {
					["Cannot take tow ropes in safe zone",false] call CTI_CL_FNC_EXT_SA_Hint;
					_canTakeTowRopes = false;
				};
			};
		};
	
		if(_canTakeTowRopes) then {
			[_vehicle,CTI_P_Controlled] call CTI_CL_FNC_EXT_SA_Take_Tow_Ropes;
		};
	
	};
};

CTI_CL_FNC_EXT_SA_Take_Tow_Ropes_Action_Check = {
	[cursorTarget] call CTI_CL_FNC_EXT_SA_Can_Take_Tow_Ropes;
};

CTI_CL_FNC_EXT_SA_Can_Take_Tow_Ropes = {
	params ["_vehicle"];
	if([_vehicle] call CTI_CL_FNC_EXT_SA_Is_Supported_Vehicle) then {
		private ["_existingVehicle","_existingTowRopes"];
		_existingTowRopes = _vehicle getVariable ["]SA_Tow_Ropes",[]];
		_existingVehicle = CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Vehicle", objNull];
		vehicle CTI_P_Controlled == CTI_P_Controlled && CTI_P_Controlled distance _vehicle < 10 && (count _existingTowRopes) == 0 && isNull _existingVehicle;
	} else {
		false;
	};
};

CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes_Action = {
	private ["_vehicle","_canPutAwayTowRopes"];
	_vehicle = cursorTarget;
	if([_vehicle] call CTI_CL_FNC_EXT_SA_Can_Put_Away_Tow_Ropes) then {
	
		_canPutAwayTowRopes = true;
		
		if!(missionNamespace getVariable ["SA_TOW_LOCKED_VEHICLES_ENABLED",false]) then {
			if( locked _vehicle > 1 ) then {
				["Cannot put away tow ropes in locked vehicle",false] call CTI_CL_FNC_EXT_SA_Hint;
				_canPutAwayTowRopes = false;
			};
		};
		
		if!(missionNamespace getVariable ["SA_TOW_IN_EXILE_SAFEZONE_ENABLED",false]) then {
			if(!isNil "ExilePlayerInSafezone") then {
				if( ExilePlayerInSafezone ) then {
					["Cannot put away tow ropes in safe zone",false] call CTI_CL_FNC_EXT_SA_Hint;
					_canPutAwayTowRopes = false;
				};
			};
		};
	
		if(_canPutAwayTowRopes) then {
			[_vehicle,CTI_P_Controlled] call CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes;
		};
		
	};
};

CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes_Action_Check = {
	[cursorTarget] call CTI_CL_FNC_EXT_SA_Can_Put_Away_Tow_Ropes;
};

CTI_CL_FNC_EXT_SA_Can_Put_Away_Tow_Ropes = {
	params ["_vehicle"];
	private ["_existingTowRopes"];
	if([_vehicle] call CTI_CL_FNC_EXT_SA_Is_Supported_Vehicle) then {
		_existingTowRopes = _vehicle getVariable ["]SA_Tow_Ropes",[]];
		vehicle CTI_P_Controlled == CTI_P_Controlled && CTI_P_Controlled distance _vehicle < 10 && (count _existingTowRopes) > 0;
	} else {
		false;
	};
};


CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes_Action = {
	private ["_vehicle"];
	_vehicle = CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Vehicle", objNull];
	if([] call CTI_CL_FNC_EXT_SA_Can_Drop_Tow_Ropes) then {
		[_vehicle, CTI_P_Controlled] call CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes;
	};
};

CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes_Action_Check = {
	[] call CTI_CL_FNC_EXT_SA_Can_Drop_Tow_Ropes;
};

CTI_CL_FNC_EXT_SA_Can_Drop_Tow_Ropes = {
	!isNull (CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Vehicle", objNull]) && vehicle CTI_P_Controlled == CTI_P_Controlled;
};



CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes_Action = {
	private ["_nearbyTowVehicles","_canPickupTowRopes","_vehicle"];
	_nearbyTowVehicles = missionNamespace getVariable ["CTI_CL_FNC_EXT_SA_Nearby_Tow_Vehicles",[]];
	if([] call CTI_CL_FNC_EXT_SA_Can_Pickup_Tow_Ropes) then {
	
		_vehicle = _nearbyTowVehicles select 0;
		_canPickupTowRopes = true;
		
		if!(missionNamespace getVariable ["SA_TOW_LOCKED_VEHICLES_ENABLED",false]) then {
			if( locked _vehicle > 1 ) then {
				["Cannot pick up tow ropes from locked vehicle",false] call CTI_CL_FNC_EXT_SA_Hint;
				_canPickupTowRopes = false;
			};
		};
		
		if!(missionNamespace getVariable ["SA_TOW_IN_EXILE_SAFEZONE_ENABLED",false]) then {
			if(!isNil "ExilePlayerInSafezone") then {
				if( ExilePlayerInSafezone ) then {
					["Cannot pick up tow ropes in safe zone",false] call CTI_CL_FNC_EXT_SA_Hint;
					_canPickupTowRopes = false;
				};
			};
		};
	
		if(_canPickupTowRopes) then {
			[_nearbyTowVehicles select 0, CTI_P_Controlled] call CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes;
		};
	
	};
};

CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes_Action_Check = {
	[] call CTI_CL_FNC_EXT_SA_Can_Pickup_Tow_Ropes;
};

CTI_CL_FNC_EXT_SA_Can_Pickup_Tow_Ropes = {
	isNull (CTI_P_Controlled getVariable ["]SA_Tow_Ropes_Vehicle", objNull]) && count (missionNamespace getVariable ["CTI_CL_FNC_EXT_SA_Nearby_Tow_Vehicles",[]]) > 0 && vehicle CTI_P_Controlled == CTI_P_Controlled;
};

CTI_CL_FNC_EXT_SA_TOW_SUPPORTED_VEHICLES = [
	"Tank", "Car", "Ship"
];

CTI_CL_FNC_EXT_SA_Is_Supported_Vehicle = {
	params ["_vehicle","_isSupported"];
	_isSupported = false;
	if(not isNull _vehicle) then {
		{
			if(_vehicle isKindOf _x) then {
				_isSupported = true;
			};
		} forEach (missionNamespace getVariable ["SA_TOW_SUPPORTED_VEHICLES_OVERRIDE",SA_TOW_SUPPORTED_VEHICLES]);
	};
	_isSupported;
};

CTI_CL_FNC_EXT_SA_TOW_RULES = [
	["Tank","CAN_TOW","Tank"],
	["Tank","CAN_TOW","Car"],
	["Tank","CAN_TOW","Ship"],
	["Tank","CAN_TOW","Air"],
	["Car","CAN_TOW","Tank"],
	["Car","CAN_TOW","Car"],
	["Car","CAN_TOW","Ship"],
	["Car","CAN_TOW","Air"],
	["Ship","CAN_TOW","Ship"]
];

CTI_CL_FNC_EXT_SA_Is_Supported_Cargo = {
	params ["_vehicle","_cargo"];
	private ["_canTow"];
	_canTow = false;
	if(not isNull _vehicle && not isNull _cargo) then {
		{
			if(_vehicle isKindOf (_x select 0)) then {
				if(_cargo isKindOf (_x select 2)) then {
					if( (toUpper (_x select 1)) == "CAN_TOW" ) then {
						_canTow = true;
					} else {
						_canTow = false;
					};
				};
			};
		} forEach (missionNamespace getVariable ["SA_TOW_RULES_OVERRIDE",SA_TOW_RULES]);
	};
	_canTow;
};

CTI_CL_FNC_EXT_SA_Hint = {
    params ["_msg",["_isSuccess",true]];
    if(!isNil "ExileClient_gui_notification_event_addNotification") then {
		if(_isSuccess) then {
			["Success", [_msg]] call ExileClient_gui_notification_event_addNotification; 
		} else {
			["Whoops", [_msg]] call ExileClient_gui_notification_event_addNotification; 
		};
    } else {
        hint _msg;
    };
};

CTI_CL_FNC_EXT_SA_Hide_Object_Global = {
	params ["_obj"];
	if( _obj isKindOf "Land_Can_V2_F" ) then {
		hideObjectGlobal _obj;
	};
};

CTI_CL_FNC_EXT_SA_Set_Owner = {
	params ["_obj","_client"];
	_obj setOwner _client;
};

CTI_CL_FNC_EXT_SA_Add_Player_Tow_Actions = {
	
	CTI_P_Controlled addAction ["Deploy Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Take_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Take_Tow_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Put Away Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Put_Away_Tow_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Attach To Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Attach_Tow_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Drop Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Drop_Tow_Ropes_Action_Check"];

	CTI_P_Controlled addAction ["Pickup Tow Ropes", { 
		[] call CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes_Action;
	}, nil, 0, false, true, "", "call CTI_CL_FNC_EXT_SA_Pickup_Tow_Ropes_Action_Check"];

	/*CTI_P_Controlled addEventHandler ["Respawn", {
		CTI_P_Controlled setVariable ["SA_Tow_Actions_Loaded",false];
	}];*/
	
};

CTI_CL_FNC_EXT_SA_Find_Nearby_Tow_Vehicles = {
	private ["_nearVehicles","_nearVehiclesWithTowRopes","_vehicle","_ends","_end1","_end2"];
	_nearVehicles = [];
	{
		_nearVehicles append  (position CTI_P_Controlled nearObjects [_x, 30]);
	} forEach (missionNamespace getVariable ["SA_TOW_SUPPORTED_VEHICLES_OVERRIDE",SA_TOW_SUPPORTED_VEHICLES]);
	_nearVehiclesWithTowRopes = [];
	{
		_vehicle = _x;
		{
			_ends = ropeEndPosition _x;
			if(count _ends == 2) then {
				_end1 = _ends select 0;
				_end2 = _ends select 1;
				if(((position CTI_P_Controlled) distance _end1) < 5 || ((position CTI_P_Controlled) distance _end2) < 5 ) then {
					_nearVehiclesWithTowRopes pushBack _vehicle;
				}
			};
		} forEach (_vehicle getVariable ["]SA_Tow_Ropes",[]]);
	} forEach _nearVehicles;
	_nearVehiclesWithTowRopes;
};

/*if(!isDedicated) then {
	[] spawn {
		while {true} do {
			if(!isNull CTI_P_Controlled && isPlayer CTI_P_Controlled) then {
				if!( CTI_P_Controlled getVariable ["SA_Tow_Actions_Loaded",false] ) then {
					[] call CTI_CL_FNC_EXT_SA_Add_Player_Tow_Actions;
					CTI_P_Controlled setVariable ["SA_Tow_Actions_Loaded",true];
				};
			};
			missionNamespace setVariable ["CTI_CL_FNC_EXT_SA_Nearby_Tow_Vehicles", (call CTI_CL_FNC_EXT_SA_Find_Nearby_Tow_Vehicles)];
			sleep 2;
		};
	};
};*/