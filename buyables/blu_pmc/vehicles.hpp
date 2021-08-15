class Vehicles {
    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;

    class UK3CB_CHC_C_Octavia {
        displayName = "Skoda Octavia";
        description = "Seats: 4";
        price = 800;
        stock = 10;
        code = "if (isServer) then {[(_this select 2), ['BLACK',1], true] call BIS_fnc_initVehicle;};";
    };

    class UK3CB_CHC_B_SUV {
        displayName = "SUV";
        description = "Seats: 6";
        price = 4000;
        stock = 10;
        code = "if (isServer) then {[(_this select 2), ['BLACK',1], true] call BIS_fnc_initVehicle;};";
    };

    class C_Heli_Light_01_civil_F {
        description = "Seats: 4";
        price = 2000;
        stock = 2;
        code = "if (isServer) then {(_this select 2) disableTIEquipment true; [(_this select 2), ['Ion',1], ['AddTread',0,'AddTread_Short',0]] call BIS_fnc_initVehicle;};";
        permissionLevel = 1;
    };

    class UK3CB_UN_I_UH1H {
        description = "Seats: 8";
        price = 5000;
        stock = 2;
        code = "if (isServer) then {(_this select 2) disableTIEquipment true; [(_this select 2), ['BLACK',1], true] call BIS_fnc_initVehicle;};";
        permissionLevel = 2;
    };

    class Box_NATO_Equip_F {
        displayName = "Armed Fisher Boat (Dshkm)";
        description = "2 assault boats in a box that can be loaded into vehicles.";
        code = "if (isServer) then {[_this select 2,'UK3CB_NAP_B_Fishing_Boat_DSHKM',2] remoteExec ['wita_buyables_fnc_initBoatBox',0,true]}";
        price = 1500;
        stock = 10;
    };
};
