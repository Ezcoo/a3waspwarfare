/*
  # HEADER #
	Script: 		Client\Functions\Client_NotificationRemove.sqf
	Alias:			CTI_CL_FNC_NotificationRemove
	Description:	Used to remove notifications that may need to suddenly be deleted
	Author: 		JEDMario
	Creation Date:	01-02-2018
	Revision Date:	01-02-2018
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[control, control] call CTI_CL_FNC_NotificationRemove
	
  # DEPENDENCIES #
	None
	
  # EXAMPLE #
    (See service UI functions)
*/

params [
    ["_ColorTagCtrl",controlNull,[controlNull]],
    ["_MessageCtrl",controlNull,[controlNull]]
];

_MessageCtrl ctrlSetFade 1;
_MessageCtrl ctrlCommit 0.3;
_ColorTagCtrl ctrlSetFade 1;
_ColorTagCtrl ctrlCommit 0.3;
uiSleep 0.3;
ctrlDelete _ColorTagCtrl;
ctrlDelete _MessageCtrl;