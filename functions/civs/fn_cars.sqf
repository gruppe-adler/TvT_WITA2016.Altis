#include "component.hpp"

private _startTime = diag_tickTime;

private _searchRadius = 15000;
private _worldCenter = [worldSize / 2,worldSize / 2];
private _other = nearestLocations [_worldCenter, ["NameLocal"], _searchRadius];
private _villages = nearestLocations [_worldCenter, ["NameVillage"], _searchRadius];
private _cities = nearestLocations [_worldCenter, ["NameCity"], _searchRadius];
private _capitals = nearestLocations [_worldCenter, ["NameCityCapital"], _searchRadius];

{
    {
        _locationRadius = switch (_forEachIndex) do {
            case (0): {100};
            case (1): {150};
            case (2): {200};
            case (3): {300};
        };

        [locationPosition _x,_locationRadius] call wita_civs_fnc_createLocationVehicles;
        false
    } count _x;
} forEach [_other,_villages,_cities,_capitals];

INFO_1("Created %1 vehicles in locations.",count wita_civs_locationVehiclePositions);
DEBUGMSG_2("car spawn completed in %1s (%2 cars).",diag_tickTime-_startTime,count wita_civs_locationVehiclePositions);
