#include "component.hpp"

params ["_indepPos","_bluforPos"];

[_indepPos,INDEPENDENT] call wita_setup_fnc_teleportSide;
[_bluforPos,WEST] call wita_setup_fnc_teleportSide;
[] call wita_endings_fnc_checkIndep;

missionNamespace setVariable ["WITA_GAMESTARTED",true,true];
missionNamespace setVariable ["WITA_GAMESTARTTIME",CBA_missionTime,true];

INFO("Game started.");
