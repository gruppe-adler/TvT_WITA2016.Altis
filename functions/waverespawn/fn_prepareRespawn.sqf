#include "component.hpp"

INFO("Ready to respawn. Preparing...");

//respawn not possible
if (player getVariable ["wr_interrupted", false]) exitWith {

    player allowDamage true;
    player setDamage 1;
    setPlayerRespawnTime 99999;
    [player, true] call TFAR_fnc_forceSpectator;
    [] call wita_common_fnc_startSpectator;

    _explanation = switch (true) do {
        case (playerSide == WEST && !wita_missionParam_BLUFORRESPAWNENABLED): {"Respawn disabled."};
        case (playerSide == WEST): {"Commandvehicle destroyed!"};
        case (!wita_missionParam_OPFORRESPAWNENABLED): {"Respawn disabled."};
        default {"Dealer was killed!"};
    };
    _explanation = parseText format ["<t align='center' size='1.4'>%1</t>", _explanation];
    [playerSide, _explanation] call wita_waverespawn_fnc_respawnHint;
    [{hint ""}, [], 3] call CBA_fnc_waitAndExecute;
};

if (player getVariable ["wr_isFreeRespawn", false]) exitWith {

};
