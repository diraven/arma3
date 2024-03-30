	private ["_missionLevel", "_message", "_message2"];
	
	_missionLevel = _this select 0;
	_messageLine_1 = param [1, "MISSION COMPLETE"];
	_music = param [2, "EventTrack01_F_Curator"];
	_messageLine_2 = param [3, format ["Mission Level %1", _missionLevel]];
	
	[[_messageLine_1, _music, _messageLine_2],{
	
		_messageLine_1 = _this select 0;	
		_music = _this select 1;
		_messageLine_2 = _this select 2;

		[[

			[_messageLine_1, "<t align = 'center' shadow = '1' size = '1.5'>%1</t><br/"],
			[_messageLine_2, "<t align = 'center' shadow = '1' size = '0.25' font='PuristaBold'>%1</t>", 15]

		]] spawn BIS_fnc_typeText; 

		playsound "RadioAmbient2";
		playMusic [_music, 0];


	}]remoteExec ["bis_fnc_call", 0]

 
