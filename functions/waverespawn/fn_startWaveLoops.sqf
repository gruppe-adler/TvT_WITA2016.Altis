#include "component.hpp"

//BLUFOR =======================================================================
[{
    ["WAVERESPAWNSTATUSBLU",[WEST] call wita_waverespawn_fnc_getStatus] call CBA_fnc_publicVariable;

    //dont execute while respawning is possible
    if (WAVERESPAWNBLU) exitWith {};

    //start countdown once first player is added to wave
    if (count deadPlayersBlu > 0) then {
        WAVERESPAWNTIMELEFTBLU = (WAVERESPAWNTIMELEFTBLU - 1) max 0;
        publicVariable "WAVERESPAWNTIMELEFTBLU";
    } else {
        ["WAVERESPAWNTIMELEFTBLU",wita_missionParam_WAVERESPAWNTIMEBLU] call CBA_fnc_publicVariable;
    };

    //enable respawning when wave is full
    if (["WEST"] call wita_waverespawn_fnc_canRespawn) then {
        _newGroups = [WEST] call wita_waverespawn_fnc_organizeInGroup;
        {
            _x call wita_waverespawn_fnc_autoChooseRespawn;
            false
        } count _newGroups;

        WAVERESPAWNBLU = true;
        publicVariable "WAVERESPAWNBLU";
        INFO("Respawning now possible for Blufor.");

        [{
            _newGroups = [WEST] call wita_waverespawn_fnc_organizeInGroup;
            {
                _x call wita_waverespawn_fnc_autoChooseRespawn;
                false
            } count _newGroups;

            WAVERESPAWNBLU = false;
            publicVariable "WAVERESPAWNBLU";
            WAVERESPAWNTIMELEFTBLU = wita_missionParam_WAVERESPAWNTIMEBLU;
            publicVariable    "WAVERESPAWNTIMELEFTBLU";
            INFO("Respawning no longer possible for Blufor.");
        },[],(RESPAWNWAVEEXTRATIME max 7)] call CBA_fnc_waitAndExecute;
    };
}, 1, []] call CBA_fnc_addPerFrameHandler;
