	AWS_AMS_Disable = true;
	
	while {true} do {
	
		if !(AWS_AMS_Disable) then {
		
			AWS_AMS_Disable = true;
		
			hint "Firewill AMS is disabled in Direct Action for balancing reasons";
	
		};
		
		sleep 1;
	
	};