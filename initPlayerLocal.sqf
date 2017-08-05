["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

player addEventHandler ["HandleRating",{0}];
player addEventHandler ["Take",{_this call wita_common_fnc_handleScopeChange}];

[] execVM "intro.sqf";
