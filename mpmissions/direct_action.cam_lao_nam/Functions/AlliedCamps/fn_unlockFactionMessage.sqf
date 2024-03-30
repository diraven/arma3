	_faction = param [0, "BLU"];


	// Get Flag Texture

		_flagTexture = [_faction] call BEW_FNC_GetFlagTexture;

	
	// Get Faction Name

		private _factionName = call compile format ["

			_factionName = %1_FactionName;
			_factionName

		", _faction];
		
		if (typeName _factionName == "ARRAY") then {
		
			_factionName = _factionName select 0;
		
		};

	
	// Format Message
	
		_message = parseText format [" 

			<t size = '1.5' color = '#FF0000'>New Faction Unlocked</t> 
			<br/>
			<t size = '1.5' color = '#FFFFFF'>%1</t> 
			<br/><br/>
			<img image='%2' size='3'/>
			<br/><br/>
			New gear now available in the Arsenal.

		",_factionName, _flagTexture];  


	// Broadcast Message

		[_message] remoteExec ["hint", 0];