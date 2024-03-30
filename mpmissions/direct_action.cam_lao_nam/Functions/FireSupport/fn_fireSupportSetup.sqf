		
	private _allowedClasses = ["B_Soldier_TL_F", "B_recon_JTAC_F", "B_soldier_M_F"];
	
	if (!(typeOf player in _allowedClasses) and (isMultiplayer)) exitWith {};
	
	// Set Default Flag
	
		if (isNil "BEW_v_fireMissionCooldown") then {BEW_v_fireMissionCooldown = false};

	
	// Get Fire Support Data

		_allFireSupportData = [] call BEW_FNC_fireSupportData;
		
	
	// Create Default Switch To Fire Support Action
	
	
		[] spawn BEW_FNC_createAimArrow;
	
	
	// Create Default Must Have Binoculars Action
		
			_mustHaveBinocularsConditions = "
			
				!((currentWeapon player isKindOf ['Binocular', configFile >> 'CfgWeapons']) and (cameraView == 'Gunner')) and 
				(binocular player == '')
			
			";
			
			_mustHaveBinocularsActionText = "<t color='#FFC0CB'>FIRE SUPPORT UNAVAILABLE: MUST HAVE BINOCULARS";
					
			player addaction [_mustHaveBinocularsActionText, 	
			
			{
				
				'Fire Support Unavailable: Must Have Binoculars' hintC [ 
				
					'You must have binoculars equipped to request fire support.'
				
				];
				
			}
			
			, _fireSupportData, 98, false, true, "", _mustHaveBinocularsConditions];
	
	
	// Create Fire Support Actions

	{

		[player, _x] spawn BEW_FNC_fireSupportAction;
		
		sleep 0.5;
		
	} forEach _allFireSupportData;