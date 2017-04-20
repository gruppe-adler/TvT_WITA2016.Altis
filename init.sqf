enableSaving [false, false];
enableSentences false;
setviewdistance 3500;

["BLU_F", "ger_heer_w"] call GRAD_Loadout_fnc_FactionSetLoadout;
["IND_F", "agent"] call GRAD_Loadout_fnc_FactionSetLoadout;

CIVILIAN_TRAFFIC = "CIVILIAN_TRAFFIC" call BIS_fnc_getParamValue;;
if (CIVILIAN_TRAFFIC == 1) then {
	[] execVM "Engima\Traffic\Init.sqf";
};
