	
	private ["_defaultFlags"];
	
	// Fast Travel Setup
		
		// Define Regular Fast Travel Flags
		
			_allFastTravelFlags = getMissionLayerEntities "fastTravel" select 0; 
			
			BEW_V_AllFastTravelFlags = _allFastTravelFlags;
				publicVariable "BEW_V_AllFastTravelFlags";
		
		
		// Define Switchable Fast Travel Flags
		
			_SwitchableFastTravelFlags = getMissionLayerEntities "MilitarySpawnPoints" select 0;
			
			BEW_V_SwitchableFastTravelFlags = _SwitchableFastTravelFlags;
				publicVariable "BEW_V_SwitchableFastTravelFlags";

			
		 _factionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "OPF_1", "OPF_2", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"]; 
 
		{ 

			_factionType = _x; 

			_flagList = call compile format ["  

			_flagList = getMissionLayerEntities 'FLAG_%1' select 0;  

			%1_v_flagList = _flagList;  
			publicVariable '%1_v_flagList';  

			_flagList  

			", _factionType]; 
			
			_factionSide = switch (_factionType) do {
			
				case "OPF_1" : {EAST};
				case "OPF_2" : {EAST};
				case "OPF_3" : {EAST};
				case "OPF_SOF" : {EAST};
				default {WEST};
			
			};

			{
			
				_x setVariable ["arsenalFaction", _factionType, TRUE];
				_x setVariable ["factionSide", _factionSide, TRUE];

			} forEach _flagList; 

		} forEach _factionTypes;
			
			
			
		// Default Fast Travel Flags
			
			waitUntil {!(isNil "BEW_v_RandomSpawn")};
			
			if !(BEW_v_RandomSpawn) then {
			
				_defaultFlags = [];
				_defaultFlags append (getMissionLayerEntities "FLAG_BLU" select 0); 	
				_defaultFlags append (getMissionLayerEntities "FLAG_OPF_1" select 0); 	
				
			}else{
			
				_defaultFlags = [];
			
			};
			
			_notInObjective = _defaultFlags select {!([_x, (_x getVariable ["factionSide", WEST])] call BEW_FNC_inUnfinishedObjective)};	
			_InObjective = _defaultFlags select {([_x, (_x getVariable ["factionSide", WEST])] call BEW_FNC_inUnfinishedObjective)};
		
		BEW_V_ActivatedFastTravelFlags = _notInObjective; 
			publicVariable "BEW_V_ActivatedFastTravelFlags";


	// Hide If In Objective Area
	
		{
			
			[_x] spawn { 
			
				_flag = _this select 0;
			
				[_flag] call BEW_FNC_HideVehicleInObjectiveArea;
				
				BEW_V_ActivatedFastTravelFlags pushBack _flag;
					publicVariable "BEW_V_ActivatedFastTravelFlags";
		
			};
		
		} forEach _InObjective;