	
	if !(BEW_v_Zombies) exitWith {};
					
		_group = _this select 0;
		_centerPos = _this select 1;
		_patrolRadius = _this select 2;

		while {count ((units _group) select {alive _x}) > 0} do {
		
			_lastZombiePos = getPos (leader _group);
			
				sleep 10;
			
			if ((_lastZombiePos distance2D (getPos (leader _group))) < 1) then {
				
				doStop (leader _group);
				
				// Delete Waypoints
				
					for "_i" from count waypoints _group - 1 to 0 step -1 do
					{
						deleteWaypoint [_group, _i];
					};
				
				// Task Patrol
				
					[leader _group, _centerPos, _patrolRadius, 10] spawn BEW_FNC_taskPatrol;
				
				// Do Move
				
					leader _group doMove getpos leader _group;
				
			};
		};
		


