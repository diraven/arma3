		
	if !(hasInterface) exitWith {};	
	
	// Save Loadout On Arsenal Closed
		
		[missionNamespace, "arsenalClosed", { 
		 
			[player] call BEW_FNC_SaveLoadoutForRespawn;
		  
		}] call BIS_fnc_addScriptedEventHandler;