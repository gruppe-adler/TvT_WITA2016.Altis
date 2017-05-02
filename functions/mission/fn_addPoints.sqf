#include "component.hpp"

params ["_addPoints","_UID",["_playerName",name ([_this select 1] call BIS_fnc_getUnitByUid)]];

if (isNil "WITA_SCOREARRAY_CURRENT") exitWith {ERROR("WITA_SCOREARRAY_CURRENT is nil.")};

private _playerData = [WITA_SCOREARRAY_CURRENT,_UID] call CBA_fnc_hashGet;
_playerData params ["","","_playerPoints"];

private _newPoints = _playerPoints + _addPoints;
_playerData set [0,_playerName];
_playerData set [1,worldName];
_playerData set [2,_newPoints];

[WITA_SCOREARRAY_CURRENT,_UID,_playerData] call CBA_fnc_hashSet;

DEBUGMSG_2("Player %1 now has %2 points.",_playerName,_newPoints);

_newPoints
