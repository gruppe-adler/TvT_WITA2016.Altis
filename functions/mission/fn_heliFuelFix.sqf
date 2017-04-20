#include "component.hpp"

params ["_vehicle"];

private _fnc_onGetIn = {
    params ["_vehicle","seat","_unit"];

    if (local _vehicle && {_vehicle isKindOf "Air"} && {side _unit == INDEPENDENT}) then {
        _fuelSet = [missionConfigFile >> "cfgMission","heliFuelFixValue",0.03] call BIS_fnc_returnConfigEntry;
        if (fuel _vehicle > _fuelSet) then {
            _vehicle setFuel _fuelSet;
        };
    };
};

_vehicle addEventHandler ["GetIn",_fnc_onGetIn];
