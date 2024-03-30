/*  Updates (enables/disables) the buy button
	*
*/

#include "..\..\dialog\defines.hpp"
params ["_baseConfigName", "_categoryConfigName", "_itemConfigName", "_price"];
disableSerialization;

_dialog = findDisplay grad_lbm_DIALOG;
_buyCtrl = _dialog displayCtrl grad_lbm_BUYBUTTON;

// no permission
_permissionLevel = [_baseConfigName, _categoryConfigName, _itemConfigName] call grad_lbm_fnc_getItemPermissionLevel;
if (_permissionLevel > (player getVariable ["grad_lbm_permissionLevel", 0])) exitWith {
	_buyCtrl ctrlEnable false;
	_buyCtrl ctrlSetText "НЕМА ДОСТУПУ";
};

// not enough money
if (([] call grad_lbm_fnc_getCurrentFunds) < _price) exitWith {
	_buyCtrl ctrlEnable false;
	_buyCtrl ctrlSetText "НЕДОСТАТНЬО ГРОШЕЙ";
};

// out of stock
_stock = [_baseConfigName, _categoryConfigName, _itemConfigName] call grad_lbm_fnc_getStock;
if (_stock <= 0) exitWith {
	_buyCtrl ctrlEnable false;
	_buyCtrl ctrlSetText "ЗАКІНЧИЛИСЯ";
};

// all is well
_buyCtrl ctrlEnable true;
_buyCtrl ctrlSetText "ПРИДБАТИ";