#include "component.hpp"

deadPlayersBlu = [];
newBluSpawns = [];

if (hasInterface) then {
    player setVariable ["joinTime", serverTime];
    [] call wita_waverespawn_fnc_resetPlayerVars;
};

if (isServer) then {
    WAVERESPAWNBLU = false;
    WAVERESPAWNOPF = false;
    WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE;
    WAVERESPAWNPLAYERSLEFTOPF = OPFORWAVESIZE;
    WAVERESPAWNTIMELEFTBLU = uo_missionParam_WAVERESPAWNTIMEBLU;
    WAVERESPAWNTIMELEFTOPF = uo_missionParam_WAVERESPAWNTIMEOPF;
    MAXRESPAWNTIME = 300;
    RESPAWNWAVEEXTRATIME = 30;
    AUTOCHOOSETIMEOUT = 60;
    WAVERESPAWNSTATUSBLU = "";
    WAVERESPAWNSTATUSOPF = "";

    publicVariable "WAVERESPAWNBLU";
    publicVariable "WAVERESPAWNOPF";
    publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
    publicVariable "WAVERESPAWNPLAYERSLEFTOPF";
    publicVariable "WAVERESPAWNTIMELEFTBLU";
    publicVariable "WAVERESPAWNTIMELEFTOPF";
    publicVariable "MAXRESPAWNTIME";
    publicVariable "RESPAWNWAVEEXTRATIME";
    publicVariable "AUTOCHOOSETIMEOUT";
    publicVariable "WAVERESPAWNSTATUSBLU";
    publicVariable "WAVERESPAWNSTATUSOPF";

    [] call wita_waverespawn_fnc_startWaveLoops;

    DEADPLAYERSBLU_GROUP = createGroup [civilian,false];
    DEADPLAYERSOPF_GROUP = createGroup [civilian,false];

    publicVariable "DEADPLAYERSBLU_GROUP";
    publicVariable "DEADPLAYERSOPF_GROUP";

    DEADPLAYERSBLU_GROUP setVariable ["ace_map_hideBlueForceMarker",true,true];
    DEADPLAYERSOPF_GROUP setVariable ["ace_map_hideBlueForceMarker",true,true];

    addMissionEventHandler ["HandleDisconnect", {[_this select 0,side (_this select 0)] call wita_waverespawn_fnc_removeFromWave}];
};
