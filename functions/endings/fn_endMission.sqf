#include "component.hpp"

params ["_endingType"];

if (missionNamespace getVariable ["WITA_ENDINGINPROGRESS",false]) exitWith {INFO("A different ending is already in progress.")};
missionNamespace setVariable ["WITA_ENDINGINPROGRESS",true,true];

DEBUGMSG_1("Mission ending: %1",_endingType);

["wita_tasks_blufor_eliminateAgents","Succeeded",true] spawn BIS_fnc_taskSetState;
["wita_tasks_indep_survive","Failed",true] spawn BIS_fnc_taskSetState;

_this spawn {
    params ["_endingType"];

    _duration = [missionConfigFile >> "cfgMission","scoreboardDurationCurrent",5] call BIS_fnc_returnConfigEntry;
    _stats = [WITA_SCOREARRAY_CURRENT] call wita_endings_fnc_compileStatsForScoreboard;
    [_duration,_stats,"AGENTS THIS GAME",false,[true,1,false],[],"",false,false,true] remoteExec ["grad_scoreboard_fnc_loadScoreboard",0,false];
    sleep _duration;

    if (WITA_RANKEDMODE && !WITA_DEBUGMODE) then {
        _scoreAlltime = [WITA_SCOREARRAY_CURRENT] call wita_endings_fnc_saveStats;
        _stats = [_scoreAlltime,["NAME","MAP","HIGHSCORE"]] call wita_endings_fnc_compileStatsForScoreboard;
        _duration = [missionConfigFile >> "cfgMission","scoreboardDurationAlltime",10] call BIS_fnc_returnConfigEntry;
        [_duration,_stats,"AGENTS ALL TIME",true,[true,2,false],[],"",false,false,true] remoteExec ["grad_scoreboard_fnc_loadScoreboard",0,false];
        sleep _duration;
    };

    if (!WITA_DEBUGMODE) then {
        "EveryoneWon" call BIS_fnc_endMissionServer;
    } else {
        DEBUGMSG("Mission end. End mission manually (debug mode).");
    };
};
