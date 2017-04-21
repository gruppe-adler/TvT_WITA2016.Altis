#include "component.hpp"

params ["_searchPos"];

private _nearRoads = [];
private _searchRadius = 10;
for [{_i=0}, {_i<30}, {_i=_i+1}] do {
    _nearRoads = _searchPos nearRoads _searchRadius;
    _searchRadius = _searchRadius + 10;
    if (count _nearRoads > 0) exitWith {};
};

private _startVehicles = [missionConfigFile >> "cfgMission", "indepStartVehicles",["I_Quadbike_01_F"]] call BIS_fnc_returnConfigEntry;
private _startVehicle = selectRandom _startVehicles;

private _spawnPos = [0,0,0];
while {_spawnPos isEqualTo [0,0,0]} do {
    _spawnPos = if (count _nearRoads == 0) then {ERROR_1("No roads found near startposition."); [_searchPos,[0,30],[0,360],_startVehicle] call wita_common_fnc_findRandomPos} else {getPos (_nearRoads select 0)};
};

private _veh = _startVehicle createVehicle [0,0,0];
[_veh] call wita_common_fnc_emptyContainer;
_veh setPos _spawnPos;

_veh
