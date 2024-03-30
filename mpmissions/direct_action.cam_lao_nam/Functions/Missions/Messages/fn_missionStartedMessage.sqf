	private ["_message", "_message2"];
	
	_messageLine_1 = param [0, "NEW MISSION ORDERS"];
	_messageLine_2 = param [1, format ["%1", "Place Holder"]];
	
	[[_messageLine_1, _messageLine_2],{
	
		_messageLine_1 = _this select 0;	
		_messageLine_2 = _this select 1;

		[[

			[_messageLine_1, "<t align = 'center' shadow = '1' size = '1.5'>%1</t><br/"],
			[_messageLine_2, "<t align = 'center' shadow = '1' size = '0.25' font='PuristaBold'>%1</t>", 15]

		]] spawn BIS_fnc_typeText; 
		
		playsound "RadioAmbient2";


	}]remoteExec ["bis_fnc_call", 0]

 
