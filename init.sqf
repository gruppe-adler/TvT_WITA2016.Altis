enableSaving [false, false];
enableSentences false;
setviewdistance 3500;

["BLU_F", "ger_heer_w"] call GRAD_Loadout_fnc_FactionSetLoadout;
["IND_F", "agent"] call GRAD_Loadout_fnc_FactionSetLoadout;

CIVILIAN_TRAFFIC = paramsArray select 0;
if (CIVILIAN_TRAFFIC == 1) then {
	[] execVM "Engima\Traffic\Init.sqf";
};
