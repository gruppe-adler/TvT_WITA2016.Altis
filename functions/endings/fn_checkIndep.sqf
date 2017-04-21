#include "component.hpp"

[{
    params ["_args","_handle"];

    if ({side _x == INDEPENDENT && {[_x] call wita_common_fnc_isAgent} && {alive _x}} count playableUnits == 0) exitWith {
        [{
            if ({side _x == INDEPENDENT && {[_x] call wita_common_fnc_isAgent} && {alive _x}} count playableUnits == 0) then {
                ["AGENTSKILLED"] call wita_endings_fnc_endMission;
            } else {
                [] call wita_endings_fnc_checkIndep;
            };
        }, [], 10] call CBA_fnc_waitAndExecute;

        [_handle] call CBA_fnc_removePerFrameHandler;
    };
} , 5, []] call CBA_fnc_addPerFrameHandler;
