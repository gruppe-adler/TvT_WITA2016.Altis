#include "component.hpp"

params ["_deadPlayer", ["_deadPlayerSide", sideUnknown]];

if (isNil "deadPlayersBlu") then {deadPlayersBlu = []};

//add player to array
if (_deadPlayerSide == WEST) then {
    deadPlayersBlu pushBackUnique _deadPlayer;
    INFO_2("Added player %1 to deadPlayersBlu. %2 dead blufor total.", name _deadPlayer, count deadPlayersBlu);
};

WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE - (count deadPlayersBlu);
publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
