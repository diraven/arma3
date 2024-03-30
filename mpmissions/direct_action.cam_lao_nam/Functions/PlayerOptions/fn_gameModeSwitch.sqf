	private ["_veh", "_conditionsArcade", "_conditionsCampaign", "_actionColor", "_actionText"];

	_veh = param [0];
	_actionPosition = param [1, -99];


	// Main Script
		
		// Select Arcade Mode
		
			_actionColor = "<t color='#ffff33'>";	
			_actionText = "- Select ARCADE mode (WARNING: WILL RESTART MISSION)</t>";
			
			_conditionsArcade = "(serverCommandAvailable '#kick') and !(BEW_v_gameMode == 'ARCADE') and (player getVariable 'AdminMenu') and !(isNil 'OO_INIDBI')";

			player addAction [
					
				_actionColor + _actionText,  
						
				{
								
					{	
						
						// Change Game Mode
						
							BEW_v_gameMode = 'ARCADE';
							
							[format ["Game Mode Set To %1 - Mission Will Restart In 5 Seconds", BEW_v_gameMode]] remoteExec ["systemChat", 0];
							
							if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
							
								["write", ["Mission Settings", "Game Mode", BEW_v_gameMode]] call BEW_v_dataBase; 
							
							};
							
							sleep 5;
							
							['end1'] remoteExec ["BIS_fnc_endMission", 0]; 
			
					} remoteExec ["bis_fnc_call", 2]; 
							
				}
									
			, [], _actionPosition, false, true, "", _conditionsArcade]; 
					
					
					
		// Select Campaign Mode
		
			_actionColor = "<t color='#ffff33'>";	
			_actionText = "- Select CAMPAIGN mode (WARNING: WILL RESTART MISSION)</t>";
			
			_conditionsCampaign = "(serverCommandAvailable '#kick') and !(BEW_v_gameMode == 'CAMPAIGN') and (player getVariable 'AdminMenu') and !(isNil 'OO_INIDBI')";	

			player addAction [
					
				_actionColor + _actionText,  
					
				{
					
					{
				
						// Change Game Mode
						
							BEW_v_gameMode = 'CAMPAIGN';
							
							[format ["Game Mode Set To %1 - Mission Will Restart In 5 Seconds", BEW_v_gameMode]] remoteExec ["systemChat", 0];
							
							if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
							
								["write", ["Mission Settings", "Game Mode", BEW_v_gameMode]] call BEW_v_dataBase; 
							
							};
							
							sleep 5;
							
							['end1'] remoteExec ["BIS_fnc_endMission", 0]; 
			
					} remoteExec ["bis_fnc_call", 2]; 
					
				}
							
			, [], _actionPosition, false, true, "", _conditionsCampaign]; 