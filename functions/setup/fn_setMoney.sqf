#include "component.hpp"

params ["_unit"];

private _moneyFactorConfig = [missionConfigFile >> "cfgMission","bluforMoneyFactor",1] call BIS_fnc_returnConfigEntry;
private _moneyFactorParam = switch ("DEBUG_MODE" call BIS_fnc_getParamValue) do {
    case (0): {0.8};
    case (1): {1.0};
    case (2): {1.2};
};
private _money = (2000 + (count ([] call BIS_fnc_listPlayers) * 300)) * _moneyFactorConfig * _moneyFactorParam;
[_unit,_money] call grad_lbm_fnc_addFunds;
