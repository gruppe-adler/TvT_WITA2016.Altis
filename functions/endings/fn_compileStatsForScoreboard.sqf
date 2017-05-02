#include "component.hpp"

params ["_scoreHash",["_titles",["NAME","MAP","SCORE"]]];

private _compiledStats = [_titles];
[_scoreHash, {
    _compiledStats pushBack [_value select 0,_value select 1,_value select 2];
}] call CBA_fnc_hashEachPair;

_compiledStats
