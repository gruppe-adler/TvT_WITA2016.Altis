/*  Tests all supplied classnames for existence.
*
*   Example:
*   ["arifle_MX_F","arifle_MX_GL_F","arifle_MXC_F","arifle_Katiba_F","arifle_Katiba_C_F","arifle_Katiba_GL_F"] execVM "validateItems.sqf"
*/

private _invalidItems = {
    if (
        isClass (configFile >> "cfgWeapons" >> _x) ||
        isClass (configFile >> "cfgVehicles" >> _x) ||
        isClass (configFile >> "CfgMagazines" >> _x)
    ) then {
        false
    } else {
        _message = format ["%1 not found.",_x];
        systemChat _message;
        diag_log _message;
        true
    };

} count _this;

private _resultMessage = format ["%1/%2 items not found.",_invalidItems,count _this];
systemChat _resultMessage;
diag_log _resultMessage;
