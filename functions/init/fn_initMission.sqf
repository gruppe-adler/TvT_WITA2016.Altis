#include "component.hpp"

[] call wita_init_fnc_setMissionParams;
[] call wita_init_fnc_setIslandParams;
[] call wita_waverespawn_fnc_setWaveSize;

wita_missionParam_WAVERESPAWNTIMEBLU = "WAVERESPAWNTIMEBLU" call BIS_fnc_getParamValue;
wita_missionParam_RESPAWNTIME = "RESPAWNTIME" call BIS_fnc_getParamValue;

[{!isNull player || isDedicated},{
    [] call wita_waverespawn_fnc_initWaveRespawn;

    if (isServer) then {
        WITA_SCOREARRAY_CURRENT = [[],["UNKNOWN PLAYER","UNKNOWN MAP",0]] call CBA_fnc_hashCreate;

        _indepPos = [] call wita_setup_fnc_independent;
        _bluforPos = [_indepPos] call wita_setup_fnc_blufor;
        [] call wita_setup_fnc_createCustomLocations;

        missionNamespace setVariable ["WITA_INDEPPOS",_indepPos,true];
        missionNamespace setVariable ["WITA_BLUFORPOS",_bluforPos,true];

        _carsHandle = [] spawn wita_civs_fnc_cars;
        _heliHandle = [] spawn wita_civs_fnc_helicopters;
        _boatHandle = [] spawn wita_civs_fnc_boats;
        _cacheHandle = [_indepPos] spawn wita_caches_fnc_spawnCaches;

        [{{!scriptDone _x} count (_this select 0) == 0},{
            [] call wita_init_fnc_waitServerFpsRecovery;
            [{missionNamespace getVariable ["WITA_INIT_SERVERFPSDONE",false]},{[_this select 1,_this select 2] call wita_setup_fnc_startGame},_this] call CBA_fnc_waitUntilAndExecute;
        },[[_carsHandle,_heliHandle,_boatHandle,_cacheHandle],_indepPos,_bluforPos]] call CBA_fnc_waitUntilAndExecute;

    };

    if (hasInterface) then {
        [{missionNamespace getVariable ["WITA_GAMESTARTED",false] && !isNull player}, {[] call wita_setup_fnc_addKilledEH}, []] call CBA_fnc_waitUntilAndExecute;
        if (didJIP && {missionNamespace getVariable ["WITA_GAMESTARTED",false]} && {!isNil "WITA_BLUFORPOS"} && {!isNil "WITA_INDEPPOS"}) then {
            if (playerSide == INDEPENDENT) then {
                _randomPos = [WITA_INDEPPOS,[0,2]] call wita_common_fnc_findRandomPos;
                [player,_randomPos] call wita_common_fnc_teleport;
            } else {
                _randomPos = [WITA_BLUFORPOS,[3,8]] call wita_common_fnc_findRandomPos;
                [player,_randomPos] call wita_common_fnc_teleport;
            };
        };
        if (didJIP && {[] call wita_common_fnc_isAgent}) then {
            [player] remoteExec ["wita_mission_fnc_agentMarker",2,false];
        };
    };
}, []] call CBA_fnc_waitUntilAndExecute;

if (hasInterface) then {
    [{!isNull (findDisplay 46)},{
        [] call wita_setup_fnc_waitScreen;
    }, []] call CBA_fnc_waitUntilAndExecute;
};
