params ["_crate"];

private _weaponsLoot = [missionConfigFile >> "cfgCrates", "weapons", []] call BIS_fnc_returnConfigEntry;
private _itemsLoot = [missionConfigFile >> "cfgCrates", "items", []] call BIS_fnc_returnConfigEntry;
private _backpacksLoot = [missionConfigFile >> "cfgCrates", "backpacks", []] call BIS_fnc_returnConfigEntry;
private _medicalLoot = [missionConfigFile >> "cfgCrates", "medical", []] call BIS_fnc_returnConfigEntry;
private _grenadeLoot = [missionConfigFile >> "cfgCrates", "grenades", []] call BIS_fnc_returnConfigEntry;
private _weaponAccessoryLoot = [missionConfigFile >> "cfgCrates", "accessories", []] call BIS_fnc_returnConfigEntry;
private _sightsLoot = [missionConfigFile >> "cfgCrates", "sights", []] call BIS_fnc_returnConfigEntry;


//Waffen, Items und co werden random aus Array ausgesucht
_selectedWeapon = _weaponsLoot call BIS_fnc_selectRandom;
_selectedItem = _itemsLoot call BIS_fnc_selectRandom;
_selectedBackpack = _backpacksLoot call BIS_fnc_selectRandom;
_selectedMedical = _medicalLoot call BIS_fnc_selectRandom;
_selectedGrenade = _grenadeLoot call BIS_fnc_selectRandom;
_selectedAccessory = _weaponAccessoryLoot call BIS_fnc_selectRandom;
_selectedSight = _sightsLoot call BIS_fnc_selectRandom;


_magazineList = [];
//Suchen des richtigen Magazins
_weapon = _selectedWeapon;
_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
_magazineList = _magazineList + _magazines;

//Passendes Magazin wird random aus passenden Magazinen ausgewählt
_selectedMag = _magazineList call BIS_fnc_selectRandom;

//Kiste wird gecleared
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

//1-2 Wafen werden in die Kiste getan
_randomWeaponNumber = ceil (random 2);
_crate addWeaponCargoGlobal [_selectedWeapon, _randomWeaponNumber];
//0-2 Items werden in die Kiste getan
_randomItemNumber = floor (random 3);
_crate addItemCargoGlobal [_selectedItem, _randomItemNumber];
//1-6 Magazine werden in die Kiste getan
_randomMagNumber = ceil (random 6);
_crate addMagazineCargoGlobal [_selectedMag, _randomMagNumber];
//0-2 Backpacks werden in die Kiste getan
_randomBPNumber = floor (random 3);
_crate addBackpackCargoGlobal [_selectedBackpack, _randomBPNumber];
//1-15 Medicalzeug wird in die Kiste getan
_randomMedicalNumber = ceil (random 15);
_crate addItemCargoGlobal [_selectedMedical, _randomMedicalNumber];
//Medical zeug wird nocheinmal neu random ausgewählt
_selectedMedical = _medicalLoot call BIS_fnc_selectRandom;
//1-10 Medicalzeug wird in die Kiste getan
_randomMedicalNumber = ceil (random 10);
_crate addItemCargoGlobal [_selectedMedical, _randomMedicalNumber];
//0-2 Granaten werden in die Kiste getan
_randomGrenadeNumber = floor (random 3);
_crate addItemCargoGlobal [_selectedGrenade, _randomGrenadeNumber];
//0-2 Accessorys werden in die Kiste getan
_randomAccNumber = floor (random 3);
_crate addItemCargoGlobal [_selectedAccessory, _randomAccNumber];
//0-2 Sights werden in die Kiste getan
_randomSightNumber = floor (random 3);
_crate addItemCargoGlobal [_selectedSight, _randomSightNumber];

/*

dann aus dem array ne knarre raussuchen - zB _selectedWeapon = _allWeaponsArray call BIS_fnc_selectRandom;
13:31
dann diods magazine-search anwenden
13:31
dann kiste füllen
13:31
_crate addWeaponCargoGlobal _selectedWeapon;
13:31
(mit _crate greifst du in der SQF die übergebene kiste auf)
13:31
so vom konzept, hab jetzt keine zeit alles runterzuschreiben
*/


/*

weiß net genau, probier mal floor statt ceil
14:46
dann müsste er 0 mit ausgeben und nur hoch bis 4 gehen
14:47
denke er sollte es fressen, wenn du sagst "addweapon 0x" :smile:
14:48
ich sag mal ganz primitiv könntest du auch die wahrscheinlichkeit so bestimmen:
_10percent = [0,0,0,0,0,0,0,0,0,1];
14:49
_value = _10percent call BIS_fnc_selectRandom;
14:49
dann wär jedes 10. ca ne 1
14:49
gäbe auch andere wege mit if-then
14:49
bspw. if (random 9 > 10) then {...}
14:50
aber denke die primitive methode passt hier fast besser


*/
