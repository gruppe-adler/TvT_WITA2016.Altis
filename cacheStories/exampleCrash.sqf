params ["_centerPos","_centerDir"];

_veh = "C_Offroad_01_F" createVehicle [0,0,0];
_veh setDir (116.432 + _centerDir);
_veh setPos (_centerPos getPos [2.55853,189.283+_centerDir]);
_veh setDamage 0.6;
[_veh] call wita_common_fnc_emptyContainer;

_veh = "rhsusf_m1025_w" createVehicle [0,0,0];
_veh setDir (225.219 + _centerDir);
_veh setPos (_centerPos getPos [3.34128,84.8237+_centerDir]);
_veh setDamage 0.5;
_veh setHitPointDamage ["HitLFWheel", 1];
_veh setHitPointDamage ["HitRFWheel", 1];
[_veh] call wita_common_fnc_emptyContainer;
