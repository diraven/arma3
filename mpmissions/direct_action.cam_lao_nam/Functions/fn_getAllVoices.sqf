	
	private _allvoices = "true" configClasses (configfile >> "CfgVoice") apply {configName _x};
			
	private _authors = [];
		
		{
				
			_author = getText (configfile >> "CfgVoice" >> _x >> "author");
			
			_authors pushBackUnique _author;
			
		} forEach _allvoices;

		_string = "";
		_br = toString [13,10]; 
		
		{
		
			_author = _x;
			
			if !(_author == "") then {
			
			_string = _string + "//" + _author + _br + _br;
		
			_voices = "true" configClasses (configfile >> "CfgVoice") apply {configName _x};
			_voices = _voices select {getText (configfile >> "CfgVoice" >> _x >> "author") == _author};
		
				
			for "_i" from 0 to (count _voices - 1) do {
						
				if (_i == count _voices - 1) then {
				
					_string = _string + str (_voices select _i);
				
				}else{
				
					_string = _string + str (_voices select _i) + "," + _br;
				
				};		
				
			};
		
			};
			
			_string = _string + _br + _br;
		
			
		} forEach _authors;

	copyToClipboard _string;	