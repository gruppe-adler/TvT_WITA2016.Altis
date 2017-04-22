#include "component.hpp"

params ["_searchPos", "_searchDistance", "_originalSide"];

_allRespawnObjects = if (_originalSide == "WEST") then {missionNamespace getVariable ["wita_cv_allCVs",[]]} else {[wita_DEALER]};

_nearestDistance = 999999;
_nearestObject = objNull;
{
    _distance = _searchPos distance2D _x;
    if (_distance < _nearestDistance && _distance < _searchDistance) then {
        _nearestDistance = _distance;
        _nearestObject = _x;
    };
} forEach _allRespawnObjects;

_nearestObject
