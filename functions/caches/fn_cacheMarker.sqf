#include "component.hpp"

params ["_cachePos","_cacheID"];

private _indepVariance = [missionConfigFile >> "cfgMission", "cacheMarkerVarianceIndep", 50] call BIS_fnc_returnConfigEntry;
private _bluforVariance = [missionConfigFile >> "cfgMission", "cacheMarkerVarianceBlufor", 300] call BIS_fnc_returnConfigEntry;

private _indepMarkerPos = [_cachePos,[0,_indepVariance],[0,360],"",false] call wita_common_fnc_findRandomPos;
private _bluforMarkerPos = [_cachePos,[0,_bluforVariance],[0,360],"",false] call wita_common_fnc_findRandomPos;

[format ["wita_cacheMarker_indep_%1",_cacheID],_indepMarkerPos,"ICON",[1,1],"TYPE:","mil_unknown","COLOR:","ColorUNKNOWN"] remoteExec ["CBA_fnc_createMarker",INDEPENDENT,true];
[format ["wita_cacheMarker_blufor_%1",_cacheID],_bluforMarkerPos,"ICON",[1,1],"TYPE:","mil_unknown","COLOR:","ColorUNKNOWN"] remoteExec ["CBA_fnc_createMarker",WEST,true];
