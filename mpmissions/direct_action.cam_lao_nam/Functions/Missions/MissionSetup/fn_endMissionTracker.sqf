
	if !(isServer) exitWith {};	
	
	BEW_v_ForceEndMission = false;
	
	// Wait Until All Main Missions Exists
	
		waitUntil {!isNil "BEW_v_all_MainObjectives"};
	
	
	// Wait Until All Main Missions Exists
	
		waitUntil {count BEW_v_all_MainObjectives > 0};
	
	
	// Wait Until All Camps Completed

		waitUntil {sleep 5; ((count BEW_v_all_MainObjectives - count BEW_v_all_completedMainObjectives <= 0) or (BEW_v_ForceEndMission))};


		// Reset Database
			
			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
			
				[] call BEW_FNC_ResetDatabase;
			
			};
			
		// End Mission
		
			["end1"] remoteExec ["BIS_fnc_endMission", 0];
