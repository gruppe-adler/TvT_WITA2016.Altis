#include "component.hpp"

params ["_vehicle"];

private _fnc_onGetIn = {
    params ["_vehicle","_seat","_unit"];

    if (local _vehicle && {_vehicle isKindOf "Air"} && {side _unit == INDEPENDENT}) then {
        _fuelSet = [missionConfigFile >> "cfgMission" >> "civVehicles","heliFuelFixValue",0.03] call BIS_fnc_returnConfigEntry;
        if (fuel _vehicle > _fuelSet) then {
            [_vehicle,_fuelSet] remoteExec ["setFuel",0,false];
        };
    };
};

_vehicle addEventHandler ["GetIn",_fnc_onGetIn];
