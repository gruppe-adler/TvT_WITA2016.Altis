class Params {
    class DEBUG_MODE {
        title = "Debug Mode";
        values[] = {0,1};
        texts[] = {"false","true"};
        default = 1;
    };

    class CIVILIAN_TRAFFIC {
        title = "Civilian Traffic";
        values[] = {0, 1};
        texts[] =  {"false", "true"};
        default = 0;
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
};
