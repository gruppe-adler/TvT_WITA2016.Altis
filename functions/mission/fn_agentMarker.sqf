#include "component.hpp"

params ["_agent"];

if (_agent getVariable ["wita_agentMarker_running",false]) exitWith {};
INFO_1("Agentmarker loop starting for %1.",name _agent);

private _markerVarianceDefault = [(missionConfigFile >> "cfgMission"), "agentMarkerVariance",100] call BIS_fnc_returnConfigEntry;
private _markerIntervalDefault = [(missionConfigFile >> "cfgMission"), "agentMarkerInterval",60] call BIS_fnc_returnConfigEntry;
private _agentMarkerFadeout = [(missionConfigFile >> "cfgMission"), "agentMarkerFadeout",120] call BIS_fnc_returnConfigEntry;

[{
    params ["_args","_handle"];
    _args params ["_agent","_markerVarianceDefault","_markerIntervalDefault","_agentMarkerFadeout"];

    if (!alive _agent || isNull _agent) exitWith {[_handle] call CBA_fnc_removePerFrameHandler};

    _currentInterval = _agent getVariable ["wita_mission_markerIntervalCurrent",_markerIntervalDefault];

    _lastRun = _agent getVariable ["wita_mission_lastAgentMarkerTime",0];
    if (CBA_missionTime - _lastRun < _currentInterval) exitWith {};
    _agent setVariable ["wita_mission_lastAgentMarkerTime", CBA_missionTime];

    _currentVariance = _agent getVariable ["wita_mission_markerVarianceCurrent",_markerVarianceDefault];
    _markerPos = [getPos _agent,[0,_currentVariance]] call wita_common_fnc_findRandomPos;

    _centerMarker = createMarker [format ["wita_agentmarker_%1_center_%2",[name _agent] call BIS_fnc_filterString,CBA_missionTime * 1000],_markerPos];
    _centerMarker setMarkerShape "ICON";
    _centerMarker setMarkerType "hd_dot";
    _centerMarker setMarkerColor "COLORGUER";
    _centerMarker setMarkerText (format ["%1",[daytime * 3600,"HH:MM"] call BIS_fnc_secondsToString]);

    _areaMarker = createMarker [format ["wita_agentmarker_%1_area_%2",[name _agent] call BIS_fnc_filterString,CBA_missionTime * 1000],_markerPos];
    _areaMarker setMarkerShape "ELLIPSE";
    _areaMarker setMarkerColor "COLORGUER";
    _areaMarker setMarkerSize [_currentVariance,_currentVariance];
    _areaMarker setMarkerBrush "Border";

    [[_centerMarker,_areaMarker],_agentMarkerFadeout] call wita_common_fnc_fadeMarker;

} , 1, [_agent,_markerVarianceDefault,_markerIntervalDefault,_agentMarkerFadeout]] call CBA_fnc_addPerFrameHandler;

_agent setVariable ["wita_agentMarker_running",true];
