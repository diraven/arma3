	private ["_droneList"];
	
	if (BEW_v_OPTRE) then {
			
		// Drone List
		
			_droneList = [
			
				["B_UGV_01_F", 1],
			
				["OPTRE_Wombat_S", 1],

				["B_UGV_01_rcws_F", 3],
			
				["OPTRE_Wombat", 4],

				["OPTRE_Wombat_B", 5],

				["B_T_UAV_03_dynamicLoadout_F", 6]

			];
	
	}else{
	
		// Drone List
		
			_droneList = [
			
				["B_UGV_01_F", 1],
			
				["B_UAV_02_dynamicLoadout_F", 1],

				["B_UGV_01_rcws_F", 3],
			
				["B_UAV_02_CAS_F", 4],

				["B_UAV_05_F", 5],

				["B_T_UAV_03_dynamicLoadout_F", 6]

			];
		
		
	};
		
		_droneList