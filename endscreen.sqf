
/*
hintC "The Agent was killed!";


hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
	0 = _this spawn {
		_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
		hintSilent "";
	};
}];
hint "Dialog ist vorbei";
*/



/*
_hours = _zeit / 3600;
_zeit = _zeit % 3600;
_min = _zeit / 60;
_zeit = _zeit % 60;
_sec = _zeit;
*/




// Text nachdem Agent tot ist
showHUD [false,false,false,false,false,false,false,false];
0 call fn_sthud_usermenu_changeMode;
sleep 1;
_meldung1 = "<t color='#d18d1f' size = '3' >" + name WITA_AGENT + "</t>";
_meldung2 = "<t color='#d18d1f' size = '3' > was killed! </t>";
//_meldung3 = "<t color='#d18d1f' size = '3' >" + str _hours + ":" + str _min + ":" + str _sec + "</t>";
_meldung3 = format["<t color='#d18d1f' size = '2' > TIME ACHIEVED: %1</t>", [CBA_missionTime/(60*60)+.0001,"HH:MM:SS"] call BIS_fnc_timetostring];


//_meldung3 = "<t color='#d18d1f' size = '3' >" + str serverTime + "</t>";

[_meldung1 + _meldung2 + "<br/>" + _meldung3, 0, -1, 3,1,0,789] spawn BIS_fnc_dynamicText;
