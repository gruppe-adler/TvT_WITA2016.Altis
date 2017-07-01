#include "component.hpp"

params ["_indepStartPos"];

private _startTime = diag_tickTime;

private _cacheAmount = round (([missionConfigFile >> "cfgMission","cacheAmountFactor",1] call BIS_fnc_returnConfigEntry) * worldSize/1000);
private _cacheMinDist = [missionConfigFile >> "cfgMission","cacheMinDist",1] call BIS_fnc_returnConfigEntry;
private _cacheIndepStartDist = [missionConfigFile >> "cfgMission","cacheIndepStartDist",1] call BIS_fnc_returnConfigEntry;

private _allCacheTypes = "true" configClasses (missionConfigFile >> "cfgCaches");
private _allCacheTypesWeighted = [];
{
    _allCacheTypesWeighted pushBack _x;
    _allCacheTypesWeighted pushBack ([_x,"probability",1] call BIS_fnc_returnConfigEntry);
    false
} count _allCacheTypes;

private _searchPos = [worldSize/2,worldSize/2,0];
private _searchRadius = worldSize * 0.7;
private _loopCount = 0;
private _allCachePositions = [];
while {count _allCachePositions < _cacheAmount && {_loopCount < _cacheAmount * 100}} do {
    _cacheType = _allCacheTypesWeighted call BIS_fnc_selectRandomWeighted;

    _cacheStories = [_cacheType,"cacheStories",[""]] call BIS_fnc_returnConfigEntry;
    _cacheStory = (missionConfigFile >> "cfgCacheStories" >> selectRandom _cacheStories);
    if (isNil "_cacheStory") then {_cacheStory = configNull};

    _cacheContainer = selectRandom ([_cacheType,"cacheContainers",[""]] call BIS_fnc_returnConfigEntry);
    _cacheSize = if (isNull _cacheStory) then {1} else {[_cacheStory,"size",3] call BIS_fnc_returnConfigEntry};

    _onRoad = if (isNull _cacheStory) then {false} else {([_cacheStory,"onRoad",0] call BIS_fnc_returnConfigEntry) == 1};
    _onCoast = if (isNull _cacheStory) then {false} else {([_cacheStory,"onCoast",0] call BIS_fnc_returnConfigEntry) == 1};
    if (_onRoad) then {_onCoast = false};

    _cachePos = if (_onCoast) then {_coastSearchPos = [_searchPos,[0,_searchRadius],[0,360],"",true] call wita_common_fnc_findRandomPos; [_coastSearchPos,[0,300],[0,360],_cacheContainer,false] call wita_common_fnc_findRandomPos} else {[_searchPos,[0,_searchRadius],[0,360],_cacheContainer,false] call wita_common_fnc_findRandomPos};
    _roadCheck = if (!_onRoad) then {true} else {
        _nearRoads = _cachePos nearRoads 300;
        if (count _nearRoads > 0) then {_cachePos = getPos (selectRandom _nearRoads); true} else {false};
    };

    /*_cachePos = _cachePos isFlatEmpty [_cacheSize,-1,-1,1,0,_onCoast];*/
    if (
        _roadCheck &&
        {!(_cachePos isEqualTo [0,0,0])} &&
        {count _cachePos > 0} &&
        {({_cachePos distance2D _x < _cacheMinDist} count _allCachePositions) == 0} &&
        {_cachePos distance2D _indepStartPos > _cacheIndepStartDist} &&
        {[_cachePos] call wita_common_fnc_isInsideMap}
    ) then {
        [ASLtoATL _cachePos,_cacheType,_cacheStory,_cacheContainer] call wita_caches_fnc_spawnCrate;
        _allCachePositions pushBack _cachePos;
        [_cachePos,count _allCachePositions] call wita_caches_fnc_cacheMarker;
    };

    _loopCount = _loopCount + 1;
};

DEBUGMSG_3("cache spawn completed in %1s, %2 iterations. (%3/%4 caches).",diag_tickTime-_startTime,_loopCount,count _allCachePositions,_cacheAmount);

missionNamespace setVariable ["WITA_SETUP_CACHESDONE",true,true];
