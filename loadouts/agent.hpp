class agent {
	class AllUnits {
        primaryWeapon = "rhs_weap_ak105";
		primaryWeaponMagazine = "rhs_30Rnd_545x39_AK";
		primaryWeaponMuzzle = "rhs_acc_dtk";
		primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		secondaryWeapon = "";
		handgunWeapon = "rhsusf_weap_m9";
		handgunWeaponMagazine = "rhsusf_mag_15Rnd_9x19_JHP";
		uniform = "";
        vest = "";
		backpack = "";
		headgear = "";
		nvgoggles = "";
		radio = "tf_fadak";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            LIST_5("ACE_morphine"),
            LIST_10("ACE_fieldDressing"),
			LIST_2("ACE_key_lockpick")
        };
        addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {

		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {

		};

        //light AT
		class Soldier_LAT_F: Soldier_F {

		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {

		};

        //BODYGUARD
		class Medic_F: Soldier_F {
            uniform = "U_BG_Guerrilla_6_1";
            vest = "V_TacVest_oli";
            headgear = "rhsusf_opscore_fg";

            addItemsToVest[] = {
                LIST_4("rhs_30Rnd_545x39_AK"),
                LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
                LIST_1("ACE_HandFlare_White"),
                LIST_1("rhs_mag_nspd")
            };
		};

        //AGENT
        class Soldier_SL_F: Soldier_F {
            primaryWeaponOptics = "rhs_acc_pgs64";
            uniform = "U_BG_Guerilla1_1";
            vest = "V_BandollierB_oli";
            headgear = "H_MilCap_dgtl";

            addItemsToVest[] = {
                LIST_4("rhs_30Rnd_545x39_AK"),
                LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
                LIST_1("ACE_HandFlare_White"),
                LIST_1("rhs_mag_nspd")
            };
        };

        //team leader
		class Soldier_TL_F: Soldier_F {

		};
	};

	class Rank {
		class LIEUTENANT {

		};
	};
};
