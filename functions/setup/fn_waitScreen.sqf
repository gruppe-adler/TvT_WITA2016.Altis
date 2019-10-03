#include "component.hpp"



if (missionNamespace getVariable ["WITA_GAMESTARTED",false]) exitWith {};
player enableSimulationGlobal false;

"wita_waitScreen" cutRsc ["RscTitleDisplayEmpty","PLAIN",0,false];
[{!isNull (uiNamespace getVariable ["RscTitleDisplayEmpty",displayNull])}, {

    _display = uiNamespace getVariable ["RscTitleDisplayEmpty",displayNull];

    _ctrlText = _display ctrlCreate ["RscStructuredText",-1];
    _ctrlText ctrlSetBackgroundColor [0,0,0,1];
    _ctrlText ctrlSetFontHeight 0.05;
    _ctrlText ctrlSetPosition [safeZoneX, safeZoneY, safeZoneW, safeZoneH];
    _ctrlText ctrlCommit 0;

    [{
        params ["_ctrlText","_handle"];
        if (missionNamespace getVariable ["WITA_GAMESTARTED",false]) exitWith {
            "wita_waitScreen" cutRsc ["RscTitleDisplayEmpty","PLAIN",0,false];
            player enableSimulationGlobal true;
            [_handle] call CBA_fnc_removePerFrameHandler;
        };

        private _checkVar = {
            params ["_varname"];

            if (missionNamespace getVariable [_varName,false]) then {
                "<t color='#00ff00'>complete!</t>"
            } else {
                "<t color='#ff0000'>in progress...</t>"
            }
        };

        _text = composeText [
            parseText format ["Independent start position: %1",["WITA_SETUP_INDEPENDENTDONE"] call _checkVar], lineBreak,
            parseText format ["Blufor start position: %1",["WITA_SETUP_BLUFORDONE"] call _checkVar], lineBreak,
            parseText format ["Random cars: %1",["WITA_SETUP_CARSDONE"] call _checkVar], lineBreak,
            parseText format ["Random helicopters: %1",["WITA_SETUP_HELISDONE"] call _checkVar], lineBreak,
            parseText format ["Random boats: %1",["WITA_SETUP_BOATSDONE"] call _checkVar], lineBreak,
            parseText format ["Random caches: %1",["WITA_SETUP_CACHESDONE"] call _checkVar], lineBreak,
            parseText format ["Server FPS recovery: %1",["WITA_INIT_SERVERFPSDONE"] call _checkVar], lineBreak,
            lineBreak,
            parseText "PLEASE WAIT WHILE MISSION IS LOADING."
        ];
        _ctrlText ctrlSetStructuredText _text;
    } , 0.2, _ctrlText] call CBA_fnc_addPerFrameHandler;
}, []] call CBA_fnc_waitUntilAndExecute;
