class cfgMission {

    locationDistance[] = {50,500};
    heliDistance[] = {30,100};
    locationTypeWeight[] = {
        "VILLAGE", 0.4,
        "CITY", 0.3,
        "CAPITAL", 0.1,
        "OTHER", 0.2
    };

    bluforSpawnDistanceVariance = 350;
    bluforBaseAreaSize = 150;
    bluforSpawnDistances[] = {
        1000,
        2000,
        3000
    };

    agentMarkerInterval = 60;
    agentMarkerVariance = 100;
    agentMarkerFadeout = 120;
    agentMarkerIntervalBase = 1.1;
    agentMarkerVarianceBase = 10;
    agentMarkerFadeoutBase = 10;

    indepStartVehicles[] = {
        "I_Quadbike_01_F"
    };

    class civVehicles {

        carLocationAmountFactor = 0.3;
        carLocationMinDist = 30;

        carRoadAmountFactor = 0.03;
        carRoadMinDist = 300;

        carTypes[] = {
            "C_Offroad_01_F"
        };

        heliAirportAmountFactor = 1;
        heliFuelFixValue = 0.03;
        heliTypes[] = {
            "C_Heli_Light_01_civil_F"
        };

        boatCoastAmountFactor = 1;
        boatTypes[] = {
            "C_Boat_Civil_01_F"
        };
    };
};
