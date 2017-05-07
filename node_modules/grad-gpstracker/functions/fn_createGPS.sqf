#include "..\component.hpp"

params ["_display","_size","_offsetX","_offsetY"];

private _totalW = _size * SZW(40);
private _totalH = _size * SZH(40);

private _ctrlGroup = _display ctrlCreate ["RscControlsGroupNoScrollbars",-1];
_ctrlGroup ctrlSetPosition [_offsetX * SZW(120) - _totalW,_offsetY * SZH(80) - _totalH,_totalW,_totalH];
_ctrlGroup ctrlSetFade 1;
_ctrlGroup ctrlCommit 0;

[{ctrlCommitted _this}, {
    _this ctrlSetFade 0;
    _this ctrlCommit 0.5;
}, _ctrlGroup] call CBA_fnc_waitUntilAndExecute;

private _background = _display ctrlCreate ["RscPicture",-1,_ctrlGroup];
_background ctrlSetText (grad_gpsTracker_moduleRoot + "\data\tracker_bg.paa");
_background ctrlSetPosition [0,0,_totalW,_totalH];
_background ctrlCommit 0;

private _receptionCtrl = _display ctrlCreate ["RscPicture",-1,_ctrlGroup];
_receptionCtrl ctrlSetText (grad_gpsTracker_moduleRoot + "\data\tracker_0.paa");
_receptionCtrl ctrlSetPosition [_size * SZW(14),_size * SZH(10.4),_size * SZW(4),_size * SZH(4)];
_receptionCtrl ctrlCommit 0;

private _arrowCtrl = _display ctrlCreate ["RscPicture",-1,_ctrlGroup];
_arrowCtrl ctrlSetText (grad_gpsTracker_moduleRoot + "\data\tracker_arrow.paa");
_arrowCtrl ctrlSetPosition [_size * SZW(14.5),_size * SZH(15),_size * SZW(11),_size * SZH(11)];
_arrowCtrl ctrlCommit 0;

[_ctrlGroup,_arrowCtrl,_receptionCtrl]
