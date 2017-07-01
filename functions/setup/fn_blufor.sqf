#include "component.hpp"

params ["_indepPos"];

private _spawnDistanceMode = "BLUFOR_SPAWNDISTANCE" call BIS_fnc_getParamValue;
private _spawnDistance = ([missionConfigFile >> "cfgMission","bluforSpawnDistances",[1000,2000,3000]] call BIS_fnc_returnConfigEntry) select _spawnDistanceMode;
private _spawnVariance = [missionConfigFile >> "cfgMission","bluforSpawnDistanceVariance",0] call BIS_fnc_returnConfigEntry;
private _baseAreaSize = [missionConfigFile >> "cfgMission","bluforBaseAreaSize",150] call BIS_fnc_returnConfigEntry;

INFO_1("BLUFOR will spawn in %1m distance.",_spawnDistance);

private _startPosition = [0,0,0];
while {_startPosition isEqualTo [0,0,0] || isOnRoad _startPosition || !([_startPosition] call wita_common_fnc_isInsideMap)} do {
    _startPosition = [_indepPos,[_spawnDistance,_spawnDistance+_spawnVariance],[0,360],"CUP_A2_wf_uav_terminal_west"] call wita_common_fnc_findRandomPos;
    _startPosition = [_startPosition, 0, 50, 10, 0, 0.065, 0, [], [[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;
};

_startPosition set [2,0];

private _baseTerminal = "CUP_A2_wf_uav_terminal_west" createVehicle [0,0,0];
_baseTerminal setDir random 360;
_baseTerminal setPos _startPosition;
[_baseTerminal] remoteExec ["wita_setup_fnc_bluforBuyAction",0,true];

"respawn_west" setMarkerPos (_startPosition vectorAdd [10,0,0]);

//create area
WITA_BLUFORBASEAREA = createTrigger ["EmptyDetector", _startPosition, false];
WITA_BLUFORBASEAREA setTriggerArea [_baseAreaSize,_baseAreaSize,0,false];

//create markers
["wita_blufor_startPosition",_startPosition,"ICON",[1,1],"PERSIST","TYPE:","b_hq","COLOR:","COLORWEST"] call CBA_fnc_createMarker;
["wita_blufor_baseArea",_startPosition,"ELLIPSE",[_baseAreaSize,_baseAreaSize],"PERSIST","BRUSH:","Border","COLOR:","COLORWEST"] call CBA_fnc_createMarker;

missionNamespace setVariable ["WITA_SETUP_BLUFORDONE",true,true];

_startPosition
