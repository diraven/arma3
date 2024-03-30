	private ["_message", "_message2", "_soundEffect"];
	
	_messageLine_1 = param [0, "Message Line 1"];
	_messageLine_2 = param [1, format ["%1", "Message Line 2"]];
	_soundEffect = param [2, ""];
	
	[[_messageLine_1, _messageLine_2, _soundEffect],{
	
		_messageLine_1 = _this select 0;	
		_messageLine_2 = _this select 1;
		_soundEffect = _this select 2;

		[[

			[_messageLine_1, "<t align = 'center' shadow = '1' size = '1.5'>%1</t><br/"],
			[_messageLine_2, "<t align = 'center' shadow = '1' size = '0.25' font='PuristaBold'>%1</t>", 15]

		]] spawn BIS_fnc_typeText; 
		
		if !(_soundEffect == "") then {
		
			playsound _soundEffect;
			
		};


	}]remoteExec ["bis_fnc_call", 0]

 
