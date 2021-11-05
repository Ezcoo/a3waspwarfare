
//--- NUKE Settings
/*
NUKE_EXPOSURE_TIME = 360; //exposure length
NUKE_BLAST_WAVE_RADIUS = 1000; //sets main nuke effect range, mainly effects
NUKE_BLAST_DAMAGE_RADIUS = 2500; //sets main nuke damage range and max scan range - use below values to adjust object specific, nothing outside this range will be harmed
NUKE_BLAST_DAMAGE_RADIUS_SLOPE = 4000; //sets damage range slope, used for adjusting damage based on distance | damage = 1 - (range / blast_damage_radius)s
NUKE_BLAST_CORE_RADIUS =  200; //sets range for core nuke area - this area kills all 
NUKE_BLAST_BASE_RADIUS =  1000; //sets range for base objects and factories
NUKE_BLAST_INFANTRY_RADIUS =  1500; //sets range for all objects
NUKE_BLAST_VEHICLE_RADIUS =  2000; //sets range for emp range for ground units
NUKE_BLAST_AIR_RADIUS =  2500; //sets range for just air vehicles and emp effect
NUKE_BLAST_SPEED = 150;
NUKE_BLOW_SPEED = 200;
NUKE_HALF_LIFE = 10 * 30;
NUKE_RADIATION_DAMAGE = 0.02;
NUKE_CAR_ARMOUR = 2 / 4;
NUKE_DAMAGE_ON = true; //enables damage
NUKE_RADIATION_ON = false; //enable radiation
NUKE_RADIATION_RADIUS = 2000;  //sets radiation effect range
*/

private ["_xpos", "_ypos", "_vehicles", "_units", "_airs", "_objects", "_distance", "_damage","_wave_radius", "_speed", "_vel", "_x", "_death_core", "_death_base", "_death_objects", "_death_vehicles", "_death_air"];
_xpos = _this select 0;
_ypos = _this select 1;
_center = [_xpos, _ypos, 0];

//////////////////////////////////////////////////////////
// Single scan of all objects in nuke wave radius
//////////////////////////////////////////////////////////
/*
//All units in damage range
_objects_data = _center nearobjects ["All", NUKE_BLAST_DAMAGE_RADIUS];
_objects_sorted = [_objects_data,[],{_center distance _x},"ASCEND"] call BIS_fnc_sortBy;
_num_objects = (count _objects_sorted);
*/
//All units in damage range -- presorted data
_objects_sorted = nearestObjects [_center, ["All"], NUKE_BLAST_DAMAGE_RADIUS, false];
_num_objects = (count _objects_sorted);

/*
//4 separate calls for data then a sort function
_death_units = _center nearEntities [["Man","Static"],NUKE_BLAST_INFANTRY_RADIUS];
_death_land = _center nearEntities [["Car", "Motorcycle", "Tank", "Ship"], NUKE_BLAST_VEHICLE_RADIUS];
_death_air = _center nearEntities ["Air", NUKE_BLAST_AIR_RADIUS];
_death_buildings =  _center nearObjects ["House", NUKE_BLAST_CORE_RADIUS];
_all_objects = _death_buildings + _death_air + _death_land + _death_units;
_objects_sorted = [_all_objects,[],{_center distance _x},"ASCEND"] call BIS_fnc_sortBy;
_num_objects = (count _objects_sorted);
*/

if !(_num_objects > 0) exitWith {};
_applyDamage = {
	private _object = _this select 0;
	private _dist = _this select 1;
	private _typeradius = _this select 2;
	// Skip the object if:
	if (isNull _object) exitWith {};
	if (_distance > _maxradius) exitWith {};
	if ((getDammage _object) >=1) exitWith {};
	if (_object getVariable ["NukeIgnore",false]) exitWith {};

	// Otherwise damage the object (and any crew it may contain)
	_damage = 0;
	if (_dist < _typeradius) then {
		_damage = 1;
	} else {
		//need graph
		_damage = (1 - ((_dist - _killrange) / ((_typeradius - _killrange)^2)));

		/*_damage = (1 - ((_dist - NUKE_BLAST_INFANTRY_RADIUS) / ((NUKE_BLAST_DAMAGE_RADIUS - NUKE_BLAST_INFANTRY_RADIUS)^2)));
		y=(1-((x-1000)/((2000-1000)^2)))
		y = (1-((x-a)/((b-a)^2)))

		y = 1 - (_dist - _typeradius)^2
		y = 1 - (x-10)^2

		y = (ax^2) + (b*x) + c;
		y = (1-((x-a)/((b-a)^2)))

		y = 1 / (1 + exp((2 * _dist) - NODAMAGESLOPE))
		y = 1 / (1 + exp(bx - a))

		 (-1 * ((NUKE_BLAST_DAMAGE_RADIUS / NUKE_BLAST_DAMAGE_RADIUS_SLOPE) * _dist)) + 1
		 y = (-1 * ((a / b) * x)) + 1
		
		NUKE_BLAST_DAMAGE_RADIUS 2000   _fullradius
		SLOPE 4000
		NUKE_BLAST_INFANTRY_RADIUS 1000
		*/
	};

	if (_damage > 0) then {
		_object setDamage ((getDammage _object) + _damage);
		{_x setDamage ((getDammage _x) + _damage);} forEach (crew _object);
	};

};
_applyForce = {};

/////////////////////////////
///   DAMAGE TIME         ///
/////////////////////////////
if ( NUKE_DAMAGE_ON ) then {
	{	
		_dist = (_center distance _x);
		if(_forEachIndex < (_num_objects - 1)) then {
			_dist_next = (_center distance (_objects_sorted select (_forEachIndex + 1)));
			_interval = ((_dist_next - _dist)/NUKE_BLAST_SPEED);
			if(_interval > 0.02) then {
				sleep _interval;
			};
		};
		switch (true) do {
			case (_x isKindOf "Man") : {
				[_x, _dist, NUKE_BLAST_INFANTRY_RADIUS] call _applyDamage;
			};
			case (_x isKindOf "Static") : {
				if !(isPlayer _x) then {
					[_x, _dist, NUKE_BLAST_INFANTRY_RADIUS] call _applyDamage;
					if (alive _x) then {
						[_x] execvm "nuclear\script\electro_pulse.sqf";
					};
				};
			};
			case (_x isKindOf "Motorcycle" || _x isKindOf "Car" || _x isKindOf "Tank" || _x isKindOf "Ship") : {
				[_x, _dist, NUKE_BLAST_VEHICLE_RADIUS] call _applyDamage;
				if (alive _x) then {
					[_x] execvm "nuclear\script\electro_pulse.sqf";
				};			
			};
			case (_x isKindOf "Air") : {
				[_x, _dist, NUKE_BLAST_AIR_RADIUS] call _applyDamage;
				if (alive _x) then {
					[_x] execvm "nuclear\script\electro_pulse.sqf";
				};			
			};
			case (_x iskindof "Land_Cargo_Tower_V3_F" || _x iskindof "Land_Cargo_House_V1_F" || _x iskindof "Land_Research_house_V1_F" || _x iskindof "Land_Airport_Tower_F" || _x iskindof "Land_Medevac_HQ_V1_F" || _x iskindof "Land_Research_HQ_F" || _x iskindof "Land_Cargo_HQ_V1_F" || _x iskindof "Land_dp_smallTank_F" || _x iskindof "Land_Lighthouse_small_F" || _x iskindof "Land_Radar_Small_F" || _x iskindof "Land_Cargo_HQ_V2_F" || _x iskindof "Land_Cargo_HQ_V3_F" || _x iskindof "Land_TTowerBig_2_F" || _x iskindof "Land_Dome_Small_F" || _x iskindof "Land_Dome_Big_F" || _x iskindof "Land_Cargo_Patrol_V1_F" || _x iskindof "Land_Shed_Big_F" || _x iskindof "Land_Shed_Small_F" || _x iskindof "Land_Cargo_Tower_V1_F" || _x iskindof "Land_Mil_WallBig_4m_F" || _x iskindof "Land_sfp_mil_shed" || _x iskindof "Land_sfp_torebodahangar" || _x iskindof "Land_sfp_torebodahangar_alt2" || _x iskindof "Land_TTowerBig_1_F" || _x iskindof "Land_TTowerBig_2_F" || _x iskindof "GUE_WarfareBAntiAirRadar" || _x iskindof "Gue_WarfareBArtilleryRadar") : {
				[_x, _dist, NUKE_BLAST_BASE_RADIUS] call _applyDamage;
			};
			default {
				[_x, _dist, NUKE_BLAST_CORE_RADIUS] call _applyDamage;
			};
		};
	} forEach _objects_sorted;
};
//Radiation Effects
if ( NUKE_RADIATION_ON ) then
{
	[_xpos, _ypos, time] execvm "nuclear\script\geiger.sqf";
	if ( NUKE_DAMAGE_ON ) then {
		[_xpos, _ypos, time] execvm "nuclear\script\radiation.sqf";
	};
};
//PRAY NO LAG!