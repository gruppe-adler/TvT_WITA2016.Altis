#include "component.hpp"

private ["_startPosition"];

private _startLocation = [] call wita_setup_fnc_selectStartLocation;
INFO_1("%1 selected as start location for independent.",text _startLocation);

private _heli = objNull;
for [{_i=0}, {_i<100}, {_i=_i+1}] do {
    _startPosition = [locationPosition _startLocation,[missionConfigFile >> "cfgMission", "locationDistance",[0,100]] call BIS_fnc_returnConfigEntry] call wita_common_fnc_findRandomPos;
    _heli = [_startPosition] call wita_setup_fnc_createCrashHeli;
    if (!isNull _heli) exitWith {};
};
if (isNull _heli) then {ERROR_1("No suitable location found for helicopter.")};

[_startPosition] call wita_setup_fnc_createStartVehicle;

"respawn_guerrila" setMarkerPos _startPosition;
private _teleportNumber = {
    [_x,_startPosition,INDEPENDENT,3] remoteExec ["wita_common_fnc_teleportSide",_x,true];
    true
} count playableUnits;
INFO_1("%1 INDEPENDENT units teleported to start position.",_teleportNumber);
