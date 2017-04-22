#include "component.hpp"

params ["_unit","_unitName","_UID"];

private _survivalTime = CBA_missionTime - (missionNamespace getVariable ["WITA_GAMESTARTTIME",CBA_missionTime]);
private _pointsToAdd = round (_survivalTime/60);

INFO_2("Agent %1 died after %2 seconds.",_unitName,_survivalTime);

if (_UID == "") exitWith {};
[_pointsToAdd,_UID,_unitName] call wita_mission_fnc_addPoints;
