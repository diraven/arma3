	// [_sideMission] call BEW_FNC_spawnForceValues;
	
	private ["_numPatrol", "_numGarrison", "_numParadrop", "_numCar", "_numAPC", "_numTank", "_numCAP", "_numCAS", "_numGun", "_numAA", "_numAT", "_numMortar"];
	
	_sideMission = _this select 0;
	
	if (_sideMission) then {
		
		// Infantry
		
			_numPatrol = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{2};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{2};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{3};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{3};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{3};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{3};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{3};
				default {3};
				
			};
			
			_numGarrison = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{0};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{0};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{0};
				default {0};
				
			};
			
			_numParadrop = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
		
		
		
		// Vehicles
			
			_numCar = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numAPC = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numTank = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{0};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{0};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{0};
				default {0};
				
			};
			
			
			
		// Aircraft

			_numCAP = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{0};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{0};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{0};
				default {0};
				
			};
			
			_numCAS = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {0};
				
			};
			
			
			
		// Turrets
			
			_numGun = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{0};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{0};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{0};
				default {1};
				
			};
			
			_numAA = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numAT = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numMortar = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{0};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{0};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{0};
				default {0};
				
			};
		
	}else{
	
		// Infantry
		
			_numPatrol = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{2};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{2};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{3};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{3};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{4};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{4};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{4};
				default {4};
				
			};
			
			_numGarrison = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{1};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{2};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{2};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{2};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{2};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{2};
				default {2};
				
			};
			
			_numParadrop = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{1};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{2};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{2};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{3};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{3};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{3};
				default {3};
				
			};
		
		
		
		// Vehicles
			
			_numCar = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{1};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{2};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{2};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{2};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{3};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{3};
				default {3};
				
			};
			
			_numAPC = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numTank = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			
			
		// Aircraft
			
			if (BEW_V_airSuperiority) then {
			
				_numCAP = switch (true) do {
				
					case ((missionLevel == 1) or (missionLevel == 1.5))		:	{2};
					case ((missionLevel == 2) or (missionLevel == 2.5))		:	{2};
					case ((missionLevel == 3) or (missionLevel == 3.5))		:	{3};
					case ((missionLevel == 4) or (missionLevel == 4.5))		:	{3};
					case ((missionLevel == 5) or (missionLevel == 5.5))		:	{4};
					case ((missionLevel == 6) or (missionLevel == 6.5))		:	{4};
					case ((missionLevel == 7) or (missionLevel == 7.5))		:	{4};
					default {1};
					
				};
				
				
				_numCAS = switch (true) do {
				
					case ((missionLevel == 1) or (missionLevel == 1.5))		:	{1};
					case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
					case ((missionLevel == 3) or (missionLevel == 3.5))		:	{2};
					case ((missionLevel == 4) or (missionLevel == 4.5))		:	{2};
					case ((missionLevel == 5) or (missionLevel == 5.5))		:	{3};
					case ((missionLevel == 6) or (missionLevel == 6.5))		:	{3};
					case ((missionLevel == 7) or (missionLevel == 7.5))		:	{3};
					default {1};
					
				};
			
			}else{
				
				_numCAP = switch (true) do {
				
					case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
					case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
					case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
					case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
					case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
					case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
					case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
					default {1};
					
				};
				
				
				_numCAS = switch (true) do {
				
					case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
					case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
					case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
					case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
					case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
					case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
					case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
					default {1};
					
				};
			
			};
			
			
			
		// Turrets
			
			_numGun = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{1};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numAA = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{1};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numAT = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numMortar = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{0};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{0};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{0};
				default {1};
				
			};
	
	};
	
		
	_return = [_numPatrol, _numGarrison, _numParadrop, _numCar, _numAPC, _numTank, _numCAP, _numCAS, _numGun, _numAA, _numAT, _numMortar];
	
	_return