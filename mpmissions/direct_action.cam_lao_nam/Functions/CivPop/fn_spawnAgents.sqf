	if !(isServer) exitWith {};
	
	private ["_allAgents", "_radius"];
	
	_centerPos = param [0];
	_radius = param [1, [100, 100]];
	
		if (typeName _radius == "SCALAR") then {
			
			_radius = [_radius, _radius];
			
		};
	
		_spawnRadius = _radius select 0; 
		_patrolRadius = _radius select 1;
	
	_numberOfAgents = param [2, round (_spawnRadius / 20)];
	_allAgentTypes = param [3, 
	
		[
		
			"C_man_1",
			"C_man_p_beggar_F",
			"C_Man_casual_1_F",
			"C_Man_casual_2_F",
			"C_Man_casual_3_F",
			"C_Man_casual_4_v2_F",
			"C_Man_casual_5_v2_F",
			"C_Man_casual_6_v2_F",
			"C_Man_casual_7_F",
			"C_Man_casual_8_F",
			"C_Man_casual_9_F",
			"C_Man_formal_1_F",
			"C_Man_formal_2_F",
			"C_Man_formal_3_F",
			"C_Man_formal_4_F",
			"C_Man_smart_casual_1_F",
			"C_Man_smart_casual_2_F",
			"C_man_sport_1_F",
			"C_man_sport_2_F",
			"C_man_sport_3_F",
			"C_Man_casual_4_F",
			"C_Man_casual_5_F",
			"C_Man_casual_6_F",
			"C_man_polo_1_F",
			"C_man_polo_2_F",
			"C_man_polo_3_F",
			"C_man_polo_4_F",
			"C_man_polo_5_F",
			"C_man_polo_6_F",
			"C_man_shorts_1_F",
			"C_man_1_1_F",
			"C_man_1_2_F",
			"C_man_1_3_F",
			"C_Man_ConstructionWorker_01_Black_F",
			"C_Man_ConstructionWorker_01_Blue_F",
			"C_Man_ConstructionWorker_01_Red_F",
			"C_Man_ConstructionWorker_01_Vrana_F",
			"C_man_hunter_1_F",
			"C_Man_Messenger_01_F",
			"C_Man_Paramedic_01_F",
			"C_man_shorts_2_F",
			"C_man_shorts_3_F",
			"C_man_shorts_4_F",
			"C_man_w_worker_F",
			"C_Man_UtilityWorker_01_F"
		
		]
	
	];
		
	
	
	// Spawn Agents
	
		_allAgents = []; 
		  
		for "_i" from 1 to _numberOfAgents do { 
			
			// Create Agent
			
				_agentType = _allAgentTypes call BIS_FNC_SelectRandom;
			
				_agent = createAgent [_agentType, _centerPos, [], _spawnRadius, "NONE"];

			// Setup Agent
			
				_agent disableAI "FSM"; 
				_agent setBehaviour "CARELESS"; 

				// Agent Patrol
				
					[_agent, _patrolRadius, 10] spawn BEW_FNC_agentPatrol;
					
				// Fleeing
				
					[_agent] call BEW_FNC_civFlee;

			// Add Agent To Array
			
				_allAgents pushBack _agent 

		};
		
		_allAgents
