

	_veh = _this select 0;

	if (_veh isKindOf "air") then {

		_tailDraggersData = [
			
			["sab_fl_a6m", 11.5, -0.1],
			["sab_sw_b5n", 14.5, 0.2],
			["sab_avenger", 9, 0.1],
			["sab_f6f", 8, 0.1],
			["sab_corsair", 11.5, 0.1],
			["sab_dauntless", 12, 0.15],
			["fow_va_f6f_c", 9, 0],
			["fow_va_f6f", 9, 0],
			["sab_texan", 11, 0],
			["sab_p26", 12, 0.1],
			["LIB_C47_Skytrain", 11, 0],
			["sab_mustang", 13, 0],
			["sab_fl_p51d", 13, -0.4],
			["LIB_P47", 13, -0.1],
			["LIB_C47_RAF", 11, 0],
			["UNI_C47_CAP_Grey", 10.5, 0],
			["sab_gladiator", 13, 0],
			["sab_fl_hurricane_2", 9, -0.1],
			["spitfire_v_G", 11.5, -0.15],
			["sab_fl_dh98", 11, -0.5],
			["LIB_Li2", 11, 0],
			["LIB_Pe2", 12, 0],
			["sab_il2", 11, -0.1],
			["sab_fl_yak3", 12, -0.3],
			["sab_la5", 13.5, 0.15],
			["sab_i16", 16, -0.05],
			["sab_bf109", 14, -0.6],
			["LIB_FW190F8_2", 14, 0],
			["LIB_Ju87", 11.5, 0],
			["sab_ju88", 11, -0.8],
			["fow_va_a6m_white", 11, 0],
			["fow_va_a6m_green", 11, 0],
			["sab_ki100", 13.5, 0.05],
			["sab_ki61", 13.5, 0],
			["sab_zero", 12, 0.1],
			["sab_avia_2", 14, -0.1],
			["sab_fl_ju88a", 11, -0.7],
			["sab_fl_bf109k", 15, -0.6],
			["LIB_US_P39", 5, 0],
			["LIB_RAF_P39", 5, 0],
			["sab_b25", 1, 0],
			["LIB_P39", 5, 0],
			["uns_A1J_CAS", 12, -0.7],
			["uns_A1J_navy_CAS", 12, -0.7],
			["uns_AC47", 10, -0.2],
			["RHS_AN2", 11, 0.1],
			["rhs_mi28n_vvsc", 6.5, -0.1],
			["RHS_Ka52_vvsc", 0, -0.3],
			["sab_fl_f4f", 11, -0.1],
			["sab_fl_sbd", 11.5, -0.15],
			["sab_sw_tbf", 9.5, 0.1],
			["sab_fl_f4u", 12, 0.1],
			["sab_fl_bf109e", 13, -0.1],
			["sab_sw_ju87", 11.5, 0.1],
			["sab_fl_fw190a", 13.5, -0.7],
			["sab_sw_bf110", 11.5, -0.1],
			["sab_sw_p40", 13.5, -0.1],
			["LIB_US_P39_2", 5, 0],
			["sab_sw_b17", 7.3, -0.05],
			["LIB_RA_P39_2", 5, 0],
			["sab_sw_i16", 16, -0.05],
			["sab_sw_il2", 11.5, -0.05],
			["sab_sw_il2_2", 10.5, -0.1],
			["spitfire_v", 11.5, -0.15],
			["sab_fl_hurricane", 9, -0.1],
			["sab_sw_halifax", 9, 0],
			["sab_sw_he177", 8, 0]
			
		];
	
		
		{
		
			_type = _x select 0;
			_pitch = _x select 1; 
			_offsetHeight = _x select 2;
			_pos = getPosASL _veh;
			_dir = getDir _veh;
			
			if (typeOf _veh == _type) then {
			
				// Adjust Pitch
				
					[_veh, [_dir, _pitch, 0]] call BIS_fnc_setObjectRotation;
							
				// Adjusts Vertical Offset
				
					_veh setPosASL [_pos select 0, _pos select 1, (_pos select 2) + _offsetHeight];
						
			};
			
		} forEach _tailDraggersData;
	
	};
	
	
