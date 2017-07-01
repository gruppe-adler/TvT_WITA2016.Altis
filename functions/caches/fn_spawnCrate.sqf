#include "component.hpp"

params ["_cachePos","_cacheType","_cacheStory","_cacheContainer"];

_cachePos set [2,0];

private _cache = _cacheContainer createVehicle [0,0,0];
_cache setDir random 360;
_cache setPos _cachePos;
[_cache] call wita_common_fnc_emptyContainer;

private _cacheStoryScript = [_cacheStory,"script",""] call BIS_fnc_returnConfigEntry;
if (_cacheStoryScript != "") then {[_cachePos,random 360] execVM _cacheStoryScript};

{
    _availableItems = [missionConfigFile >> "cfgCacheContents",_x,[""]] call BIS_fnc_returnConfigEntry;
    _magAmount = [_cacheType,"magazinesPerRifle",0] call BIS_fnc_returnConfigEntry;
    for [{_i=0}, {_i<([_cacheType,_x,0] call BIS_fnc_returnConfigEntry)}, {_i=_i+1}] do {
        _item = selectRandom _availableItems;
        _magazines = [_item] call wita_common_fnc_getWeaponMagazines;
        _cache addWeaponCargoGlobal [_item,1];
        if (count _magazines > 0) then {_cache addMagazineCargoGlobal [selectRandom _magazines,_magAmount]};
    };
    false
} count ["riflesWest","riflesEast","sniperWest","sniperEast"];

{
    _availableItems = [missionConfigFile >> "cfgCacheContents",_x,[""]] call BIS_fnc_returnConfigEntry;
    _magAmount = [_cacheType,"magazinesPerHandgun",0] call BIS_fnc_returnConfigEntry;
    for [{_i=0}, {_i<([_cacheType,_x,0] call BIS_fnc_returnConfigEntry)}, {_i=_i+1}] do {
        _item = selectRandom _availableItems;
        _magazines = [_item] call wita_common_fnc_getWeaponMagazines;
        _cache addWeaponCargoGlobal [_item,1];
        if (count _magazines > 0) then {_cache addMagazineCargoGlobal [selectRandom _magazines,_magAmount]};
    };
    false
} count ["handguns"];

{
    _availableItems = [missionConfigFile >> "cfgCacheContents",_x,[""]] call BIS_fnc_returnConfigEntry;
    _magAmount = [_cacheType,"magazinesPerLauncher",0] call BIS_fnc_returnConfigEntry;
    for [{_i=0}, {_i<([_cacheType,_x,0] call BIS_fnc_returnConfigEntry)}, {_i=_i+1}] do {
        _item = selectRandom _availableItems;
        _magazines = [_item] call wita_common_fnc_getWeaponMagazines;
        _cache addWeaponCargoGlobal [_item,1];
        if (count _magazines > 0) then {_cache addMagazineCargoGlobal [selectRandom _magazines,_magAmount]};
    };
    false
} count ["launchersWest","launchersEast"];

{
    _availableItems = [missionConfigFile >> "cfgCacheContents",_x,[""]] call BIS_fnc_returnConfigEntry;
    for [{_i=0}, {_i<([_cacheType,_x,0] call BIS_fnc_returnConfigEntry)}, {_i=_i+1}] do {
        _item = selectRandom _availableItems;
        _cache addItemCargoGlobal [_item,1];
    };
    false
} count ["accessoriesWest","accessoriesEast","sightsWest","sightsEast","scopesWest","scopesEast","sniperScopesWest","sniperScopesEast","medical","items"];

{
    _availableItems = [missionConfigFile >> "cfgCacheContents",_x,[""]] call BIS_fnc_returnConfigEntry;
    for [{_i=0}, {_i<([_cacheType,_x,0] call BIS_fnc_returnConfigEntry)}, {_i=_i+1}] do {
        _item = selectRandom _availableItems;
        _cache addMagazineCargoGlobal [_item,1];
    };
    false
} count ["grenades"];

{
    _availableItems = [missionConfigFile >> "cfgCacheContents",_x,[""]] call BIS_fnc_returnConfigEntry;
    for [{_i=0}, {_i<([_cacheType,_x,0] call BIS_fnc_returnConfigEntry)}, {_i=_i+1}] do {
        _item = selectRandom _availableItems;
        _cache addBackpackCargoGlobal [_item,1];
    };
    false
} count ["backpacks"];

_cache
