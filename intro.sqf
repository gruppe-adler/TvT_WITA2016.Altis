titleCut ["", "BLACK FADED", 999];
titleText ["","PLAIN"];
titleFadeOut 1;

sleep 2;
titleCut ["", "BLACK IN", 2];

waitUntil {time > 3};
["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.9' color='#FFFFFF'> Where is the Agent? </t>",0,0,3,4] spawn BIS_fnc_dynamicText;
