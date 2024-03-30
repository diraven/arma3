
	if !(BEW_v_AOWarning) exitWith {};
	if !((BEW_v_GameMode == "CAMPAIGN") or (BEW_v_GameMode == "CAMPAIGN SOLO")) exitWith {};

	_debug = false;
	
	waitUntil {!(isnil "BEW_v_all_Objectives")};
	
	
	while {(alive player)} do {
	
		if !(side player == EAST) then {

			_allObjectives = BEW_v_all_Objectives select {(!(markerColor _x == "colorBLUFOR") and !(markerColor _x == "colorYELLOW"))};
			
			{
				_marker = _x;
				_markerPos = markerPos _marker;
				_markerText = markerText _marker;
				_altitudeLimit = 100;
				
				if (markerAlpha _marker > 0) then {
				
					_distance = player distance2D markerPos _x;
					
					
					// On Ground Warning
							
						if ((((player distance2D markerPos _x) < (markerSize _x select 0) + 150) or ((player distance2D markerPos _x) < (markerSize _x select 0) + 150)) and (alive player) and !(vehicle player isKindOf "Air") and !(BEW_v_objectiveMissionActive) and (isMultiplayer)) then {

							_hintMessage = parseText format ["<t size = '1.5' color = '#FF0000'>WARNING</t><br/><t size = '1.5' color = '#FFFFFF'>Approaching %1</t><br/><br/>Entering the AO will start this mission.<br/><br/>Once started, missions cannot be cancelled without penalty.", _markerText]; 
							  
							  hint _hintMessage; 
							
							waitUntil {sleep 3; ( ( !((player distance2D markerPos _x) < (markerSize _x select 0) + 150) or !((vehicle player distance2D markerPos _x) < (markerSize _x select 0) + 150) or (BEW_v_objectiveMissionActive) ) and (alive player) and !(vehicle player isKindOf "Air"))};
							
							if (_debug) then {systemchat "infantry left the area"};
								
						};
					
					// In Air Warning
					
						if ((((player distance2D markerPos _x) < (markerSize _x select 0)) or ((vehicle player distance2D markerPos _x) < (markerSize _x select 0))) and (alive player) and (vehicle player isKindOf "Air") and (((getPosATL vehicle player) select 2) < _altitudeLimit) and !(BEW_v_objectiveMissionActive)) then {
						
							_outOfBoundsVeh = vehicle player;
							_outOfBoundsVeh lock 2;
							
						
							_hintMessage = format ["WARNING: ROE states you are not currently authorised to fly below %2m in the enemy airspace at %1. You have 15 seconds to climb above %2m or leave the area.", _markerText, _altitudeLimit];
						
								hint _hintMessage;	
							
							_outOfBoundsTimer = 16;
							
							while {_outOfBoundsTimer > 0} do {
														
								sleep 1;
							
								if ((((player distance2D markerPos _x) < (markerSize _x select 0)) or ((vehicle player distance2D markerPos _x) < (markerSize _x select 0))) and (alive player) and (vehicle player isKindOf "Air") and (((getPosATL vehicle player) select 2) < _altitudeLimit) and !(BEW_v_objectiveMissionActive)) then {
									
									_outOfBoundsTimer = _outOfBoundsTimer - 1;
									systemchat format ["OUT OF BOUNDS - You will be executed in %1", _outOfBoundsTimer];
								
								}else{
								
									_outOfBoundsTimer = 0;
								
								};
							
							};
							
							if ((((player distance2D markerPos _x) < (markerSize _x select 0)) or ((vehicle player distance2D markerPos _x) < (markerSize _x select 0))) and (alive player) and (vehicle player isKindOf "Air") and (((getPosATL vehicle player) select 2) < _altitudeLimit) and !(BEW_v_objectiveMissionActive)) then {
								
								_outOfBoundsVeh setDamage 1;
								
							};
							
							waitUntil {sleep 3; (!((player distance2D markerPos _x) < (markerSize _x select 0)) or !((vehicle player distance2D markerPos _x) < (markerSize _x select 0)) or !(((getPosATL vehicle player) select 2) < _altitudeLimit) or (BEW_v_objectiveMissionActive))};
						
								_outOfBoundsVeh lock 0;
						
							if (_debug) then {systemchat "aircraft left the area"};
						
						};

				};
				
			} forEach _allObjectives;	
			
		};

			sleep 3;

			if (_debug) then {systemchat "checking"};	

	};