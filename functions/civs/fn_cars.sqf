#include "component.hpp"

private _startTime = diag_tickTime;

private _searchRadius = 15000;
private _worldCenter = [worldSize / 2,worldSize / 2];
private _other = nearestLocations [_worldCenter, ["NameLocal"], _searchRadius];
private _villages = nearestLocations [_worldCenter, ["NameVillage"], _searchRadius];
private _cities = nearestLocations [_worldCenter, ["NameCity"], _searchRadius];
private _capitals = nearestLocations [_worldCenter, ["NameCityCapital"], _searchRadius];
private _locationAmountFactor = [missionConfigFile >> "cfgMission" >> "civVehicles", "carLocationAmountFactor", 1] call BIS_fnc_returnConfigEntry;
private _locationMinDist = [missionConfigFile >> "cfgMission" >> "civVehicles", "carLocationMinDist", 30] call BIS_fnc_returnConfigEntry;
private _roadAmountFactor = [missionConfigFile >> "cfgMission" >> "civVehicles", "carRoadAmountFactor", 0.01] call BIS_fnc_returnConfigEntry;
private _roadMinDist = [missionConfigFile >> "cfgMission" >> "civVehicles", "carRoadMinDist", 300] call BIS_fnc_returnConfigEntry;


//create in locations
{
    {
        _locationRadius = switch (_forEachIndex) do {
            case (0): {100};
            case (1): {150};
            case (2): {200};
            case (3): {300};
        };

        [locationPosition _x,_locationRadius,_locationAmountFactor,30,_locationMinDist] call wita_civs_fnc_createSideRoadVehicles;
        false
    } count _x;
} forEach [_other,_villages,_cities,_capitals];

//create outside of locations
[[worldSize/2,worldSize/2,0],worldSize * 1.5,_roadAmountFactor,-1,_roadMinDist] call wita_civs_fnc_createSideRoadVehicles;

DEBUGMSG_2("car spawn completed in %1s (%2 cars).",diag_tickTime-_startTime,count wita_civs_vehiclePositions);

missionNamespace setVariable ["WITA_SETUP_CARSDONE",true,true];
