params ['_centerPos','_centerDir'];

_veh = 'rhs_vdv_rifleman' createVehicle [0,0,0];
_veh setDir (500.707-_centerDir);
_veh setPos (_centerPos vectorAdd [-2.28125,4.11328,0.00234032]);
_veh setDamage 1;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Oil_Spill_F' createVehicle [0,0,0];
_veh setDir (143.327-_centerDir);
_veh setPos (_centerPos vectorAdd [-3.42383,4.99414,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Oil_Spill_F' createVehicle [0,0,0];
_veh setDir (424.424-_centerDir);
_veh setPos (_centerPos vectorAdd [-4.01172,5.30859,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'Oil_Spill_F' createVehicle [0,0,0];
_veh setDir (424.424-_centerDir);
_veh setPos (_centerPos vectorAdd [-3.98633,6.13477,0.00143886]);
_veh setDamage 0;
[_veh] call wita_common_fnc_emptyContainer;

_veh = 'rhs_gaz66_repair_vmf' createVehicle [0,0,0];
_veh setDir (143.332-_centerDir);
_veh setPos (_centerPos vectorAdd [-4.40039,5.72852,0.00305247]);
_veh setHitPointDamage ['HitBody',0.562683];
_veh setHitPointDamage ['HitFuel',0.130057];
_veh setHitPointDamage ['HitEngine',0.455007];
_veh setHitPointDamage ['HitRGlass',0.679972];
_veh setHitPointDamage ['HitLGlass',0.579988];
_veh setHitPointDamage ['HitGlass1',0.668436];
_veh setHitPointDamage ['HitGlass2',0.568451];
_veh setHitPointDamage ['HitGlass3',0.566528];
_veh setHitPointDamage ['HitGlass4',0.556914];
_veh setHitPointDamage ['HitGlass5',0.562683];
_veh setHitPointDamage ['HitGlass6',0.435779];
_veh setHitPointDamage ['HitLBWheel',0.40886];
_veh setHitPointDamage ['HitRMWheel',0.401169];
_veh setHitPointDamage ['HitHull',0.681895];
_veh setHitPointDamage ['',0.670358];
_veh setHitPointDamage ['',0.679972];
_veh setHitPointDamage ['',0.653053];
_veh setHitPointDamage ['',0.622289];
_veh setHitPointDamage ['',0.497308];
_veh setHitPointDamage ['',0.656899];
_veh setHitPointDamage ['',0.653053];
[_veh] call wita_common_fnc_emptyContainer;

