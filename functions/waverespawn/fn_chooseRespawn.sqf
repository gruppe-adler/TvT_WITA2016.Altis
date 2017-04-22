#include "component.hpp"

params ["_group"];

if !(hasInterface) exitWith {};
if !(player in (units _group)) exitWith {};

hint "";
if (leader _group != player) exitWith {
    [playerSide,"Teamlead is choosing respawn."] call wita_waverespawn_fnc_respawnHint;
};

if (side _group == WEST && count (missionNamespace getVariable ["wita_cv_allCVs",[]]) < 2) exitWith {[_group,getPos (wita_cv_allCVs select 0)] remoteExec ["wita_waverespawn_fnc_respawnGroup",2,false]};

["Terminate"] call BIS_fnc_EGSpectator;
[false] call wita_waverespawn_fnc_blockMap;
if (playerSide == EAST) then {[true] call wita_sectors_fnc_drawSectors};
openMap [true, true];

_zoom = if (side _group == WEST) then {0.12} else {0.02};
_map = (findDisplay 12) displayCtrl 51;
_map ctrlMapAnimAdd [0,_zoom,CITYPOSITION];
ctrlMapAnimCommit _map;


//TIMEOUT HINT =================================================================
_startTime = serverTime;
[{
    params ["_startTime","_handle"];
    _timeLeft = AUTOCHOOSETIMEOUT - (serverTime - _startTime);
    if (group player getVariable ["wita_waverespawn_groupIsRespawned",false]) exitWith {
        [false] call wita_ui_fnc_twoLineHint;
        [_handle] call CBA_fnc_removePerFrameHandler
    };
    [true, format ["CHOOSE RESPAWN LOCATION (%1s left)",(round _timeLeft) max 0], "CONFIRM WITH ENTER"] call wita_ui_fnc_twoLineHint;
    if (_timeLeft < 0) exitWith {
        [false] call wita_ui_fnc_twoLineHint;
        [_handle] call CBA_fnc_removePerFrameHandler
    };
} , 1, _startTime] call CBA_fnc_addPerFrameHandler;


//MAPCLICK EVENT ===============================================================
mcd_chooseRespawnClick = [
    "mcd_chooseRespawn",
    "onMapSingleClick",
    {
        if (playerSide == WEST) then {
            _respawnObject = [_pos, 300, player getVariable ["originalSide", "UNKNOWN"]] call wita_waverespawn_fnc_findNearestRespawnObject;
            if (_respawnObject getVariable ["wita_respawnObject_isActive", false]) then {
                [WEST,_respawnObject] call wita_waverespawn_fnc_respawnSelectorMarker;
            };
        };

        if (playerSide == EAST) then {
            _sectorID = [_pos] call wita_sectors_fnc_getSector;
            if (_sectorID != -1 && !(surfaceIsWater _pos)) then {
                [EAST,_sectorID,_pos] call wita_waverespawn_fnc_respawnSelectorMarker;
            } else {
                [EAST,-1] call wita_waverespawn_fnc_respawnSelectorMarker;
            };
        };
    }
] call BIS_fnc_addStackedEventHandler;


//CONFIRM SELECTION ============================================================
mcd_onRespawnKeyDown = (findDisplay 46) displayAddEventHandler ["KeyUp", {
    if ((_this select 1) != 28 && (_this select 1) != 156) exitWith {};

    _condition = if (playerSide == WEST) then {
        isNull (missionNamespace getVariable ["wita_selectedRespawnObject",objNull]);
    } else {
        (missionNamespace getVariable ["wita_selectedRespawnPos",[0,0,0]]) isEqualTo [0,0,0];
    };

    if (_condition) then {
        if (playerSide == WEST) then {["PLEASE SELECT A COMMANDVEHICLE"] call wita_ui_fnc_confirmHint} else {["PLEASE SELECT A SECTOR"] call wita_ui_fnc_confirmHint};

    } else {
        ["mcd_chooseRespawn", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
        (findDisplay 46) displayRemoveEventHandler ["KeyUp", mcd_onRespawnKeyDown];

        [false] call wita_ui_fnc_twoLineHint;
        _pos = if (playerSide == WEST) then {getPos wita_selectedRespawnObject} else {wita_selectedRespawnPos};
        [group player,_pos] remoteExec ["wita_waverespawn_fnc_respawnGroup",2,false];
        [false] call wita_sectors_fnc_drawSectors;
    };
}];
