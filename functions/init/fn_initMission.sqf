#include "component.hpp"

[{!isNull player || isDedicated},{

    if (isServer) then {
        [] call wita_setup_fnc_createCustomLocations;
        [] call wita_setup_fnc_independent;
    };


}, []] call CBA_fnc_waitUntilAndExecute;
