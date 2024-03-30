	if !(isServer) exitWith {};	
	
	_veh = _this select 0;   
	_objectiveMarker = _this select 1;
	_side = param [2, WEST];
	_faction = param [3, "BLU"];
	_MaxInfantry = param [4, 5]; 
	_infantryUnits = param [5, [
	
		"B_soldier_AR_F",
		"B_medic_F",
		"B_engineer_F",
		"B_Soldier_GL_F",
		"B_soldier_M_F",
		"B_Soldier_F",
		"B_soldier_AT_F",
		"B_soldier_AA_F",
		"B_Soldier_TL_F"
	
	]];


	// Setup Translation List

		_translationList = call compile format ["
					
			_translationList = [[BLU_Map_TransList, %1_New_TransList]];
		
			_translationList
		
		", _faction];
		

	// Create Crew For Vehicle
	
		_vehGroup = [_veh, _side, _faction] call BEW_FNC_createTranslatedVehicleCrew;  

	
	// Create Infantry Group
	
		_infantryGroup = createGroup _side;

		for "_i" from 1 to random _MaxInfantry do {	
		
			// Select Unit Type
			
				_origType = _infantryUnits call BIS_FNC_SelectRandom;
			
			
			// Translate Class Name
							
				_newType = [_origType, _translationList] call BEW_FNC_TranslateClassNames;
				
					
			// Create Unit
			
				_unit = _infantryGroup createUnit [_newType, getPos _veh, [], 0, "FORM"];
			
			// Move In Unit
			
				_unit moveInCargo _veh;

		};
	
	
	// Delete Driver Of Vehicle
	
		deleteVehicle driver _veh;


	// Sleep Random 
	
		sleep random 3;


	// Randomly Blow Up Some Vehicles
		
		_camps = getMissionLayerEntities 'camps' select 1;
		
		if !(_objectiveMarker in _camps) then {
		
			[_veh] spawn {

				_veh = _this select 0;

				while {alive _veh} do {

					if (random 100 <= 1) then {

						_charge = createMine ["SatchelCharge_F", position _veh, [], 0];
						_charge setDamage 1;

					};
					
					sleep 2;

				};

			};
		
		};

	// Wait Until Vehicle Is On Shore - Keep Pushing Forward
		
		[_veh, 20] call BEW_FNC_AddForwardVelocity;
	
	
	// Open Ramp
	
		_veh animateSource ["ramp_rotate", 1];
	
	
	// Slight Delay
	
		sleep 3;
		
	// Unload Cargo
	
		_veh setVehicleCargo objnull;
		
		
	// Make The Crew Join The Infantry Group
	
		{[_x] joinSilent _infantryGroup} forEach units _vehGroup; 
	
	
	
	// Make Everyone Get Out
	
		_infantryGroup leaveVehicle _veh;

		{

		doGetOut _x;
		_x action["eject", _veh];

		} forEach units _infantryGroup;
	
	
	
	// Give Infantry Patrol Waypoints
		
		[leader _infantryGroup, markerPos _objectiveMarker, markerSize _objectiveMarker select 0, 10] spawn BEW_FNC_taskPatrol;


	// Wait Until Objective Complete
	
		waitUntil {sleep 3; ((toUpper _objectiveMarker in BEW_v_all_completedMainObjectives) or (toUpper _objectiveMarker in BEW_v_activatedAlliedCamps))};  

	
	// Delay Till Despawn
	
		sleep 60;  
	 
	 
	// Delete All Units And Vehicle
		{deleteVehicle _x} forEach units _infantryGroup;  
		deleteVehicle _veh;  
