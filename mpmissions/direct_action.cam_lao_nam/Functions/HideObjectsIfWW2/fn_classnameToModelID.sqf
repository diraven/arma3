
	_allClassnames = _this;

	private _allModels = [];


	{

		_classname = _x;
		_model = [_x] call BIS_fnc_simpleObjectData select 1;

		_allModels pushBackUnique _model;

	} forEach _allClassnames;


	_allModels