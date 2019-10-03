#include "component.hpp"

private _type = ["type","mediterranean"] call wita_common_fnc_getIslandCfgValue;

[[missionConfigFile >> "cfgCivilians" >> _type,"uniforms",[]] call BIS_fnc_returnConfigEntry] call grad_civs_fnc_setClothes;
[[missionConfigFile >> "cfgCivilians" >> _type,"goggles",[]] call BIS_fnc_returnConfigEntry] call grad_civs_fnc_setGoggles;
[[missionConfigFile >> "cfgCivilians" >> _type,"headgear",[]] call BIS_fnc_returnConfigEntry] call grad_civs_fnc_setHeadgear;
[[missionConfigFile >> "cfgCivilians" >> _type,"vehicles",[]] call BIS_fnc_returnConfigEntry] call grad_civs_fnc_setVehicles;
[WITA_DEBUGMODE] call grad_civs_fnc_setDebugMode;
