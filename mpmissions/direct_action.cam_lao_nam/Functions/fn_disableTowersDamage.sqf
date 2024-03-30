	
	if ((BEW_V_airSuperiority)) exitWith {};
	
	_debug = FALSE;
	
	// Define Tower 

		_towerTypes = [  
		
			"Land_MobileRadar_01_radar_F", 
			"Land_Radar_01_antenna_F", 
			"Land_vn_mobileradar_01_radar_f", 
			"Land_vn_radar_01_antenna_f", 
			"Land_TTowerBig_1_F", 
			"Land_TTowerBig_2_F", 
			"Land_vn_ttowerbig_1_f", 
			"Land_vn_ttowerbig_2_f", 
			"Land_vn_tower_signal_01", 
			"Land_vn_communication_f", 
			"Land_Communication_F"
			
		];  

	// Find Nearest Towers 

		_allTowers = nearestObjects [markerPos "wholeMapMarker", _towerTypes, markerSize "wholeMapMarker" select 0]; 


	// Disable Damage

		{
		
			_x allowDamage FALSE;
		
			if (_debug) then {
							
				systemChat format ["%1", isDamageAllowed _x];

			};
		
		} forEach _allTowers;


	