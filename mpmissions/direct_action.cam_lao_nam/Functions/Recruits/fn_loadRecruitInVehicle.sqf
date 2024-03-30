
		player addaction
				
		["<t color='#00ff00'>Move Recruit In Vehicle", 	
		
		{
			
			if ([vehicle player] call BEW_FNC_HasSeatsFree) then {
	
				cursorObject moveInAny vehicle player;
			
			}else{
			
				systemchat "NO SEATS FREE";
				
			};
			
		}
		
		, [], 99, true, true, "", "!(vehicle player == player) and !(isplayer cursorObject) and (cursorObject in units group player) and (leader group player == player) and (vehicle _target distance2D cursorObject < 30)"];