	private ["_flag", "_faction", "_mapFaction", "_newFaction", "_factionName"];
	
	_flag = param [0];
	_faction = param [1];
	
	
	// Get Flag Texture
	
		_flagTexture = [_faction] call BEW_FNC_getFlagTexture;
	
	
	// Set Flag Texture
	
		_flag setFlagTexture _flagTexture;