#include "component.hpp"

[WEST,["wita_tasks_blufor_eliminateAgents"],["Eliminate all enemy agents in the area. They will be tracked and marked on your map in semi-regular intervals.","Eliminate Agents",""],objNull,true,2,true,"attack"] call BIS_fnc_taskCreate;
[INDEPENDENT,["wita_tasks_indep_survive"],["Your cover is blown. They are on to you. Escape.","Survive",""],objNull,true,2,true,"run"] call BIS_fnc_taskCreate;
