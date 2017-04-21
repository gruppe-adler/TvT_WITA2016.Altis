#include "component.hpp"

params ["_endingType"];

if (missionNamespace getVariable ["WITA_ENDINGINPROGRESS",false]) exitWith {INFO("A different ending is already in progress.")};
missionNamespace setVariable ["WITA_ENDINGINPROGRESS",true,true];

DEBUGMSG_1("Mission ending: %1",_endingType);
