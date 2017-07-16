#include "component.hpp"

[{
    {[player, 1] call grad_lbm_fnc_setPermissionLevel} remoteExec ["call",WEST,true];
    ["wita_notification",["VEHICLES UNLOCKED","BLUFOR now has access to lvl 2 vehicles."]] remoteExec ["bis_fnc_showNotification",0,false];
},[],[missionConfigFile >> "cfgMission","bluforVehicleUnlockTime2",99999] call BIS_fnc_returnConfigEntry] call CBA_fnc_waitAndExecute;

[{
    {[player, 2] call grad_lbm_fnc_setPermissionLevel} remoteExec ["call",WEST,true];
    ["wita_notification",["VEHICLES UNLOCKED","BLUFOR now has access to lvl 3 vehicles."]] remoteExec ["bis_fnc_showNotification",0,false];
},[],[missionConfigFile >> "cfgMission","bluforVehicleUnlockTime3",99999] call BIS_fnc_returnConfigEntry] call CBA_fnc_waitAndExecute;
