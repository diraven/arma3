private ["_veh", "_admin", "_conditions", "_actionColor", "_actionText"];

_veh = _this param [0];
_squadLeader = _this param [1,FALSE,[FALSE]];
_admin = _this param [2,FALSE,[FALSE]];
_actionPosition = _this param [3];
_actionColor = "<t color='#ffff33'>";
_actionText = "- Arsenal</t>";


// Select Action Color

	if (_squadLeader) then {

		_actionColor = "<t color='#00ff00'>";
		
	};


	if (_admin) then {

		_actionColor = "<t color='#ffff33'>";	
	};


// Action Conditions
	
	_conditions = "(player getVariable 'AdminMenu')";
	_leaderConditions = "(true)";
	_adminConditions = "(true)";

	if (_squadLeader) then {

		_leaderConditions = "(player == leader group player)";
		
	};
	
	
	if (_admin) then {

		_adminConditions = "(serverCommandAvailable '#kick')";
		
	};

_conditions = format ["%1 && %2 && %3", _conditions, _leaderConditions, _adminConditions];	
	
	
// Main Script
	
	_veh addAction [
	
		_actionColor + _actionText,  
	
		{
	
			["Open",true] spawn BIS_fnc_arsenal;
	
		}
	
	
	, [], _actionPosition, false, true, "", _conditions ]; 