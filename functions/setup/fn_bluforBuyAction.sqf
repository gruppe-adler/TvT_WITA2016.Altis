#include "component.hpp"

params ["_object"];

[
    _object,
    "blu_us_army",
    _object,
    _object,
    "COMMAND CENTER",
    "Buy",
    {side (_this select 1) == WEST && alive (_this select 0)},
    [0.45,-0.63,-0.75],
    5,
    [],
    WEST
] call grad_lbm_fnc_addInteraction;
