params ["_pos"];

private _worldRadius = worldSize/2;


_pos inArea [[_worldRadius,_worldRadius,0], _worldRadius, _worldRadius, 0, true]
