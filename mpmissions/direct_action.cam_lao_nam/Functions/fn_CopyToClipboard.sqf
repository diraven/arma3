
	_stringArray = _this select 0;
	_lastInArray = [_stringArray] call BEW_FNC_LastInArray;
	
	// Add Linebreaks 

		_string = ""; 
		_br = toString [13,10]; 
		{
			if (_x == _lastInArray) then {
			
				_string = _string + "'" + _x + "'"
			
			}else{
			
				_string = _string + "'" + _x + "'," + _br
				
			};
			
			systemchat format ["Processing - %1", _x]; 
		
		} forEach _stringArray;  


	// Copy To Clipboard
	 
		copyToClipboard _string;
		
		systemchat format ["%1 Entries Copied To Clipboard", count _stringArray];
		
	_string
