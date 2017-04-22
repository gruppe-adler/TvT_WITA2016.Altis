#include "component.hpp"

_bluforWaveSize = "BLUFORWAVESIZE" call BIS_fnc_getParamValue;

_allPlayers = [] call BIS_fnc_listPlayers;
if (_bluforWaveSize == 0) then {
    _teamSize = west countside _allPlayers;
    BLUFORWAVESIZE = (ceil ((_teamSize / 3) - 0.5)) max 1;
} else {
    BLUFORWAVESIZE = _bluforWaveSize;
};

INFO_1("Blufor wave size is %1", BLUFORWAVESIZE);
