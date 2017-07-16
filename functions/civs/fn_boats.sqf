#include "component.hpp"

private _startTime = diag_tickTime;

private _fnc_createMarker = {
    params ["_markerPos","_markerID"];

    _markerName = format ["wita_civs_boatMarker_%1",_markerID];
    _marker = createMarker [_markerName, _markerPos];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "mil_box";
    _marker setMarkerColor "COLORCIV";

    _marker
};

private _amountFactor = [missionConfigFile >> "cfgMission" >> "civVehicles","boatCoastAmountFactor",1] call BIS_fnc_returnConfigEntry;
private _availableTypes = [missionConfigFile >> "cfgMission" >> "civVehicles","boatTypes",["C_Boat_Civil_01_F"]] call BIS_fnc_returnConfigEntry;

private _boatsToCreate = round (_amountFactor* worldSize/1000);

private _thesePositions = [];
private _loopCount = 0;
private _worldCenter = [worldSize/2,worldSize/2,0];
private _searchRadius = worldSize * 1.5;

while {count _thesePositions < _boatsToCreate && {_loopCount < _boatsToCreate * 100}} do {
    _searchPos = [_worldCenter,[0,_searchRadius]] call wita_common_fnc_findRandomPos;
    _coastPos = [_searchPos,4000,2] call wita_common_fnc_nearestCoast;

    if !(_coastPos isEqualTo [0,0,0]) then {
        _type = selectRandom _availableTypes;
        _thesePositions pushBack _coastPos;
        _marker = if (WITA_DEBUGMODE) then {[_coastPos,count _thesePositions] call _fnc_createMarker} else {""};
        _veh = createVehicle [_type,[0,0,0],[],0,"CAN_COLLIDE"];

        [{!isNull (_this select 0)}, {
            params ["_veh","_coastPos","_marker"];
            _veh setDir random 360;
            _veh setPos _coastPos;
            _veh setVelocity [0,0,1];
            _veh lock 0;
            [_veh] call wita_civs_fnc_setVehicleFuel;
            [_veh,_marker] call wita_civs_fnc_deleteIfDamaged;
        }, [_veh,_coastPos,_marker]] call CBA_fnc_waitUntilAndExecute;
    };

    _loopCount = _loopCount + 1;
};

DEBUGMSG_2("boat spawn completed in %1s (%2 boats).",diag_tickTime-_startTime,count _thesePositions);

missionNamespace setVariable ["WITA_SETUP_BOATSDONE",true,true];
