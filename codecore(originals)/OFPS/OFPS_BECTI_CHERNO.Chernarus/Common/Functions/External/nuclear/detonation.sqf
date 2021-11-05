private ["_object", "_xpos", "_ypos"];
_object = _this select 0;
_xpos = getpos _object select 0;
_ypos = getpos _object select 1;

//Nuke Settings - ALL MAIN SETTING USE THIS FILE
call compile preprocessfile "Common\Functions\External\nuclear\config.sqf";

//Destroy Object - Truck
[_object] execVM "Common\Functions\External\nuclear\script\destroy.sqf";
//Announcement
//playsound CTI_SOUND_nuke;
//Make Units Escape
//[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\escape.sqf";//no need right now due to performance
if (hasInterface) then {
	//Player Quake and Dust
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\athmo.sqf";
	//Player Color and Flash
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\colorcorrection.sqf";
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\flash.sqf";
	sleep 2;
	//Player Ash Fall
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\ash.sqf";
	//Initial Flash
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\glare.sqf";
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\light.sqf";
	//Initial Blast Effects
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\blast_1.sqs";
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\blast1.sqs";
	//Mushroom - links
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\hat.sqs";
	//Player volume adjust
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\ears.sqf";
	//Player aperture adjust
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\aperture.sqf";
	sleep 0.5;
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\hatnod.sqs";
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\blast1.sqs";
	//Other effects
	for [{_dis = 1000}, {_dis <= NUKE_BLAST_WAVE_RADIUS}, {_dis = _dis + 100}] do
	{
	  [_xpos, _ypos, _dis] exec "Common\Functions\External\nuclear\script\wave.sqs";
	  if ( _dis < 3000 ) then {[_xpos, _ypos, _dis] execvm "Common\Functions\External\nuclear\script\noise.sqf"};
	};
};
//Main Damage
if(isServer) then {[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\damage.sqf"};

if (hasInterface) then {
	//Blast Rings
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\ring1.sqs";
	sleep 0.5;
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\ring2.sqs";
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\blast2.sqs";
	sleep 0.4;
	[_xpos, _ypos] exec "Common\Functions\External\nuclear\script\blast3.sqs";
	sleep 5;
	//Player Hearbeat
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\heartbeat.sqf";
	sleep 60;
	//Nuclear Fallout
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\dust.sqf";
	[_xpos, _ypos] execVM "Common\Functions\External\nuclear\script\snow.sqf";
};