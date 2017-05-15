["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

player addEventHandler ["HandleRating",{0}];

[] execVM "intro.sqf";
