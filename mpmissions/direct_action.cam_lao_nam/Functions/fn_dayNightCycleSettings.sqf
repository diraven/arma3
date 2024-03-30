if (!isServer) exitWith {};
	
	private ["_dayMultiplier", "_nightMultiplier", "_debug"];
	
	if (BEW_v_Zombies) then {
	
		// Set To Midnight
		
			[0] call BEW_FNC_SetTime;
			setTimeMultiplier 0.00000000000000000001;
			
	}else{
		
		
		if (BEW_v_persistentTime) then {
		
			// Set Time 
			
				[(BEW_v_startTime select 0)] call BEW_FNC_SetTime;
			
			
			// Set Weather
			
				0 setOvercast (BEW_v_startTime select 1); 
				0 setRain (BEW_v_startTime select 2); 
				0 setFog (BEW_v_startTime select 3); 
				forceWeatherChange;
		
		};
		
		_dayMultiplier = 10;
		
		_dayMultiplier = switch (BEW_v_dayNightCycleMode) do {
		
			case "REALTIME" : {1};
			case "FAST" : {5};
			case "FASTER" : {10};
			default {10};
		
		};
		
		_nightMultiplier = switch (BEW_v_dayNightCycleMode) do {
		
			case "REALTIME" : {1};
			case "FAST" : {20};
			case "FASTER" : {40};
			default {40};
		
		};
		
		_debug = FALSE;
		
		waitUntil {time > 1};

			
			while {true} do {
				
					if (sunOrMoon < 0.99) then { 				// adjust this lower to change sooner. Note: "0.99 value, the twilight is still quite dark" https://community.bistudio.com/wiki/sunOrMoon
				
					if (_debug) then {systemchat "Night Time"};
					setTimeMultiplier _nightMultiplier;     					 // adjust this value for slower or faster night cycle ( 24 hours will take 1 hour )
				
				} else {
				
					if (_debug) then {systemchat "Day Time"};
					setTimeMultiplier _dayMultiplier;      					// adjust this value for slower or faster day cycle  ( 12 hours will take 1 hour )
				
				};

				uiSleep 30;
			
			};
		
	};
