/*
	Script: Skill System by Benny.
	Description: Skill Initialization.
*/

/* Skills Root */
CTI_SK_V_Root = 'Client\Module\Role\Skill_';

/* Functions */
CTI_SK_FNC_Apply = Compile preprocessFile "Client\Module\Role\Skill_Apply.sqf";
CTI_SK_V_Type = "";

/* Skills Variables */
CTI_SK_V_LastUse_Repair = -1200;
CTI_SK_V_LastUse_LR = -1200;
CTI_SK_V_LastUse_Lockpick = -1200;
CTI_SK_V_LastUse_Spot = -1200;
CTI_SK_V_LastUse_ArtyStrike = -1200;

/* Skills Timeout */
CTI_SK_V_Reload_Repair = 5;
CTI_SK_V_Reload_LR = 300;
CTI_SK_V_Reload_Lockpick = 5;
CTI_SK_V_Reload_Spot = 8;
CTI_SK_V_Reload_Arty_Strike = 600;