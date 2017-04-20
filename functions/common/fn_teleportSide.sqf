#include "component.hpp"

[{!isNull (_this select 0)},{
    params ["_unit","_searchPos","_side",["_randomCountdown",0]];
    if (side _unit != _side) exitWith {};
    [{
        params ["_unit","_searchPos","_side",["_randomCountdown",0]];
        _unit allowDamage false;
        _pos = ([_searchPos,[0,15]] call wita_common_fnc_findRandomPos);
        _unit setPos _pos;

        [{_this allowDamage true},_unit,2] call CBA_fnc_waitAndExecute;
    }, _this, random _randomCountdown] call CBA_fnc_waitAndExecute;
},_this,5] call CBA_fnc_waitUntilAndExecute;
