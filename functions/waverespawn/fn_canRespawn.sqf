#include "component.hpp"

params ["_side"];

_canRespawn = (count deadPlayersBlu >= BLUFORWAVESIZE && WAVERESPAWNTIMELEFTBLU <= 0);
_canRespawn
