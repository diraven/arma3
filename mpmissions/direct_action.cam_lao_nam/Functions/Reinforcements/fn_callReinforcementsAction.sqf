	
	reinforcementsMunitionsCost = param [0, 100];
	
	
	// Set Reinforcement Mission Flag

		if (isnil "BEW_V_reinforcementRequestActive") then {
		
			BEW_V_reinforcementRequestActive = FALSE;	
				publicVariable "BEW_V_reinforcementRequestActive";
		
		};
	
	
	// Available Action
	
		player addAction [ 
			 
			"<t color='#00ff00'>- Call Reinforcements",  
			 
			{ 
			
				_caller =  (_this select 1);
				_munitionsCost = _this select 3;
				
				if (BEW_v_Zombies) then {
					
					hint "SQUAD DEPLOYED NEARBY";
					
					[_caller] spawn BEW_FNC_callReinforcementsGround;		
											
				}else{
				
					openMap true;
					hint "SELECT DROP ZONE FOR REINFORCEMENTS";
					
					_array = [_caller, group _caller];
					
					_array onMapSingleClick {	

						_caller = _this select 0;
						_callerGroup = _this select 1;
						
					onMapSingleClick {};

						openMap false;
						playSound 'click';
						
						
							[_pos, _caller, _callerGroup, "runwayTakeOff"] spawn BEW_FNC_callReinforcementsMain;		
							
							
					};

				};		
				
				
				[[_munitionsCost, side player], {
									
					_munitionsCost = _this select 0;
					_side = _this select 1;
					
					if (_side == EAST) then {
					
						BEW_v_munitions_EAST = BEW_v_munitions_EAST - _munitionsCost;
							publicVariable "BEW_v_munitions";
							
						// Change Munitions In Database
			
								if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
									 
									["write", ["Progression", "Munitions EAST", BEW_v_munitions_EAST]] call BEW_v_dataBase; 
								
								};
							
							sleep 3;
							
							_message = format ["Current Munitions %1", BEW_v_munitions_EAST];
				
							[[_message, _side], {
							
								_message = _this select 0;
								_side = _this select 1;
								
								if (side player == _side) then {
								
									systemchat _message;
								
								};
							
							}] remoteExec ["BIS_FNC_Call", 0];
					
					
					}else{
					
						BEW_v_munitions = BEW_v_munitions - _munitionsCost;
							publicVariable "BEW_v_munitions";
							
						// Change Munitions In Database
			
								if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
									 
									["write", ["Progression", "Munitions", BEW_v_munitions]] call BEW_v_dataBase; 
								
								};
							
							sleep 3;
							
							_message = format ["Current Munitions %1", BEW_v_munitions];
				
							[[_message, _side], {
							
								_message = _this select 0;
								_side = _this select 1;
								
								if (side player == _side) then {
								
									systemchat _message;
								
								};
							
							}] remoteExec ["BIS_FNC_Call", 0];
						
					};
										
				}] remoteExec ["BIS_FNC_call", 2];
			
			} 
			 		 
		, reinforcementsMunitionsCost, -95, false, true, "", "(player getVariable 'SquadLeaderMenu') and !(BEW_V_reinforcementRequestActive) and (typeof player == 'B_Soldier_TL_F') and (((side player == WEST) and (BEW_v_Munitions >= reinforcementsMunitionsCost)) or ((side player == EAST) and (BEW_v_Munitions_EAST >= reinforcementsMunitionsCost)))"]; 
		
	
	
	// Unavailable Action Paradrop Active
	
		player addAction [ 
			 
			"<t color='#FF0000'>- Reinforcements Unavailable - Paradrop Mission Active",  
			 
			{ 
			
				hint "REINFORCEMENTS UNAVAILABLE AT THIS TIME - PARADROP MISSION ACTIVE";
							
			} 
			 		 
		, [], -95, false, true, "", "((player getVariable 'SquadLeaderMenu') and (BEW_V_reinforcementRequestActive) and (player == leader group player))"]; 
		
		
	// Unavailable Group Full
	
		player addAction [ 
			 
			"<t color='#FF0000'>- Reinforcements Unavailable - Squad Full",  
			 
			{ 
			
				hint "REINFORCEMENTS UNAVAILABLE AT THIS TIME - SQUAD FULL";
							
			} 
			 		 
		, [], -95, false, true, "", "!(([] call BEW_FNC_CountAllGroupsWithPlayers) < 10) and (player getVariable 'SquadLeaderMenu') and (player == leader group player)"]; 
		
		
	// Unavailable Low Munitions
	
		player addAction [ 
			 
			"<t color='#FF0000'>- Reinforcements Unavailable - Not Enough Munitions",  
			 
			{ 
			
				hint "REINFORCEMENTS UNAVAILABLE AT THIS TIME - NOT ENOUGH MUNITIONS";
							
			} 
			 		 
		, [], -95, false, true, "", "((player getVariable 'SquadLeaderMenu') and (player == leader group player) and !(((side player == WEST) and (BEW_v_Munitions >= reinforcementsMunitionsCost)) or ((side player == EAST) and (BEW_v_Munitions_EAST >= reinforcementsMunitionsCost))))"]; 