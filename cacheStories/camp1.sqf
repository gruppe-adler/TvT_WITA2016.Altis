params ['_centerPos','_centerDir'];

_veh = 'Land_CampingChair_V1_folded_F' createVehicle [0,0,0];
_veh setDir (197.18-_centerDir);
_veh setPos (_centerPos vectorAdd [-2.24414,2.03125,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_Campfire_F' createVehicle [0,0,0];
_veh setDir (74.99-_centerDir);
_veh setPos (_centerPos vectorAdd [-2.98633,-0.505859,-0.0285604]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_CampingChair_V1_folded_F' createVehicle [0,0,0];
_veh setDir (325.294-_centerDir);
_veh setPos (_centerPos vectorAdd [-3.26563,1.58594,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_TentA_F' createVehicle [0,0,0];
_veh setDir (412.574-_centerDir);
_veh setPos (_centerPos vectorAdd [-1.70313,-3.32227,-0.00954127]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_WoodenLog_F' createVehicle [0,0,0];
_veh setDir (434.986-_centerDir);
_veh setPos (_centerPos vectorAdd [-3.58203,-3.80078,-0.0225646]);
_veh setDamage 0;
_veh enableSimulation false;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_WoodenLog_F' createVehicle [0,0,0];
_veh setDir (434.987-_centerDir);
_veh setPos (_centerPos vectorAdd [-2.89844,-4.50781,-0.0225646]);
_veh setDamage 0;
_veh enableSimulation false;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_TentDome_F' createVehicle [0,0,0];
_veh setDir (101.148-_centerDir);
_veh setPos (_centerPos vectorAdd [-5.81445,1.47852,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_TentA_F' createVehicle [0,0,0];
_veh setDir (117.829-_centerDir);
_veh setPos (_centerPos vectorAdd [-5.38086,-2.71094,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;
