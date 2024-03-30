	
	waitUntil {!(isnil "BEW_v_deployedOutposts_WEST")};
	waitUntil {!(isnil "BEW_v_deployedOutposts_EAST")};
	
	
	// Setup West Outposts
	
		{

			_x spawn BEW_FNC_activateOutpost;

		} forEach BEW_v_deployedOutposts_WEST;
	
	
	// Setup East Outposts
	
		{

			_x spawn BEW_FNC_activateOutpost;

		} forEach BEW_v_deployedOutposts_EAST;
		
		
		
		
	// Setup West Repair Depots
	
		{

			_x spawn BEW_FNC_activateRepairDepot;

		} forEach BEW_v_deployedRepairDepots_WEST;
	
	
	// Setup East Repair Depots
	
		{

			_x spawn BEW_FNC_activateRepairDepot;

		} forEach BEW_v_deployedRepairDepots_EAST;