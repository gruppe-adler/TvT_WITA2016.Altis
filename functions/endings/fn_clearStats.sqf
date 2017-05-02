#include "component.hpp"

params [["_tag",[missionConfigFile >> "cfgMission","scoreboardSaveTag",""] call BIS_fnc_returnConfigEntry]];

if (_tag == "") exitWith {DEBUGMSG("Could not clear stats. No tag.")};
profileNamespace setVariable [_tag,nil];
saveProfileNamespace;

DEBUGMSG_1("Cleared stats for %1",_tag);
