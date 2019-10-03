#include "component.hpp"

#define MINWAITTIME         20
#define MAXWAITTIME         120
#define FPSTHRESHOLD        35
#define CONTINUOUSFPSTIME   10

[{
    private _fnc_setDone = {missionNamespace setVariable ["WITA_INIT_SERVERFPSDONE",true,true]};
    [{
        params ["_timeSinceFpsOK"];
        if (CBA_missionTime - _timeSinceFpsOK < CONTINUOUSFPSTIME) exitWith {true};
        if (diag_fps < FPSTHRESHOLD) then {
            _this set [0,CBA_missionTime];
        };
        false
    },_fnc_setDone,[CBA_missionTime,0],MAXWAITTIME,_fnc_setDone] call CBA_fnc_waitUntilAndExecute;
},[],MINWAITTIME] call CBA_fnc_waitAndExecute;
