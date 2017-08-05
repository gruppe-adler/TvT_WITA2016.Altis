/*  Validation (copy to debug console):
    ([missionConfigFile >> "cfgCacheContents", "riflesWest", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "riflesEast", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "handguns", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "launchers", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "accessoriesWest", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "accessoriesEast", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "sightsWest", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "sightsEast", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "scopesWest", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "scopesEast", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "grenades", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "items", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "medical", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
    ([missionConfigFile >> "cfgCacheContents", "backpacks", []] call BIS_fnc_returnConfigEntry) execVM "validateItems.sqf";
*/

class cfgCacheContents {
    riflesWest[] = {
        "rhs_weap_ak103_npz",
        "rhs_weap_ak104_npz",
        "rhs_weap_ak105_npz",
        "hgun_PDW2000_F",
        "arifle_Mk20_F",
        "arifle_Mk20C_plain_F",
        "SMG_02_F",
        "arifle_TRG21_F",
        "SMG_05_F",
        "rhs_weap_svdp_npz",
        "rhs_weap_m21a_pr",
        "rhs_weap_m21s_pr",
        "rhs_weap_hk416d10",
        "rhs_weap_hk416d10_LMT_wd",
        "rhs_weap_hk416d145",
        "rhs_weap_m14ebrri",
        "rhs_weap_m16a4",
        "rhs_weap_m16a4_carryhandle_pmag",
        "rhs_weap_m240B",
        "rhs_weap_m240G",
        "rhs_weap_m249_pip_L",
        "rhs_weap_m249_pip_S_para",
        "rhs_weap_m27iar",
        "rhs_weap_m4",
        "rhs_weap_m4_carryhandle_mstock",
        "rhs_weap_m4_pmag",
        "rhs_weap_m4a1_blockII",
        "rhs_weap_m4a1_blockII_KAC_d",
        "rhs_weap_m4a1_blockII_KAC_wd",
        "rhs_weap_m4a1_mstock",
        "rhs_weap_M590_8RD",
        "rhs_weap_M590_5RD",
        "rhs_weap_sr25_ec",
        "rhs_weap_sr25_ec_wd",
        "rhs_weap_mk18_KAC_bk",
        "rhs_weap_mk18_wd",
        "rhsusf_weap_MP7A2",
        "rhs_weap_g36c",
        "rhs_weap_g36kv"
    };

    sniperWest[] ={
        "srifle_LRR_F",
        "rhs_weap_svdp_wd_npz",
        "rhs_weap_t5000",
        "rhs_weap_M107_w",
        "rhs_weap_XM2010",
        "rhs_weap_XM2010_d",
        "rhs_weap_m24sws_blk",
        "rhs_weap_m24sws_ghillie",
        "rhs_weap_m40a5",
        "rhs_weap_m40a5_d",
        "rhs_weap_m38_rail"
    };


    riflesEast[] = {
        "rhs_weap_ak103_1",
        "rhs_weap_ak104",
        "rhs_weap_ak105",
        "rhs_weap_ak74",
        "rhs_weap_ak74_2",
        "rhs_weap_ak74m_2mag",
        "rhs_weap_ak74m_camo",
        "rhs_weap_ak74m_fullplum",
        "rhs_weap_ak74n",
        "rhs_weap_akms",
        "rhs_weap_akm",
        "rhs_weap_aks74",
        "rhs_weap_aks74n",
        "rhs_weap_aks74u",
        "rhs_weap_aks74un",
        "rhs_weap_asval",
        "rhs_weap_pkm",
        "rhs_weap_pkp",
        "rhs_weap_pp2000",
        "rhs_weap_vss",
        "rhs_weap_m21a",
        "rhs_weap_m21s",
        "rhs_weap_m70ab2",
        "rhs_weap_m70b1",
        "rhs_weap_m92",
        "rhs_weap_m38",
        "rhs_weap_m70b1n",
        "rhs_weap_m84"
    };

    sniperEast[] = {
        "rhs_weap_asval",
        "rhs_weap_svds",
        "rhs_weap_vss"
    };

    handguns[] = {
        "hgun_Pistol_heavy_02_F",
        "hgun_ACPC2_F",
        "hgun_Pistol_heavy_01_F",
        "rhsusf_weap_glock17g4",
        "rhsusf_weap_m1911a1",
        "rhs_weap_M320",
        "rhsusf_weap_m9",
        "rhs_weap_pya",
        "hgun_Rook40_F",
        "hgun_P07_F",
        "rhs_weap_makarov_pm",
        "rhs_weap_pp2000_folded",
        "rhs_weap_rsp30_white",
        "hgun_Pistol_Signal_F",
        "rhs_weap_tr8"
    };

    launchersWest[] = {
        "rhs_weap_fgm148",
        "rhs_weap_fim92",
        "rhs_weap_M136",
        "rhs_weap_M136_hedp",
        "rhs_weap_M136_hp",
        "rhs_weap_m72a7",
        "rhs_weap_smaw"
    };

    launchersEast[] = {
        "rhs_weap_igla",
        "rhs_weap_strela",
        "rhs_weap_rpg7",
        "rhs_weap_rpg26",
        "rhs_weap_rshg2"
    };

    accessoriesWest[] = {
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

    accessoriesEast[] = {
    	"rhs_acc_pbs1",
    	"rhs_acc_tgpv",
    	"rhs_acc_dtk4short",
    	"rhs_acc_dtk4long",
    	"rhs_acc_dtk3",
    	"rhs_acc_dtk",
    	"rhs_acc_dtk1l",
    	"rhs_acc_ak5",
    	"rhs_acc_2dpZenit"
    };

    sightsWest[] = {
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

    sightsEast[] = {
        "rhs_acc_pkas",
    	"rhs_acc_1p63",
     	"rhs_acc_ekp1",
    	"rhs_acc_1p78",
    	"rhs_acc_1pn93_2"
    };

    scopesWest[] = {
        "FHQ_optic_ACOG",
        "FHQ_optic_ACOG_tan",
        "rhsusf_acc_ACOG2_USMC",
        "rhsusf_acc_ACOG_USMC",
        "optic_Arco",
        "optic_ERCO_blk_F",
        "rhsusf_acc_ELCAN",
        "rhsusf_acc_ACOG",
        "optic_MRCO",
        "optic_Hamr",
        "rhsusf_acc_SpecterDR",
        "rhsusf_acc_ACOG_RMR",
        "rhsusf_acc_ACOG_wd",
        "FHQ_optic_VCOG"
    };

    scopesEast[] = {
        "rhs_acc_1p29",
        "rhs_acc_1p78",
        "rhs_acc_nita",
        "rhs_acc_pgo7v"
    };

    sniperScopesWest[]={
        "rhs_acc_dh520x56",
        "optic_DMS",
        "FHQ_optic_LeupoldERT",
        "optic_LRPS",
        "rhsusf_acc_M8541",
        "rhsusf_acc_premier",
        "rhsusf_acc_LEUPOLDMK4",
        "rhsusf_acc_LEUPOLDMK4_2",
        "rhsusf_acc_LEUPOLDMK4_2_d",
        "optic_SOS",
        "rhsusf_acc_ACOG_MDO"
    };

    sniperScopesEast[]={
        "rhs_acc_pso1m2",
        "rhs_acc_pso1m21"
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

    items[] = {
        "NVGoggles",
    	"NVGoggles_OPFOR",
    	"ACE_ATragMX",
        "ACE_DeadManSwitch",
        "ACE_DefusalKit",
        "ACE_EntrenchingTool",
        "ACE_Kestrel4500",
        "ACE_M26_Clacker",
        "ACE_Clacker",
        "ACE_Flashlight_XL50",
        "ACE_RangeCard",
        "ACE_SpottingScope",
        "ACE_Tripod",
        "ACE_wirecutter",
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
