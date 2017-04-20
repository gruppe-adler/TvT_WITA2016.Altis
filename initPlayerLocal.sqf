[] execVM "intro.sqf";

if (didJIP && {[] call wita_common_fnc_isAgent}) then {
    [player] remoteExec ["wita_mission_fnc_agentMarker",2,false];
};
