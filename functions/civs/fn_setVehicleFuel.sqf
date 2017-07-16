#include "component.hpp"

params ["_veh"];

([missionConfigFile >> "cfgMission" >> "civVehicles","randomFuel",1] call BIS_fnc_returnConfigEntry) params ["_fuelMin","_fuelMax"];

_veh setFuel ((random (_fuelMax - _fuelMin)) - _fuelMin);
