//--- TO DO: rewrite using PlayerViewChanged EH without loops

switch (missionNamespace getVariable "CTI_GAMEPLAY_3P") do
{
    case 0: { //--- 3rd Person for Drivers and Pilots and for players on foot with guns on their backs
        while {true} do 
        {
            waitUntil {cameraView isEqualTo "EXTERNAL" || cameraView isEqualTo "GROUP"};
            if (((vehicle CTI_P_Controlled) isEqualTo CTI_P_Controlled) && (currentWeapon CTI_P_Controlled != '') && (((UAVControl getConnectedUAV player) select 1) isEqualTo "" || isNull (getConnectedUAV player))) then
            {
                CTI_P_Controlled switchCamera "INTERNAL";
            }
            else
            {
                if (CTI_P_Controlled != driver (vehicle CTI_P_Controlled) ||  !(((UAVControl getConnectedUAV player) select 1) isEqualTo "DRIVER") && !(((UAVControl getConnectedUAV player) select 1) isEqualTo "")) then 
                {
                    CTI_P_Controlled switchCamera "INTERNAL";
                };
            };
            sleep 0.1;
        };
    };
   
    case 1: { //--- 3rd Person for any vehicles only
        while {true} do 
        {
            waitUntil {cameraView isEqualTo "EXTERNAL" || cameraView isEqualTo "GROUP"};
            if (((vehicle CTI_P_Controlled) isEqualTo CTI_P_Controlled) && (currentWeapon CTI_P_Controlled != '') && (((UAVControl getConnectedUAV player) select 1) isEqualTo "")) then
            {
                CTI_P_Controlled switchCamera "INTERNAL";
            };
            sleep 0.1;
        };
    };

    case 2:  //--- 3rd Person for players on foot only
    {    
        while {true} do 
        {
            waitUntil {cameraView isEqualTo "EXTERNAL" || cameraView isEqualTo "GROUP"};
            if ((vehicle CTI_P_Controlled) != CTI_P_Controlled) then 
            {
                CTI_P_Controlled switchCamera "INTERNAL";
            };
            sleep 0.1;
        };
    };

    case 3:  //--- 3rd Person disabled for everything
    {    
        while {true} do 
        {
            waitUntil {cameraView != "GUNNER" || cameraView != "INTERNAL"};
            if (cameraOn isEqualTo vehicle (player)) then 
            {
                player switchCamera "INTERNAL";
            };
            sleep 0.1;
        };
    };
};