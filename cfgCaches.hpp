class cfgCaches {

    class RifleWest1 {
        probability = 0.8;

        //Rifles
        riflesWest = 1;
        riflesEast = 0;

        //Snipers
        sniperWest = 0;
        sniperEast = 0;

        //Handguns
        handguns = 1;

        //Launchers
        launchersWest = 0;
        launchersEast = 0;

        //Ammo
        magazinesPerLauncher = 0;
        magazinesPerHandgun = 2;
        magazinesPerRifle = 4;

        //Accessories
        accessoriesWest = 3;
        accessoriesEast = 0;

        //Sights
        sightsWest = 1;
        sightsEast = 0;

        //Scopes
        scopesWest = 0;
        scopesEast = 0;

        //SniperScopes
        sniperScopesWest = 0;
        sniperScopesEast = 0;

        //Extras
        grenades = 2;
        items = 2;
        medical = 5;
        backpacks = 1;

        cacheContainers[] = {
            "Box_NATO_WpsSpecial_F" //Welche Box sichtbar am Boden liegt
        };

        cacheStories[] = {
            "hmmwvCrash1",
            "heliCrash1",
            "heliCrash2"
        };
    };

    class RifleWest2 {
        probability = 0.3;
        riflesWest = 2;
        magazinesPerRifle = 4;
        accessoriesWest = 3;
        sightsWest = 1;
        scopesWest = 1;

        cacheContainers[] = {
            "Box_NATO_WpsSpecial_F"
        };

        cacheStories[] = {
            "hmmwvCrash1",
            "heliCrash1",
            "heliCrash2"
        };
    };

    class RifleEast1 {
        probability = 0.8;

        riflesEast = 1;
        handguns = 1;
        magazinesPerHandgun = 2;
        magazinesPerRifle = 4;
        accessoriesEast = 3;
        sightsEast = 1;
        grenades = 2;
        items = 2;
        medical = 5;
        backpacks = 1;

        cacheContainers[] = {
            "Box_Syndicate_Wps_F"
        };

        cacheStories[] = {
            "uazCrash1",
            "heliCrash1",
            "breakingContact",
            "boatWreck"
        };
    };

    class RifleEast2 {
        probability = 0.3;

        riflesEast = 2;
        magazinesPerRifle = 4;
        accessoriesEast = 3;
        sightsEast = 1;
        scopesEast = 1;

        cacheContainers[] = {
            "Box_Syndicate_Wps_F"
        };

        cacheStories[] = {
            "uazCrash1",
            "camp1",
            "breakingContact",
            "killedCivilians"
        };
    };


    class SniperWest1 {
        probability = 0.25;

        sniperWest = 1;
        handguns = 1;
        magazinesPerHandgun = 2;
        magazinesPerRifle = 3;
        accessoriesWest = 2;
        sniperScopesWest = 1;
        grenades = 2;
        items = 2;
        medical = 7;
        backpacks = 1;

        cacheContainers[] = {
            "Box_NATO_WpsSpecial_F"
        };

        cacheStories[] = {
            "hmmwvCrash1",
            "breakingContact",
            "heliCrash1",
            "heliCrash2",
            "boatWreck"
        };
    };

    class SniperEast1 {
        probability = 0.15;

        sniperEast = 1;
        handguns = 1;
        magazinesPerHandgun = 2;
        magazinesPerRifle = 3;
        accessoriesEast = 2;
        sniperScopesEast = 2;
        grenades = 2;
        items = 2;
        medical = 7;

        cacheContainers[] = {
            "Box_Syndicate_Wps_F"
        };

        cacheStories[] = {
            "breakingContact",
            "camp1",
            "killedCivilians",
            "uazCrash1"
        };
    };

    class LauncherWest1 {
        probability = 0.3;
        launchersWest = 1;
        magazinesPerLauncher = 3;
        accessoriesWest = 2;
        items = 2;
        medical = 4;
        backpacks = 1;

        cacheContainers[] = {
            "Box_NATO_WpsSpecial_F"
        };

        cacheStories[] = {
            "hmmwvCrash1",
            "heliCrash1",
            "heliCrash2",
            "boatWreck"
        };
    };

    class LauncherEast1 {
        probability = 0.35;
        launchersEast = 1;
        magazinesPerLauncher = 3;
        accessoriesEast = 2;
        items = 2;
        medical = 4;
        backpacks = 1;

        cacheContainers[] = {
            "Box_Syndicate_Wps_F"
        };

        cacheStories[] = {
            "boatWreck",
            "breakingContact",
            "camp1",
            "killedCivilians",
            "uazCrash1"
        };
    };

    class ItemsCache1 {
        probability = 0.5;

        accessoriesWest = 3;
        accessoriesEast = 3;
        sightsWest = 1;
        sightsEast = 1;
        grenades = 2;
        items = 5;
        medical = 10;
        backpacks = 1;

        cacheContainers[] = {
            "Box_NATO_WpsSpecial_F"
        };

        cacheStories[] = {
            "boatWreck",
            "breakingContact",
            "camp1",
            "heliCrash1",
            "heliCrash2",
            "hmmwvCrash1",
            "killedCivilians",
            "uazCrash1"
        };
    };
};
