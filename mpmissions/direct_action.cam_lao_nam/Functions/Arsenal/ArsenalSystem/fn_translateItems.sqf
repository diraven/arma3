
		private [

			"_itemList",
			"_itemType",
			"_newItemType"

		];

	_originalItemType = param [0];

	// Get Item List
	
		_itemList = [
			
			
			['LIB_M1918A2_BAR', 'vn_m1918'],
			['LIB_MP40', 'vn_mp40'],
			['LIB_M38', 'vn_m38'],
			['LIB_M9130', 'vn_m9130'],
			['LIB_DP28', 'vn_dp28'],
			['LIB_M1_Garand', 'vn_m1_garand'],
			['LIB_M3_GreaseGun', 'vn_m3a1'],
			['LIB_M1_Carbine', 'vn_m1carbine'],
			['LIB_M1A1_Carbine', 'vn_m1carbine'],
			['LIB_Colt_M1911', 'vn_m1911'],
			['LIB_Sten_Mk2', 'vn_sten'],
			['LIB_Welrod_mk1', 'vn_welrod'],
			['LIB_DP28', 'vn_dp28'],
			['LIB_PPSh41_m', 'vn_ppsh41'],
			['LIB_M9130', 'vn_m9130'],
			['LIB_M9130PU', 'vn_m9130_sniper'],
			['LIB_M38', "vn_m38"],
			['LIB_TT33', 'vn_tt33'],
			['LIB_M1895', 'vn_m1895'],
			['LIB_M1A1_Thompson', 'vn_m1a1_tommy'],
			['LIB_M1928_Thompson', 'vn_m1928_tommy'],
			['LIB_M1928A1_Thompson', 'vn_m1928a1_tommy'],			
			['LIB_MP38', 'vn_mp40'],
			['LIB_MP40', 'vn_mp40'],
			['LIB_M1903A3_Springfield', 'hlc_rifle_M1903A1'],
			['LIB_M1903A4_Springfield', 'hlc_rifle_M1903A1_unertl'],
			
			
		// WS
		
			['srifle_EBR_F', 'srifle_EBR_blk_lxWS'],
		

		// RHS to SMA
		
			// SMG
			
				["rhsusf_weap_MP7A2", ""],	
			
			// AR
			
				["rhs_weap_m4", ""],
				["rhs_weap_m4_m320", ""],
				["rhs_weap_m4_m203S", ""],			
			
				["rhs_weap_m4a1", "hlc_rifle_M4"],
				["rhs_weap_m4a1_m203s", "hlc_rifle_m4m203"],
				["rhs_weap_m4a1_m320", ""],
				
				["rhs_weap_m4a1_blockII_bk", "SMA_M4afg"],
				["rhs_weap_m4a1_blockII_M203_bk", "SMA_M4_GL"],
			
				["rhs_weap_mk18", "SMA_MK18afgBLK"],
				["rhs_weap_mk18_m320", "SMA_MK18BLK_GL"],			
				
				["rhs_weap_hk416d10", "SMA_HK416CUSTOMCQBafgB"],
				["rhs_weap_hk416d10", "hlc_rifle_416D10"],
				["rhs_weap_hk416d10", "Tier1_HK416D10_MW9_LMT"],				
				["rhs_weap_hk416d10_m320", "SMA_HK416GLCQB_B"],
				["rhs_weap_hk416d10_m320", "hlc_rifle_416D10_gl"],
				
				["rhs_weap_hk416d145", "SMA_HK416afg"],
				["rhs_weap_hk416d145", "hlc_rifle_416D145"],				
				["rhs_weap_hk416d145", "Tier1_HK416D145_LMT"],
				["rhs_weap_hk416d145_m320", "SMA_HK416GL"],
				["rhs_weap_hk416d145_m320", "hlc_rifle_416D145_gl"],
						
				["rhs_weap_m16a4_carryhandle", ""],
				["rhs_weap_m16a4_carryhandle_M203", ""],
						
						
			// Shotgun
			
				["rhs_weap_M590_8RD", ""],	
			
			
			// DMR
			
				["rhs_weap_m14ebrri", ""],
				["rhs_weap_m14_socom_rail", ""],
				["rhs_weap_SCARH_CQC", "SMA_Mk17_black"],
				["rhs_weap_SCARH_STD", "SMA_Mk17_16_black"],
				["rhs_weap_XM2010", ""],
				["rhs_weap_M107", ""],
				["rhs_weap_m24sws", ""],
				["rhs_weap_sr25_ec", ""],
				["rhs_weap_m14_wd", "hlc_rifle_M21"],
				["rhs_weap_m14_rail_wd", "hlc_rifle_M21_Rail"],
				["rhs_weap_m40a5", ""],
				
			// LMG
				
				["rhs_weap_m27iar_grip", "hlc_rifle_M27IAR"],
				["rhs_weap_m249_light_S", "hlc_lmg_mk46"],
				["rhs_weap_m249_light_S", "Tier1_MK46_Mod0"],	
				["rhs_weap_m249_light_L", "hlc_m249_pip4"],	
				["rhs_weap_m240B", ""],		
				["rhs_weap_m240G", "hlc_lmg_mk48"],		
				["rhs_weap_m240G", "Tier1_MK48_Mod0"],					
			
			
			// Launcher
			
				["rhs_weap_M136", ""],
				["rhs_weap_M136_hedp", ""],
				["rhs_weap_M136_hp", ""],
				["rhs_weap_m72a7", ""],		
				["rhs_weap_maaws", ""],
				["rhs_weap_fim92", ""],
				["rhs_weap_fgm148", ""],
				["rhs_weap_m32", ""],
				["rhs_weap_M320", ""],	
			
			
			// Pistol
					
				["rhsusf_weap_m1911a1", ""],
				["rhsusf_weap_m9", ""],		
				["rhsusf_weap_glock17g4", ""],
				
				["rhs_weap_m320", ""],	
				
				
		// Vanilla To SMA + Tier 1 + NI
				
				["arifle_TRG20_F", "SMA_CTAR_F"],	
				
				["arifle_AK12U_arid_F", "hlc_rifle_aku12"],	
				["arifle_AK12_arid_F", "hlc_rifle_ak12"],	
				["arifle_AK12_GL_arid_F", "hlc_rifle_ak12GL"],
				["arifle_RPK12_arid_F", "hlc_rifle_RPK12"]	
				
				

		];
		
		
	// Remove Weapons With No Translation
	
		{
		
			if (_x select 1 == "") then {
			
				_itemList = _itemList - [_x];
			
			};
			
		} forEach _itemList;

	
	// Translate Items
	
		{
		
			_itemType = _x select 0;
			_newItemType = "";
				
			if (_itemType == _originalItemType) then {
			
				_newItemType = _x select 1;
							
			};
			
			if (isClass(configfile >> "CfgWeapons" >> _newItemType)) exitWith {};
			
			_newItemType = _originalItemType;
		
		} forEach _itemList;
	
		_newItemType
