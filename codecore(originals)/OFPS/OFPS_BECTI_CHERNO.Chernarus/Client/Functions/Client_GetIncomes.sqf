/*
  # HEADER #
	Script: 		Client\Functions\Client_GetIncomes.sqf
	Alias:			CTI_CL_FNC_GetIncomes
	Description:	Return the income of the commander and the one of the players
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	14-02-2019
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	[Array]: The command and players income
	
  # SYNTAX #
	call CTI_CL_FNC_GetIncomes
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetTownsResources
	
  # EXAMPLE #
    call CTI_CL_FNC_GetIncomes 
	  -> Will return [Commander Income, Players Income]
*/

private ["_commander_group", "_funds", "_percent_award", "_percent_resources", "_pool_income_commander", "_pool_income_players_all", "_side_groups", "_total_players"];

_funds = ((CTI_P_SideJoined) call CTI_CO_FNC_GetTownsResources) * CTI_TOWNS_INCOME_RATIO;
if (_funds isEqualTo 0) exitWith {[0,0]}; //--- Don't bother if we have no towns!

_commander_group = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideCommanderTeam;
_side_groups = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideGroups;
_total_players = count (_side_groups - [_commander_group]);

_percent_award = CTI_P_SideLogic getVariable "cti_pool_award";
_percent_resources = CTI_P_SideLogic getVariable "cti_pool_resources";

_pool_income_commander = 0;
_pool_income_players_all = 0;

switch (CTI_ECONOMY_POOL_RESOURCES_MODE) do {
	case 1: { //--- Commander resource mode (Player pool)
		_pool_income_players_all = round(_funds * _percent_resources);
		_pool_income_commander = _funds - _pool_income_players_all;
	};
	default { //--- Default resources mode (Player pool + Award pool)
		_pool_award = _funds * _percent_award;

		_pool_income_total = _funds - _pool_award; //--- The resources pool overall
		_pool_income_players = _pool_income_total * _percent_resources; //--- The resources pool for the players
		_pool_income_commander = round(_pool_income_total - _pool_income_players + CTI_PASSIVE_INCOME);  //This is for the GUID, does not provide income; passive income added
		_pool_income_players_all = round(_pool_income_players + _pool_award + (CTI_PASSIVE_INCOME * _total_players)); //This is for the GUID, does not provide income; passive income added
	};
};

[_pool_income_commander, _pool_income_players_all]