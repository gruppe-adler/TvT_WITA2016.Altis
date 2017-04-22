#include "component.hpp"

params ["_targetPos","_side"];

private _teleportNumber = {
    [_x,_targetPos,_side,3] remoteExec ["wita_common_fnc_teleportSide",_x,false];
    false
} count playableUnits;

INFO_1("%1 units teleported to start position.",_side);
