	// Set Up Credits

		[] call BEW_FNC_Credits;
		
		
	// Set Up Tutorials

		[] call BEW_FNC_Tutorials;
		
		
	// Vehicle Unlock Diary
		
		
		[] spawn {
		
			_currentMissionLevel = 1;
		
			while {true} do {
			
				[] call BEW_FNC_vehicleUnlockDiary;
				
				_currentMissionLevel = _currentMissionLevel + 1;
				
				waitUntil {sleep 3; missionLevel >= _currentMissionLevel};
				
			};
		
		};
		
		
	// Current Factions Diary
	
		[] spawn {

			while {true} do {
			
				waitUntil {!(isNil "BEW_v_UnlockedFactions")};
			
				[] call BEW_FNC_currentFactionsDiary;
				
				_UnlockedFactionsCount = count BEW_v_UnlockedFactions;		
				
				waitUntil {sleep 3; (count BEW_v_UnlockedFactions) > _UnlockedFactionsCount};
				
			};
		
		};
		
		
	// Mission Status Diary
	
		[] spawn {

			while {true} do {
			
				[] call BEW_FNC_missionStatus;
				
				sleep 5;
				
			};
		
		};	