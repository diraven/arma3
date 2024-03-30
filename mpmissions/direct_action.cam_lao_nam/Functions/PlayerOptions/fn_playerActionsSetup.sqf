	
	_unit = param [0, player];
	
	_groupLeaderPriority = -93.1;
	_adminPriority = -96.6;
	
	
	// GROUP LEADER ACTIONS

				
		// Dismiss Recruits
	
				[_unit, TRUE, FALSE, _groupLeaderPriority] call BEW_FNC_dismissRecruits;
				
				
		// Take Back Squad Leader
	
				[_unit, FALSE, FALSE, _groupLeaderPriority] call BEW_FNC_takeBackSquadLeader;		
			
		
	// ADMIN ACTIONS


		// Cancel Current Mission

			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_cancelCurrentMission;
		
	
	
		// Kill All Enemies
		
			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_killAllEnemies;
			
			
			
			
		// Delete Cursor Object
	
			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_deleteCursorObject;
			
			
			

		// Arsenal

			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_arsenal;
			
			
			
		
		// Teleport _unit

			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_TeleportPlayer;
			
			
			
		
		// Teleport Selected _unit

			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_TeleportSelectedPlayer;
		
			
			
			
		// Teleport Group

			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_TeleportGroup;
			
			
		
		
		// God Mode

			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_godMode;
			
			
		
		
		// Invisible
		
			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_invisible;
			
			
			
		
		// Next Mission Level

			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_nextMissionLevel;
			
			
		
		
		// Set Time Midnight
			
			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_setMidnight;
			
			

			
		// Set Time Midday
		
			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_setMidday;
			
			
			
		// Set AI Skill Options
		
			[_unit, FALSE, TRUE, _adminPriority] call BEW_FNC_setAiSkillAction;
			
			
		// Manual Save Action

			[] call BEW_FNC_manualSaveAction;
			
			
		// Reset Database Action
			
			[] call BEW_FNC_resetDatabaseAction;