enableSaving [false, false];
enableSentences false;
setviewdistance 3500;


CIVILIAN_TRAFFIC = paramsArray select 0;
if (CIVILIAN_TRAFFIC == 1) then {
	[] execVM "Engima\Traffic\Init.sqf";
};
