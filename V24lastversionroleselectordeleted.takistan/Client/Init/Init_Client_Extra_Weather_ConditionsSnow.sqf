// MKY Sand version 100 - 4/10/2016
///////////////////////////////// m0nkey sand client /////////////////////////////////////
MKY_fnc_ppEffect_On = {
	if !(isNil "effsand") exitWith {true;};
	effsand = ppEffectCreate ["colorCorrections", 1501];
	effsand ppEffectEnable true;
	effsand ppEffectAdjust [1,1.02,-0.005,[0,0,0,0],[1,0.8,0.6,0.65],[0.199,0.587,0.115,0]];
	effsand ppEffectCommit 20; // can also fade colorization in slowly if not using black in /black out
	(true);
};
MKY_fnc_ppEffect_Off = {
	if (isNil "effsand") exitWith {true;};
	0 = [] spawn {
		effsand ppEffectAdjust [1,1.0,0.0,[.55,.725,.722,0],[.538,.72,.93,1],[1,.1,.96,0.03]];
		effsand ppEffectCommit 30;  // fade colorization out slowly
		sleep 35;
		ppEffectDestroy effsand;
		effsand = nil;
	};
	(true);
};
MKY_fnc_Exit_Sand = {
	deleteVehicle objSand;
	deleteVehicle objSandN;
	deleteVehicle objSandS;
	deleteVehicle objSandE;
	deleteVehicle objSandW;
	deleteVehicle objEmitterHost;
	objEmitterHost = nil;
	varEnableSand = false;
	(true);
};
MKY_fnc_create_Emitter_Host = {
	// create the object that will be bound to player model, which emitters will themselves be bound to
	if !(isNil "objEmitterHost") exitWith {true;};
	objEmitterHost = "Land_Bucket_F" createVehicleLocal (position player);
	objEmitterHost attachTo [player,[0,0,0]];
	objEmitterHost hideObject true;
	objEmitterHost allowDamage false;
	objEmitterHost enableSimulation false;
	(true);
};
MKY_fnc_set_Object_Direction = {
	// spawn a thread that sets attached object to the bearing variable
	scriptSetObjDir = [] spawn {
		// wait for dummy object to exist
		waitUntil {sleep 0.25;!(isNil "objEmitterHost")};
		while {true} do {
			sleep 0.25;
			if (isNil "objEmitterHost") exitWith {true;};
			/*
				x = 360 - direction player is facing
				set object direction to (x + bearing variable)
			*/
			_vel = velocity objEmitterHost;
			objEmitterHost setDir (360 - getDir player);
			objEmitterHost setVelocity _vel;
		};
	};
	(true);
};
MKY_fnc_sand_Init = {

	// create the parent particle emitter and attach to the emitter host object (the bucket)
	objSand = "#particlesource" createVehicleLocal (getPosASL player);
	objSand attachTo [objEmitterHost,[0,0,0]];

	// create the children emitters that will follow the parent emitter
	objSandN = "#particlesource" createVehicleLocal (getPosASL player);
	objSandS = "#particlesource" createVehicleLocal (getPosASL player);
	objSandE = "#particlesource" createVehicleLocal (getPosASL player);
	objSandW = "#particlesource" createVehicleLocal (getPosASL player);

	// be sure to wait until emitter host is present
	waitUntil {sleep 1;!(isNil "objEmitterHost")};

	// define a master array for the sand EFX
	sand_Array = [
		["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,0],
		"",
		"Billboard",
		1,					//Time Period
		30,					//LifeTime
		[0,0,0],			//Position
		[((MKY_arWind select 1) select 0) * windVal,((MKY_arWind select 1) select 1) * windVal,0],		//Velocity
		0,					//rotationVel
		10, 				//Weight
		7.84,				//Volume - higher number causes more float (in relation to weight)
		0.0001,				//Rubbing
		[5,15,10,15,20],	//Scale
		[[.53,.72,.96,0.0],[.53,.72,.96,.04],[.53,.72,.96,.02],[.53,.72,.96,.03],[.53,.72,.96,.02],[.53,.72,.96,.01],[.53,.72,.96,.01],[.53,.72,.96,.01]], //Color
		[1000],				//AnimSpeed
		0,					//randDirPeriod
		0.0,				//randDirIntesity
		"",
		"",
		objSand
	];
	// define a master random array for the EFX
	sand_Rand_Array = [
		0, 					// random time period
		[0,0,-0.8],			// [+right, +forward, +upward] random position based on position emitter is attached to
		[0,0,0],			// random velocity value
		0,					// random rotation value
		0.215,				// random scale value (ie. .25 or 25% of the declared value in param array)
		[0.02,0,0.02,0.106],	// randomized color
		0,					// random direction period value
		0					// random direction period intensity value
	];
	// for each child emitter, set class/circle and attach
	{
		_x setParticleClass "HousePartDust";
		_x setParticleCircle [0.0,[0,0,0]];
		_x attachTo [objSand,[0,0,0]];
	} forEach [objSandN,objSandS,objSandE,objSandW];

	// master arrays are modified for each childs specific parameters, then applied to the child
	sand_Array set [5,[0,100,0]];
	sand_Rand_Array set [1,[70,0,-0.8]];
	objSandN setParticleParams sand_Array;
	objSandN setParticleRandom sand_Rand_Array;

	sand_Array set [4,20]; // lifetime
	sand_Array set [5,[0,-40,0]];
	sand_Rand_Array set [1,[70,0,-0.8]];
	objSandS setParticleParams sand_Array;
	objSandS setParticleRandom sand_Rand_Array;

	sand_Array set [5,[70,30,0]];
	sand_Rand_Array set [1,[0,70,-0.8]];
	objSandE setParticleParams sand_Array;
	objSandE setParticleRandom sand_Rand_Array;

	sand_Array set [5,[-70,30,0]];
	sand_Rand_Array set [1,[0,70,-0.8]];
	objSandW setParticleParams sand_Array;
	objSandW setParticleRandom sand_Rand_Array;

	// sometimes the particle emitter does not follow directions properly and emits on a different vector
	// for now, after creating the particle emitters, destroy them and start again
	// if (bFixPE) exitWith {0 = [] call MKY_fnc_fixPE;};

	// call function to set the dropInterval of all particle emitters
	0 = [0] call MKY_fnc_setDI;

	(true);
};
MKY_fnc_fixPE = {
	// destroy the particle emitters and rebuild (to fix sparodic issue I cannot solve)
	deleteVehicle objSand;
	deleteVehicle objSandN;
	deleteVehicle objSandS;
	deleteVehicle objSandE;
	deleteVehicle objSandW;
	sleep 1;
	bFixPE = false;
	0 = [] call MKY_fnc_sand_Init;
	(true);
};
MKY_fnc_setDI = {
	// use passed parameter to set dropInterval of emitters
	// always increase EFX upwind and slightly decrease on downwind
	private "_int";
	_int = _this select 0;

	switch (MKY_arWind select 0) do {
		case 45: {
			// facing north east
			objSandN setDropInterval (.05 - _int);
			objSandS setDropInterval (.09 - _int);
			objSandE setDropInterval (.05 - _int);
			objSandW setDropInterval (.09 - _int);
		};
		case 135: {
			// facing south east
			objSandN setDropInterval (.09 - _int);
			objSandS setDropInterval (.05 - _int);
			objSandE setDropInterval (.05 - _int);
			objSandW setDropInterval (.09 - _int);
		};
		case 225: {
			// facing south west
			objSandN setDropInterval (.09 - _int);
			objSandS setDropInterval (.05 - _int);
			objSandE setDropInterval (.09 - _int);
			objSandW setDropInterval (.05 - _int);
		};
		case 315: {
			// facing north west
			objSandN setDropInterval (.05 - _int);
			objSandS setDropInterval (.09 - _int);
			objSandE setDropInterval (.09 - _int);
			objSandW setDropInterval (.05 - _int);
		};
	};
	(true);
};
f_handle_Respawn = {
	// simple event handler would sometimes fail to reattach the objEmitterHost
	// calling a function like this appears to work every time
	private ["_unit","_body"];
	_unit = (_this select 0);
	_body = (_this select 1);
	// detach from dead body
	detach objEmitterHost;
	objEmitterHost setPosASL (getPosASL player);
	objSand setPosASL (getPosASL player);
	// attach to new body
	objEmitterHost attachTo [player,[0,0,0]];
	(true);
};
///////////////////////////////////////////////////////////////

private ["_arFog_org","_arFog","_intOvercast_org","_intOvercast","_intIndex"];

// wait for array to be created on the server and present on this client
// MKY_arWind = [45,[-1,-1]]; // ** TEST **
waitUntil {sleep .5;!(isNil "MKY_arWind")};
windVal = 6;
bInStructure = false;
bFixPE = true;

// define array of different colors/intensities of the EFX
MKY_arSandColors = [
	[[.53,.72,.96,0.0],[.53,.72,.96,.04],[.53,.72,.96,.02],[.53,.72,.96,.02],[.53,.72,.96,.02],[.53,.72,.96,.01],[.53,.72,.96,.01],[.53,.72,.96,.01]],
	[[.53,.72,.96,0.0],[.53,.72,.96,.06],[.53,.72,.96,.05],[.53,.72,.96,.04],[.53,.72,.96,.03],[.53,.72,.96,.02],[.53,.72,.96,.02],[.53,.72,.96,.02]],
	[[.53,.72,.96,0.0],[.53,.72,.96,.08],[.53,.72,.96,.07],[.53,.72,.96,.06],[.53,.72,.96,.04],[.53,.72,.96,.04],[.53,.72,.96,.03],[.53,.72,.96,.03]],
	[[.53,.72,.96,0.0],[.53,.72,.96,.10],[.53,.72,.96,.09],[.53,.72,.96,.08],[.53,.72,.96,.06],[.53,.72,.96,.06],[.53,.72,.96,.06],[.53,.72,.96,.05]],
	[[.53,.72,.96,0.0],[.53,.72,.96,.14],[.53,.72,.96,.11],[.53,.72,.96,.10],[.53,.72,.96,.08],[.53,.72,.96,.08],[.53,.72,.96,.07],[.53,.72,.96,.07]],
	[[.53,.72,.96,0.0],[.53,.72,.96,.18],[.53,.72,.96,.13],[.53,.72,.96,.12],[.53,.72,.96,.10],[.53,.72,.96,.10],[.53,.72,.96,.10],[.53,.72,.96,.10]]
];

arCurrent_Wind = [((MKY_arWind select 1) select 0) * windVal,((MKY_arWind select 1) select 1) * windVal,true];// global array - holds current wind values for setWind
bAllowRain = false; 				// global boolean - default stop rain during snow/sand
bDoSetDirection = false; 			// global boolean - used to toggle setting direction of objEmitterHost
bEnforceWind = true; 				// global boolean - used to continually set wind values to this scripts values
bVaryFog = true; 					// global boolean - used to vary the amount of fog and reset the elevation
bUseAudio = true;					// global boolean - used to enable/disable playing of audio file
intEFX = 0;							// global integer - used to declare strength of the effect
MKY_arSands = [-0.01,5];			// global array - used to define different dropInterval variances, chosen at random
MKY_arSandsVolume = [7.83,7.84,7.85];	// global array - used to define the volume of particles, chosen at random

// allow rain during sand
if ((count _this) > 3) then {if (typeName (_this select 3) == "BOOL") then {bAllowRain = (_this select 3);};};
// enforce winds
if ((count _this) > 4) then {if (typeName (_this select 4) == "BOOL") then {bEnforceWind = (_this select 4);};};
// allow fog variation
if ((count _this) > 5) then {if (typeName (_this select 5) == "BOOL") then {bVaryFog = (_this select 5);};};
// use wind audio if allowed
if ((count _this) > 6) then {if (typeName (_this select 6) == "BOOL") then {bUseAudio = (_this select 6);};};
// use effect strength
if ((count _this) > 7) then {
	if (typeName (_this select 7) == "SCALAR") then {
		switch (_this select 7) do {
			case 0: {intEFX = 0;MKY_arSands = [-0.02,-0.01,0,0.01,0.02,5];};
			case 1: {intEFX = -0.02;MKY_arSands = [-0.01,5];MKY_arSandColors resize 3;MKY_arSandsVolume deleteAt 2};
			case 2: {intEFX = 0;MKY_arSands = [-0.01,0,0.01,5];MKY_arSandColors deleteAt 5;MKY_arSandColors deleteAt 0;MKY_arSandsVolume deleteAt 2};
			case 3: {intEFX = 0.01;MKY_arSands = [0,0.01,0.02,5];MKY_arSandColors deleteAt 5;MKY_arSandColors deleteAt 4;};
			case 4: {intEFX = 4;};
			default {intEFX = -0.02;MKY_arSands = [-0.01,5];MKY_arSandColors resize 4;MKY_arSandsVolume deleteAt 2};
		};
	};
};
// MKY_arSandColors = [[[1,1,1,0.05],[1,1,1,.29]]];

//intEFX = 0;	// TEMP FOR TESTING ***

// if intEFX == 4, stop processing (disabled effect)
if (intEFX == 4) exitWith {(true);};

// functions have been defined, variables have been created, begin calling functions and executing commands

// create an object that hosts the particle emitters
0 = [] call MKY_fnc_create_Emitter_Host;

// add event handler to always reattach the emitter host to new player vehicle
nul = player addEventHandler ["Respawn",f_handle_Respawn];

// prepare overcast
_intOvercast_org = overcast;
if ((count _this) > 1) then {
	if (typeName (_this select 1) == "SCALAR") then {
		skipTime -24;
		86400 setOvercast (_this select 1);
		skipTime 24;
		0 = [] spawn {
			sleep 0.1;
			simulWeatherSync;
		};
	};
};

sleep 1;

// prepare ppEffect
if ((count _this) > 2) then {
	if (typeName (_this select 2) == "BOOL") then {
		if (_this select 2) then {
			0 = [] call MKY_fnc_ppEffect_On;
		};
	};
};

// start audio
if (bUseAudio) then {
	eh_MKYaudio = addMusicEventHandler ["MusicStop",{playMusic "MKY_Blizzard";}];
	playMusic "MKY_Blizzard";
};

// prepare fog
_arFog_org = fogParams;
if ((count _this) > 0) then {
	if (typeName (_this select 0) == "ARRAY") then {
		20 setFog (_this select 0); // can use a delay if needed, its at 0 for black out / black in
		if (bVaryFog) then {
			// create variance in fog values
			[((_this select 0) select 0),((_this select 0) select 1),((_this select 0) select 2)] spawn {
				sleep 20; // give initial setFog time to change
				while {true} do {
					while {varEnableSand} do {
						sleep 30;
						20 setFog [(_this select 0),(_this select 1),((getPosASL player) select 2) + ([-15,15] call BIS_fnc_randomInt)];;
					};
					sleep 5;
				};
			};
		};
	};
};

// continually set wind and rain values
[] spawn {
	while {true} do {
		while {varEnableSand} do {
			sleep 8;
			if (bEnforceWind) then {setWind arCurrent_Wind;};
			if !(bAllowRain) then {0 setRain 0;};
			// if sand emitter exists, move it to player position also
			// if !(isNil "objSand") then {objSand setPosASL (getPosASL player);};
			// if particle emitters get too far from player model, particles can work incorrectly ??
			// move all particle emitters to player current position is easiest solution ??
			if !(isNil "objSand") then {
				{
					_x setPosASL (getPosASL player);
				} forEach [objSand,objSandN,objSandS,objSandE,objSandW];
			};
		};
		sleep 1;
	};
};

while {true} do {

	if (varEnableSand) then {
		/*
			each mission may be different, but you might need to wait to create the particles
			if the player will be moved. Here we are going to wait for player to NOT be
			at the 0,0,0 position, which would indicate preparations have been met and things are
			ready to go
			waitUntil {sleep 1; (player distance [0,0,0] > 100)};
		*/

		// spawn thread that continually sets direction of emitter host
		0 = [] call MKY_fnc_set_Object_Direction;

		// create the emitters
		0 = [] call MKY_fnc_sand_Init;
		// waitUntil {sleep 1;!(bFixPE)};

		// spawn thread that lowers wind volume while in building/vehicle
		0 = [] spawn {
			private "_strVar";
			_strVar = "splayer";
			while {varEnableSand} do {
				if (isNull objectParent player) then {	// player IS the vehicle
					if (_strVar == "svehicle") then {
						objEmitterHost attachTo [player,[0,0,0]];
						_strVar = "splayer";
					};

					if (lineIntersects [eyepos player,[eyepos player select 0,eyepos player select 1,(eyepos player select 2) + 10]]) then {
						// indoors
						1 fademusic 0.2;
					} else {
						// outdoors
						1 fademusic 0.5;
					};
				} else {	// player is IN a vehicle

					1 fadeMusic 0.2;
					if (_strVar == "splayer") then {
						objEmitterHost attachTo [vehicle player,[0,0,0]];
						_strVar = "svehicle";
					};
				};
				sleep 2;
			};
		};

		/*
			this was a good spot to blackin because the weather and fog changing is done
			you can comment it out if not using blackout/in or move it somewhere else
		*/
		//~ titleText ["","BLACK IN",4];

		// modify emitter color giving "startup time" to fully take effect
		// 0 = [] spawn {
			// sleep 20;
			// sand_Array set [12,[[.53,.72,.96,.2],[.53,.72,.96,.25],[.38,.33,.2,.3],[.53,.72,.96,.2]]];
			// sand_Array set [12,[[.53,.72,.96,.08],[.53,.72,.96,.1],[.53,.72,.96,.1],[.53,.72,.96,.1],[.53,.72,.96,.1],[.53,.72,.96,.1],[.53,.72,.96,.1],[.53,.72,.96,.1]]];
			// objSandDistance setParticleParams sand_Array;
			// objSandDistance setParticleRandom sand_Rand_Array;
			// hint "changed the COLOR";
			// 0 = [intEFX] call MKY_fnc_setDI;
		// };

		_cnt = 0;
		_rnd = ([10,25] call BIS_fnc_randomNum);
		_di = intEFX;

		// set dropInterval

		// tight loop until sand effect is cancelled
		while {varEnableSand} do {
			sleep 5;
			_cnt = _cnt + 5;

			// after 5 seconds, go back to default
			if (_di != intEFX) then {
				if (_di != 5) then {0 = [intEFX] call MKY_fnc_setDI;};
			};

			// objSandDistance setPosASL (getPosASL player);
			if (_cnt > _rnd) then {

				_di = MKY_arSands call BIS_fnc_selectRandom;
				0 = [_di] call MKY_fnc_setDI;

				sand_Array set [9,(MKY_arSandsVolume call BIS_fnc_selectRandom)];
				sand_Array set [12,(MKY_arSandColors call BIS_fnc_selectRandom)];
				sand_Array set [5,[0,70,0]]; // North is in front, 70 meter out
				objSandN setParticleParams sand_Array;
				sand_Array set [5,[0,-70,0]]; // south is behind, only 30 meter out
				objSandS setParticleParams sand_Array;
				sand_Array set [5,[70,0,0]]; // East is to right, 70 meter out
				objSandE setParticleParams sand_Array;
				sand_Array set [5,[-70,0,0]]; // West is to left, 70 meter out
				objSandW setParticleParams sand_Array;
				_cnt = 0;
				_rnd = ([10,25] call BIS_fnc_randomNum);
			};
		};


		// stop handle to spawned thread
		terminate scriptSetObjDir;
		sleep 1;
		1 fadeMusic 0.1;
		sleep 0;
		playMusic "";
		removeAllMusicEventHandlers "MusicStop";

		// remove effects and exit
		0 = [] call MKY_fnc_ppEffect_Off;
		if ((count _this) > 0) then {if (typeName (_this select 0) == "ARRAY") then {60 setFog _arFog_org;};};
		// leave overcast as it is
		0 = [] call MKY_fnc_Exit_Sand;
	};
	sleep 1;
};