	private ["_marksmanGear", "_autoRiflemanGear", "_ATgear", "_engineerGear", "_GLGear", "_TLGear", "_medicGear"];
	
			_marksmanGear = [

				"rhs_weap_m40a5",
				"rhs_weap_m82a1",
				"srifle_LRR_F",
				
				"hlc_rifle_awmagnum_FDE"
		
			];

			_autoRiflemanGear = [
				
				"arifle_RPK12_arid_F",
				"rhs_weap_m27iar",
				"rhs_weap_m249_pip_ris",
				"rhs_weap_m240B",
				"rhs_weap_pkp",
				"rhs_weap_rpk74m",
				
				"arifle_CTARS_blk_F",
				"hlc_rifle_RPK12",
				"hlc_lmg_M60E4",
				"vn_m1918"
				
			];


			_ATgear = [

				

			];


			_engineerGear = [

				"rhs_weap_M136",
				"rhs_weap_smaw_green",
				"rhs_weap_igla",
				"rhs_weap_rpg7",
				"rhs_weap_fgm148"				

			];


			_GLGear = [

			

			];

			
			if (BEW_v_WW2) then {
			
				_TLGear = [

							

				];
				
			}else{
				
				_TLGear = [];
				
			};
			
			
			_medicGear = [
		
				"rhs_weap_m16a4_imod",
				"rhs_weap_m16a4_imod_M203",
				"arifle_AK12_arid_F",
				"arifle_AK12_GL_arid_F",
				"rhs_weap_hk416d145",
				"rhs_weap_hk416d145_m320",
				"rhs_weap_SCARH_FDE_CQC",
				"rhs_weap_M320",
				
				"arifle_Mk20_plain_F",
				"arifle_Mk20_GL_plain_F",
				"arifle_CTAR_blk_F",
				"arifle_CTAR_GL_blk_F",
				"rhs_weap_m32",
		
				"SMA_AUG_A3_MCAM_F",
				"SMA_AUG_EGLM_Olive",
				"SMA_L85RISafg",
				"SMA_SAR21_AFG_F",
				
				"hlc_rifle_ak12",
				"hlc_rifle_ak12GL",
				"hlc_rifle_aek971",
				"hlc_rifle_auga3_b_grip",
				"hlc_rifle_auga3_GL_B",
				"HLC_rifle_XM8_Carbine",
				"HLC_rifle_XM8_Carbine_GL",
				"SMA_HK416afg",
				"SMA_HK416GL"
			
			];
			
		
		_classnames = [["B_soldier_M_F"], ["B_soldier_AR_F"], ["B_soldier_AT_F"], ["B_soldier_AT_F", "B_engineer_F"], ["B_Soldier_TL_F", "B_Soldier_GL_F"], ["B_Soldier_TL_F", "B_soldier_AR_F"], ["B_medic_F"]];
		_restrictedLists = [_marksmanGear, _autoRiflemanGear, _ATgear, _engineerGear, _GLGear, _TLGear, _medicGear];

		_returnArray = [_classnames, _restrictedLists];

		_returnArray
