enableSaving [false, false];
enableSentences false;

["BLU_F", "us_army"] call GRAD_Loadout_fnc_FactionSetLoadout;
["IND_F", "agent"] call GRAD_Loadout_fnc_FactionSetLoadout;

[] execVM "dynamicSimulation.sqf";
