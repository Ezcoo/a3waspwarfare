/*
  # HEADER #
	Script: 		Client\Functions\Client_IsPlayerCommander.sqf
	Alias:			EZC_fnc_Functions_Client_IsPlayerCommander

	Description:	Determine whether the player is the commander or not
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	[Boolean]: True if the player is the commander
	
  # SYNTAX #
	call EZC_fnc_Functions_Client_IsPlayerCommander

	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideCommanderTeam
	
  # EXAMPLE #
    call EZC_fnc_Functions_Client_IsPlayerCommander

	  -> Returns true if the player is the current commander
*/

(CTI_P_SideJoined call EZC_fnc_Functions_Common_GetCommanderTeam) isEqualTo group player