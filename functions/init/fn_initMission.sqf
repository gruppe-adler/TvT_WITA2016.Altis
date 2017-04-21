#include "component.hpp"

[] call wita_init_fnc_setMissionParams;
[] call wita_init_fnc_setIslandParams;

[{!isNull player || isDedicated},{
    if (isServer) then {
        _indepPos = [] call wita_setup_fnc_independent;
        _bluforPos = [_indepPos] call wita_setup_fnc_blufor;
        [] call wita_setup_fnc_createCustomLocations;

        _carsHandle = [] spawn wita_civs_fnc_cars;
        _heliHandle = [] spawn wita_civs_fnc_helicopters;
        _boatHandle = [] spawn wita_civs_fnc_boats;
        _cacheHandle = [_indepPos] spawn wita_caches_fnc_spawnCaches;

        [{{scriptDone _x} count (_this select 0) == count (_this select 0)}, {[_this select 1,_this select 2] call wita_setup_fnc_startGame}, [[_carsHandle,_heliHandle,_boatHandle,_cacheHandle],_indepPos,_bluforPos]] call CBA_fnc_waitUntilAndExecute;
    };

    if (hasInterface) then {
        [{missionNamespace getVariable ["WITA_GAMESTARTED",false] && !isNull player}, {[] call wita_setup_fnc_addKilledEH}, []] call CBA_fnc_waitUntilAndExecute;
    };
}, []] call CBA_fnc_waitUntilAndExecute;
