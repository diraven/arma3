	
	
	// Select Next Mission
		
		_selectNextMissionConditions = "
			
			(leader group player == player) and
			(vehicle player == player) and
			(cursorObject distance2D player < 5) and
			(cursorObject in BEW_v_mapBoards) and
			!(BEW_v_objectiveMissionActive)

		";


		[
			player,																// Object the action is attached to
			"<t color='#ffff00'>Select Next Mission",							// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
			_selectNextMissionConditions,										// Condition for the action to be shown
			_selectNextMissionConditions,										// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{

				_mapBoard = cursorObject;

				// Put Down Action

					player playActionNow 'PutDown';
					playSound 'click';
				
				
				// Select Next Mission

					[_mapBoard] spawn BEW_FNC_selectNextMission;				
			
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																	// Action duration [s]
			99,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;
		
		
		
	// Cancel Current Mission
		
		_cancelCurrentMissionConditions = "
			
			(leader group player == player) and
			(vehicle player == player) and
			(cursorObject distance2D player < 5) and
			(cursorObject in BEW_v_mapBoards) and 
			(BEW_v_objectiveMissionActive) and 
			!(BEW_v_objectiveMissionCancelled)

		";
		
		[
			player,																// Object the action is attached to
			"<t color='#ffff00'>Cancel Current Mission (-1 Mission Level)",						// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
			_cancelCurrentMissionConditions,							// Condition for the action to be shown
			_cancelCurrentMissionConditions,							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{

				_mapBoard = cursorObject;

				// Put Down Action

					player playActionNow 'PutDown';
					playSound 'click';
				
				
				// Cancel Current Mission
				
					{
						
						// Mission Level Penalty
							
							if (BEW_v_slowDownProgression) then {
					
								missionLevel = missionLevel - 0.5;
								
							}else{
							
								missionLevel = missionLevel - 1;
							
							};
							
							publicVariable "missionLevel";
							
							// Flip Cancel Mission Flag
						
								BEW_v_objectiveMissionCancelled = TRUE;
									publicVariable "BEW_v_objectiveMissionCancelled";
					
					} remoteExec ["bis_fnc_call", 2]; 

			
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																	// Action duration [s]
			99,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;


	// Cannot Use Board
		
		_selectNextMissionConditions = "
			
			!(leader group player == player) and
			(vehicle player == player) and
			(cursorObject distance2D player < 5) and
			(cursorObject in BEW_v_mapBoards)

		";


		[
			player,																// Object the action is attached to
			"<t color='#ffff00'>Cannot Select Missions - Not The Squad Leader",	// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
			_selectNextMissionConditions,							// Condition for the action to be shown
			_selectNextMissionConditions,							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{

				_mapBoard = cursorObject;

				// Put Down Action

					player playActionNow 'PutDown';
					playSound 'click';

					hintC "You must be the SQUAD LEADER to remotely select missions.";
			
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																	// Action duration [s]
			99,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;
		