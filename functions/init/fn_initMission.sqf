#include "component.hpp"

[] call wita_init_fnc_setMissionParams;
[] call wita_init_fnc_setIslandParams;
[] call wita_waverespawn_fnc_setWaveSize;

wita_missionParam_WAVERESPAWNTIMEBLU = "WAVERESPAWNTIMEBLU" call BIS_fnc_getParamValue;
wita_missionParam_RESPAWNTIME = "RESPAWNTIME" call BIS_fnc_getParamValue;

[{!isNull player || isDedicated},{
    [] call wita_waverespawn_fnc_initWaveRespawn;

    if (isServer) then {
        WITA_SCOREARRAY_CURRENT = [[],["UNKNOWN PLAYER",0]] call CBA_fnc_hashCreate;

        _indepPos = [] call wita_setup_fnc_independent;
        _bluforPos = [_indepPos] call wita_setup_fnc_blufor;
        [] call wita_setup_fnc_createCustomLocations;

        _carsHandle = [] spawn wita_civs_fnc_cars;
        _heliHandle = [] spawn wita_civs_fnc_helicopters;
        _boatHandle = [] spawn wita_civs_fnc_boats;
        _cacheHandle = [_indepPos] spawn wita_caches_fnc_spawnCaches;

        [{{scriptDone _x} count (_this select 0) == count (_this select 0)}, {[_this select 1,_this select 2] call wita_setup_fnc_startGame}, [[_carsHandle,_heliHandle,_boatHandle,_cacheHandle],_indepPos,_bluforPos]] call CBA_fnc_waitUntilAndExecute;

        [] call wita_init_fnc_initCivs;
    };

    if (hasInterface) then {
        [{missionNamespace getVariable ["WITA_GAMESTARTED",false] && !isNull player}, {[] call wita_setup_fnc_addKilledEH}, []] call CBA_fnc_waitUntilAndExecute;
        if (didJIP && {[] call wita_common_fnc_isAgent} && {[] call wita_common_fnc_isAgent}) then {
            [player] remoteExec ["wita_mission_fnc_agentMarker",2,false];
        };
    };
}, []] call CBA_fnc_waitUntilAndExecute;
