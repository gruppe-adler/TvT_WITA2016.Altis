publictime = 0;
[{
	publictime = publictime + 1;
	publicvariable "publictime";
} , 1, []] call CBA_fnc_addPerFrameHandler;
