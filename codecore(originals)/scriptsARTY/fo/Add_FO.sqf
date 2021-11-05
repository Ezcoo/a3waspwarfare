Blakes_Add_FO = {

_FO = _this select 0;
_AIFO_module = _this select 1;

waituntil {_AIFO_module getvariable "AIFO_init"};
_FO setvariable ["Arty_group",_AIFO_module getvariable "Arty_group",false];
_AIFO_module getvariable "Art_Module_name";
_AIFO_module getvariable "Num_Rnds";
hint format ["%1\n%2\n%3",_FO,_AIFO_module getvariable "Art_Module_name",_AIFO_module getvariable "Num_Rnds"];
_nul1 = [_FO,_AIFO_module getvariable "Art_Module_name",1000,_AIFO_module getvariable "Num_Rnds","HE",200,20,0] execvm "\aiFO\FO-ai2.sqf";
};