#include "component.hpp"

params ["_group"];

if (isNull _group) exitWith {};
if (count units _group < 1) exitWith {};
if (_group getVariable ["wita_waverespawn_groupIsRespawned",false]) exitWith {};

if (side _group == WEST) then {
    _pos = [getPos WITA_BLUFORBASEAREA, [0,30]] call wita_common_fnc_findRandomPos;
    [_group,_pos] call wita_waverespawn_fnc_respawnGroup;
};
