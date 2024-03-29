/*
  # HEADER #
	Script: 		Client\Functions\Client_IsPlayerCommander.sqf
	Alias:			CTI_CL_FNC_IsPlayerCommander
	Description:	Determine whether the player is the commander or not
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	[Boolean]: True if the player is the commander
	
  # SYNTAX #
	call CTI_CL_FNC_IsPlayerCommander
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideCommanderTeam
	
  # EXAMPLE #
    call CTI_CL_FNC_IsPlayerCommander
	  -> Returns true if the player is the current commander
*/

(CTI_P_SideJoined call cti_CO_FNC_GetCommanderTeam) isEqualTo group player