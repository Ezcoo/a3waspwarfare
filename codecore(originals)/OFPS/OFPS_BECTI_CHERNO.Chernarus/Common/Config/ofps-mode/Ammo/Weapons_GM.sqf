/*
//--------------------------------------------------------------------------------------------------------------
# HEADER #
Description:	This file presents classnames and their values to the mission.

//--------------------------------------------------------------------------------------------------------------	
# DOCUMENTATION #

	/*Enabled*/
		//DESCRIPTION: Enables use of Weapon in game, still loads Weapon into variable for reference
		//TYPE: Boolean
		//DEFAULT: true
		//EXAMPLES: true/false

	/*Name*/
		//DESCRIPTION: Common Weapon name, primarily for internal reference
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'GBU Bomb'

	/*ClassName*/
		//DESCRIPTION:  Weapon Class Name
		//TYPE: String
		//DEFAULT: ''
		//EXAMPLES: 'Bomb_03_Plane_CAS_02_F'

	/*MaxMags*/
		//DESCRIPTION:  Max amount of magazines allowed per weapon turret
		//TYPE: Integer
		//DEFAULT: 1
		//EXAMPLES: 

//--------------------------------------------------------------------------------------------------------------
private ["_side", "_u"];

_side = _this;

_u = []; //Ammo Classname

//--------------------------------------------------------------------------------------------------------------

//--- LAND -----------------------------------------------------------

//--- Small Arms --------------------------

//--- Explosives --------------------------

//--- Heavy --------------------------

//--- Arty --------------------------

//--- HE --------------------------

//--- Grenades --------------------------

//--- Launchers --------------------------

//--- Naval --------------------------

//--- Other --------------------------

//--- AIR ------------------------------------------------------------

//--- Missles --------------------------

//--- Bombs --------------------------

//--- Pylons --------------------------

//--- Other --------------------------



//--------------------------------------------------------------------------------------------------------------

[_side, _u] call compile preprocessFileLineNumbers "Common\Config\Common\Ammo\Weapon_Config_Set.sqf";