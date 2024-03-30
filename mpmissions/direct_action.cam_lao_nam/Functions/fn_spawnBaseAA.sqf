	if !(isServer) exitWith {};
	if (isNil "BaseAA") exitWith {};

	_origVeh = _this select 0;
	_origType = typeOf _origVeh;
	_spawnPos = getPosASL _origVeh;
	_spawnDir = getDir _origVeh;
	
	// Tranlsate ClassName
				
		_translationList = [[BLU_Map_TransList, BLU_New_TransList]];
		
		_newType = switch (true) do {
		
			case (BEW_v_OPTRE) : {"OPTRE_Lance"};
			
			case (BEW_v_Vietnam) : {"vn_b_army_static_m45"};
			
			case (BEW_v_WW2) : {"LIB_Flakvierling_38"};
			
			default {
			
				[_origType, _translationList] call BEW_FNC_TranslateClassNames;
			
			};
		
		};
		

	// Delete Original Vehicle
	
		deleteVehicle _origVeh;
		
		sleep 1;

	
	// Spawn New Vehicle
	
		_newVeh = createVehicle [_newType, _spawnPos, [], 0, "CAN_COLLIDE"];
		_newVeh setPosASL _spawnPos;
		_newVeh setDir _spawnDir;
		
		
	// Setup Vehicle
	
		_newVeh allowDamage false;
		[_newVeh] spawn BEW_FNC_autoRefillVehicleAmmo;
		BASEAA = _newVeh;
		
		
	// Spawn Crew
	
		_vehGroup = [_newVeh, WEST, "BLU"] call BEW_FNC_createTranslatedVehicleCrew;
		
		
	// Setup Crew

		{
		
			_x allowDamage false;
			_x disableAI "AUTOTARGET"; 
			_x disableAI "MOVE"; 
			_x disableAI "TARGET"; 
			_x setCombatMode "BLUE"; 
			_x setBehaviour "CARELESS";
				
		} forEach units _vehGroup;
		
		
		
	// Create Base AA Trigger
		
		_markerPos = markerPos BEW_v_HqSafeZoneMarker;
		_markerSize = markerSize BEW_v_HqSafeZoneMarker select 0;
		
		baseAATrigger = createTrigger ["EmptyDetector", _markerPos, false];
		baseAATrigger setTriggerArea [_markerSize, _markerSize, 1000, false];
		baseAATrigger setTriggerActivation ["EAST", "PRESENT", true];
		baseAATrigger setTriggerStatements [
		
			"(this)",
			"			
				baseAA enableAI 'AUTOTARGET'; baseAA enableAI 'TARGET'; baseAA setCombatMode 'RED'; baseAA setBehaviour 'COMBAT';

				[HQ_WEST, 'Come in all forces. The HQ is under attack!'] remoteExec ['sideChat', 0]; 
			", 
			"
				baseAA disableAI 'AUTOTARGET'; baseAA disableAI 'TARGET'; baseAA setCombatMode 'BLUE'; baseAA setBehaviour 'CARELESS';
			
			"
		
		];
		
		publicVariable "baseAATrigger";
		
		
		// Delete Base AA If Zombies
		
		if (BEW_v_Zombies) exitWith {
		
			deleteVehicle baseAATrigger;
		
		};