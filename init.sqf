publicvariable "publictime";
enableSaving [false, false];
enableSentences false;
nul = [] execVM "time.sqf";
setviewdistance 3500;


//Adler Intro

titleCut ["", "BLACK FADED", 999]; 
[] Spawn {

titleText ["","PLAIN"]; 
titleFadeOut 1;
sleep 2;

titleCut ["", "BLACK IN", 2];

waitUntil {time > 3};
	["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.9' color='#FFFFFF'> Where is the Agent? </t>",0,0,3,4] spawn BIS_fnc_dynamicText;
};


//read param
CIVILIAN_TRAFFIC = paramsArray select 0;



if (CIVILIAN_TRAFFIC == 1) then {
	[] execVM "Engima\Traffic\Init.sqf";
};

