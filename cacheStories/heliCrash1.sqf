params ['_centerPos','_centerDir'];

_veh = 'Oil_Spill_F' createVehicle [0,0,0];
_veh setDir (213.964-_centerDir);
_veh setPos (_centerPos vectorAdd [3.81641,0.65625,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'BlackhawkWreck' createVehicle [0,0,0];
_veh setDir (213.964-_centerDir);
_veh setPos (_centerPos vectorAdd [4.63281,2.32422,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Oil_Spill_F' createVehicle [0,0,0];
_veh setDir (451.411-_centerDir);
_veh setPos (_centerPos vectorAdd [3.52344,3.7793,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;
