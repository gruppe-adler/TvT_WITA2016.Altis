#include "component.hpp"

params ["_currentStatsHash"];

private _tag = [missionConfigFile >> "cfgMission","scoreboardSaveTag",""] call BIS_fnc_returnConfigEntry;
if (_tag == "") exitWith {ERROR("No scoreboard tag found in cfgMission.")};

private _saveDataHash = profileNamespace getVariable [_tag,[[],["UNKNOWN PLAYER",0]] call CBA_fnc_hashCreate];

[_currentStatsHash, {
    _value params ["_thisName","_thesePoints"];

    _savedPoints = ([_saveDataHash,_key] call CBA_fnc_hashGet) select 1;
    [_saveDataHash,_key,[_thisName,_savedPoints max _thesePoints]] call CBA_fnc_hashSet;
}] call CBA_fnc_hashEachPair;

profileNamespace setVariable [_tag,_saveDataHash];
saveProfileNamespace;

_saveDataHash
