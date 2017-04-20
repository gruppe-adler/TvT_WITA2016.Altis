#include "component.hpp"

_searchRadius = 15000;
_worldCenter = [worldSize / 2,worldSize / 2];

private _villages = [nearestLocations [_worldCenter, ["NameVillage"], _searchRadius]] call wita_setup_fnc_filterLocations;
private _cities = [nearestLocations [_worldCenter, ["NameCity"], _searchRadius]] call wita_setup_fnc_filterLocations;
private _capitals = [nearestLocations [_worldCenter, ["NameCityCapital"], _searchRadius]] call wita_setup_fnc_filterLocations;
private _other = [nearestLocations [_worldCenter, ["NameLocal"], _searchRadius]] call wita_setup_fnc_filterLocations;

private _selType = ([missionConfigFile >> "cfgMission", "locationTypeWeight", []] call BIS_fnc_returnConfigEntry) call BIS_fnc_selectRandomWeighted;
if (isNil "_selType") exitWith {ERROR("No location type was selected."); locationNull};

private _locations = switch (_selType) do {
    case ("VILLAGE"): {_villages};
    case ("CITY"): {_cities};
    case ("CAPITAL"): {_capitals};
    case ("OTHER"): {_other};
    default {[]};
};
if (count _locations == 0) exitWith {ERROR("Selected location array was empty."); locationNull};

private _startLocation = selectRandom _locations;

_startLocation
