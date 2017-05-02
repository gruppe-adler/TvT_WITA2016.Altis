#include "component.hpp"

if !([] call wita_common_fnc_isAgent) exitWith {};

player addEventHandler ["killed",{[player,profileName,getPlayerUID player] remoteExec ["wita_mission_fnc_handleAgentKilled",2,false]}];

INFO("Added killed EH for agent.");
