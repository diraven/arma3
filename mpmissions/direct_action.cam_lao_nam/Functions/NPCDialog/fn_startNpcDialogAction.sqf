	
	
	
	_npc = param [0, player];
	
	[
			_npc,																// Object the action is attached to
			"<t color='#00ff00'>Talk To",						// Title of the action
			"\a3\missions_f_oldman\data\img\holdactions\holdAction_talk_ca.paa",	// Idle icon shown on screen
			"\a3\missions_f_oldman\data\img\holdactions\holdAction_talk_ca.paa",	// Progress icon shown on screen
			"(alive _target) and (_target distance2D player < 5) and !(_target getVariable ['dialogStarted', FALSE]) and !(_target getVariable ['civFleeing', FALSE])",							// Condition for the action to be shown
			"(alive _target) and (_target distance2D player < 5) and !(_target getVariable ['dialogStarted', FALSE]) and !(_target getVariable ['civFleeing', FALSE])",							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{
				
				_npc = _target;
				
				// Set Dialog To Started
				
					_npc setVariable ["dialogStarted", TRUE, true];
					
					
				// Set Dialog To Started
				
					[_npc, "PATH"] remoteExec ["disableAi", _npc]; 
					
				
				// Make NPC Face Player
				
					_originalDir = getDir _npc;
					_dirTo = _npc getDir _caller;
					
					[_npc, _caller] remoteExec ["lookAt", _npc];

				
				// Get Dialog Options
					
					_intro = _npc getVariable ['introDialog', "How can I help?"];
					_dialogOptions = _npc getVariable ['dialogOptions', [["How are you?", "I'm well thankyou."]]];
					
					_goodbye = _npc getVariable ['goodbyeDialog', ["Goodbye.", "Goodbye.", {_this select 0 setVariable ["dialogStarted", FALSE, true]}]];
					
					_dialogOptions pushBackUnique _goodbye;
					
				
				// Show Dialog
								
					[_npc, _intro, 10] call BEW_FNC_SubtitleWithDelay;
				
				
				// Repeat For All Dialog Options
				
					private _allDialogActions = [];
					
					{
					
						private ["_actionID"];
						
						_title = _x select 0;
						_dialog = _x select 1;
						_codeToCall = _x param [2, {}];
						
						_actionID = [_npc, _title, _dialog, _codeToCall] call BEW_FNC_addDialogOption;
						
						_allDialogActions pushBack _actionID;
					
					} forEach _dialogOptions;
					
					
					// Script End
					
					[_npc, _caller, _allDialogActions, _originalDir] spawn {
						
						_npc = _this select 0;
						_caller = _this select 1;
						_allDialogActions = _this select 2;
						_originalDir = _this select 3;
						
						waitUntil {!(alive _npc) or !(alive _caller) or (_caller distance2D _npc > 15) or !(_npc getVariable ['dialogStarted', FALSE])};
						
						// Remove All Dialog Options
					
							{
							
								_npc removeAction _x;
							
							} forEach _allDialogActions;
							
							
						// Reset Dialog Started
							
							if (_npc getVariable ['dialogStarted', FALSE]) then {
							
								_npc setVariable ["dialogStarted", FALSE, true];
							
							};
							
						// Stop Looking At Player
							
							[_npc, objNull] remoteExec ["lookAt", _npc];
					
					};
					
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																	// Action duration [s]
			99,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
			
	] call BIS_fnc_holdActionAdd;