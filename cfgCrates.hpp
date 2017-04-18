/*  Validation (copy to debug console):
    ([missionConfigFile >> "cfgCrates", "weapons", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCrates", "items", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCrates", "backpacks", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCrates", "medical", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCrates", "grenades", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCrates", "accessories", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCrates", "sights", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
*/

class cfgCrates {
    weapons[] = {
        "arifle_MX_F",
    	"arifle_MX_GL_F",
    	"arifle_MXC_F",
    	"arifle_Katiba_F",
    	"arifle_Katiba_C_F",
    	"arifle_Katiba_GL_F",
    	"arifle_TRG21_F",
    	"arifle_TRG20_F",
    	"arifle_TRG21_GL_F",
    	"arifle_Mk20_F",
    	"arifle_Mk20C_F",
    	"arifle_Mk20_GL_F",
    	"SMG_01_F",
    	"SMG_02_F",
    	"hgun_PDW2000_F",


    	"rhs_weap_ak74m",
    	"rhs_weap_ak74m_camo",
    	"rhs_weap_ak105",
    	"rhs_weap_ak74m_desert_npz",
    	"rhs_weap_ak74m_camo_npz",
    	"rhs_weap_akms",
    	"rhs_weap_ak104",
    	"rhs_weap_ak104_npz",
    	"rhs_weap_m4",
    	"rhs_weap_m4a1_carryhandle",
    	"rhs_weap_m4a1_carryhandle_grip2",
    	"rhs_weap_m16a4",
    	"rhs_weap_m4_m203",
    	"rhs_weap_m16a4_carryhandle_M203",
    	"rhs_weap_M590_5RD",
    	"rhs_weap_M590_8RD",


    	"hgun_P07_snds_F",
    	"hgun_Rook40_F",
    	"hgun_Rook40_snds_F",
    	"hgun_ACPC2_F",
    	"hgun_ACPC2_snds_F",

    	"rhsusf_weap_m1911a1",
    	"rhsusf_weap_glock17g4",
    	"rhsusf_weap_m9"
    };

    items[] = {
        "NVGoggles",
    	"NVGoggles_OPFOR",
    	"ACE_MapTools",
    	"ACE_Clacker",
    	"ACE_DefusalKit",
    	"ACE_M26_Clacker",
    	"ACE_Flashlight_MX991",
    	"ACE_Flashlight_KSF1",
    	"ACE_RangeCard",
    	"Binocular",
    	"Laserdesignator_03",
    	"ACE_Vector"
    };

    medical[] = {
        "ACE_fieldDressing",
    	"ACE_morphine",
    	"ACE_epinephrine",
    	"ACE_bloodIV_250"
    };

    grenades[] = {
        "HandGrenade",
    	"SmokeShell",
    	"SmokeShellYellow",
    	"SmokeShellRed",
    	"SmokeShellPurple",
    	"SmokeShellOrange",
    	"Chemlight_green",
    	"Chemlight_yellow",
    	"rhs_mag_rgd5",
    	"rhs_mag_rgn",
    	"rhs_mag_rgo",
    	"rhs_mag_rdg2_white",
    	"rhs_mag_rdg2_black",
    	"rhs_mag_nspd",
    	"rhs_mag_m67",
    	"rhs_mag_an_m8hc",
    	"APERSTripMine_Wire_Mag"
    };

    accessories[] = {
        "muzzle_snds_M",
    	"muzzle_snds_acp",
    	"muzzle_snds_H",
    	"muzzle_snds_L",
    	"muzzle_snds_B",
    	"bipod_01_F_snd",
    	"bipod_01_F_blk",
    	"bipod_01_F_mtp",
    	"muzzle_snds_338_black",
    	"muzzle_snds_93mmg",
    	"rhs_acc_pbs1",
    	"rhs_acc_tgpv",
    	"rhs_acc_dtk4short",
    	"rhs_acc_dtk4long",
    	"rhs_acc_dtk3",
    	"rhs_acc_dtk",
    	"rhs_acc_dtk1l",
    	"rhs_acc_ak5",
    	"rhs_acc_2dpZenit",
    	"rhsusf_acc_anpeq15A",
    	"rhsusf_acc_anpeq15_light",
    	"rhsusf_acc_SR25S",
    	"rhsusf_acc_rotex5_grey",
    	"rhsusf_acc_nt4_black",
    	"rhsusf_acc_SF3P556",
    	"rhsusf_acc_SFMB556",
    	"FHQ_acc_ANPEQ15_black",
    	"FHQ_acc_LLM01L",
    	"ACE_muzzle_mzls_H",
    	"ACE_muzzle_mzls_B",
    	"ACE_muzzle_mzls_L",
    	"ACE_muzzle_mzls_smg_01",
    	"ACE_muzzle_mzls_smg_02"
    };

    sights[] = {
        "rhs_acc_pkas",
    	"rhs_acc_1p63",
    	"rhs_acc_ekp1",
    	"rhs_acc_1p78",
    	"rhs_acc_1pn93_2",
    	"optic_Aco_smg",
    	"optic_ACO_grn_smg",
    	"optic_Holosight_smg",
    	"optic_Yorris",
    	"optic_Aco",
    	"optic_ACO_grn",
    	"optic_Holosight",
    	"rhsusf_acc_compm4",
    	"rhsusf_acc_eotech_552",
    	"FHQ_optic_AIM",
    	"FHQ_optic_AIM_tan",
    	"FHQ_optic_HWS_G33",
    	"FHQ_optic_HWS_G33_tan",
    	"FHQ_optic_HWS_tan",
    	"FHQ_optic_HWS",
    	"FHQ_optic_MicroCCO",
    	"FHQ_optic_MicroCCO_tan",
    	"FHQ_optic_MicroCCO_low",
    	"FHQ_optic_MicroCCO_low_tan",
    	"FHQ_optic_AC11704",
    	"FHQ_optic_AC11704_tan",
    	"FHQ_optic_AC12136",
    	"FHQ_optic_AC12136_tan",
    	"FHQ_optic_MARS",
    	"FHQ_optic_MARS_tan",
    	"FHQ_optic_AimM_BLK",
    	"FHQ_optic_AimM_TAN",
    	"FHQ_optic_MCCO_M_BLK",
    	"FHQ_optic_MCCO_M_TAN"
    };

    backpacks[] = {
        "B_AssaultPack_cbr",
    	"B_AssaultPack_dgtl",
    	"B_AssaultPack_rgr",
    	"B_AssaultPack_ocamo",
    	"B_AssaultPack_khk",
    	"B_Carryall_cbr",
    	"B_Carryall_khk",
    	"B_Carryall_oli",
    	"B_FieldPack_blk",
    	"B_FieldPack_cbr",
    	"B_FieldPack_khk",
    	"B_Kitbag_rgr",
    	"B_Kitbag_cbr",
    	"rhs_rpg_empty",
    	"B_TacticalPack_blk",
    	"B_TacticalPack_rgr",
    	"B_TacticalPack_oli",
    	"rhs_assault_umbts",
    	"rhs_sidor"
    };
};
