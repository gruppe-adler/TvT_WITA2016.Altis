#include "component.hpp"

params ["_disable"];

_keys = actionKeys "ShowMap";

//disable map
if (_disable) then {
    if (isNil "blockMapEHs") then {
        blockMapEHs = [];
    };

    {
        _eh = call compile format ["(findDisplay 46) displayAddEventHandler ['KeyDown', {if ((_this select 1) == %1) then {true}}]", _x];
        blockMapEHs pushBack _eh;
    } forEach _keys;
};

//enable map
if (!_disable) then {
    if (isNil "blockMapEHs") exitWith {};
    if (count blockMapEHs == 0) exitWith {};

    {
        (findDisplay 46) displayRemoveEventHandler ["KeyDown", _x];
    } forEach blockMapEHs;

    blockMapEHs = [];
};
