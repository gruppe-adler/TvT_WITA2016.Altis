class cfgMission {

    //Wie wahrscheinlich ist es, dass Agent in der Nähe dieses Locationtyps startet? Zahlen zwischen 0 und 1, Summe muss nicht 1 ergeben.
    locationTypeWeight[] = {
        "VILLAGE", 0.4,
        "CITY", 0.3,
        "CAPITAL", 0.1,
        "OTHER", 0.2
    };

    //Wie weit entfernt von der ausgewählten Location kann der Agent spawnen? Mindestabstand, Maximalabstand.
    locationDistance[] = {50,500};

    //Wie weit entfernt von der Agenten-Startposition spawnt der gecrashte Heli? Mindestabstand, Maximalabstand.
    heliDistance[] = {30,100};

    //Wie weit entfernt vom Agenten spawnt Blufor? (nah, normal, weit) wird über Missionparameter ausgewählt.
    bluforSpawnDistances[] = {
        1000,
        2000,
        3000
    };

    //Wie stark variiert der Blufor Spawnabstand?
    bluforSpawnDistanceVariance = 350;

    //Radius um Blufors Startposition, der zur Basis gehört
    bluforBaseAreaSize = 150;

    //Auf welchen Wert wird der Treibstoff gesetzt, wenn ein Independent Spieler einen Helikopter bemannt?
    heliFuelFixValue = 0.03;

    //Wie groß ist die Ungenauigkeit der Agentenmarker?
    agentMarkerVariance = 100;

    //Wie oft werden die Agentenmarker angezeigt?
    agentMarkerInterval = 60;

    //Wie lange sind Agentenmarker sichtbar?
    agentMarkerFadeout = 120;

    //Startfahrzeuge für Independent. Auswahl zufällig. Eines spawnt in der Nähe der Startposition.
    indepStartVehicles[] = {
        "I_Quadbike_01_F"
    };
};
