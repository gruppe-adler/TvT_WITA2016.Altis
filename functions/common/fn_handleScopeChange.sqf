#include "component.hpp"

params ["_unit","_container","_itemType"];

private _containerPos = getPosASL _container;

//check if item is scope
private _cfgOpticsModes = (configfile >> "CfgWeapons" >> _itemType >> "ItemInfo" >> "OpticsModes");
if !(isClass _cfgOpticsModes) exitWith {};

//check if scope is in sniper scopes
if (isNil "wita_caches_sniperScopes") then {
    wita_caches_sniperScopes = [missionConfigFile >> "cfgCacheContents","sniperScopesWest",[]] call BIS_fnc_returnConfigEntry;
    wita_caches_sniperScopes append ([missionConfigFile >> "cfgCacheContents","sniperScopesEast",[]] call BIS_fnc_returnConfigEntry);
};
if !(_itemType in wita_caches_sniperScopes) exitWith {};

//check if weapon is allowed to have magnifying
if (isNil "wita_caches_snipers") then {
    wita_caches_snipers = [missionConfigFile >> "cfgCacheContents","sniperWest",[]] call BIS_fnc_returnConfigEntry;
    wita_caches_snipers append ([missionConfigFile >> "cfgCacheContents","sniperEast",[]] call BIS_fnc_returnConfigEntry);
};
if ((primaryWeapon _unit) in wita_caches_snipers) exitWith {};


//handle scope
if (_itemType in (primaryWeaponItems _unit)) then {

    _unit removePrimaryWeaponItem _itemType;

    _unit say "AddItemFailed";
    systemChat "You cannot mount this scope on your weapon.";

    //taken from ground
    switch (true) do {
        case (_container in [uniformContainer _unit, vestContainer _unit, backpackContainer _unit]): {
            if (isNull _container) then {_container = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_Collide"]; _container setPosASL _containerPos};
            _container addItemCargoGlobal [_itemType, 1];
        };
        case (_unit canAddItemToUniform _itemType): {
            _unit addItemToUniform _itemType;
        };
        case (_unit canAddItemToVest _itemType): {
            _unit addItemToVest _itemType;
        };
        case (_unit canAddItemToBackpack _itemType): {
            _unit addItemToBackpack _itemType;
        };
        default {
            if (isNull _container) then {_container = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_Collide"]; _container setPosASL _containerPos};
            _container addItemCargoGlobal [_itemType, 1];
        };
    };
};
