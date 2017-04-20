#include "component.hpp"

params ["_center", ["_radii", [0,15]], ["_angles", [0,360]], ["_vehicleType", "B_Soldier_F"], ["_findWaterPos",false]];
private ["_pos"];
_radii params ["_minRad", "_maxRad"];
_angles params ["_minAngle", "_maxAngle"];

_center = if (typeName _center == "OBJECT") then {getPos _center} else {_center};

for [{private _i=0}, {_i<50}, {_i=_i+1}] do {
    _searchDist = (random (_maxRad - _minRad)) + _minRad;
    _searAngle = (random (_maxAngle - _minAngle)) + _minAngle;
    _searchPos = _center getPos [_searchDist, _searAngle];

    _pos = _searchPos findEmptyPosition [0,10,_vehicleType];
    if (str _pos != "[]" && {(surfaceIsWater _pos) isEqualTo _findWaterPos}) exitWith {};
};

if (str _pos == "[]") then {
    _pos = _center;
};

_pos
