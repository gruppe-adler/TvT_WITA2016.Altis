while {alive _this} do {
_marker = createMarker ["Marker", player];

msize = 20;


_marker setMarkerType "mil_unknown";
_marker setMarkerColor "ColorRed";
_marker setMarkerShape "ELLIPSE";
_marker setMarkerSize [msize, msize];
_marker setMarkerBrush "Border";

};