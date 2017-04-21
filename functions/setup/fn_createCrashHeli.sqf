#include "component.hpp"

params ["_agentPos"];

private _heliPosition = [_agentPos,[missionConfigFile >> "cfgMission", "heliDistance",[20,100]] call BIS_fnc_returnConfigEntry] call wita_common_fnc_findRandomPos;
if (_agentPos distance _heliPosition < 5) exitWith {objNull};

private _heli = "RHS_Mi8mt_Cargo_vv" createVehicle [0,0,0];
_heli setPos [_heliPosition select 0, _heliPosition select 1, 0];
_heli setVehicleAmmo 0;
_heli setVariable ["ace_cookoff_enable", false, true];
_heli spawn {
    sleep 1;
    _this setDamage [1,false];
    sleep 2;
    [_this] call wita_common_fnc_createSmoke;
};

private _ground = createVehicle ["CraterLong", getPos _heli, [], 0, "CAN_COLLIDE"];

_heli
