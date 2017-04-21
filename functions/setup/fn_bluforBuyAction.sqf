#include "component.hpp"

params ["_object"];

[
    _object,
    "blu_ger_heer",
    _object,
    _object,
    "COMMAND CENTER",
    "Buy",
    {side (_this select 1) == WEST && alive (_this select 0)}
] call grad_lbm_fnc_addInteraction;
