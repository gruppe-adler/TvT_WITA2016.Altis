#include "component.hpp"

private _startTime = diag_tickTime;

private _fnc_createMarker = {
    params ["_markerPos","_markerID"];

    _markerName = format ["wita_civs_helicopterMarker_%1",_markerID];
    _marker = createMarker [_markerName, _markerPos];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "mil_triangle";
    _marker setMarkerColor "COLORCIV";

    _marker
};

private _allSecondaryAirports = "true" configClasses (configFile >> "CfgWorlds" >> worldName >> "SecondaryAirports");
private _allAirportsPositions = [[configFile >> "CfgWorlds" >> worldName, "ilsPosition",nil] call BIS_fnc_returnConfigEntry];
_allAirportsPositions = _allAirportsPositions + (_allSecondaryAirports apply {[_x,"ilsPosition",[0,0,0]] call BIS_fnc_returnConfigEntry});

private _amountFactor = [missionConfigFile >> "cfgMission" >> "civVehicles","heliAirportAmountFactor",1] call BIS_fnc_returnConfigEntry;
private _availableTypes = [missionConfigFile >> "cfgMission" >> "civVehicles","heliTypes",["C_Heli_Light_01_civil_F"]] call BIS_fnc_returnConfigEntry;

private _thesePositions = [];
{
    _vehPos = _x;
    _thesePositions pushBack _vehPos;
    _marker = if (WITA_DEBUGMODE) then {[_vehPos,count _thesePositions] call _fnc_createMarker} else {""};

    _type = selectRandom _availableTypes;
    _veh = createVehicle [_type,[0,0,0],[],0,"CAN_COLLIDE"];

    [{!isNull (_this select 0)}, {
        params ["_veh","_vehPos","_marker"];
        _veh setDir random 360;
        _veh setPos _vehPos;
        _veh setVelocity [0,0,1];
        _veh lock 2;
        [_veh] call wita_civs_fnc_setVehicleFuel;
        [_veh] remoteExec ["wita_mission_fnc_heliFuelFix",0,_veh];
        [_veh,_marker] call wita_civs_fnc_deleteIfDamaged;
    }, [_veh,_vehPos,_marker]] call CBA_fnc_waitUntilAndExecute;

    false
} count _allAirportsPositions;

DEBUGMSG_2("helicopter spawn completed in %1s (%2 helicopters).",diag_tickTime-_startTime,count _thesePositions);

missionNamespace setVariable ["WITA_SETUP_HELISDONE",true,true];
