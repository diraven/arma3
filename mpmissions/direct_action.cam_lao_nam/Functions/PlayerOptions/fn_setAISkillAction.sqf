private ["_veh", "_admin", "_conditions", "_actionColor", "_actionText", "_radius"];

_veh = _this param [0];
_squadLeader = _this param [1,FALSE,[FALSE]];
_admin = _this param [2,FALSE,[FALSE]];
_actionPosition = _this param [3];
_actionColor = "<t color='#ffff33'>";

// Select Action Color

	if (_squadLeader) then {

		_actionColor = "<t color='#00ff00'>";
		
	};


	if (_admin) then {

		_actionColor = "<t color='#ffff33'>";	
	};


// Action Conditions
	
	
	_leaderConditions = "(true)";
	_adminConditions = "(true)";

	if (_squadLeader) then {

		_leaderConditions = "(player == leader group player)";
		
	};
	
	
	if (_admin) then {

		_adminConditions = "((serverCommandAvailable '#kick') or !(isMultiplayer))";
		
	};


	
	
// Main Script
	
	// Set AI Skill EASY
	
	_actionText = "- Set AI Skill EASY</t>";
	
	_conditions = "(player getVariable 'AdminMenu') and !(BEW_v_aiSkillGlobal == 'EASY')";
	_conditions = format ["%1 && %2 && %3", _conditions, _leaderConditions, _adminConditions];	
	
	player addAction [
	
		_actionColor + _actionText,  
	
		{
		
			[{
			
				BEW_v_aiSkillGlobal = "EASY";		
				publicVariable "BEW_v_aiSkillGlobal";
				
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
			 
					["write", ["Mission Settings", "AI Skill", BEW_v_aiSkillGlobal]] call BEW_v_dataBase; 
		
				};
					
				_message = format ["The ADMIN has set the AI SKILL level To %1", BEW_v_aiSkillGlobal];
				[_message] remoteExec ["systemchat", 0];
			
			}] remoteExec ["bis_fnc_call", 2];

		}
	
	
	, [], _actionPosition, false, true, "", _conditions]; 
	
	
	
	// Set AI Skill REGULAR
	
	_actionText = "- Set AI Skill REGULAR</t>";
	
	_conditions = "(player getVariable 'AdminMenu') and !(BEW_v_aiSkillGlobal == 'REGULAR')";
	_conditions = format ["%1 && %2 && %3", _conditions, _leaderConditions, _adminConditions];	
	
	player addAction [
	
		_actionColor + _actionText,  
	
		{
		
			[{
			
				BEW_v_aiSkillGlobal = "REGULAR";		
				publicVariable "BEW_v_aiSkillGlobal";
				
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
			 
					["write", ["Mission Settings", "AI Skill", BEW_v_aiSkillGlobal]] call BEW_v_dataBase; 
		
				};
				
				_message = format ["The ADMIN has set the AI SKILL level To %1", BEW_v_aiSkillGlobal];
				[_message] remoteExec ["systemchat", 0];
			
			}] remoteExec ["bis_fnc_call", 2];

		}
	
	
	, [], _actionPosition, false, true, "", _conditions]; 
	
	
	// Set AI Skill HARD
	
	_actionText = "- Set AI Skill HARD</t>";
	
	_conditions = "(player getVariable 'AdminMenu') and !(BEW_v_aiSkillGlobal == 'HARD')";
	_conditions = format ["%1 && %2 && %3", _conditions, _leaderConditions, _adminConditions];	
	
	player addAction [
	
		_actionColor + _actionText,  
	
		{
		
			[{
			
				BEW_v_aiSkillGlobal = "HARD";		
				publicVariable "BEW_v_aiSkillGlobal";
				
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
			 
					["write", ["Mission Settings", "AI Skill", BEW_v_aiSkillGlobal]] call BEW_v_dataBase; 
		
				};
				
				_message = format ["The ADMIN has set the AI SKILL level To %1", BEW_v_aiSkillGlobal];
				[_message] remoteExec ["systemchat", 0];
			
			}] remoteExec ["bis_fnc_call", 2];

		}
	
	
	, [], _actionPosition, false, true, "", _conditions]; 