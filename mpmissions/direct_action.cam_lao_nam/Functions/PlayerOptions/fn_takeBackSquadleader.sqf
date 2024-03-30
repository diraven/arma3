private ["_veh", "_admin", "_conditions", "_actionColor", "_actionText"];

_veh = _this param [0];
_squadLeader = _this param [1,FALSE,[FALSE]];
_admin = _this param [2,FALSE,[FALSE]];
_actionPosition = -95;
_actionColor = "<t color='#FFFF00'>";
_actionText = "- Take Back Squad Leader</t>";


// Action Conditions
	
	_conditions = "(player getVariable 'SquadLeaderMenu') and !(player == leader group player) and (typeOf player == 'B_Soldier_TL_F')";
	_leaderConditions = "(true)";
	_adminConditions = "(true)";

	if (_squadLeader) then {

		_leaderConditions = "(player == leader group player)";
		
	};
	
	
	if (_admin) then {

		_adminConditions = "(serverCommandAvailable '#kick')";
		
	};

_conditions = format ["%1 && %2 && %3", _conditions, _leaderConditions, _adminConditions];



	// Take Back Squad Leader

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				[player] call BEW_FNC_SetGroupLeader;
			
			} 
			 		 
		, [], _actionPosition, false, true, "", _conditions]; 