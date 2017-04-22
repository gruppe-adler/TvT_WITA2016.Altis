#include "component.hpp"

params ["_pos","_numberOfUnits"];

_houses = [_pos,50] call wita_common_fnc_findBuildings;

_goodBuilding = objNull;
{
    if (count ([_x] call wita_common_fnc_findBuildingPositions) >= _numberOfUnits) exitWith {_goodBuilding = _x};
} forEach _houses;

_goodBuilding
