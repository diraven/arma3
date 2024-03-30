
	_veh = _this select 0;


	// Define Vehicle Data

		_allVehiclePylonData = [

			[["FIR_A10C"], [

				"FIR_ECMPod_P_1rnd_M",
				"FIR_Hydra_M229_P_19rnd_M",
				"FIR_AGM65D_P_1rnd_M",
				"FIR_EGBU12_P_3rnd_M",
				"",
				"",
				"FIR_EGBU12_P_3rnd_M",
				"FIR_AGM65D_P_1rnd_M",
				"FIR_Hydra_M229_P_19rnd_M",
				"FIR_AIM9X_P_2rnd_M"

			]],


			[["FIR_FA18F", "FIR_FA18F_VFA106", "FIR_FA18F_Blank"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_AGM65F_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_ATFLIR_2_P_1rnd_M",
				"FIR_GBU24B_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AGM65F_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M"

			]],
			
			
			[["Tornado_AWS_blu"], [
				
				'Tornado_AWS_AIRCMpod_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_Litening_std_P_1rnd_M',
				'FIR_AIM132_P_1rnd_M',
				'FIR_AIM132_P_1rnd_M',
				'FIR_Empty_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_ECMpod_1rnd_M',
				'FIR_BK27_R_M',
				''
				
			]],
			
			
			[["Tornado_AWS_GER", "Tornado_AWS_UK_617"], [

				'Tornado_AWS_AIRCMpod_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_Litening_std_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'FIR_Empty_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_ECMpod_1rnd_M',
				'FIR_BK27_R_M',
				''

			]],
			
			
			[["Tornado_AWS_ecr_ger", "Tornado_AWS_ecr_blu"], [

				'Tornado_AWS_AIRCMpod_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_Litening_std_P_1rnd_M',
				'FIR_AGM88_P_1rnd_M',
				'FIR_AGM88_P_1rnd_M',
				'FIR_Mk83_GP_Navy_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_ECMpod_1rnd_M',
				'FIR_BK27_R_M',
				''

			]],
			

			[["Tornado_AWS_camo_uk", "Tornado_AWS_camo_ger", "Tornado_AWS_ADV_ita"], [

				'Tornado_AWS_AIRCMpod_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_Litening_std_P_1rnd_M',
				'FIR_AGM65F_P_1rnd_M',
				'FIR_AGM65F_P_1rnd_M',
				'FIR_Mk83_GP_Navy_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'Tornado_AWS_fuelsmall_1rnd_M',
				'FIR_AIM9L_P_1rnd_M',
				'Tornado_AWS_ECMpod_1rnd_M',
				'FIR_BK27_R_M',
				''

			]],


			[["FIR_F35B_RAF01"], [

				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_AIM9X_LAU115_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM9X_LAU115_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Gunpod_Nomodel_P_1rnd_M"

			]],


			[["FIR_F35B_Standard", "FIR_F35B_Blank1", "FIR_F35B_MFG2", "FMX_F35B_SP_B", "FMX_F35B_IT_B"], [

				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"",
				"FIR_AIM9X_LAU115_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM9X_LAU115_P_1rnd_M",
				"",
				"FIR_Gunpod_Nomodel_P_1rnd_M"

			]],


			[["FIR_F22"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M",
				"FIR_Empty_P_1rnd_M"

			]],


			[["FIR_F15E_SJ"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M",
				"",
				"FIR_Empty_P_1rnd_M",
				"",
				"",
				"FIR_EGBU12_P_1rnd_M",
				"",
				"",
				"",
				"",
				"",
				"FIR_EGBU12_P_1rnd_M",
				"",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_GBU24A_P_1rnd_M",
				"FIR_SniperXR_2_Tigereye_P_1rnd_M"

			]],


			[['FIR_F15J_306TFS'], [

				'FIR_AIM9X_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_AIM9X_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_F15C_Fueltank_P_1rnd_M',
				'FIR_F15C_Fueltank_P_1rnd_M',
				'FIR_GBU24A_P_1rnd_M'

			]],


			[['FIR_F15J_IRST'], [

				'FIR_AIM9X_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_AIM9X_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'rhs_mag_agm65d',
				'rhs_mag_agm65d',
				'FIR_CBU87_P_1rnd_M'

			]],


			[["FIR_FA18E"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_AIM120_LAU115_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"",
				"FIR_GBU24B_P_1rnd_M",
				"",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM120_LAU115_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M"

			]],


			[["FIR_EA18G_Blank", "EA18G_RAAF"], [

				"FIR_AGM88_P_1rnd_M",
				"FIR_ALQ99_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_ALQ99Hi_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_ALQ99_P_1rnd_M",
				"FIR_AGM88_P_1rnd_M"

			]],


			[["EAWS_EF2000_rafhist_CAP", "EAWS_EF2000_ITA51_CAP", "EAWS_EF2000_Spa_CAP", "EAWS_EF2000_GER_CAP", "EAWS_EF2000_Genericblu_CAP"], [

				"FIR_AIM132_P_1rnd_M_eaws",
				"FIR_AIM120_P_1rnd_M_eaws",
				"FIR_EGBU12_P_1rnd_M_eaws",
				"FIR_EGBU12_P_1rnd_M_eaws",
				"",
				"",
				"",
				"",
				"",
				"FIR_EGBU12_P_1rnd_M_eaws",
				"FIR_EGBU12_P_1rnd_M_eaws",
				"FIR_AIM120_P_1rnd_M_eaws",
				"FIR_AIM132_P_1rnd_M_eaws"

			]],
			
			
			[["FIR_AV8B_GR9A_Blank"], [

				'FIR_Mk82_GP_P_1rnd_M',
				'FIR_CRV7_P_19rnd_M',
				'FIR_AV8B_Fueltank_L_P_1rnd_M',
				'FIR_AV8B_Fueltank_R_P_1rnd_M',
				'FIR_CRV7_P_19rnd_M',
				'FIR_Mk82_GP_P_1rnd_M',
				'FIR_Empty_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_SniperXR_Nomodel_P_1rnd_M'

			]],
			
			
			[["FIR_AV8B_NA_Blank"], [

				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_Mk82_GP_P_1rnd_M',
				'FIR_Mk82_GP_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_Litening_std_P_1rnd_M',
				'FIR_Gunpod_Nomodel_P_1rnd_M'

			]],
			
			
			[["FIR_AV8B_VMA223"], [

				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_Mk82_GP_P_1rnd_M',
				'FIR_Mk82_GP_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_Litening_std_P_1rnd_M',
				'FIR_Gunpod_Nomodel_P_1rnd_M'

			]],
			

			[["FIR_AV8B_GR7A_Lucy", "ffaa_ar_harrier", "ASZ_AV8B_MM_GBU"], [

				'FIR_GBU12_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_AV8B_Fueltank_L_P_1rnd_M',
				'FIR_AV8B_Fueltank_R_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_GBU12_P_1rnd_M',
				'FIR_Empty_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_AIM9M_LAU115_P_1rnd_M',
				'FIR_SniperXR_Nomodel_P_1rnd_M'

			]],


			[["FIR_F18C_SPAF"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_AGM65F_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_GBU24B_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AGM65F_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M"

			]],

		
			[["FIR_F18C", "FIR_F18C_Blank", "FIR_F18C_RNZAF", "FIR_F18C_VFA15", "FIR_F18C_RAAF", "FIR_F18C_MALS11"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_AIM9X_LAU115_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"",
				"FIR_AIM120_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM9X_LAU115_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M"

			]],
			
			
			[["FIR_F18C_VMFA314"], [

				'FIR_AIM9X_P_1rnd_M',
				'FIR_GBU12_Navy_P_1rnd_M',
				'FIR_GBU12_Navy_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_CBU87_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_GBU12_Navy_P_1rnd_M',
				'FIR_GBU12_Navy_P_1rnd_M',
				'FIR_AIM9X_P_1rnd_M'

			]],
			
			
			[["FIR_F18D_VMFAAW224_02"], [
			
				'FIR_AIM9X_P_1rnd_M',
				'FIR_AGM65F_P_1rnd_M',
				'FIR_GBU12_Navy_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_Mk84_GP_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_GBU12_Navy_P_1rnd_M',
				'FIR_AGM65F_P_1rnd_M',
				'FIR_AIM9X_P_1rnd_M'
			
			]],

			[["FIR_F18C_RCAF"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_GBU24A_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M"

			]],


			[["FIR_F16C"], [

				"FIR_AIM9X_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_EGBU12_P_1rnd_M",
				"",
				"",
				"FIR_EGBU12_P_1rnd_M",
				"FIR_AIM120_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M",
				"FIR_AIM9X_P_1rnd_M"

			]],


			[['FIR_F2A'], [

				'FIR_AIM9M_P_1rnd_M',
				'FIR_AIM9M_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_F2A_Fueltank_P_1rnd_M',
				'',
				'',
				'FIR_F2A_Fueltank_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_AIM9M_P_1rnd_M',
				'FIR_AIM9M_P_1rnd_M'

			]],


			[["ncs_nzdf_t6c_1", "bwi_a3_t6a_nta_2", "bwi_a3_pc9a_nta_1", "bwi_a3_pc9a_nta", "bwi_a3_t6c_raf_nta_1"], [

				"FIR_Hydra_M229_P_7rnd_M",
				"FIR_Mk82_GP_P_1rnd_M",
				"FIR_Mk82_GP_P_1rnd_M",
				"FIR_Hydra_M229_P_7rnd_M"

			]],


			[["bwi_a3_at6b", "bwi_a3_at6b_raf_1"], [

				"FIR_Hydra_M229_P_7rnd_M",
				"FIR_Mk82_GP_P_1rnd_M",
				"FIR_Mk82_GP_P_1rnd_M",
				"FIR_Mk82_GP_P_1rnd_M",
				"FIR_Mk82_GP_P_1rnd_M",
				"FIR_Hydra_M229_P_7rnd_M"

			]],


			[["RHS_Su25SM_vvs"], [

				"rhs_mag_kh29D",
				"rhs_mag_kh29D",
				"rhs_mag_kh25MTP",
				"rhs_mag_kh25MTP",
				"rhs_mag_kh25MTP",
				"rhs_mag_kh25MTP",
				"rhs_mag_R73M",
				"rhs_mag_R73M",
				"rhs_mag_R60M",
				"rhs_mag_R60M",
				"rhs_ASO2_CMFlare_Chaff_Magazine_x4"

			]],


			[["rhs_mig29sm_vvs"], [

				"rhs_mag_kh25MTP_apu68_mig29",
				"rhs_mag_kh25MTP_apu68_mig29",
				"rhs_mag_R73M_APU73",
				"rhs_mag_R73M_APU73",
				"rhs_mag_R73M_APU73",
				"rhs_mag_R73M_APU73",
				"rhs_mag_ptb1500",
				"rhs_BVP3026_CMFlare_Chaff_Magazine_x2"

			]],


			[["RHS_T50_vvs_generic_ext"], [

				"rhs_mag_R77M",
				"rhs_mag_R77M",
				"rhs_mag_R77M",
				"rhs_mag_R77M",
				"rhs_mag_R74M2_int",
				"rhs_mag_R74M2_int",
				"rhs_mag_R74",
				"rhs_mag_R74",
				"rhs_mag_R74",
				"rhs_mag_R74",
				"rhs_mag_R77M_AKU170",
				"rhs_mag_R77M_AKU170"

			]],


			[["O_Plane_CAS_02_dynamicLoadout_F"], [

				"PylonRack_1Rnd_Missile_AA_03_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AA_03_F"

			]],


			[["O_Plane_Fighter_02_F"], [

				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonRack_1Rnd_Missile_AGM_01_F",
				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonMissile_Missile_AA_R77_INT_x1",
				"PylonMissile_Missile_AA_R77_INT_x1",
				"PylonRack_1Rnd_Missile_AGM_01_F"

			]],


			[["B_UAV_05_F"], [

				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Missile_AGM_02_x2"

			]],


			[["B_UAV_02_dynamicLoadout_F"], [

				"",
				""

			]],


			[["B_T_UAV_03_dynamicLoadout_F"], [

				"PylonRack_12Rnd_missiles",
				"PylonWeapon_2000Rnd_65x39_belt",
				"PylonRack_3Rnd_LG_scalpel",
				"PylonRack_12Rnd_missiles"

			]],


			[["I_Plane_Fighter_03_dynamicLoadout_F"],[

				"PylonRack_1Rnd_Missile_AA_04_F",
				"PylonRack_1Rnd_Missile_AA_04_F",
				"PylonMissile_1Rnd_Mk82_F",
				"PylonWeapon_300Rnd_20mm_shells",
				"PylonMissile_1Rnd_Mk82_F",
				"PylonRack_1Rnd_Missile_AA_04_F",
				"PylonRack_1Rnd_Missile_AA_04_F"

			]],
			
			
			[["FIR_FA181E_VFA1_LO"],[

				'PylonMissile_1Rnd_BombCluster_01_F',
				'PylonMissile_1Rnd_BombCluster_01_F',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_AIM9X_P_1rnd_M',
				'FIR_AIM9X_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'FIR_AIM120_P_1rnd_M',
				'',
				'',
				'',
				''

			]],


			[["FIR_F15SE_LN"],[

				'FIR_AIM9X_P_1rnd_M',
				'FIR_AIM120_F15SE_P_1rnd_M',
				'FIR_AIM120_F15SE_P_1rnd_M',
				'FIR_AIM9X_P_1rnd_M',
				'',
				'',
				'',
				'',
				'FIR_AIM7F_2_P_1rnd_M',
				'',
				'',
				'',
				'FIR_Empty_P_1rnd_M',
				'',
				'FIR_AIM7F_2_P_1rnd_M',
				'',
				'',
				'FIR_Empty_P_1rnd_M',
				'FIR_Empty_P_1rnd_M',
				'FIR_Empty_P_1rnd_M',
				'FIR_F15E_Fueltank_P_1rnd_M',
				'FIR_F15E_Fueltank_P_1rnd_M',
				'',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_EGBU12_P_1rnd_M',
				'FIR_F15SE_CFT_P_1rnd_M'

			]],
			
			
			[["FIR_F23A_HO"],[

				'FIR_AIM9M_P_1rnd_M',
				'FIR_AIM9M_P_1rnd_M',
				'FIR_AIM120_P_F23A_3rnd_M',
				'''FIR_GBU54_P_1rnd_M',
				'FIR_GBU54_P_1rnd_M',
				'FIR_GBU54_P_1rnd_M',
				'FIR_GBU54_P_1rnd_M',
				'',
				'',
				'',
				'',
				'',
				''

			]],


			[["I_Plane_Fighter_03_Cluster_F"],[

				"PylonRack_1Rnd_Missile_AA_04_F",
				"PylonRack_1Rnd_AAA_missiles",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonWeapon_300Rnd_20mm_shells",
				"PylonMissile_1Rnd_BombCluster_03_F",
				"PylonRack_1Rnd_AAA_missiles",
				"PylonRack_1Rnd_Missile_AA_04_F"

			]],


			[["B_Plane_Fighter_01_Stealth_F"],[

				"",
				"",
				"",
				"",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1"

			]],


			[["B_Plane_Fighter_01_F"],[

				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"",
				"",
				"PylonMissile_Bomb_GBU12_x1",
				""

			]],


			[["B_Plane_Fighter_01_Cluster_F"],[

				"PylonMissile_1Rnd_BombCluster_03_F",
				"PylonMissile_1Rnd_BombCluster_03_F",
				"PylonRack_Missile_HARM_x1",
				"PylonRack_Missile_HARM_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"PylonMissile_Missile_AMRAAM_D_INT_x1",
				"PylonRack_Bomb_SDB_x4",
				"PylonRack_Bomb_SDB_x4",
				"",
				""

			]],


			[["B_Plane_CAS_01_dynamicLoadout_F"], [

				"PylonMissile_1Rnd_GAA_missiles",
				"PylonRack_7Rnd_Rocket_04_HE_F",
				"PylonRack_1Rnd_Missile_AGM_02_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonRack_1Rnd_Missile_AGM_02_F",
				"PylonRack_7Rnd_Rocket_04_HE_F",
				"PylonMissile_1Rnd_GAA_missiles"

			]],
			
			
			[["B_D_Plane_CAS_01_dynamicLoadout_lxWS"], [

				"PylonMissile_1Rnd_GAA_missiles",
				"PylonRack_7Rnd_Rocket_04_HE_F",
				"PylonRack_1Rnd_Missile_AGM_02_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonRack_1Rnd_Missile_AGM_02_F",
				"PylonRack_7Rnd_Rocket_04_HE_F",
				"PylonMissile_1Rnd_GAA_missiles"

			]],


			[["I_Plane_Fighter_04_F"], [

				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonRack_Missile_AMRAAM_C_x1",
				"PylonRack_Missile_AMRAAM_C_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1"

			]],


			[["I_Plane_Fighter_04_Cluster_F"], [

				'I_Plane_Fighter_04_Cluster_F',
				'PylonMissile_Missile_BIM9X_x1',
				'PylonMissile_Missile_BIM9X_x1',
				'PylonRack_Missile_AMRAAM_C_x1',
				'PylonRack_Missile_AMRAAM_C_x1',
				'PylonMissile_Bomb_GBU12_x1',
				'PylonMissile_1Rnd_BombCluster_03_F'

			]],


			[["USAF_F35A_LIGHT"], [

				'USAF_MISSILE_1Rnd_AIM9X''',
				'',
				'USAF_Missile_1Rnd_AIM120',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_Missile_1Rnd_AIM120',
				'',
				'',
				'USAF_MISSILE_1Rnd_AIM9X'

			]],


			[["JS_JC_FA18E"], [

				'rhs_mag_Sidewinder',
				'rhs_mag_Sidewinder',
				'rhs_mag_Sidewinder',
				'rhs_mag_Sidewinder',
				'rhs_mag_aim120',
				'rhs_mag_aim120',
				'PylonMissile_Bomb_GBU12_x1',
				'PylonMissile_Bomb_GBU12_x1',
				'',
				'js_m_fa18_atflir',
				'js_m_fa18_wing_tank_x1',
				'js_jc_120Rnd_CMChaff_Magazine',
				'js_jc_120Rnd_CMFlare_Magazine'

			]],


			[["USAF_F35A"], [

				'USAF_MISSILE_1Rnd_AIM9X',
				'USAF_PylonRack_1Rnd_AIM9X',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_Missile_1Rnd_AIM120',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_Missile_1Rnd_AIM120',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_PylonRack_1Rnd_AIM9X',
				'USAF_MISSILE_1Rnd_AIM9X'

			]],


			[["USAF_F22_Heavy"], [

				'USAF_PylonRack_1Rnd_AIM9X',
				'USAF_PylonRack_1Rnd_AIM120',
				'USAF_MISSILE_1Rnd_AIM9X',
				'USAF_Missile_1Rnd_AIM120_Int',
				'USAF_PylonRack_4Rnd_GBU39',
				'USAF_PylonRack_4Rnd_GBU39',
				'USAF_Missile_1Rnd_AIM120_Int',
				'USAF_MISSILE_1Rnd_AIM9X',
				'USAF_PylonRack_1Rnd_AIM120',
				'USAF_PylonRack_1Rnd_AIM9X',
				'',
				'',
				'',
				'',
				'',
				'',
				'',
				'',
				'',
				''

			]],


			[["JS_JC_FA18F"], [

				'rhs_mag_Sidewinder',
				'rhs_mag_Sidewinder',
				'rhs_mag_aim120d',
				'rhs_mag_aim120d',
				'PylonMissile_1Rnd_BombCluster_03_F',
				'PylonMissile_1Rnd_BombCluster_03_F',
				'PylonRack_Bomb_GBU12_x2',
				'PylonRack_Bomb_GBU12_x2',
				'PylonRack_Missile_AMRAAM_D_x1',
				'js_m_fa18_atflir',
				'js_m_fa18_wing_tank_x1',
				'js_jc_120Rnd_CMChaff_Magazine',
				'js_jc_120Rnd_CMFlare_Magazine'

			]],


			[["USAF_A10"], [

				'USAF_PylonRack_2Rnd_AIM9X_LAU105',
				'USAF_PylonRack_1Rnd_ANAAQ28',
				'USAF_PylonRack_1Rnd_AGM65K',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_PylonRack_1Rnd_CBU103',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_PylonRack_1Rnd_GBU12',
				'USAF_PylonRack_1Rnd_AGM65K',
				'USAF_PylonRack_7Rnd_APKWS',
				'USAF_PylonRack_1Rnd_ANALQ131'

			]],


			[["rhs_l159_cdf_b_CDF"], [

				"rhs_mag_Sidewinder",
				"rhs_mag_aim120d",
				"rhs_mag_gbu12",
				"rhs_mag_zpl20_hei",
				"rhs_mag_gbu12",
				"rhs_mag_aim120d",
				"rhs_mag_Sidewinder",
				"rhsusf_ANALE40_CMFlare_Chaff_Magazine_x2"

			]],


			[["RHS_A10"], [

				"rhs_mag_ANALQ131",
				"rhs_mag_gbu12",
				"rhs_mag_agm65d",
				"rhs_mag_gbu12",
				"rhs_mag_gbu12",
				"",
				"rhs_mag_gbu12",
				"rhs_mag_gbu12",
				"rhs_mag_agm65d",
				"rhs_mag_gbu12",
				"rhs_mag_aim9m_2",
				"rhsusf_ANALE40_CMFlare_Chaff_Magazine_x16"

			]],


			[["rhsusf_f22"], [

				"rhs_mag_Sidewinder_int",
				"rhs_mag_aim120d_int",
				"rhs_mag_gbu32",
				"rhs_mag_gbu32",
				"rhs_mag_aim120d_int",
				"rhs_mag_Sidewinder_int",
				"rhsusf_ANALE52_CMFlare_Chaff_Magazine_x4"

			]],


			[["RHSGREF_A29B_HIDF"], [

				"rhs_mag_M151_7_USAF_LAU131",
				"rhs_mag_mk82",
				"rhs_mag_mk82",
				"rhs_mag_mk82",
				"rhs_mag_M151_7_USAF_LAU131",
				"rhsusf_ANALE40_CMFlare_Magazine_x2"

			]],


			[["AMF_RAFALE_M_01_F"], [

				"PylonMissile_Missile_MICAIR_x1",
				"PylonMissile_Missile_MICAIR_x1",
				"",
				"",
				"PylonRack_Bomb_GBU12_x2",
				"PylonRack_Bomb_GBU12_x2",
				"",
				"",
				"PylonRack_Missile_METEOR_INT_x1",
				"PylonRack_Missile_METEOR_INT_x1",
				"PylonRack_1Rnd_SCALP_x1"

			]],


			[["B_FR_Rafale_M_01"], [

				"PylonMissile_Missile_MICAIR_x1",
				"PylonMissile_Missile_MICAIR_x1",
				"",
				"",
				"PylonRack_Bomb_GBU12_x2",
				"PylonRack_Bomb_GBU12_x2",
				"",
				"",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_2Rnd_BombCluster_03_F"

			]],


			[["B_FR_Mirage_2000_5F_01"], [

				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1"

			]],


			[["B_AMF_PLANE_FIGHTER_02_F"], [

				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Bomb_GBU12_x1",
				"PylonMissile_Missile_AA_R77_x1",
				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R73_x1",
				"PylonMissile_Missile_AA_R73_x1"

			]],


			[["sfp_jas39_gbu39"], [

				'sfp_1x_rb98',
				'sfp_1x_rb98',
				'sfp_1x_rb99',
				'sfp_1x_rb99',
				'sfp_4rnd_gbu39',
				'sfp_4rnd_gbu39',
				'sfp_4rnd_gbu39'

			]],


			[["sfp_jas39_bk90"], [

				'sfp_1x_rb98',
				'sfp_1x_rb98',
				'sfp_1x_rb75',
				'sfp_1x_rb75',
				'FIR_EGBU12_P_2rnd_M',
				'FIR_EGBU12_P_2rnd_M',
				'sfp_1rnd_bk90'

			]],


			[["sfp_jas39"], [

				'sfp_1x_rb98',
				'sfp_1x_rb98',
				'sfp_1x_rb99',
				'sfp_1x_rb99',
				'FIR_EGBU12_P_2rnd_M',
				'FIR_EGBU12_P_2rnd_M',
				''

			]],


			[["sfp_jas39_cap"], [

				'sfp_1x_rb98',
				'sfp_1x_rb98',
				'sfp_1x_rb99',
				'sfp_1x_rb99',
				'FIR_EGBU12_P_2rnd_M',
				'FIR_EGBU12_P_2rnd_M',
				''

			]],


			[["M346K_germania"], [

				'FIR_AIM9L_P_1rnd_M_a346',
				'',
				'',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'',
				'',
				'FIR_AIM9L_P_1rnd_M_a346'

			]],


			[["M346K_itacap"], [

				'FIR_AIM9L_P_1rnd_M_a346',
				'',
				'',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'',
				'',
				'FIR_AIM9L_P_1rnd_M_a346'

			]],


			[["M346K_spa"], [

				'FIR_AIM9L_P_1rnd_M_a346',
				'',
				'',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'PylonMissile_1Rnd_Mk82_F',
				'',
				'',
				'FIR_AIM9L_P_1rnd_M_a346'

			]],


			[["CUP_B_AV8B_DYN_USMC"], [

				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M'

			]],


			[["CUP_B_GR9_DYN_GB"], [

				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M'

			]],


			[["CUP_B_F35B_Stealth_USMC"], [

				'',
				'',
				'',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'CUP_PylonPod_2Rnd_GBU12_M',
				'CUP_PylonWeapon_220Rnd_TE1_Red_Tracer_GAU22_M',
				'CUP_PylonPod_2Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'',
				'',
				''

			]],
			
			
			[["F_35C"], [

				'F35C_PylonRack_Missile_AIM9X_x1_TR',
				'F35C_PylonRack_Missile_AIM9X_x1_TL',
				'F35C_PylonRack_Bomb_JDAM82',
				'F35C_PylonRack_Bomb_JDAM82',
				'F35C_PylonRack_Bomb_JDAM82',
				'F35C_PylonRack_Bomb_JDAM82',
				'F35C_magazine_220Rnd_25mm_shells',
				'',
				'',
				'F35C_PylonRack_Missile_AIM120D_x1_Int',
				'F35C_PylonRack_Missile_AIM120D_x1_Int'

			]],


			[["CUP_B_F35B_Stealth_BAF"], [

				'',
				'',
				'',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'CUP_PylonPod_2Rnd_GBU12_M',
				'CUP_PylonWeapon_220Rnd_TE1_Red_Tracer_GAU22_M',
				'CUP_PylonPod_2Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'',
				'',
				''

			]],


			[["CUP_B_F35B_USMC"], [

				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'PylonMissile_1Rnd_BombCluster_03_F',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'CUP_PylonWeapon_220Rnd_TE1_Red_Tracer_GAU22_M',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'PylonMissile_1Rnd_BombCluster_03_F',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M'

			]],


			[["CUP_B_F35B_BAF"], [

				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'PylonMissile_1Rnd_BombCluster_03_F',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'CUP_PylonWeapon_220Rnd_TE1_Red_Tracer_GAU22_M',
				'CUP_PylonPod_1Rnd_AIM_120_AMRAAM_INT_M',
				'PylonMissile_1Rnd_BombCluster_03_F',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M'

			]],


			[["CUP_B_A10_DYN_USA"], [

				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M',
				'CUP_PylonPod_1Rnd_AGM65_Maverick_M',
				'CUP_PylonPod_19Rnd_Rocket_FFAR_plane_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_ANAAQ_28',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_GBU12_M',
				'CUP_PylonPod_1Rnd_AGM65_Maverick_M',
				'CUP_PylonPod_19Rnd_Rocket_FFAR_plane_M',
				'CUP_PylonPod_1Rnd_AIM_9L_LAU_Sidewinder_M'

			]],


			[["UNS_skymaster_CAS"], [

				"uns_pylonweapon_1500Rnd_Suu11_dl",
				"uns_pylonweapon_1500Rnd_Suu11_dl",
				"",
				""

			]],


			[["uns_A1J_CAS"], [

				"",
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				"uns_pylonRack_1Rnd_Bomb_MK81snake",
				"uns_pylonRack_1Rnd_Bomb_MK81snake",
				"uns_pylonweapon_750Rnd_Suu11_dl",
				"uns_pylonweapon_750Rnd_Suu11_dl",
				"vn_rocket_ffar_f4_lau59_m229_he_x7",
				"vn_rocket_ffar_f4_lau59_m229_he_x7",
				""
			]],


			[["uns_f105D_CAP"], [

				"vn_missile_f4_lau7_aim9e_mag_x2",
				"vn_missile_f4_lau7_aim9e_mag_x2",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"uns_pylonRack_1Rnd_fuel_f105_cl"

			]],


			[["uns_A7_CAP"], [

				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_missile_aim7e2_mag_x1",
				"vn_missile_aim7e2_mag_x1",
				"uns_pylonRack_1Rnd_AIM9E",
				"uns_pylonRack_1Rnd_AIM9E"

			]],


			[["vn_b_air_f4c_cas"], [

				["vn_bomb_f4_out_500_blu1b_fb_mag_x2", [-1]],
				["vn_bomb_f4_out_500_mk82_se_mag_x2", [-1]],
				["vn_rocket_ffar_f4_in_lau3_m229_he_x19", [-1]],
				["vn_rocket_ffar_f4_in_lau3_m229_he_x19", [-1]],
				["vn_gunpod_suu23_v_1200_mag", [-1]],
				["vn_missile_f4_lau7_aim9e_mag_x2", [-1]],
				["vn_missile_f4_lau7_aim9e_mag_x2", [-1]],
				["vn_missile_aim7e2_mag_x1", [0]],
				["vn_missile_aim7e2_mag_x1", [0]],
				["vn_missile_aim7e2_mag_x1", [0]],
				["vn_missile_aim7e2_mag_x1", [0]]

			]],


			[["UNS_F111_D_CAS"], [

				"vn_missile_f4_in_agm12c_mag_x1",
				"vn_missile_f4_in_agm12c_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk20_cb_mag_x1",
				"vn_bomb_f4_out_500_mk20_cb_mag_x1",
				"uns_pylonRack_1Rnd_AIM9E",
				"uns_pylonRack_1Rnd_AIM9E",
				"uns_pylonRack_1Rnd_AIM9E",
				"uns_pylonRack_1Rnd_AIM9E",
				"uns_pylonweapon_1200Rnd_HEI_Suu23_dl"

			]],


			[["uns_A4E_skyhawk_MR"], [

				"",
				"",
				"",
				"",
				""

			]],


			[["uns_A6_Intruder_MR"], [

				"vn_rocket_ffar_f4_lau59_m229_he_x7",
				"vn_rocket_ffar_f4_lau59_m229_he_x7",
				"uns_pylonRack_1Rnd_Bomb_MK81snake",
				"uns_pylonRack_1Rnd_Bomb_MK81snake",
				"uns_pylonRack_1Rnd_fuel_a6"

			]],

			[["uns_A7N_MR"], [

				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_bomb_f4_out_500_mk82_se_mag_x1",
				"vn_missile_aim7e2_mag_x1",
				"vn_missile_aim7e2_mag_x1",
				"uns_pylonRack_1Rnd_AIM9E",
				"uns_pylonRack_1Rnd_AIM9E"

			]],

			[["OPTRE_UNSC_falcon"], ["",""]],
			[["OPTRE_UNSC_hornet"], ["OPTRE_16Rnd_Anvil1_missiles","OPTRE_16Rnd_Anvil1_missiles"]],
			[["OPTRE_Pelican_unarmed"], ["",""]],
			[["OPTRE_Wombat_B"],["OPTRE_4Rnd_C2GMLS_missiles","OPTRE_1Rnd_Jacknife_missile"]],
			[["OPTRE_Wombat"],["OPTRE_300Rnd_50mm_shells","OPTRE_300Rnd_50mm_shells"]],
			[["OPTRE_AV22_Sparrowhawk"], ["","OPTRE_6Rnd_C2GMLS_missiles","","","OPTRE_6Rnd_C2GMLS_missiles",""]],
			[["OPTRE_AV22A_Sparrowhawk"], ["OPTRE_6Rnd_C2GMLS_missiles","OPTRE_16Rnd_Anvil1_missiles","OPTRE_1Rnd_Jackknife_missile","OPTRE_1Rnd_Jackknife_missile","OPTRE_16Rnd_Anvil1_missiles","OPTRE_6Rnd_C2GMLS_missiles"]],

			[["FIR_F14A_Maverick"], [

				'FIR_AIM9M_LAU138_P_1rnd_M',
				'FIR_AIM9M_LAU138_P_1rnd_M',
				'FIR_AIM7_P_1rnd_M',
				'FIR_AIM7F_P_1rnd_M',
				'FIR_GBU24B_P_F14_1rnd_M',
				'FIR_AIM54_P_1rnd_M',
				'FIR_GBU12_P_F14_1rnd_M',
				'FIR_GBU12_P_F14_1rnd_M'

			]],
			
			
			[["LIB_P39"], [

				"LIB_1Rnd_FAB250"			

			]],
			
			
			[["LIB_Pe2"], [

				"LIB_1Rnd_SC500",
				"LIB_1Rnd_SC500",
				"LIB_1Rnd_SC500",
				"LIB_1Rnd_SC500"			

			]],
			
			
			[["sab_il2"], [

				"sab_1rnd_rs82_mag",
				"sab_1rnd_rs82_mag",
				"sab_1rnd_250_mag",
				"sab_1rnd_250_mag",
				"sab_1rnd_250_mag",
				"sab_1rnd_250_mag",
				"sab_1rnd_rs82_mag",
				"sab_1rnd_rs82_mag"			

			]],
			
			
			[["sab_la5"], [

				"sab_1rnd_rs82_mag",
				"sab_1rnd_250_mag",
				"sab_1rnd_rs82_mag"	

			]],
			
			
			[["sab_fl_yak3"], [

							

			]],
			
			
			[["sab_i16"], [

				"sab_1rnd_smokebmb_mag",
				"sab_1rnd_smokebmb_mag"	

			]],
			
			
			[["LIB_Ju87"], [

				"LIB_1Rnd_SC250",
				"LIB_1Rnd_SC250",
				"LIB_1Rnd_SC250",
				"LIB_1Rnd_SC250",
				"LIB_1Rnd_SC250"

			]],
			
			
			[["sab_bf109"], [

				"sab_1rnd_ffar_mag",
				"sab_1rnd_250axis_mag",
				"sab_1rnd_ffar_mag"			

			]],
			
			
			[["sab_ju88"], [

				"sab_1rnd_1000axis_mag",
				"sab_1rnd_1000axis_mag",
				"sab_1rnd_1000axis_mag",
				"sab_1rnd_1000axis_mag"			

			]],
			
			
			[["sab_avia_2"], [

				"sab_1rnd_smokebmb_mag",
				"sab_3rnd_smokerocket_mag",
				"",
				"",
				"sab_3rnd_smokerocket_mag",
				"sab_1rnd_smokebmb_mag"			

			]],
			
			
			[["sab_me262"], [

				"sab_1rnd_250axis_mag",
				"sab_1rnd_250axis_mag",
				"sab_cannon_50_he_pylonweapon"			

			]],
			
			
			[["LIB_FW190F8_2"], [

				"LIB_1Rnd_SC50",
				"LIB_1Rnd_SC50",
				"LIB_1Rnd_SC250",
				"LIB_1Rnd_SC50",
				"LIB_1Rnd_SC50"			

			]],
			
			
			[["spitfire_v_G"], [		

			]],
			
			
			[["sab_gladiator"], [		
				
				"sab_1rnd_smokebmb_mag",
				"sab_3rnd_smokerocket_mag",
				"sab_3rnd_smokerocket_mag",
				"sab_1rnd_smokebmb_mag"
				
			]],
			
			
			[["sab_meteor"], [		

			]],
			
			[["LIB_RAF_P39"], [		
				
				"LIB_1Rnd_SC250"
				
			]],
			
			
			[["sab_fl_hurricane_2"], [		
				
				"sab_fl_rocket_4rnd_rp3_mag",
				"sab_fl_bomb_raf_1rnd_250_mag",
				"sab_fl_bomb_raf_1rnd_250_mag",
				"sab_fl_rocket_4rnd_rp3_mag"
				
			]],
			
			
			[["sab_fl_dh98"], [		
				
				"sab_fl_bomb_raf_1rnd_500_mag",
				"sab_fl_bomb_raf_1rnd_500_mag",
				"sab_fl_bomb_allies_2rnd_500_mag"
				
			]],
			
			
			[["LIB_P47"], [		
				
				"LIB_1Rnd_SC250",
				"LIB_1Rnd_SC250",
				"LIB_1Rnd_SC250"
				
			]],

			
			[["LIB_US_P39"], [		
				
				"LIB_1Rnd_SC250"
				
			]],
			
			
			[["LIB_RAAF_P39"], [		
				
				"LIB_1Rnd_SC250"
				
			]],

			
			[["sab_fl_p51d"], [		
				
				'sab_fl_rocket_3rnd_m10_mag',
				'sab_fl_bomb_allies_1rnd_250_mag',
				'sab_fl_bomb_allies_1rnd_250_mag',
				'sab_fl_rocket_3rnd_m10_mag'
				
			]],

			
			[["sab_p38"], [		
				
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag'
				
			]],

			
			[["sab_p26"], [		
				
				"sab_1rnd_smokebmb_mag",
				"sab_3rnd_smokerocket_mag",
				"sab_3rnd_smokerocket_mag",
				"sab_1rnd_smokebmb_mag"
				
			]],

			
			[["sab_b25"], [		
				
				"sab_6rnd500_bomber_mag"
				
			]],
			
			
			[["fow_va_f6f"], [		
				
			]],

			
			[["sab_corsair"], [		
				
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_250_mag',
				'sab_1rnd_250_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag'
				
			]],

			
			[["sab_dauntless"], [		
				
				'sab_1rnd_1000_mag'
				
			]],

			
			[["sab_avenger"], [		
				
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_500_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag'
				
			]],

			
			[["fow_va_f6f_c"], [		
				
			]],

			
			[["sab_texan"], [		
				
			]],
			
			
			[["sab_f6f"], [		
				
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag''sab_1rnd_50_mag',
				'sab_1rnd_50_mag',
				'sab_1rnd_50_mag',
				'sab_1rnd_50_mag',
				'sab_1rnd_ffar_mag',
				'sab_1rnd_ffar_mag'
				
			]],
			
			[["gm_ge_army_bo105p_pah1"], [		
				
				['rhsusf_mag_gau19_melb_left', [-1]],
				['rhsusf_mag_gau19_melb_right', [-1]],
				['rhs_mag_M151_7', [-1]],
				['rhs_mag_M151_7', [-1]],
				['rhs_mag_M151_7', [-1]],
				['rhs_mag_M151_7', [-1]]
				
			]],
			
			[["dcx_gm_ge_air_rf4e"], [		
				
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_bomb_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_500_mk82_he_mag_x1', [-1]],
				['vn_rocket_ffar_f4_in_lau59_wdu4_flechette_x21', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]]
				
			]],
			
			[["dcxx_generic_f4_grey"], [		
				
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_bomb_f4_in_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_in_500_mk82_he_mag_x1', [-1]],
				['', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]]
				
			]],
			
			[["dcxx_uk_navy_fg1_unfolded"], [		
				
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_bomb_f4_in_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_in_500_mk82_he_mag_x1', [-1]],
				['', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]]
				
			]],
			
		// Phantom USAF CAP
			
			[["vn_b_air_f4c_cap"], [		
				
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// Phantom USAF CAP
			
			[["vn_b_air_f4b_navy_cap"], [		
				
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_missile_aim7e2_mag_x1', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// Phantom USAF MR
			
			[["vn_b_air_f4c_mr"], [		
							
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_rocket_ffar_f4_in_lau3_m151_he_x19', [-1]],
				['vn_rocket_ffar_f4_in_lau3_m151_he_x19', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// Phantom USAF MR
			
			[["vn_b_air_f4b_navy_mr"], [		
				
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_rocket_ffar_f4_in_lau3_m151_he_x19', [-1]],
				['vn_rocket_ffar_f4_in_lau3_m151_he_x19', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// Phantom USAF CAS
			
			[["vn_b_air_f4c_cas"], [	
			
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_rocket_ffar_f4_in_lau3_m151_he_x19', [-1]],
				['vn_bomb_f4_in_500_blu1b_fb_mag_x2', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// Phantom USAF CAS
			
			[["vn_b_air_f4b_navy_cas"], [		
				
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_bomb_f4_out_500_mk82_he_mag_x1', [-1]],
				['vn_rocket_ffar_f4_in_lau3_m151_he_x19', [-1]],
				['vn_bomb_f4_in_500_blu1b_fb_mag_x2', [-1]],
				['vn_gunpod_suu23_v_1200_mag', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// Phantom USAF AT
			
			[["vn_b_air_f4c_at"], [		
				
				['vn_missile_f4_out_agm12c_mag_x1', [-1]],
				['vn_missile_f4_out_agm12c_mag_x1', [-1]],
				['vn_bomb_f4_in_500_mk20_cb_mag_x1', [-1]],
				['vn_bomb_f4_in_500_mk20_cb_mag_x1', [-1]],
				['vn_bomb_f4_in_2000_mk84_he_mag_x1', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// Phantom USAF AT
			
			[["vn_b_air_f4b_navy_at"], [		
				
				['vn_missile_f4_out_agm12c_mag_x1', [-1]],
				['vn_missile_f4_out_agm12c_mag_x1', [-1]],
				['vn_bomb_f4_in_500_mk20_cb_mag_x1', [-1]],
				['vn_bomb_f4_in_500_mk20_cb_mag_x1', [-1]],
				['vn_bomb_f4_in_2000_mk84_he_mag_x1', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_f4_lau7_aim9e_mag_x2', [-1]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['vn_missile_aim7e2_mag_x1', [0]],
				['', [0]],
				['', [0]]
				
			]],
			
			
		// MIG-29 AA
			
			[["rhs_mig29s_vvs"], [		
				
				'rhs_mag_fab500_bd3_umk2a',
				'rhs_mag_fab500_bd3_umk2a',
				'rhs_mag_R77M_AKU170_MIG29',
				'rhs_mag_R77M_AKU170_MIG29',
				'rhs_mag_R73M_APU73',
				'rhs_mag_R73M_APU73',
				'rhs_mag_ptb1500',
				'rhs_BVP3026_CMFlare_Chaff_Magazine_x2'
				
			]],
		
		
		// MIG-29 CAS
			
			[["rhs_mig29sm_vvs"], [		
				
				'rhs_mag_fab500_bd3_umk2a',
				'rhs_mag_fab500_bd3_umk2a',
				'rhs_mag_fab500_bd3_umk2a',
				'rhs_mag_fab500_bd3_umk2a',
				'rhs_mag_R73M_APU73',
				'rhs_mag_R73M_APU73',
				'rhs_mag_ptb1500',
				'rhs_BVP3026_CMFlare_Chaff_Magazine_x2'
				
			]],

		
		// SU-25 Cluster
			
			[["RHS_Su25SM_vvs"], [		
				
				'rhs_mag_kab500',
				'rhs_mag_kab500',
				'rhs_mag_kab500',
				'rhs_mag_kab500',
				'rhs_mag_rbk500_ao25',
				'rhs_mag_rbk500_ao25',
				'rhs_mag_ub32_s5m1',
				'rhs_mag_ub16_s5m1',
				'rhs_mag_R60M',
				'rhs_mag_R60M',
				'rhs_ASO2_CMFlare_Chaff_Magazine_x4'
				
			]],


		// SU-25 AT
			
			[["rhsgref_cdf_su25"], [		
				
				'rhs_mag_b8m1_s8t',
				'rhs_mag_b8m1_s8t',
				'rhs_mag_kh25MA',
				'rhs_mag_kh25MA',
				'rhs_mag_kab500',
				'rhs_mag_kab500',
				'rhs_mag_kab500',
				'rhs_mag_kab500',
				'rhs_mag_R60M',
				'rhs_mag_R60M',
				'rhs_ASO2_CMFlare_Chaff_Magazine_x4'
				
			]],
			
			
		// Alca
			
			[["rhs_l159_CDF"], [		
				
				'rhs_mag_Sidewinder',
				'rhs_mag_FFAR_7_USAF',
				'rhs_mag_mk82',
				'rhs_mag_zpl20_hei',
				'rhs_mag_mk82',
				'rhs_mag_FFAR_7_USAF',
				'rhs_mag_Sidewinder',
				'rhsusf_ANALE40_CMFlare_Chaff_Magazine_x2'
				
			]]

		];


	// Set Pylon Loadout
	
		[_veh, _allVehiclePylonData] call BEW_FNC_setCustomPylonLoadout;



