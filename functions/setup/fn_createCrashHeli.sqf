params ["_officerPos"];

private _heli = "RHS_Mi8mt_Cargo_vv" createVehicle [0,0,0];
_heli setPos [(_officerPos select 0) - 20, (_officerPos select 1) + 20, 0];
_heli setVehicleAmmo 0;
_heli setDamage [1,false];

private _ground = createVehicle ["CraterLong", getPos _heli, [], 0, "CAN_COLLIDE"];
