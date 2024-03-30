private ["_veh", "_admin", "_conditions", "_actionColor", "_actionText"];

_veh = _this param [0];
_squadLeader = _this param [1,FALSE,[FALSE]];
_admin = _this param [2,FALSE,[FALSE]];
_actionPosition = _this param [3];
_actionColor = "<t color='#ffff33'>";
_actionText = "- End Current Mission - USE IF MISSION BUGGED</t>";


// Select Action Color

	if (_squadLeader) then {

		_actionColor = "<t color='#00ff00'>";
		
	};


	if (_admin) then {

		_actionColor = "<t color='#ffff33'>";	
	};


// Action Conditions
	
	_conditions = "(BEW_v_objectiveMissionActive) and !(BEW_v_objectiveMissionCancelled) and (player getVariable 'AdminMenu')";
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
	
	// End Current Mission
	
		player addAction [
	
		_actionColor + _actionText,  
	
		{
	
			{
			
				BEW_v_objectiveMissionCancelled = TRUE;
				publicVariable "BEW_v_objectiveMissionCancelled";
			
			} remoteExec ["bis_fnc_call", 2]; 
	
		}
	
	
	, [], _actionPosition, false, true, "", _conditions]; 