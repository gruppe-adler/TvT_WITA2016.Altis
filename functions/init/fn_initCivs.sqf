#include "component.hpp"

private _type = ["type","mediterranean"] call wita_common_fnc_getIslandCfgValue;

[[missionConfigFile >> "cfgCivilians" >> _type,"uniforms",[]] call BIS_fnc_returnConfigEntry] call grad_civs_fnc_setClothes;
[[missionConfigFile >> "cfgCivilians" >> _type,"goggles",[]] call BIS_fnc_returnConfigEntry] call grad_civs_fnc_setGoggles;
[[missionConfigFile >> "cfgCivilians" >> _type,"headgear",[]] call BIS_fnc_returnConfigEntry] call grad_civs_fnc_setHeadgear;
[WITA_DEBUGMODE] call grad_civs_fnc_setDebugMode;

[{[] remoteExec ["grad_civs_fnc_initModule",0,true]}, [], 10] call CBA_fnc_waitAndExecute;
