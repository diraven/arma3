	
	if !(hasInterface) exitWith {};
	
	// On Arsenal Open
		
		[missionNamespace, 'arsenalOpened', {
					
			// Add Current Loadout To Arsenal
		
				[] call BEW_FNC_addLoadoutToArsenal;

			// Send Message
	
				systemchat 'YOUR CURRENT LOADOUT HAS BEEN ADDED TO THE ARSENAL';			
		  
		}] call BIS_fnc_addScriptedEventHandler;