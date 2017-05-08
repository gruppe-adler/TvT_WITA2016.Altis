#include "component.hpp"

params ["_pos"];

private _lastRunTime = missionNamespace getVariable ["wita_mission_trackerLastRuntime",0];
if (CBA_missionTime - _lastRunTime < 10) exitWith {};
missionNamespace setVariable ["wita_mission_trackerLastRuntime",CBA_missionTime];

player say "beep_strobe";
[_pos,0.2,1,1,1,{100},7] call grad_gpsTracker_fnc_openTitle;
