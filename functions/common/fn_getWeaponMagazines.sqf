#include "component.hpp"

params ["_weapon",["_excludeBlanks",true]];

_magazines = [configFile >> "CfgWeapons" >> _weapon, "magazines",[]] call BIS_fnc_returnConfigEntry;
if (_excludeBlanks) then {
    _magazines = _magazines select {([configFile >> "CfgMagazines" >> _x, "initSpeed", 900] call BIS_fnc_returnConfigEntry) > 15};
};

_magazines
