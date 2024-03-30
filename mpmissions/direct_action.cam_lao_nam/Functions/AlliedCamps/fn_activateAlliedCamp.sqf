	
	private ["_marker", "_markerPos", "_markerSize", "_markerText", "_faction", "_discoveryRange"];
	
	_marker = _this select 0;
		_markerPos = markerPos _marker;
		_markerSize = markerSize _marker;
		_markerText = markerText _marker;
		
	_faction = _this select 1;
	_discoveryRange = 3000;
	
	
	if (_markerText == "") then {
	
		_markerText = call compile format ["
		%1_FactionName
		", _faction];
		
		if (typeName _markerText == "ARRAY") then {
			
			_markerText = _markerText select 0;
			
		};
		
		_markerText = _markerText + " Camp";
	
	};
	
	_respawnArrows = BEW_v_alliedRespawnArrows select {_x inArea _marker};
	
	
	// Check If Player Near Area
	
		waitUntil {
		
			(
			
				(count (allplayers select {

					((_x distance2D markerPos _marker) < _discoveryRange) and 
					(isTouchingGround _x) and
					(alive _x) and
					(side _x == WEST)

				}) > 0)
			
			) or (toUpper _marker in BEW_v_revealedAlliedCamps)
			
		};
		
		
	// Send Discovery Message
		
		if !(_marker in BEW_v_revealedAlliedCamps) then {
		
			// Send Message
		
				_message = format ["We have reports of an allied camp at %1. Check your map for the location.", _markerText];
			
				[HQ_WEST , _message] remoteExec ["sideChat", 0];
			
		};
		
		
	// Add Revealed Camp To Database
			
		if !(toUpper _marker in BEW_v_revealedAlliedCamps) then {
		
			BEW_v_revealedAlliedCamps = BEW_v_revealedAlliedCamps + [toUpper _marker];
	
			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
				 
				["write", ["Locations", "Revealed Allied Camps", BEW_v_revealedAlliedCamps]] call BEW_v_dataBase; 
			
			};
			
		};
		
		
	// Setup Discovered Camp Marker
	
		[_marker, _faction, FALSE, TRUE, "", "colorIndependent"] call BEW_FNC_setupCampMarker;
		
	
	// Check If Player In Area
	
		waitUntil {
		
			(
		
				(count (allplayers select {

					(_x inArea _marker) and 
					(isTouchingGround _x) and
					(alive _x) and
					(side _x == WEST)

				}) > 0)
			
			) or (toUpper _marker in BEW_v_activatedAlliedCamps) 
			
		};
	
	
	// Add Activated Camp To Database
				
		if !(toUpper _marker in BEW_v_activatedAlliedCamps) then {
		
			BEW_v_activatedAlliedCamps = BEW_v_activatedAlliedCamps + [toUpper _marker];
			
			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
				 
				["write", ["Locations", "Activated Allied Camps", BEW_v_activatedAlliedCamps]] call BEW_v_dataBase; 
			
			};
			
			publicVariable "BEW_v_activatedAlliedCamps";
			
		};
	
		
	// Add Unlocked Faction To Array And Database
				
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
		
			["write", ["Arsenal", "Unlocked Factions", BEW_v_UnlockedFactions]] call BEW_v_dataBase;
		
		};
		
		BEW_v_UnlockedFactions pushBackUnique _faction;
		BEW_v_UnlockedFactions pushBackUnique _faction;
			publicVariable "BEW_v_UnlockedFactions";		
	
	
	// Create Spawn Points
	
		{
		
			_spawnPointName = (_x getVariable ["spawnPointName", "Spawn Point"]);
					
			[WEST, getPos _x, _spawnPointName] call BIS_fnc_addRespawnPosition;
				
		} forEach _respawnArrows;
		
		
	// Setup Activated Camp Marker
	
		[_marker, _faction, TRUE, TRUE, _markerText, "colorIndependent"] call BEW_FNC_setupCampMarker;
		
		
	// Setup Fast Travel Flags
		
		_nearestFlags =	BEW_V_AllFastTravelFlags select {_x inArea _marker};
		
		{
	
			[_x, _faction] call BEW_fNC_ActivateFastTravelFlag;
		
		} forEach _nearestFlags;
		
		
	// Send Message
		
		if !(_marker in BEW_v_activatedAlliedCamps) then {
			
			_message = format ["Well done! You have discovered %1. New equipment has been added to your arsenal.", _markerText];
			
			[HQ_WEST , _message] remoteExec ["sideChat", 0];
		
		};