if(CTI_DATABASE_TRACKING) then
{
	["gameStart",[]] call CTI_SE_FNC_DatabaseUpdate;
};

//CTI_SE_DatabaseUpdate
while {CTI_DATABASE_TRACKING && !CTI_GameOver} do {
	
	//runs Client FPS updates
	[] remoteExec ["CTI_PVF_CLT_FPS_DatabaseUpdate", -2];

	//get server fps
	[] call CTI_SE_FNC_FPS_DatabaseInformationRequest;

	//Check and process incoming commands
	call CTI_SE_FNC_DB_ReadDatabase;

	//Loop delay
	if(CTI_DEV_MODE isEqualTo 1) then
	{
		sleep 30; // 30s
	}
	else
	{
		sleep 120; //2min
	};
	
};

//Game Over
if(CTI_GameOver && CTI_DATABASE_TRACKING) then
{
	["gameOver",[]] call CTI_SE_FNC_DatabaseUpdate;
};