
	
	private [
	
		"_message",
		"_currentActiveObjective"
	
	];

	
	// Create Initial Diary Entry
		
		if !(player diarySubjectExists "Mission Status") then {
		
			BEW_v_unlockDiarySubject = player createDiarySubject ["Mission Status", "Mission Status"];	
		
		};
	
		_message = "<font size = '25' color = '#FFFFF'><br />MISSION STATUS<br /><br />";
		
		
		// Currently Active Objective
			
			if !(BEW_v_ConflictMode) then {
			
				waitUntil {!(isNil "BEW_v_currentActiveObjective")};
				
				if (count BEW_v_currentActiveObjective > 0) then {
				
					_currentActiveObjective = markerText (BEW_v_currentActiveObjective select 0);
					_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Current Objective" + "   |   " + "<font color = '#00FF00'>" + format ["%1", _currentActiveObjective];
					
				}else{
				
					_currentActiveObjective = "No Current Objective";
					_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Current Objective" + "   |   " + "<font color = '#FF0000'>" + format ["%1", _currentActiveObjective];
					
				};
				
				_message = _message  + "<br /><br />"; 
			
			};
			

		// Mission Level
		
			waitUntil {!(isNil "missionLevel")};
		
			_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Current Mission Level" + "   |   " + "<font color = '#00FF00'>" + format ["%1", missionLevel];
			
			_message = _message  + "<br /><br />"; 
			
			
			
		// Main Objectives Remaining
			
			if !(BEW_v_ConflictMode) then {
			
				waitUntil {!(isNil "BEW_v_all_MainObjectives")};
				
				_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Main Objectives Remaining" + "   |   " + "<font color = '#FF0000'>" + format ["%1", (count BEW_v_all_MainObjectives) - (count BEW_v_all_completedMainObjectives)];
				
				_message = _message  + "<br /><br />"; 
				
			};
			
		
		// Current Munitions
			
			if (side player == EAST) then { 
				
				waitUntil {!(isNil "BEW_V_Munitions_EAST")};
				
				_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Current Munitions (EAST)" + "   |   " + "<font color = '#00FF00'>" + format ["%1", BEW_V_Munitions_EAST];
			
			}else{
			
				waitUntil {!(isNil "BEW_V_Munitions")};
				
				_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Current Munitions (WEST)" + "   |   " + "<font color = '#00FF00'>" + format ["%1", BEW_V_Munitions];
				
			};
			
			_message = _message  + "<br /><br />"; 
			
			
		// Activated Allied Camps
		
			if !(BEW_v_ConflictMode) then {
				
				waitUntil {!(isNil "BEW_v_activatedAlliedCamps")};
				
				_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Activated Allied Camps" + "   |   " + "<font color = '#00FF00'>" + format ["%1", count BEW_v_activatedAlliedCamps];
			
				_message = _message  + "<br /><br />"; 
				
			};
			
		
		// Inactive Allied Camps
			
			if !(BEW_v_ConflictMode) then {
			
				waitUntil {!(isNil "BEW_v_allAlliedCamps")};
				
				_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Inactive Allied Camps" + "   |   " + "<font color = '#FF0000'>" + format ["%1", (count BEW_v_allAlliedCamps) - (count BEW_v_activatedAlliedCamps)];
				
				_message = _message  + "<br /><br />"; 
				
			};
			
			
		// Saving Status
			
			if (isMultiplayer) then {
			
				if (isNil "BEW_v_dataBase") then {
				
					_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Multiplayer Saving" + "   |   " + "<font color = '#FF0000'>" + "Disabled - INIDBI2 Mod Not Detected";
				
				}else{
				
					_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Multiplayer Saving" + "   |   " + "<font color = '#00FF00'>" + "Enabled";
				
				};
				
			}else{
				
				_message = _message + "<font size = '15' color = '#FFFFFF'>" + "Multiplayer Saving" + "   |   " + "<font color = '#FF0000'>" + "Disabled - Not Multiplayer";			
				
			};
			
		
		// Remove Old Diary Entry

			if !(isNil "BEW_v_missionStatusDiaryEntry") then {

				player removeDiaryRecord ["Mission Status", BEW_v_missionStatusDiaryEntry];

			};


		// Create New Diary Entry
		
			BEW_v_missionStatusDiaryEntry = player createDiaryRecord ["Mission Status", ["Mission Status", format ["%1", _message]]];
	
