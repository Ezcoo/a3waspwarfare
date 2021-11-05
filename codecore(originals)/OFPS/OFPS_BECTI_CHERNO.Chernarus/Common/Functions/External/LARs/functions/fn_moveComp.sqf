//Main function resposible for moving compositions

//[ COMP_NAME, POS_ATL, OFFSET, DIR, ALIGN_TERRAIN ] call LARs_fnc_moveComp;

//COMP_NAME - Classname given to composition in missionConfigFile CfgCompositions

//POS_ATL( optional ) - Position to move composition
//	If not given or empty array passed then original saved composition position is used
//	Also accepts OBJECT, MARKER, LOCATION

//OFFSET( optional ) - ARRAY [ x, y, z ] ammount to offset composition, as a compositions base pos can vary from what you want when its saved

//DIR( optional ) - Direction to face composition in, If POS_ATL is of type OBJECT, MARKER, LOCATION passing TRUE for direction will use objects direction

//ALIGN_TERRAIN( optional ) - BOOL, Whether composition objects should align themselves to their positions surface normal

//PREVIEW MODE - BOOL, enable local no collision preview mode



private [ "_groupCfgs", "_itemCfgs", "_deferedIDs", "_deferedItems", "_deferedGrps", "_deferedTrgs", "_crewLinks", "_objects", "_priority", "_ids", "_inits", "_nul", "_previewmode" ];

params[
	[ "_compID", [] ],
	[ "_compPosNew", [] ],
	[ "_compOffset", [0,0,0] ],
	[ "_compRot", 0 ],
	[ "_compAlign", 2 ],
	[ "_aligntoggle", false ],
	[ "_compWater", true ],
	[ "_previewmode", true ]
];
//systemchat format ["Move: %1 | %2 ",_compID, _compPos];
//get comp 
_comp = nil;
_objects = [];
_compName = "";
{
	if ( !isNil "_x" && { _x select 0 isEqualTo _compID } ) exitWith {
		_comp = _x;
		_compReference = ( _x select 0 ); 	
		_objects pushBack ( _x select 1 ); 
		_compName = ( _x select 2 ); 
		//systemchat format ["_compref: %1  | %3 ", _compReference, _objects, _compName];
	};
}forEach LARs_spawnedCompositions;
//systemchat format ["_objects: %1 ", _objects];
//level with terrain
switch (_compAlign) do {
	case 0: {
		//force terrain align
		_compAlign = true;
	};
	case 1: {
		//force upright
		_compAlign = false;
	};
	case 2: {
		//allow toggle
		if (_aligntoggle) then {
			_compAlign = false;
		} else {
			_compAlign = true;
		};
	};
};

_asPlaced = false;

///get comp objects
private _fnc_moveItems = {
	private[ "_obj" ];
	params[ "_obj", "_index" ]; 
	//systemchat format ["_obj: %1  ",_obj];	
	[ _obj, _index ] call _fnc_moveObject;
};
private _fnc_getCfgValue = {
	private[ "_cfg", "_value" ];
	params[ "_cfg", "_type", "_default" ];
	
	switch ( toUpper _type ) do {
		case "NUM" : {
			_value = if ( isNumber( _cfg ) ) then {
				getNumber( _cfg )
			}else{
				if !( isNil "_default" ) then {
					_default
				}else{
					0
				};
			};
		};
		case "BOOL" : {
			_value = if ( isNumber( _cfg ) ) then {
				[ false, true ] select ( getNumber( _cfg ) ) 
			}else{
				if !( isNil "_default" ) then {
					_default
				}else{
					true
				};
			};
		};
		case "TXT" : {
			_value = if ( isText( _cfg ) ) then {
				getText ( _cfg ) 
			}else{
				if !( isNil "_default" ) then {
					_default
				}else{
					""
				};
			};
		};
		case "ARRAY" : {
			_value = if ( isArray( _cfg ) ) then {
				getArray ( _cfg ) 
			}else{
				if !( isNil "_default" ) then {
					_default
				}else{
					[]
				};
			};
		};
	};
	
	_value
};
//move object
private _fnc_moveObject = {
	private [ "_obj", "_compitems", "_isFlying", "_presence", "_preCondition", "_needsSurfaceUP", "_type", "_ATLOffset" ];
	params[ "_obj" , "_index"];
	//get object details from base comp 
	_compitems = ( missionConfigFile >> "CfgCompositions" >> _compName >> "items" );
	//_index = _obj select 0;
	_obj = _obj select 1;
	_type = "";
	_ATLOffset = 0;
	_cfg = configNull;
	_count = 0;
	_last = 0;
	{	
		_count = _forEachIndex;
		if (getText( _x >> "type" ) isEqualTo typeof _obj) then {
			
			if (_count  isEqualto _index ) then {
				//systemchat format ["item: %1 | %2 | %3 ",_count,_index,_x];
				_cfg = (_x );
				_type = getText( _x >> "type" );
				_ATLOffset = getNumber( _x >> "atlOffset" );
			};
		};
	}forEach ( "true" configClasses _compitems );
	_isFlying = false;
	_needsSurfaceUP = false;		
	switch ( true ) do {	
		case ( _type isKindOf "Man" ) : {};
		case ( _type isKindOf "LandVehicle" ) : {
			if (_type isKindOf "StaticWeapon") then {
				_needsSurfaceUP = false;
			} else {
				_needsSurfaceUP = true;
			};
		};
		case ( _type isKindOf "Air" ) : {
			_isFlying = _ATLOffset > 18;
			if ( _isFlying ) then {
				_obj engineOn true;
			}else{
				_needsSurfaceUP = true;
			};
		};
		default {
			_needsSurfaceUP = false;
		};
	};
	
	private[ "_randomStartPos", "_position", "_rotation", "_placementRadius", "_init" ];
	if !(isNull _cfg) then {
		_position = getArray( _cfg >> "PositionInfo" >> "position" );
		_rotation = [ ( _cfg >> "PositionInfo" >> "angles" ), "ARRAY", [0,0,0] ] call _fnc_getCfgValue;
		_randomStartPos = getArray( _cfg >> "randomStartPositions" );
		_placementRadius = getNumber( _cfg >> "Attributes" >> "placementRadius" );
		//systemchat format ["MOVE: %1 | %2 | %3 | %4 | %5 | %6 | %7",_cfg, _position, _rotation, _ATLOffset, _randomStartPos, _needsSurfaceUP, _placementRadius ];
		[ _obj, _position, _rotation, _ATLOffset, _randomStartPos, _needsSurfaceUP, _placementRadius ] call _fnc_movePositionAndRotation;
	};
	if ( typeOf _obj isKindOf "Man" ) then {
		( waypoints ( group _obj )) select 0 setWaypointPosition [ getPos _obj, 0 ];
	}; 
						
	_obj
};

//set postion and rotation
private _fnc_movePositionAndRotation = {
	private[ "_pos", "_newPosX", "_newPosY", "_newPosASL", "_newPosZ", "_rotation", "_ATLOffset", "_mkrPos" ];
	params[
		[ "_obj", objNull ],
		[ "_cfgOffset", [0,0,0] ],
		[ "_cfgRot", [0,0,0] ],
		[ "_ATLOffset", 0 ],
		[ "_randomStartPos", [] ],
		[ "_needsSurfaceUp", false ],
		[ "_placementRadius", 0 ]
	];	
	_pos = _compPosNew;
	_PosNew = ATLToASL _compPosNew;
	_cfgOffset = [ _cfgOffset select 0, _cfgOffset select 2 , _cfgOffset select 1 ];
	_cfgOffset = [ _cfgOffset, 360 - _compRot ] call BIS_fnc_rotateVector2D;
	_cfgOffset = _cfgOffset vectorAdd ( [ _compOffset, 360 - _compRot ] call BIS_fnc_rotateVector2D ) ;
	if ( _compAlign && !_asPlaced ) then {
		_newPosX = ( _PosNew select 0 ) + ( _cfgOffset select 0 );
		_newPosY = ( _PosNew select 1 ) + ( _cfgOffset select 1 );
		_newPosASL = getTerrainHeightASL [ _newPosX, _newPosY ];
		_newPosZ = _newPosASL + ( _cfgOffset select 2 );
		_pos = [ _newPosX, _newPosY, _newPosZ ];
	}else{
		_pos = ( _PosNew vectorAdd _cfgOffset ) vectorAdd [ 0, 0, _ATLOffset ];
	};
	if ( count _randomStartPos > 0 ) then {
		_randomStartPos = _randomStartPos  apply { 
			_mkrPos = ATLToASL getMarkerPos _x;
			_mkrPos = _mkrPos vectorAdd [ 0, 0, abs( boundingBoxReal _obj select 0 select 2 ) ];
			_mkrPos
		};
		_pos = selectRandom ( [ _pos ] + _randomStartPos );
	};
	
	if ( _placementRadius > 0 ) then {
		_pos = AGLToASL ( _pos getPos [ random _placementRadius, random 360 ] );
		_pos = _pos vectorAdd [ 0, 0, abs( boundingBoxReal _obj select 0 select 2 ) ];
	};
	
	if ( surfaceIsWater _pos && _compWater && !_asPlaced ) then {
		_pos = [ _pos select 0, _pos select 1, 0 + ( _cfgOffset select 2 ) + ( _compOffset select 2 ) ];
	};
	
	if !( isNull _obj ) then {
		
		//Move object to its world position
		_obj setPosWorld _pos;

		//Turn composition angles to degrees
		_CfgRot params[ "_P", "_Y", "_R" ];
		
		_Y = ( deg _Y ) + _compRot;
		_P = deg _P;
		_R = 360 - deg _R;
		
		//If Aliging composition or its a vehicle that needs surface up
		_pb = if ( ( _compAlign || _needsSurfaceUP ) && !( surfaceIsWater _pos && _compWater ) && !_asPlaced ) then {
			//Face it in the right direction
			_obj setDir _Y;
			//Get positions surface up
			_up = surfaceNormal _pos;
			//Get bound corner surface ups
			_bounds = boundingBoxReal _obj;
			_bounds params[ "_mins", "_maxs" ];
			_mins params[ "_minX", "_minY", "_minZ" ];
			_maxs params[ "_maxX", "_maxY" ];
			
			//Calculate up based on corner surface normals
			_newUp = _up;
			{
				_cornerPos = _obj modelToWorldVisual _x;
				_cornerUp = surfaceNormal _cornerPos;
				_weight = _pos distance _cornerPos; 
				_diff = ( _up vectorDiff _cornerUp ) vectorMultiply _weight;
				_newUp = _newUp vectorAdd _diff;
			}forEach [
				[ _minX, _minY, _minZ ],
				[ _minX, _maxY, _minZ ],
				[ _maxX, _maxY, _minZ ],
				[ _maxX, _minY, _minZ ]
			];
			
			_obj setVectorUp vectorNormalized _up;
			
			_obj call BIS_fnc_getPitchBank
		}else{
			[ 0, 0 ]
		};
		
		//Add any surface offset to composition rotations
		_pb params[ "_pbP", "_pbR" ];

		_P = _P + _pbP;
		_R = _R + _pbR;

		//Make sure rotations are in 0 - 360 range
		{
			_deg = call compile format [ "%1 mod 360", _x ];
			if ( _deg < 0 ) then {
				_deg = linearConversion[ -0, -360, _deg, 360, 0 ];
			};
			call compile format[ "%1 = _deg", _x ];
		}forEach [ "_P", "_R", "_Y" ];

		//Calculate Dir and Up
		_dir = [ sin _Y * cos _P, cos _Y * cos _P, sin _P];
		_up = [ [ sin _R, -sin _P, cos _R * cos _P ], -_Y ] call BIS_fnc_rotateVector2D;
		
		//Set Object rotation
		_obj setVectorDirAndUp [ _dir, _up ];

		//enable simulation		
		if !( simulationEnabled _obj ) then {
			if (_previewmode) then {
				_obj enableSimulationGlobal false;
			} else {
				_obj enableSimulationGlobal true;
			};		
		};

	};

	_pos
};
//move the objects	
_objects = _objects select 0;
//systemchat format ["Objects: %1 ", _objects ];
{
	//systemchat format ["Moving: %1 | %2",_x select 1, _compPosNew];	
	[_x, _forEachIndex] call _fnc_moveItems;
}foreach _objects;