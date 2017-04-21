#include "component.hpp"

params ["_indepPos"];

private _spawnDistanceMode = "BLUFOR_SPAWNDISTANCE" call BIS_fnc_getParamValue;
private _spawnDistance = ([missionConfigFile >> "cfgMission","bluforSpawnDistances",[1000,2000,3000]] call BIS_fnc_returnConfigEntry) select _spawnDistanceMode;
private _spawnVariance = [missionConfigFile >> "cfgMission","bluforSpawnDistanceVariance",0] call BIS_fnc_returnConfigEntry;
private _baseAreaSize = [missionConfigFile >> "cfgMission","bluforBaseAreaSize",150] call BIS_fnc_returnConfigEntry;

_spawnDistance = _spawnDistance + (random (2*_spawnVariance)) - _spawnVariance;
INFO_1("BLUFOR will spawn in %1m distance.",_spawnDistance);

private _startPosition = [0,0,0];
while {_startPosition isEqualTo [0,0,0]} do {
    _startPosition = [_indepPos,[_spawnDistance,_spawnDistance]] call wita_common_fnc_findRandomPos;
};

"respawn_west" setMarkerPos _startPosition;
private _teleportNumber = {
    [_x,_startPosition,WEST,3] remoteExec ["wita_common_fnc_teleportSide",_x,true];
    false
} count playableUnits;
INFO("BLUFOR units teleported to start position.");

//create area
WITA_BLUFORBASEAREA = createTrigger ["EmptyDetector", _startPosition, false];
WITA_BLUFORBASEAREA setTriggerArea [_baseAreaSize,_baseAreaSize,0,false];

//create markers
["wita_blufor_startPosition",_startPosition,"ICON",[1,1],"PERSIST","TYPE:","b_hq","COLOR:","COLORWEST"] call CBA_fnc_createMarker;
["wita_blufor_baseArea",_startPosition,"ELLIPSE",[_baseAreaSize,_baseAreaSize],"PERSIST","BRUSH:","Border","COLOR:","COLORWEST"] call CBA_fnc_createMarker;

_startPosition
