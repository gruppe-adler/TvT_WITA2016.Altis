#include "component.hpp"

params ["_account"];

private _moneyFactorConfig = [missionConfigFile >> "cfgMission","bluforMoneyStartFactor",1] call BIS_fnc_returnConfigEntry;
private _moneyFactorGain = [missionConfigFile >> "cfgMission","bluforMoneyGainFactor",1] call BIS_fnc_returnConfigEntry;
private _moneyFactorParam = switch ("DEBUG_MODE" call BIS_fnc_getParamValue) do {
    case (0): {0.8};
    case (1): {1.0};
    case (2): {1.2};
};
private _money = (2000 + ((count ([] call BIS_fnc_listPlayers)) * 300)) * _moneyFactorConfig * _moneyFactorParam;
[_account,_money] call grad_lbm_fnc_addFunds;


private _moneyPerInterval = (count ([] call BIS_fnc_listPlayers)) * 10 * _moneyFactorConfig;
[{
    params ["_args","_handle"];
    _args params ["_moneyPerInterval","_account"];
    [_account,_moneyPerInterval] call grad_lbm_fnc_addFunds;
} , 60, [_moneyPerInterval,_account]] call CBA_fnc_addPerFrameHandler;
