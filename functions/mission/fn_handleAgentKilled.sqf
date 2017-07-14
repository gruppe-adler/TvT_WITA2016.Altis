#include "component.hpp"

params ["_unit","_unitName","_UID"];

private _survivalTime = CBA_missionTime - (missionNamespace getVariable ["WITA_GAMESTARTTIME",CBA_missionTime]);
private _pointsToAdd = round (_survivalTime/60);

INFO_2("Agent %1 died after %2 seconds.",_unitName,round _survivalTime);

if (_UID == "") exitWith {};

//make sure EH doesn't fire twice
private _finalPointsAddedVarName = format ["wita_mission_agentFinalPointsAdded_%1",_UID];
if (missionNamespace getVariable [_finalPointsAddedVarName,false]) exitWith {};
missionNamespace setVariable [_finalPointsAddedVarName,true];

[_pointsToAdd,_UID,_unitName] call wita_mission_fnc_addPoints;
