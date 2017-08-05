params ['_centerPos','_centerDir'];

_veh = 'Oil_Spill_F' createVehicle [0,0,0];
_veh setDir (197.138-_centerDir);
_veh setPos (_centerPos vectorAdd [0.783203,-3.80273,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Oil_Spill_F' createVehicle [0,0,0];
_veh setDir (71.2345-_centerDir);
_veh setPos (_centerPos vectorAdd [-2.50195,-2.50195,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'rhs_uaz_open_vdv' createVehicle [0,0,0];
_veh setDir (172.448-_centerDir);
_veh setPos (_centerPos vectorAdd [-3.63086,-0.894531,0.0448086]);
_veh setHitPointDamage ['HitRFWheel',1];
_veh setHitPointDamage ['HitBody',0.0261842];
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_Shovel_F' createVehicle [0,0,0];
_veh setDir (387.572-_centerDir);
_veh setPos (_centerPos vectorAdd [-4.04492,0.0273438,-0.0425124]);
_veh setDamage 0;
_veh enableSimulation false;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_Garbage_square5_F' createVehicle [0,0,0];
_veh setDir (169.435-_centerDir);
_veh setPos (_centerPos vectorAdd [-4.88867,-1.06055,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_DuctTape_F' createVehicle [0,0,0];
_veh setDir (71.2398-_centerDir);
_veh setPos (_centerPos vectorAdd [-5.53906,0.285156,-0.0225613]);
_veh setDamage 0;
_veh enableSimulation false;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_Hammer_F' createVehicle [0,0,0];
_veh setDir (71.6013-_centerDir);
_veh setPos (_centerPos vectorAdd [-5.58984,0.583984,-0.00857496]);
_veh setDamage 0;
_veh enableSimulation false;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Land_Tyre_F' createVehicle [0,0,0];
_veh setDir (71.2413-_centerDir);
_veh setPos (_centerPos vectorAdd [-5.9375,0.816406,-0.018265]);
_veh setDamage 0;
_veh enableSimulation false;
[_veh] call wita_common_fnc_emptyContainer;
