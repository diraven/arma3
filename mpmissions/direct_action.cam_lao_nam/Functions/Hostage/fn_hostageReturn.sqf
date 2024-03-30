
	private [
		
		"_hostage",
		"_centerPos",
		"_nearestPlayer",
		"_returnPoints",
		"_returnMarker",
		"_markerName",
		"_returnIcon",
		"_returnArea"

	];

	_hostage = _this select 0;
	_parentTask = _this select 1;
	_centerPos = getPos _hostage;
	
	
	// Wait Until Player Near Hostage
	
		waitUntil {(({alive _x && _x distance2D _hostage < 3} count allPlayers) > 0) or !(alive _hostage)};
			
			if (alive _hostage) then {
			
				// Create Task
		
					private _freeHostagetask = format ["returnHostage_%1", _hostage];	
					_taskDescription = format ["Free the hostage and return him safely back to base for debriefing.", _objectiveText];
					_taskTitle = format ["Free Hostage", _objectiveText];
					
					[

						WEST, 
						[_freeHostagetask, _parentTask],
						 
						[

						_taskDescription, 
						_taskTitle, 
						_objectiveMarker

						], 

						_hostage, 
						"CREATED", 
						-1, 
						false, 
						"meet", 
						true

					] call BIS_fnc_taskCreate;
			
				// Send Message
				
					_nearestPlayer = [_hostage] call BEW_FNC_FindNearestPlayer;
					[_nearestPlayer , "Come in HQ. We've found a hostage."] remoteExec ["sideChat", 0];
			
			
			};
		
		if (isNull _hostage) exitWith {};
	
	
	// Wait Until Hostage Rescued
	
	waitUntil {(_hostage getVariable "HostageRescued") or !(alive _hostage)};	
		
		if ((alive _hostage) and (_hostage getVariable "HostageRescued")) then {
		
			// Send Message
			
				[HQ , "Well done DELTA. Now escort the hostage back to base."] remoteExec ["sideChat", 0];
		
			// Hostage Setup
			
				_hostage setCaptive false;
				_hostage allowDamage TRUE;
				_hostage enableAI "MOVE";
				_hostage enableAI "TARGET";
				_hostage enableAI "AUTOTARGET";
				_hostage setUnitPos "UP";

		};
		
		// Create Return Marker
		
			_returnPoints = [] call BEW_FNC_findReturnPoints;
			_returnMarker = [_returnPoints, _centerPos] call BIS_fnc_nearestPosition;

			_markerName = "hostageReturnIcon";
			_returnIcon = createMarker [_markerName, markerPos _returnMarker];
			_returnIcon setMarkerType "mil_pickup";
			_returnIcon setMarkerText "Return Hostage To Base";
			_returnIcon setMarkerSize [0.75, 0.75];
			_returnIcon setMarkerColor "colorYELLOW";
			
			
		// Return Marker Area

			_markerName = "hostageReturnArea";
			_returnArea = createMarker [_markerName, markerPos _returnMarker];
			_returnArea setMarkerShape "ELLIPSE";
			_returnArea setMarkerSize [20, 20];
			_returnArea setMarkerColor "colorYELLOW";
			_returnArea setMarkerAlpha 0.3;
	
	
	// Wait Until Hostage Returned
		
	waitUntil {(_hostage distance markerPos _returnMarker < 20) or !(alive _hostage)};
	
		if (alive _hostage) then {
			
			
			// Send Message
			
				[HQ , "Well done. You've rescued a hostage."] remoteExec ["sideChat", 0];
				
				sleep 3;
	
			// Recover Intel
		
				[_centerPos, 2500] remoteExec ["BEW_FNC_RevealObjective", 2];
			
		}else{
		
			// Send Message
		
				[HQ , "Fuck DELTA. A hostage has been killed."] remoteExec ["sideChat", 0];
		
		};
	
	// Clean Up Hostage
	
		if (alive _hostage) then {deleteVehicle _hostage};
		
	// Delete Markers
	
		deleteMarker _returnIcon;
		deleteMarker _returnArea;