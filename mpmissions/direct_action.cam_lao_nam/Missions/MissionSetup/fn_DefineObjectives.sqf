	
	
	private [
	
		"_input",
		"_allObjectives"

	];

		_origInput = param [0, ["ALL"]];
		
		
		// To Upper Case
			
			_input = [];
			
			{
				
				_input pushBackUnique toUpper _x;
				
			} forEach _origInput;

		
		
		// Define All Objective Types
		
			_allObjectives = [];
			
			if (isNil "BEW_v_AllMainMissions") then {BEW_v_AllMainMissions = []};
			if (isNil "BEW_v_AllSideMissions") then {BEW_v_AllSideMissions = []};
			
			_objectiveTypes = [
			
				"Military",
				"PowCamp",
				"MilitarySmall",
				"Industrial",
				"Airfield",
				"Port",
				"Town",
				"Power",
				"Tower",
				"Sea",
				"DestroyStructure",
				"Beachhead",
				"Resistance",
				"Infection"
			
			];
			
			{
				
				_objectiveType = _x;
				
				_objectives = call compile format ["
			
					private _objectives = [];
					
					if ((toupper '%1' in _input) or ((toUpper 'ALL' in _input))) then {
				
						_%1 = getMissionLayerEntities '%1' select 1;
						
						{
						
							if !(getMarkerColor _x == '') then {

								_objectives = _objectives + [_x];
							
							};
									
						} forEach _%1;
					
					};
					
					_objectives
				
				", _objectiveType];
				
				_allObjectives append _objectives;
				
				if ((toUpper _objectiveType == toUpper "Military") or (toUpper _objectiveType == toUpper "Airfield") or (toUpper _objectiveType == toUpper "Beachhead")) then {
				
					{
				
						BEW_v_AllMainMissions pushBackUnique _x;
					
					} forEach _objectives;
	
				}else{
				
					{
				
						BEW_v_AllSideMissions pushBackUnique _x;
					
					} forEach _objectives;
				
				};

			} forEach _objectiveTypes;


		_allObjectives
	

