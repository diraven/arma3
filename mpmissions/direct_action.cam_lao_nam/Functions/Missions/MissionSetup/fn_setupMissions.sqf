	
	private ["_objectiveList", "_selectedObjective", "_selectedMissionType", "_originalMissionType", "_allowedMissionTypes"];
	
	_selectedObjective = param [0, ""];	
	_originalMissionType = param [1, ""];
	
	
	// Get Objective Data
		
		_allObjectiveData = [] call BEW_FNC_ObjectiveData;	
	

	// Loop For All Objective Types
	
		{
		
			_objectiveData = _x;
			
				_objectiveType = _objectiveData select 0;
				_mainOrSide = _objectiveData select 1;
				_allowedMissionTypes = _objectiveData select 2;
				
			
			// Define Objective List
						
				if !(_selectedObjective == "") then {
									
					call compile format ["
						
						_objectiveList = BEW_v_%1_Objectives;
						
						_objectiveList
						
					", _objectiveType];
					
					if (toUpper _selectedObjective in (_objectiveList apply {toUpper _x})) then {
						
						_objectiveList = [_selectedObjective];
					
					}else{
						
						_objectiveList = [];
					
					};
								
				}else{
			
					_objectiveList = call compile format ["
						
						_objectiveList = BEW_v_%1_Objectives;
						
						_objectiveList
						
					", _objectiveType];
				
				};
				
			
			// Setup Each Objective In List
			
				{
					_objective = _x;

					[_objective, _allowedMissionTypes] call {
					
						_objectiveMarker = _this select 0;
						_allowedMissionTypes = _this select 1;
						
						// Select A Random Objective Type
							
							if (_originalMissionType == "") then {
														
								_selectedMissionType = _allowedMissionTypes call BIS_FNC_SelectRandom;
							
							}else{
							
								_selectedMissionType = _originalMissionType;
								
							};
											
						// Start Mission Trigger
						
							[_objectiveMarker, _selectedMissionType] spawn BEW_FNC_ObjectiveTrigger;
												
					};
				
				} forEach _objectiveList;
			
		} forEach _allObjectiveData;
	