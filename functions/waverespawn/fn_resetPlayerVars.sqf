#include "component.hpp"

switch (playerSide) do {
    case (WEST): {
        player setVariable ["wr_waitCondition", {!WAVERESPAWNBLU}];
        player setVariable ["wr_interruptCondition", {false}];
        player setVariable ["wr_playersLeft", {WAVERESPAWNPLAYERSLEFTBLU}];
        player setVariable ["wr_waveTimeLeft", {WAVERESPAWNTIMELEFTBLU}];
        player setVariable ["wr_waveSize", BLUFORWAVESIZE];
    };
};

player setVariable ["wr_playerRespawnTimeLeft", wita_missionParam_RESPAWNTIME];
player setVariable ["wr_interrupted", false];
player setVariable ["wr_isFreeRespawn", false];
player setVariable ["wr_playerCountdownDone", false];
player setVariable ["wr_waveCountdownDone", false];
player setVariable ["wr_cvCheckDone", false];
