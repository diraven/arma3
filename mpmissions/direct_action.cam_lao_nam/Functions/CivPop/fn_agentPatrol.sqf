	if !(isServer) exitWith {};

	private ["_allMarkers", "_waypointPos", "_maxWaypoints", "_debug", "_markerAlpha"];

	_agent = param [0];
		if (isPlayer _agent) exitWith {systemchat "Agent patrol script exited. Unit given is player."};
		if !(_agent isKindOf "Man") exitWith {systemchat "Agent patrol script exited. Unit given is not a man."};
	
	_radius =  param [1, 100];
	_maxWaypoints = param [2, 10];
		
	_completionRadius = param [3, 10];
	_speedMode = param [4, "SLOW"];
	_debug = FALSE;
	
	
	// Started Message
	
		if (_debug) then {

			systemchat "Agent patrol started.";

		};
			
		
	_allMarkers = [];

	for "_i" from 1 to _maxWaypoints do {

		_waypointPos = [_agent, random _radius, random 360, 0, [0], _agent] call SHK_Pos;

		// Create Marker
			
			_marker = createMarker [format ["%1_agentWaypoint_%2",_agent, _i], _waypointPos];
			_marker setMarkerShape "ICON";
			_marker setMarkerType "hd_dot";
			_marker setMarkerText format ["%1 Waypoint %2", _agent, _i];
			
			if (_debug) then {
			
				_markerAlpha = 1;
				
			}else{
				
				_markerAlpha = 0;
				
			};
			
			_marker setMarkerAlpha _markerAlpha;
			
			_allMarkers pushBack _marker;
	
	};
		

	
	while {alive _agent} do {
		
		
		// Set Speed Mode
		
			_agent forceSpeed (_agent getSpeed "SLOW");
		
		
		// Create Waypoints
		
			{
				
				_markerPos = markerPos _x;
				
				while {(alive _agent) and (_agent distance2D _markerPos > _completionRadius)} do {

					if (alive _agent) then {
					
						if !(_agent getVariable ["civFleeing", FALSE]) then {
					
							waitUntil {!(alive _agent) or !(_agent getVariable ["dialogStarted", FALSE])};
							
							_agent enableAi "PATH";
						
							_agent moveTo _markerPos; 
							
							if (_debug) then {
							
								systemchat format ["%1 moving to %2", _agent, markerText _x];
								
							};
							
							sleep 3;
							
						}else{
							
							waitUntil {sleep 1; !(alive _agent) or !(_agent getVariable ["civFleeing", FALSE])};
						
						};
						
					};
				
				};
				
				if (alive _agent) then {
					
					if (_debug) then {
					
						systemchat format ["waypoint %1 completed", markerText _x];
						
					};
				
				};
			
			} forEach _allMarkers;
			
	
	};
					
		// Delete All Markers
		
			{
			
				deleteMarker _x;
			
			} forEach _allMarkers;
		
	
	if (_debug) then {
	
		systemchat "Script finished. All markers deleted.";
		
	};

		
		