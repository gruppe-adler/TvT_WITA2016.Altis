#include "component.hpp"

[] call wita_init_fnc_setMissionParams;

[{!isNull player || isDedicated},{
    if (isServer) then {
        [] call wita_setup_fnc_createCustomLocations;
        _indepPos = [] call wita_setup_fnc_independent;
        [_indepPos] call wita_setup_fnc_blufor;        
    };


}, []] call CBA_fnc_waitUntilAndExecute;
