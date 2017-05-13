class Vehicles {
    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;

    class B_Quadbike_01_F {
        displayName = "Quadbike";
        description = "Seats: 2";
        price = 800;
        stock = 10;
    };

    class rhsusf_m1025_w {
        condition = "WITA_ISWOODLAND";
        displayName = "HMMWV (unarmed)";
        description = "Seats: 4";
        price = 2000;
        stock = 10;
    };

    class rhsusf_m1025_d: rhsusf_m1025_w {
        condition = "!WITA_ISWOODLAND";
    };

    class rhsusf_m998_w_2dr_halftop {
        condition = "WITA_ISWOODLAND";
        displayName = "HMMWV (2D/Open)";
        description = "Seats: 8";
        price = 1800;
        stock = 10;
    };

    class rhsusf_m998_d_2dr_halftop: rhsusf_m998_w_2dr_halftop {
        condition = "!WITA_ISWOODLAND";
    };

    class rhsusf_m1025_w_m2 {
        condition = "WITA_ISWOODLAND";
        displayName = "HMMWV (M2)";
        description = "Seats: 5";
        price = 4000;
        stock = 10;
    };

    class rhsusf_m1025_d_m2: rhsusf_m1025_w_m2 {
        condition = "!WITA_ISWOODLAND";
    };

    class I_Heli_light_03_unarmed_F {
        description = "Seats: 8";
        price = 5000;
        stock = 1;
        code = "if (isServer) then {(_this select 2) disableTIEquipment true};";
    };

    class Box_NATO_Equip_F {
        displayName = "Assault Boat (x2)";
        description = "2 assault boats in a box that can be loaded into vehicles.";
        code = "if (isServer) then {[_this select 2,'B_Boat_Transport_01_F',2] remoteExec ['uo_buyables_fnc_initBoatBox',0,true]}";
        price = 1500;
        stock = 10;
    };
};
