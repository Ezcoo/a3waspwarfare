(_this select 0) setPos (_this select 1);
(_this select 0)  setVariable ["avail",missionNamespace getVariable "CTI_C_BASE_AV_STRUCTURES"];
(_this select 0)  setVariable ["side",(_this select 2) ];
(_this select 3) setVariable ["CTI_basearea", (_this select 4)+ [(_this select 0)], true];