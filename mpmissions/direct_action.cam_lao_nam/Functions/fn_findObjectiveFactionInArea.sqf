private ["_inObjective", "_objectiveFaction"];

_veh = param [0, player];

if (count (BEW_v_all_MainObjectives select {_veh inArea _x}) > 0) then {

	_inObjective = (BEW_v_all_MainObjectives select {_veh inArea _x} select 0);

	{

		if (_x select 0 == _inObjective) then {

			_objectiveFaction = _x select 1;

		};

	} forEach BEW_v_FactionsOnObjectives

}else{
	
	_inObjective = "";
	_objectiveFaction = "";

};

_return = [_inObjective, _objectiveFaction];

_return
