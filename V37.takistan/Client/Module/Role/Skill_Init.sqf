/*
	Script: Skill System by Benny.
	Description: Skill Initialization.
*/

/* Skills Root */
WFBE_SK_V_Root = 'Client\Module\Role\Skill_';

/* Functions */
WFBE_SK_FNC_Apply = Compile preprocessFile "Client\Module\Role\Skill_Apply.sqf";
WFBE_SK_V_Type = "";

/* Skills Variables */
WFBE_SK_V_LastUse_Repair = -1200;
WFBE_SK_V_LastUse_LR = -1200;
WFBE_SK_V_LastUse_Lockpick = -1200;
WFBE_SK_V_LastUse_Spot = -1200;
WFBE_SK_V_LastUse_ArtyStrike = -1200;

/* Skills Timeout */
WFBE_SK_V_Reload_Repair = 5;
WFBE_SK_V_Reload_LR = 300;
WFBE_SK_V_Reload_Lockpick = 5;
WFBE_SK_V_Reload_Spot = 8;
WFBE_SK_V_Reload_Arty_Strike = 600;