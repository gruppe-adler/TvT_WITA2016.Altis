private ["_markerPos", "_inner_marker", "_helper_marker"];

trackingPrecision = 60; //marker precision (radius)

gpsSleepTimeMin = 120;
gpsSleepTimeMax = 300;

_markerPos = (getPos _this);

_inner_marker = createMarker ["agentmarker", _markerPos];
_inner_marker setMarkerType "mil_unknown";
_inner_marker setMarkerColor "ColorRed";
_inner_marker setMarkerShape "ELLIPSE";
_inner_marker setMarkerSize [trackingPrecision, trackingPrecision];
_inner_marker setMarkerBrush "Border";



gps_sleep_time = {
gpsSleepTimeMin + floor(random(gpsSleepTimeMax - gpsSleepTimeMin))
};

randomize_coord = {
_this + random(trackingPrecision * 2) - trackingPrecision
};

randomize_pos =
{
private ["_randomizedPos", "_trueX", "_trueY"];
_trueX = _this select 0;
_trueY = _this select 1;
_randomizedPos = [
_trueX call randomize_coord,
_trueY call randomize_coord,
_this select 2
];
_randomizedPos
};

while {alive _this} do {
_markerPos = (getPos _this) call randomize_pos;
_inner_marker setMarkerPos _markerPos;
_pulsespeed = 0.02;
_pulsesize = 0.01;
_pulseMaxSize = 400;
_modifier = 0.3;
_pulseDelayBetween = 1;
_sleepTime = call gps_sleep_time;
_currentTime = time;
	while {time - _currentTime  < _sleepTime} do
		{
			if (_pulsesize > _pulseMaxSize) then
			{
				_pulsesize = 0.01;
				_modifier = 0.3;
				sleep _pulseDelayBetween;
			};

			_pulsesize = _pulsesize + _modifier;
			_modifier = _modifier + 0.1;
			_inner_marker setMarkerAlphaLocal 1 - (_pulsesize/_pulseMaxSize);
			_inner_marker setMarkerSizeLocal [_pulsesize, _pulsesize];

			sleep _pulseSpeed;
		};
};
