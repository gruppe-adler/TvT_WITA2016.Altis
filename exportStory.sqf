private _centerPos = getPos player;
private _centerDir = (getDir player);
private _nearestVehicles = (nearestObjects [player, ["LandVehicle","Ship","Air","Static","Man","Thing"], 50]) - [player];

private _br = toString [13,10];
private _clipBoardArray = ["params ['_centerPos','_centerDir'];",""];



{
    _clipBoardArray pushBack format ["_veh = '%1' createVehicle [0,0,0];", typeOf _x];
    _clipBoardArray pushBack format ["_veh setDir (%1-_centerDir);", (getDir _x) + _centerDir];
    _clipBoardArray pushBack format ["_veh setPos (_centerPos vectorAdd %1);",_centerPos vectorDiff (getPos _x)];

    if (_x isKindOf "LandVehicle" || _x isKindOf "Ship" || _x isKindOf "Air") then {
        _vehDamages = getAllHitPointsDamage _x;
        {
            _dam = (_vehDamages select 2) select _forEachIndex;
            if (_dam > 0) then {
                _clipBoardArray pushBack format ["_veh setHitPointDamage ['%1',%2];",_x,_dam];
            };
        } forEach (_vehDamages select 0);
    };

    if (_x isKindOf "Static" || _x isKindOf "Man" || _x isKindOf "Thing") then {
        _clipBoardArray pushBack format ["_veh setDamage %1;",damage _x];
    };

    if (_x isKindOf "Thing") then {
        _clipBoardArray pushBack "_veh enableSimulation false;";
    };

    _clipBoardArray pushBack "[_veh] call wita_common_fnc_emptyContainer;";
    _clipBoardArray pushBack "";
} forEach _nearestVehicles;




private _output = "";
{
    _output = _output + _x + _br;
} forEach _clipBoardArray;

copyToClipboard _output;
