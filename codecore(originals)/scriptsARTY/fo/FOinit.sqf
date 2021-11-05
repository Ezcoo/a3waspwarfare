if (!isServer) exitwith {}; 
_modulename = _this select 0;
sleep 2;
_moduleFO = synchronizedObjects _modulename;
_Synced_Units = _moduleFO - [_modulename];
_modulename setvariable ["AIFO_init",false,false];
_modulename setvariable ["busy",false,false];
/*
_modulename setvariable ["HEcount",20,false];
_modulename setvariable ["WPcount",10,false];
_modulename setvariable ["SMOKEcount",10,false];
_modulename setvariable ["ILLUMcount",10,false];
_modulename setvariable ["SADARMcount",4,false];
*/

private ["_art1","_mort","_grp","_site_pos"];
sleep 3;
//hint format ["%1 %2",(_FOs select 0),(side(_FOs select 0))];
_Arty_Type = _modulename getvariable "Arty_Type";

_preset_number = _modulename getvariable "Size_Group";
if (isNil ("_preset_number")) then
{ 
	_preset_number = 1;
};

_Arty_Ammo = _modulename getvariable "Arty_Ammo";
if (isNil ("_preset_number")) then
{ 
	_Arty_Ammo = [];
};

_FindSpot = {
	private ["_isFlat"];
	_item = _this select 0;
	_pos = _this select 1;
	_nosite = 1;
	_check = 0;
	
	while {_nosite == 1 or _check < 50} do
	{
		_Tryhere = [(_pos select 0) + 50 - random 100,(_pos select 1) + 50 - random 100 , 0];
		_isFlat = (_pos) isflatempty [5,0,0.4,(sizeof typeof _item),0,false,_item];
		If ((count _isFlat) > 0) then
		{
			_nosite = 0;
		};
		_check = _check +1;
		sleep 0.01;
	};	
	//hint format ["IsFlat:%1",_isFlat];
	sleep 3;
	_isFlat
};

_Fnc_Get_Vehicle_artyscanner =

{

	_Veh = _this select 0;

	_result = 0;

	if (isNumber (configFile >> "CfgVehicles" >> _Veh >> "artilleryScanner")) then

	{

		_result = getNumber (configFile >> "CfgVehicles" >> _Veh >> "artilleryScanner");

	};

	_result

};
_Placed_Arty = [];
_FOs = [];
{
	if(([(typeof (vehicle _x))] CALL _Fnc_Get_Vehicle_artyscanner) == 1) then
	{
		_Placed_Arty = _Placed_Arty + [_x];
	}
	else
	{
		_FOs = _FOs + [_x];
	};
}foreach _Synced_Units;
//hint format ["FO:%1\nA:%2",_FOs,_Placed_Arty];

if ((count _Placed_Arty) == 0) then
{
	if ((_FOs select 0) iskindof "Man") then
	{
		_HQ = createcenter (side(_FOs select 0));
		_grp = createGroup (side(_FOs select 0));
		for "_count" from 0 to (_preset_number - 1) do
		{
			if((side(_FOs select 0)) == west) then
			{
				
				if (isNil ("_Arty_Type")) then
				{ 
					_Arty_Type = "M252";
				};
				_vehi3 = createVehicle  [_Arty_Type , _modulename modeltoworld [((sin((360/_preset_number)*_count)) * (_preset_number * 2))+( + 2 - random 4) ,((cos((360/_preset_number)*_count))* (_preset_number * 2))+( + 2 - random 4),0] , [], 0, "FORM"];
				
				/*
				_site_pos = [_vehi3,getpos _vehi3] CALL _FindSpot;
				if ((count _site_pos) > 0) then
				{
					//hint "is flat";
					_vehi3 setpos [_site_pos select 0, _site_pos select 1,0] ;
					"tt" setmarkerpos getpos _vehi3;
				};
				*/
					_vehi3 setpos [getpos _vehi3 select 0,getpos _vehi3 select 1,0];
				
				
				(typeof (_FOs select 0)) createUnit [getpos _vehi3, _grp," this moveInGunner _vehi3; _mort = this"];
				_Placed_Arty = _Placed_Arty + [_mort];
				if (count _Arty_Ammo == 0) then
				{ 
					_vehi3 addMagazine "ARTY_8Rnd_81mmHE_M252";
					_vehi3 addMagazine "ARTY_8Rnd_81mmILLUM_M252";
				}
				else
				{
					if (count _Arty_Ammo > 1) then
					{ 
						_vehi3 addMagazine (_Arty_Ammo select 1);
					};
				_vehi3 addMagazine (_Arty_Ammo select 0);
				};
				
				
			}
			else
			{
				
				if (isNil ("_Arty_Type")) then
				{ 
					_Arty_Type = "2b14_82mm_INS";
				};
				//_vehi3 = createVehicle  [_Arty_Type , _modulename modeltoworld [((_count-1) * 10)+ random 5,2 - random 4,0] , [], 0, "FORM"];
				//_vehi3 = createVehicle  [_Arty_Type , _modulename modeltoworld [(sin((360/_preset_number)*_count))*((sizeof typeof _vehi3) + _preset_number) + 2 - random 4,(cos((360/_preset_number)*_count))*((sizeof typeof _vehi3) + _preset_number) + 2 - random 4,0] , [], 0, "FORM"];
				_vehi3 = createVehicle  [_Arty_Type , _modulename modeltoworld [((sin((360/_preset_number)*_count)) * (_preset_number * 2))+( + 2 - random 4) ,((cos((360/_preset_number)*_count))* (_preset_number * 2))+( + 2 - random 4),0] , [], 0, "FORM"];
				
				
				/*
				_site_pos = [_vehi3,getpos _modulename] CALL _FindSpot;
				if ((count _site_pos) > 0) then
				{
					_vehi3 setpos [_site_pos select 0, _site_pos select 1,0] ;
					"tt" setmarkerpos getpos _vehi3;
				};
				*/
					_vehi3 setpos [getpos _vehi3 select 0,getpos _vehi3 select 1,0];
				
				
				(typeof (_FOs select 0)) createUnit [getpos _vehi3, _grp," this moveInGunner _vehi3; _mort = this"];
				_Placed_Arty = _Placed_Arty + [_mort];
				if (count _Arty_Ammo == 0) then
				{ 
					_vehi3 addMagazine "ARTY_8Rnd_82mmHE_2B14";
					_vehi3 addMagazine "ARTY_8Rnd_82mmILLUM_2B14";
				}
				else
				{
					if (count _Arty_Ammo > 1) then
					{ 
						_vehi3 addMagazine (_Arty_Ammo select 1);
					};
					_vehi3 addMagazine (_Arty_Ammo select 0);
				};
			};
		};
	}
	else
	{
		hint "error in AI FO initisation! FO not type man object";
	};
}
else
{
	_grp = group (_Placed_Arty select 0);
	_preset_number = count (units (group (_Placed_Arty select 0)))	;
};


		sleep 0.1;
		_LogicCenter = createCenter sideLogic;
		_LogicGroup = createGroup _LogicCenter;

		"BIS_ARTY_Logic" createUnit [[0,0,0], _LogicGroup, "_art1 = this"];
		_art1 synchronizeObjectsAdd [leader _grp];
		[leader _grp] call BIS_ARTY_F_initVehicle;
		sleep 1;
		_modulename setvariable ["Art_Module_name",_art1,false];
		_modulename setvariable ["Num_Rnds",_preset_number,false];
		_modulename setvariable ["Arty_group",_grp,false];
		{
			_x setvariable ["Arty_group",_grp,false];
			_nul1 = [_x,_art1,1000,_preset_number,"HE",200,20,0,_modulename] execvm "\aiFO\FO-ai2.sqf";
			//_sh2 = [_x,_modulename] execvm "\aiFO\Take_FO_Role.sqf";
			sleep 0.001;
		} foreach _FOs;
		//} foreach synchronizedObjects _modulename;
		//hint format ["%1", _mort];
		{
			_nul1 = [_x,_art1,1000,_preset_number,"HE",80,25,5,_modulename] execvm "\aiFO\FO-ai2.sqf";
		}foreach _placed_Arty;
if ((_modulename getvariable "debug") ) then
{
	sleep 2;
	[_art1,"HE"] CALL BIS_ARTY_F_LoadMapRanges;
	sleep 0.1;
	
	_pos = [];
	if(count _placed_Arty > 0) then
	{
		_pos = getpos (_placed_Arty select 0);
	}
	else
	{
		_pos = getpos _modulename;
	};
	hint format ["MAX:%1\nMIN:%2\nDIST:%3", _art1 getVariable "ARTY_MAX_RANGE",_art1 getVariable "ARTY_MIN_RANGE",_pos distance (_FOs select 0)];
	_markerstr = createMarker["markername",_pos];
	_markerstr setMarkerShape "ELLIPSE";
	_markerstr setMarkerSize [_art1 getvariable "ARTY_MIN_RANGE", _art1 getvariable "ARTY_MIN_RANGE"];
	_markerstr setMarkerBrush "Border";
	_markerstr setMarkerColor "ColorBlue";
	_markerstr2 = createMarker["markername2",_pos];
	_markerstr2 setMarkerShape "ELLIPSE";
	_markerstr2 setMarkerSize [_art1 getvariable "ARTY_MAX_RANGE", _art1 getvariable "ARTY_MAX_RANGE"];
	_markerstr2 setMarkerBrush "Border";
	_markerstr2 setMarkerColor "ColorBlue";
};

{
	_temp = _modulename getvariable (_x select 0);
	if (isNil ("_temp")) then
	{
		_modulename setvariable [(_x select 0),(_x select 1)*_preset_number,false];
	}
	else
	{
		_modulename setvariable [(_x select 0),(_modulename getvariable (_x select 0))*_preset_number,false];
	};
}foreach [["HEcount",40],["WPcount",10],["SMOKEcount",20],["ILLUMcount",20],["SADARMcount",0]];


Blakes_Add_FO = {

	_FO = _this select 0;
	_AIFO_module = _this select 1;

	waituntil {_AIFO_module getvariable "AIFO_init"};
	_FO setvariable ["Arty_group",_AIFO_module getvariable "Arty_group",false];
	_AIFO_module getvariable "Art_Module_name";
	_AIFO_module getvariable "Num_Rnds";
	if (_AIFO_module getvariable "debug" ) then
	{
		//hint format ["%1\n%2\n%3",_FO,_AIFO_module getvariable "Art_Module_name",_AIFO_module getvariable "Num_Rnds"];
	};
	_nul1 = [_FO,_AIFO_module getvariable "Art_Module_name",1000,_AIFO_module getvariable "Num_Rnds","HE",200,25,0,_AIFO_module] execvm "\aiFO\FO-ai2.sqf";
};


_modulename setvariable ["AIFO_init",true,false];


//Placed here just as a reference if they get the variable to return properly
//waitUntil { not isNil { _this getVariable "BIS_ARTY_LOADED"} };
 //	waitUntil { _this getVariable "BIS_ARTY_LOADED" };
