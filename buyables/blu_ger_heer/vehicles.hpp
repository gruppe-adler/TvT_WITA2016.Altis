class Vehicles {
    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;

    class B_Quadbike_01_F {
        displayName = "Quadbike";
        description = "Seats: 2";
        price = 1000;
        stock = 10;
    };

    class B_Truck_01_transport_F {
        displayName = "HEMTT Transport";
        description = "Seats: 18<br/><br/>";
        price = 4000;
        stock = 10;
    };

  /*/       condition = "WITA_ISWOODLAND";
        displayName = "MH6 Littlebird";
        description = "Seats: 8<br/><br/>";
        price = 10000;
        stock = 2;
    };

    class MH6_Tropentarn: MH6_Flecktarn {
        condition = "!WITA_ISWOODLAND";
    };
/*/

    class RHS_MELB_H6M {
        displayName = "OH6 Littlebird";
        description = "Seats: 2<br/><br/>";
        price = 2000;
        stock = 2;
    };

    class RHS_MELB_MH6M {
        displayName = "MH6 Littlebird";
        description = "Seats: 8<br/><br/>";
        price = 2000;
        stock = 2;
    };












    class Box_NATO_Equip_F {
        displayName = "Assault Boat (x2)";
        description = "2 assault boats in a box that can be loaded into vehicles.";
        code = "if (isServer) then {[_this select 2,'B_Boat_Transport_01_F',2] remoteExec ['wita_buyables_fnc_initBoatBox',0,true]}";
        price = 1500;
        stock = 10;
    };
};
