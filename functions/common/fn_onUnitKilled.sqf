#include "component.hpp"

params ["_victim","_victimSide","_victimIsPlayer","_killer","_killerSide","_killerIsPlayer","_killTime"];

if (!_killerIsPlayer) exitWith {};

if (_killerSide == INDEPENDENT) then {

    _agent = leader _killer;
    _agentUID = getPlayerUID _agent;
    if !([_agent] call wita_common_fnc_isAgent) exitWith {};

    if (_victimSide == CIVILIAN) then {
        _pointsForCivKill = [missionConfigFile >> "cfgMission","pointsForCivKill",0] call BIS_fnc_returnConfigEntry;
        [_pointsForCivKill,_agentUID] call wita_mission_fnc_addPoints;
    };

    if (_victimSide == WEST) then {
        _pointsForBluKill = [missionConfigFile >> "cfgMission","pointsForBluKill",0] call BIS_fnc_returnConfigEntry;
        [_pointsForBluKill,_agentUID] call wita_mission_fnc_addPoints;
    };
};
