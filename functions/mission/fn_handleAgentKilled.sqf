#include "component.hpp"

params ["_unit","_unitName","_UID"];

private _survivalTime = CBA_missionTime - (missionNamespace getVariable ["WITA_GAMESTARTTIME",CBA_missionTime]);
INFO_2("Agent %1 died after %2 seconds.",_unitName,_survivalTime);
