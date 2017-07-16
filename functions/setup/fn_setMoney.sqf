#include "component.hpp"

params ["_account"];

private _moneyInterval = 450;
private _moneyFactorConfig = [missionConfigFile >> "cfgMission","bluforMoneyStartFactor",1] call BIS_fnc_returnConfigEntry;
private _moneyFactorParam = switch ("BLUFOR_MONEY" call BIS_fnc_getParamValue) do {
    case (0): {0.8};
    case (1): {1.0};
    case (2): {1.2};
};
private _money = (6000 + ((count ([] call BIS_fnc_listPlayers)) * 300)) * _moneyFactorConfig * _moneyFactorParam;
[_account,_money] call grad_lbm_fnc_addFunds;


[{
    params ["_account","_moneyInterval"];
    private _moneyFactorGain = [missionConfigFile >> "cfgMission","bluforMoneyGainFactor",1] call BIS_fnc_returnConfigEntry;
    private _moneyPerInterval = (count ([] call BIS_fnc_listPlayers)) * 100 * _moneyFactorGain;
    [{
        params ["_args","_handle"];
        _args params ["_moneyPerInterval","_account"];
        [_account,_moneyPerInterval] call grad_lbm_fnc_addFunds;
        ["wita_notification",["MONEY RECEIVED",format ["BLUFOR received %1 Cr.",round _moneyPerInterval]]] remoteExec ["bis_fnc_showNotification",WEST,false];
    } , _moneyInterval, [_moneyPerInterval,_account]] call CBA_fnc_addPerFrameHandler;
}, [_account,_moneyInterval], _moneyInterval] call CBA_fnc_waitAndExecute;
