	
	_centerPos = param [0];
	_side = param [1, EAST];
	
	// All Zombie Types
	
		_zombieTypes = [
			
			"RyanZombieC_man_1slowOpfor",
			"RyanZombieC_man_hunter_1_FslowOpfor",
			"RyanZombieC_man_pilot_FslowOpfor",
			"RyanZombieC_journalist_FslowOpfor",
			"RyanZombieC_OrestesslowOpfor",
			"RyanZombieC_NikosslowOpfor",
			"RyanZombie15slowOpfor",
			"RyanZombie16slowOpfor",
			"RyanZombie17slowOpfor",
			"RyanZombie19slowOpfor",
			"RyanZombieC_man_polo_1_FslowOpfor",
			"RyanZombie23slowOpfor",
			"RyanZombie18slowOpfor",
			"RyanZombie20slowOpfor",
			"RyanZombie21slowOpfor",
			"RyanZombie22slowOpfor",
			"RyanZombie24slowOpfor",
			"RyanZombie25slowOpfor",
			"RyanZombie26slowOpfor",
			"RyanZombie27slowOpfor",
			"RyanZombie28slowOpfor",
			"RyanZombie29slowOpfor",
			"RyanZombieC_man_polo_2_FslowOpfor",
			"RyanZombie30slowOpfor",
			"RyanZombie31slowOpfor",
			"RyanZombie32slowOpfor",
			"RyanZombieC_man_polo_4_FslowOpfor",
			"RyanZombieC_man_polo_5_FslowOpfor",
			"RyanZombieC_man_polo_6_FslowOpfor",
			"RyanZombieC_man_p_fugitive_FslowOpfor",
			"RyanZombieC_man_w_worker_FslowOpfor",
			"RyanZombieC_scientist_FslowOpfor"
			
		];
	
	
		_zombieTypesToSpawn = [];
	
		for "_i" from 1 to random 3 do {
		
			_zombieType = _zombieTypes call BIS_FNC_SelectRandom;
			
			_zombieTypesToSpawn pushBack _zombieType;
		
		};
	
	
	// Create Group
		
		_zombieGroup = createGroup EAST;
		
		{
		
			_zombieType = _x;
			
			_zombieType createUnit [_centerPos, _zombieGroup];
		
		} forEach _zombieTypesToSpawn;
		
		
		_zombieGroup
		