enableSaving [false, false];
enableSentences false;

["BLU_F", "ind_pmc_agents"] call GRAD_Loadout_fnc_FactionSetLoadout;
["IND_F", "agent"] call GRAD_Loadout_fnc_FactionSetLoadout;

[] execVM "dynamicSimulation.sqf";
[] call GRAD_replay_fnc_init;