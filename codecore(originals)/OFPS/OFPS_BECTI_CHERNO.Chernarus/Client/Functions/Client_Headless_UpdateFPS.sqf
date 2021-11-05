/*
  # HEADER #
	Script: 		Client\Functions\Client_Headless_UpdateFPS.sqf
	Alias:			None ---  Could be something like: CTI_CL_HC_FNC_UpdateFPS
	Description:	Executed in Init_Client_Headless. Updates HC fps variable on all clients every second
	Author: 		JEDMario
	Creation Date:	06-01-2018
	Revision Date:	06-01-2018
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	None
	
  # DEPENDENCIES #
	None
	
  # EXAMPLE #
    execVM "Client\Functions\Client_Headless_UpdateFPS.sqf";
*/

while {! CTI_GameOver} do {
	
	(round diag_fps) remoteExec ["CTI_PVF_CLT_OnHeadlessClientFPSUpdate", CTI_PV_CLIENTS];
	sleep 5;
};