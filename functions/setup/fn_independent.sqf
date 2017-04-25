#include "component.hpp"

private ["_startPosition"];

private _startLocation = [] call wita_setup_fnc_selectStartLocation;
INFO_1("%1 selected as start location for independent.",text _startLocation);

private _heli = objNull;
for [{_i=0}, {_i<100}, {_i=_i+1}] do {
    _startPosition = [0,0,0];
    while {_startPosition isEqualTo [0,0,0]} do {
        _startPosition = [locationPosition _startLocation,[missionConfigFile >> "cfgMission", "locationDistance",[0,100]] call BIS_fnc_returnConfigEntry] call wita_common_fnc_findRandomPos;
    };
    _heli = [_startPosition] call wita_setup_fnc_createCrashHeli;
    if (!isNull _heli) exitWith {};
};
if (isNull _heli) then {ERROR_1("No suitable location found for helicopter.")};

{
    if ([_x] call wita_common_fnc_isAgent) then {
        private _startVeh = [_startPosition] call wita_setup_fnc_createStartVehicle;
        if (WITA_DEBUGMODE) then {
            ["wita_indep_startvehicle",getPos _startVeh,"ICON",[1,1],"PERSIST","TYPE:","hd_dot","COLOR:","COLORGUER"] call CBA_fnc_createMarker
        };
    };
    false
} count playableUnits;

"respawn_guerrila" setMarkerPos _startPosition;

if (WITA_DEBUGMODE) then {
    ["wita_indep_crashHeli",getPos _heli,"ICON",[1,1],"PERSIST","TYPE:","mil_triangle","COLOR:","COLORGUER"] call CBA_fnc_createMarker;
    ["wita_indep_startPosition",_startPosition,"ICON",[1,1],"PERSIST","TYPE:","hd_start","COLOR:","COLORGUER"] call CBA_fnc_createMarker;
};

_startPosition
