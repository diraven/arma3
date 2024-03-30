params ["_object", "_amounts", "_tax"];
{
	private _amount = _x;
	_object addAction [
		format["Віддати %1 грн", _amount], // title
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			_arguments params ["_amount", "_tax"];

			private _success = [player, -_amount] call JAGER_main_fnc_addMoney;
			if (_success) then {
				systemChat format["Сплачено - %1 грн, отримано на рахунок - %2 грн, плата за обслуговування - %3 грн.", _amount, _amount * (1 - _tax), _amount * _tax];
				[player, _amount * (1 - _tax)] call grad_lbm_fnc_addFunds;
			};
		},
		[_amount, _tax], // arguments
		1.5, // priority
		true, // showWindow
		false, // hideOnUse
		"", // shortcut
		"true", // condition
		5, // radius
		false, // unconscious
		"", // selection
		""// memoryPoint
	];
} forEach _amounts;