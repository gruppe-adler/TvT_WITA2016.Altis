class Vehicles {
    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;

    class UK3CB_CHC_C_Octavia {
        displayName = "Skoda Octavia";
        description = "Seats: 4";
        price = 800;
        stock = 10;
        code = "if (isServer) then {[(_this select 2), ['BLACK',1], true] call BIS_fnc_initVehicle; ['Land_CanisterFuel_F', (_this select 2)] call ace_cargo_fnc_loadItem; (_this select 2) addMagazineCargoGlobal ['50Rnd_570x28_SMG_03', 50]; };";
    };

    class UK3CB_CHC_B_SUV {
        displayName = "SUV";
        description = "Seats: 6";
        price = 3000;
        stock = 10;
        code = "if (isServer) then {[(_this select 2), ['BLACK',1], true] call BIS_fnc_initVehicle; ['Land_CanisterFuel_F', (_this select 2)] call ace_cargo_fnc_loadItem; (_this select 2) addMagazineCargoGlobal ['50Rnd_570x28_SMG_03', 50];};";
    };

    class C_Heli_Light_01_civil_F {
        description = "Seats: 4";
        price = 2000;
        stock = 2;
        code = "if (isServer) then { (_this select 2) disableTIEquipment true;  [(_this select 2), 10] call ace_cargo_fnc_setSpace; [{ ['Land_CanisterFuel_F', _this] call ace_cargo_fnc_loadItem; ['Land_CanisterFuel_F', _this] call ace_cargo_fnc_loadItem; }, (_this select 2), 2] call CBA_fnc_waitAndExecute; [(_this select 2), ['Ion',1], ['AddTread',0,'AddTread_Short',0]] call BIS_fnc_initVehicle; (_this select 2) addMagazineCargoGlobal ['50Rnd_570x28_SMG_03', 50]; };";
    };

    class UK3CB_UN_I_UH1H {
        description = "Seats: 8";
        price = 4000;
        stock = 2;
        code = "if (isServer) then {(_this select 2) disableTIEquipment true; ['Land_CanisterFuel_F', (_this select 2)] call ace_cargo_fnc_loadItem; [(_this select 2), ['BLACK',1], true] call BIS_fnc_initVehicle;};";
        permissionLevel = 1;
    };

    class RHS_MELB_MH6M {
        description = "Seats: 8";
        price = 5000;
        stock = 1;
        code = "if (isServer) then {(_this select 2) disableTIEquipment true; ['Land_CanisterFuel_F', (_this select 2)] call ace_cargo_fnc_loadItem; [(_this select 2), nil, ['AddBobhead',1,'hide_NoFear',0,'hide_SGDM',0,'hide_SN_nose',0,'hide_clan',0]] call BIS_fnc_initVehicle;};";
        permissionLevel = 2;
    };

    

    class Box_NATO_Equip_F {
        displayName = "Armed Boat (M2)";
        description = "2 assault boats in a box that can be loaded into vehicles.";
        code = "if (isServer) then {[_this select 2,'UK3CB_TKA_I_RHIB',2] remoteExec ['wita_buyables_fnc_initBoatBox',0,true]}";
        price = 1500;
        stock = 10;
    };
};
