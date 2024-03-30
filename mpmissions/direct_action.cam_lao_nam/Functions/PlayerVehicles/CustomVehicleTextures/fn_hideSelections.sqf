
_veh = param [0, cursorObject];

	// Get Blacklisted Selections
	
		_selections = [] call BEW_FNC_blackListedSelections;
	
	// Remove Duplicates
	
		_selections = _selections arrayIntersect _selections;

	
	// Hide Selections
	
		{

			_veh hideSelection [_x, true];
			
		} forEach _selections;