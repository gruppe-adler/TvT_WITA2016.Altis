#include "component.hpp"

if !([] call wita_common_fnc_isAgent) exitWith {};

player addEventHandler ["killed",{[player,profileName,getPlayerUID player] call wita_mission_fnc_handleAgentKilled}];

INFO("Added killed EH for agent.");
