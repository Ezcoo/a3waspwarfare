Private ['_side','_availableRoles'];

_side = _this select 0;

_availableRoles = missionNamespace getVariable Format["WSW_%1AvailableRoles",str _side];
if(isNil '_availableRoles')then{
    _availableRoles = [];
    _availableRoles pushBack [
        WSW_SNIPER,
        WSW_SNIPER,
        "Sniper role with special abilities: <br/>" +
         "- leaves marks on map by aiming<br/>" +
         "- can request arty strikes",
        [],
        5000,
        [],
        3, // max limit of the role in team
        0 // current occupied amount
    ];

    _availableRoles pushBack [
        WSW_SOLDIER,
        WSW_SOLDIER,
        "Assault role for town taking. Abilities: <br/>"+
        "- handles more bots in team <br/>"+
        "- repairs camps",
        [],
        5000,
        [],
        12, // max limit of the role in team
        0 // current occupied amount
    ];
    _availableRoles pushBack [
        WSW_ENGINEER,
        WSW_ENGINEER,
        "Support role on battlefield. Abilities: <br/>" +
        "- Repairs vehicles without toolsets <br/>"+
        "- Repairs camps",
        [],
        7500,
        [],
        6, // max limit of the role in team
        0 // current occupied amount
    ];
    _availableRoles pushBack [
        WSW_SPECOPS,
        WSW_SPECOPS,
        "Support role on battlefield. Abilities: <br/>"+
        "- hi-jacks enemy locked vehicles <br/>" +
        "- light vehicle repair ability <br/>" +
        "- steals info from enemy CC (not yet implemented)",
        [],
        7500,
        [],
        3, // max limit of the role in team
        0 // current occupied amount
    ];
    _availableRoles pushBack [
        WSW_ARTY_OPERATOR,
        WSW_ARTY_OPERATOR,
        "Support role on battlefield. Abilities: <br/>"+
        "- access to advanced artillery<br/>"+
        "- lower price for all kinds of arty",
        [],
        7500,
        [],
        3, // max limit of the role in team
        0 // current occupied amount
    ];
    _availableRoles pushBack [
        WSW_UAV_OPERATOR,
        WSW_UAV_OPERATOR,
        "Support role on battlefield. Features: <br/>"+
        "- access to backpacks with UAVs<br/>"+
        "- lower price for UAV in tactical menu",
        [],
        7500,
        [],
        3, // max limit of the role in team
        0 // current occupied amount
    ];
    missionNamespace setVariable [Format["WSW_%1AvailableRoles",str _side], _availableRoles];
};

_availableRoles;