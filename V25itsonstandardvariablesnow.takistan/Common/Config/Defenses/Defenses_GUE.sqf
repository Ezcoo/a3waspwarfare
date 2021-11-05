/*
	Defenses Definition, define the available defenses.
*/

Private ["_c","_f","_faction","_k","_n","_o","_side","_t"];

_side = "GUER";
_faction = "GUE";

_c = []; //--- Classname
_n = []; //--- Name. 					'' = auto generated.
_o = []; //--- Price.
_t = []; //--- Category
_k = []; //--- Kind (Used for town defenses)

//--- Defenses (Statics)
_c  pushBack  'rhsgref_nat_DSHKM_Mini_TriPod';
_n  pushBack  '';
_o  pushBack  150;
_t  pushBack  "Defense";
_k  pushBack  "";

_c  pushBack  'rhsgref_nat_DSHKM';
_n  pushBack  '';
_o  pushBack  200;
_t  pushBack  "Defense";
_k  pushBack  "MG";

_c  pushBack  'rhsgref_nat_SPG9';
_n  pushBack  '';
_o  pushBack  400;
_t  pushBack  "Defense";
_k  pushBack  "AT";

_c  pushBack  'rhsgref_nat_ZU23';
_n  pushBack  '';
_o  pushBack  600;
_t  pushBack  "Defense";
_k  pushBack  "AA";

_c  pushBack  'CUP_I_2b14_82mm_TK_GUE';
_n  pushBack  '';
_o  pushBack  1100;
_t  pushBack  "Defense";
_k  pushBack  "";

//--- Defenses management for towns.
if (isServer) then {[_side, _c, _k] Call Compile preprocessFile "Common\Config\Config_Defenses_Towns.sqf"};

//--- Fortitications and rest.

// [_faction, _c, _n, _o, _t] Call Compile preprocessFile "Common\Config\Config_Defenses.sqf";