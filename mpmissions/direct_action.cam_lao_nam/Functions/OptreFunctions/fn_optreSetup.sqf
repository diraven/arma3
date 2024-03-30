	
	if !(BEW_v_OPTRE_Running) exitWith {};
	
	// Disable Ship Turrets
	
		[] call BEW_FNC_disableShipTurrets;
		
		
	// Cryopods Setup
	
		// Define Cryopods
	
			BEW_v_cryoPods = getMissionLayerEntities "Cryopods" select 0;
				publicVariable "BEW_v_Cryopods";
			
		// Cryopods Action

			{	
				
				_cryopod = _x;

				[_cryopod] remoteExec ["BEW_FNC_getOutOfCryopod", 0, true];
			
			} forEach BEW_v_cryoPods;