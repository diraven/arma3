/*  Updates itemlist based on chosen category
	*
*/

#include "..\..\dialog\defines.hpp"
params ["_categoryCtrl", "_selIndex"];
disableSerialization;

_dialog = findDisplay grad_lbm_DIALOG;
_listCtrl = _dialog displayCtrl grad_lbm_ITEMLIST;

(call compile (_categoryCtrl lbData _selIndex)) params ["_baseConfigName", "_categoryConfigName"];

_allItems = "true" configClasses (missionConfigFile >> "CfgGradBuymenu" >> _baseConfigName >> _categoryConfigName);
lnbClear _listCtrl;
_listIndex = 0;
{
	_config = _x;
	_condition = [(_config >> "condition"), "text", "true"] call CBA_fnc_getConfigEntry;

	if (call compile _condition) then {
		_itemConfigName = configName _config;
		_displayName = [(_config >> "displayName"), "text", [_itemConfigName] call grad_lbm_fnc_getDisplayName] call CBA_fnc_getConfigEntry;

		// get price from grad config.
		_price = [(_config >> "price"), "number", 0] call CBA_fnc_getConfigEntry;
		if (_price == 0) then {
			// if grad config has no price - try to get it from JAGER config.
			private _class = configName _config;
			_price = getNumber (configFile >> "CfgWeapons" >> _class >> "JAGER_main_value");
		};
		if (_price == 0) then {
			// set very high price by default.
			_price = 999999;
		};
		_description = [(_config >> "description"), "text", [_itemConfigName] call grad_lbm_fnc_getDescription] call CBA_fnc_getConfigEntry;
		_code = compile ([(_config >> "code"), "text", ""] call CBA_fnc_getConfigEntry);
		_picturePath = [(_config >> "picture"), "text", ""] call CBA_fnc_getConfigEntry;

		_listCtrl lnbAddRow [format ["%1 грн.", _price], _displayName];

		_data = str [_baseConfigName, _categoryConfigName, _itemConfigName, _displayName, _price, _description, _code, _picturePath];
		_listCtrl lnbSetData [[_listIndex, 0], _data];

		_listIndex = _listIndex + 1;
	};
} forEach _allItems;

if (((lnbSize _listCtrl) select 0) > 0) then {
	_listCtrl lnbSetCurSelRow 0
};

// save last category selection
player setVariable ["grad_lbm_lastSelectedCategoryIndex", lbCurSel _categoryCtrl];