#include "..\list_macros.hpp"

class Loadouts {
    resetLoadout = 0;
    baseDelay = 5;
    handleRadios = 1;

    class Faction {
        #include "agent.hpp"
        #include "..\node_modules\grad-factions-tvt\loadouts.hpp"
    };
};
