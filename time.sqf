private "_time";
_time = 0;

while {_time < 86400} do {
	sleep 1;
	_time = _time + 1;
	publictime = _time;
	publicvariable "publictime";
};
