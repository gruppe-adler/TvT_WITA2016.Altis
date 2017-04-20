#include "component.hpp"

params [["_unit",player]];

if (!hasInterface) exitWith {false};
private _isAgent = _unit getVariable ["wita_isAgent",false];

_isAgent
