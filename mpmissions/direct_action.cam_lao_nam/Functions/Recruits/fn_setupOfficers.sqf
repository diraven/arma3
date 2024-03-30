	if (!isServer) exitWith {};

	waitUntil {time > 0};
	

	_factionTags = ["BLU", "BLU_ALT", "BLU_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2", "OPF_1"];

	BEW_v_Officers = [];

	{
	
		_factionTag = _x;
		
		
		// Define Officers
		
		_officers = call compile format ["
			
			_officers = getMissionLayerEntities '%1_Recruits' select 0; 
			
			_officers
			
		", _factionTag];
	
	
	
	// Public Variable
	
		BEW_v_Officers append _officers;

		{
				
			_officer = _x;
			_oldType = typeOf _officer;	
				
			[_officer, _factionTag] spawn {
			
				_officer = _this select 0;
				_factionTag = _this select 1;
			
			
				// Setup Officer
				
					_officer allowDamage false;
					_officer setUnitRank "PRIVATE";
					_officer disableAI "MOVE";
					_officer disableAI "TARGET";
					_officer disableAI "AUTOTARGET";
					_officer setUnitPos "UP";

				
				sleep 3;
				
				// Switch Loadout
				
					[_officer] call BEW_FNC_switchLoadout;
					
					removeAllWeapons _officer;
					removeAllHandgunItems _officer;
					removeBackpack _officer;
					_officer setVariable ["canSpawnRecruits", true, true];
					
				
				// Spawn Recruits
					
					[_officer, _factionTag] call BEW_FNC_recruitActions;
					
				// Spawn Supplies
				
					[_officer] call BEW_FNC_spawnSuppliesAction;
					
				sleep 10;
				
				
				// Disable Simulation
				
					_officer enableSimulationGlobal false;
					
					
				// Wait Until Not In Objective Area To Be Activated
		
					[_officer, _factionTag] call BEW_FNC_HideVehicleInObjectiveArea;
				
			};
		
		} forEach _officers;
	
	} forEach _factionTags;	
	
	
	// Broadcast Variable
		
		publicVariable "BEW_v_Officers";