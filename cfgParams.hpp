class Params {
    class DEBUG_MODE {
        title = "Debug Mode";
        values[] = {0,1};
        texts[] = {"false","true"};
        default = 0;
    };

    class RANKED_MODE {
        title = "Track Statistics";
        values[] = {0,1};
        texts[] = {"false","true"};
        default = 1;
    };

    class BLUFOR_SPAWNDISTANCE {
        title = "Blufor Spawn Distance";
        values[] = {0,1,2};
        texts[] = {"close","normal","far"};
        default = 1;
    };

    class BLUFOR_MONEY {
        title = "Blufor Money";
        values[] = {0,1,2};
        texts[] = {"less","normal","more"};
        default = 1;
    };

    class BLUFORWAVESIZE
    {
        title = "BLUFOR Respawn Wave Size";
        values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
        texts[] = {"Automatic", "1", "2","3","4","5","6","7","8","9","10","11","12","13","14","15"};
        default = 0;
    };

    class RESPAWNTIME
    {
        title = "Player Respawn Time (Minutes)";
        values[] = {30,60,90,120,150,180,210,240,270,300,330,360,390,420,450,480,510,540,570,600};
        texts[] = {"0.5","1","1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10"};
        default = 30;
    };

    class WAVERESPAWNTIMEBLU
    {
        title = "Wave Respawn Time (Minutes)";
        values[] = {30,60,90,120,150,180,210,240,270,300,330,360,390,420,450,480,510,540,570,600};
        texts[] = {"0.5","1","1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10"};
        default = 60;
    };
};
