#define PREFIX uo
#define COMPONENT common
#include "\x\cba\addons\main\script_macros_mission.hpp"

params ["_entry","_defaultValue"];
_cfg = missionConfigFile >> "cfgGradIslands" >> worldName;
if (!isClass _cfg) exitWith {ERROR_1("Config for island %1 not found.", worldName); _defaultValue};

if (isNumber (_cfg >> _entry)) exitWith {getNumber (_cfg >> _entry)};
if (isArray (_cfg >> _entry)) exitWith {getArray (_cfg >> _entry)};
if (isText (_cfg >> _entry)) exitWith {
    _return = getText (_cfg >> _entry);
    if (_return == "true") then {
        _return = true
    } else {
        if (_return == "false") then {_return = false};
    };
    _return
};

_defaultValue
