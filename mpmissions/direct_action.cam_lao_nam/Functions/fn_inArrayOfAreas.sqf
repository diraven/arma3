
// [player, BEW_v_AllObjectiveAreaMarkers] call BEW_FNC_inArrayOfAreas;

	private ["_posToCheck", "_allAreaMarkers", "_return"];

	_posToCheck = _this select 0;
	_allAreaMarkers = _this select 1;
	
	_return = FALSE;

	{
	
		if !(_return) then {

			if ((_posToCheck inArea _x) and !(markerAlpha _x == 0)) then {

				_return = TRUE;

			};
		
		};
		
	} forEach _allAreaMarkers;
	
	_return