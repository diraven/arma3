		
		player addAction [ 
			 
			"<t color='#FFFFFF'>Holster Weapon",  
			 
			{ 
			 
				player action ["SWITCHWEAPON",player,player,-1]; 
				waitUntil {currentWeapon player == "" or {primaryWeapon player == "" && handgunWeapon player == ""}};
			
			} 
			 		 
		, [], -10, false, false, "", "!(currentWeapon player == '') and (vehicle player == player)"]; 