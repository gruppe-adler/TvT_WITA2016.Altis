params ['_centerPos','_centerDir'];

_veh = 'Land_Boat_02_abandoned_F' createVehicle [0,0,0];
_veh setDir (255.743-_centerDir);
_veh setPos (_centerPos vectorAdd [-0.0898438,-2.36914,-0.113458]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_FishingGear_02_F' createVehicle [0,0,0];
_veh setDir (192.944-_centerDir);
_veh setPos (_centerPos vectorAdd [-2.72656,-1.22656,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;
