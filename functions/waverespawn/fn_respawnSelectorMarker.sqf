#include "component.hpp"

params ["_side","_selected",["_pos",[0,0,0]]];
private ["_selected"];


//terminate old marker
_oldHandle = missionNamespace getVariable ["wita_selectedRespawnMarkerPFH",-1];
if (_oldHandle > 0) then {
    [_oldHandle] call CBA_fnc_removePerFrameHandler;
    wita_selectedRespawnMarkerPFH = -1;
};
deleteMarkerLocal "wita_respawnSelectorMarker";


if (_side == WEST) then {
    if (isNil "_selected") then {_selected = objNull};

    if (isNull _selected || !(_selected getVariable ["wita_respawnObject_isActive", false])) exitWith {
        wita_selectedRespawnObject = objNull;
    };

    wita_selectedRespawnObject = _selected;

    //create new marker
    _marker = createMarkerLocal ["wita_respawnSelectorMarker", [0,0,0]];
    _marker setMarkerTypeLocal "Select";
    wita_respawnSelectorMarker = _marker;

    wita_selectedRespawnMarkerPFH = [{
        params ["_args", "_handle"];
        _args params ["_marker","_selected"];

        if !(_selected getVariable ["wita_respawnObject_isActive", false]) exitWith {
            [WEST,objNull] call wita_waverespawn_fnc_respawnSelectorMarker;
        };

        _marker setMarkerPosLocal (getPos _selected);
    } , 0.1, [_marker,_selected]] call CBA_fnc_addPerFrameHandler;
};

if (_side == EAST) then {
    if (isNil "_selected") then {_selected = -1};

    if (_selected < 0 || !([_selected] call wita_sectors_fnc_checkSector)) exitWith {
        wita_selectedRespawnPos = [0,0,0];
    };

    wita_selectedRespawnPos = _pos;

    //create new marker
    _marker = createMarkerLocal ["wita_respawnSelectorMarker", _pos];
    _marker setMarkerTypeLocal "mil_start";
    _marker setMarkerColorLocal "COLOREAST";
    wita_respawnSelectorMarker = _marker;

    wita_selectedRespawnMarkerPFH = [{
        params ["_args", "_handle"];
        _args params ["_marker","_selected"];

        if !([_selected] call wita_sectors_fnc_checkSector) exitWith {
            [EAST,-1] call wita_waverespawn_fnc_respawnSelectorMarker;
        };

    } , 0.1, [_marker,_selected]] call CBA_fnc_addPerFrameHandler;
};
