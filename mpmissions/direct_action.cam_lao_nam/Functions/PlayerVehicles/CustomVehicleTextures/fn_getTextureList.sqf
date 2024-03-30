	private ["_type", "_factionClass", "_textureList", "_customFactionTexture"];

	_type		=	_this select 0;
	_factionTag	=	_this select 1;
	_textureList = [];
	_customFactionTexture = FALSE;


	// Define Faction Classname
	
		call compile format ["
			
			_factionClass = %1_NewFactionTag;

		", _factionTag];
		

	// Gorgon

		if (_type == "I_APC_Wheeled_03_cannon_F") then {

			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_T_F") or (_factionClass == "BLU_W_F") or (_factionClass == "IND_E_F")) then { 
				
				// Nato Camo
				
				_textureList = [     
					
					'a3\data_f_tacops\data\apc_wheeled_03_ext_ig_02_co.paa',
					'a3\data_f_tacops\data\apc_wheeled_03_ext2_ig_02_co.paa',
					'a3\data_f_tacops\data\rcws30_ig_02_co.paa',
					'a3\data_f_tacops\data\apc_wheeled_03_ext_alpha_ig_02_co.paa',
					'a3\armor_f\data\camonet_aaf_fia_desert_co.paa',
					'a3\armor_f\data\cage_sand_co.paa'
				  
				];    

				_customFactionTexture = TRUE;
			
			};


			if (_factionClass == "BLU_G_F") then { 
				
				// Guerilla Camo Texture
				
				_textureList = [     
					
					'a3\data_f_tacops\data\apc_wheeled_03_ext_ig_02_co.paa',
					'a3\data_f_tacops\data\apc_wheeled_03_ext2_ig_02_co.paa',
					'a3\data_f_tacops\data\rcws30_ig_02_co.paa',
					'a3\data_f_tacops\data\apc_wheeled_03_ext_alpha_ig_02_co.paa',
					'a3\armor_f\data\camonet_aaf_fia_desert_co.paa',
					'a3\armor_f\data\cage_sand_co.paa'
				  
				];    

				_customFactionTexture = TRUE;
			
			};

		};
		
		
	// Offroad HMG

		if (_type == "I_G_Offroad_01_armed_F") then {

			if (_factionClass == "IND_E_F") then { 
				
				// LDF Camo Texture
				
				_textureList = [     
					
					'a3\soft_f_enoch\offroad_01\data\offroad_01_ext_eaf_co.paa',
					'a3\soft_f_enoch\offroad_01\data\offroad_01_ext_eaf_co.paa' 
				  
				];     
				
				_customFactionTexture = TRUE;
			
			};
			
			if (_factionClass == "BLU_G_F") then { 
				
				// FIA Camo Texture
				
				_textureList = [     
					
					'a3\soft_f_bootcamp\offroad_01\data\offroad_01_ext_ig_02_co.paa',
					'a3\soft_f_bootcamp\offroad_01\data\offroad_01_ext_ig_02_co.paa'
				  
				];     
				
				_customFactionTexture = TRUE;
			
			};

		};
		
		
	// Offroad AT

		if (_type == "I_G_Offroad_01_AT_F") then {

			if (_factionClass == "IND_E_F") then { 
				
				// LDF Camo Texture
				
				_textureList = [     
					
					'a3\soft_f_enoch\offroad_01\data\offroad_01_ext_eaf_co.paa',
					'a3\soft_f_enoch\offroad_01\data\offroad_01_ext_eaf_co.paa' 
				  
				];    

				_customFactionTexture = TRUE;
			
			};
			
			if (_factionClass == "BLU_G_F") then { 
				
				// FIA Camo Texture
				
				_textureList = [     
					
					'a3\soft_f_bootcamp\offroad_01\data\offroad_01_ext_ig_02_co.paa',
					'a3\soft_f_bootcamp\offroad_01\data\offroad_01_ext_ig_02_co.paa'
				  
				];     
				
				_customFactionTexture = TRUE;
			
			};

		};
		
		
	// Project Livonia Mohawk

		if ((_type == "I_Heli_Transport_02_LDF_F")) then {

			if ((_factionClass == "IND_E_F")) then { 

				_textureList = [ 
	 
					'projectliv_all_in_one\air_f_beta\heli_transport_02\data\camo_heli_transport_02_f_main_co.paa',
					'projectliv_all_in_one\air_f_beta\heli_transport_02\data\camo_heli_transport_02_f_tail_co.paa',
					'projectliv_all_in_one\air_f_beta\heli_transport_02\data\camo_heli_transport_02_f_engine_co.paa'
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// MDF Mohawk

		if ((_type == "I_INDMDFF_CH_49_Mohawk")) then {

			if ((_factionClass == "IND_MDF_F")) then { 
					
				_textureList = [ 
	 
					'mdf\data\mohawk_body1_mdf.paa',
					'mdf\data\mohawk_body2_mdf.paa',
					'mdf\data\mohawk_body3_mdf.paa',
					'a3\air_f_beta\heli_transport_02\data\heli_transport_02_int_02_co.paa'
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// MDF Orca

		if ((_type == "I_INDMDFF_PO_30_Orca") or (_type == "I_INDMDFF_PO_30_Orca_Unarmed")) then {

			if ((_factionClass == "IND_MDF_F")) then { 
						
				_textureList = [ 
	 
					'mdf\data\orca_mdf.paa'
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// MDF Kajman

		if ((_type == "I_INDMDFF_Mi_48_Kajman")) then {

			if ((_factionClass == "IND_MDF_F")) then { 
		
				_textureList = [ 
	 
					'mdf\data\kajman_mdf_01.paa',
					'mdf\data\kajman_mdf_02.paa'
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// MDF Hellcat Armed

		if ((_type == "I_INDMDFF_WY_55_Hellcat")) then {

			if ((_factionClass == "IND_MDF_F")) then { 
	
				_textureList = [ 
	 
					'mdf\data\heli_light_03_mdf_co.paa',
					'',
					''
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
		
	// MDF Hellcat Unrmed

		if ((_type == "I_INDMDFF_WY_55_Hellcat_Unarmed")) then {

			if ((_factionClass == "IND_MDF_F")) then { 

				_textureList = [ 
	 
					'mdf\data\heli_light_03_mdf_co.paa'
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
	
	
	// MDF Buzzard

		if ((_type == "I_Plane_Fighter_03_dynamicLoadout_F") or (_type == "I_Plane_Fighter_03_Cluster_F") or (_type == "I_Plane_Fighter_04_F")) then {

			if ((_factionClass == "IND_MDF_F")) then { 

				_textureList = [ 
	 
					'mdf\data\buzzard_1.paa',
					'mdf\data\buzzard_2.paa'
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// MDF Gryphon

		if ((_type == "I_Plane_Fighter_04_F") or (_type == "I_Plane_Fighter_04_Cluster_F")) then {

			if ((_factionClass == "IND_MDF_F")) then { 
				
				_textureList = [ 
	 
					'mdf_gryphon\data\gryphon_01_co.paa',
					'mdf_gryphon\data\gryphon_02_co.paa',
					'a3\air_f_jets\plane_fighter_04\data\fighter_04_misc_01_co.paa',
					'',
					'',
					''
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// MDF Offroad

		if ((_type == "I_G_Offroad_01_F") or (_type == "I_G_Offroad_01_armed_F") or (_type == "I_G_Offroad_01_AT_F")) then {

			if ((_factionClass == "IND_MDF_F")) then { 

				_textureList = [ 
	 
					'mdf\data\offroad_mdf.paa',
					'mdf\data\offroad_mdf.paa'
				 
				];
				
				_customFactionTexture = TRUE;

			};

		};
	

	// Mohawk

		if ((_type == "I_Heli_Transport_02_F")) then {

			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_W_F") or (_factionClass == "IND_E_F") or (_factionClass == "BLU_CTRG_F")) then { 
				
				// Nato Green Texture
				
				_textureList = [ 
	 
					"vehicleTextures\BLUMohawk\blu_mohawk_co.paa", 
					"vehicleTextures\BLUMohawk\blu_mohawk2_co.paa", 
					"vehicleTextures\BLUMohawk\blu_mohawk3_co.paa", 
					"a3\air_f_beta\heli_transport_02\data\heli_transport_02_int_02_co.paa" 
				 
				];
				
				_customFactionTexture = TRUE;

			};


			if (_factionClass == "BLU_T_F") then { 
				
				// Nato Navy Texture
				
				_textureList = [ 
 
					 "vehicleTextures\jk_us_navy\heli_transport_02_1_navy_co.paa", 
					 "vehicleTextures\jk_us_navy\heli_transport_02_2_navy_co.paa", 
					 "vehicleTextures\jk_us_navy\heli_transport_02_3_navy_co.paa", 
					 "a3\air_f_beta\heli_transport_02\data\heli_transport_02_int_02_co.paa" 

				]; 
				
				_customFactionTexture = TRUE;
				
			};

		};
		
	
	// Huron
	
		if (_type == "B_Heli_Transport_03_F") then {

			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_W_F")) then { 
				
				// Nato Green Texture
				
				_textureList = [ 
 
					'a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_co.paa',
					'a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_co.paa'

				]; 
				
				_customFactionTexture = TRUE;

			};


			if (_factionClass == "BLU_CTRG_F") then { 
				
				// Nato Black Texture
				
				_textureList = [ 
 
					'a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_black_co.paa',
					'a3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_black_co.paa'

				]; 
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// Ghosthawk
	
		if (_type == "B_Heli_Transport_01_F") then {
			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_W_F")) then { 
				
				// Nato Green Texture
				
				_textureList = [ 
 
					'a3\air_f_beta\heli_transport_01\data\heli_transport_01_ext01_blufor_co.paa',
					'a3\air_f_beta\heli_transport_01\data\heli_transport_01_ext02_blufor_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE; 

			};


			if (_factionClass == "BLU_CTRG_F") then { 
				
				// CTRG Texture
				
				_textureList = [ 
 
					'a3\air_f_exp\heli_transport_01\data\heli_transport_01_ext01_tropic_co.paa',
					'a3\air_f_exp\heli_transport_01\data\heli_transport_01_ext02_tropic_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE; 

			};

		};
		
		
	// Blackfoot
		
		if (_type == "B_Heli_Attack_01_dynamicLoadout_F") then {

			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_W_F")) then { 
				
				// Nato Green Texture
				
				_textureList = [ 
	 
					'a3\air_f_beta\heli_attack_01\data\heli_attack_01_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE;
 
			};

		};
		
		
	// Blackfish
		
		if ((_type == "B_T_VTOL_01_infantry_F") or (_type == "B_T_VTOL_01_vehicle_F") or (_type == "B_T_VTOL_01_armed_F")) then {

			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_W_F")) then { 
				
				// Nato Green Texture
				
				_textureList = [

					"a3\air_f_exp\vtol_01\data\vtol_01_ext01_olive_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_ext02_olive_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_ext03_olive_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_ext04_olive_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_signs_ca.paa"

				]; 
				
				_customFactionTexture = TRUE;
 
			};


			if (_factionClass == "BLU_T_F") then { 
				
				// Nato Blue Texture
				
				_textureList = [ 
	 
					"a3\air_f_exp\vtol_01\data\vtol_01_ext01_blue_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_ext02_blue_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_ext03_blue_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_ext04_blue_co.paa",
					"a3\air_f_exp\vtol_01\data\vtol_01_signs_ca.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;
 
			};

		};
		
		
	// Pawnee and Hummingbird
	
		if ((_type == "B_Heli_Light_01_dynamicLoadout_F") or (_type == "B_Heli_Light_01_F")) then {

			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_W_F")) then { 
				
				// Nato Green Texture
				
				_textureList = [ 
 
					'a3\air_f\heli_light_01\data\heli_light_01_ext_blufor_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE; 

			};
			
			if ((_factionClass == "BLU_T_F") or (_factionClass == "BLU_CTRG_F")) then { 
				
				// Nato Black Texture
				
				_textureList = [ 
 
					"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
				 
				]; 
				
				_customFactionTexture = TRUE; 

			};
			
			if (_factionClass == "IND_F") then { 
				
				// AAF Camo
				
				_textureList = [ 
 
					"A3\Air_F\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;

			};

		};
	
	
	// Hellcat (Unarmed)
	
		if (_type == "I_Heli_light_03_unarmed_F") then {
			
			if (_factionClass == "BLU_G_F") then { 
				
				// FIA Camo
				
				_textureList = [ 
 
					'a3\air_f_epb\heli_light_03\data\heli_light_03_base_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
			if (_factionClass == "IND_F") then { 
				
				// AAF Camo
				
				_textureList = [ 
 
					'a3\air_f_epb\heli_light_03\data\heli_light_03_base_indp_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// Hellcat (Armed)
	
		if (_type == "I_Heli_light_03_dynamicLoadout_F") then {
			
			if (_factionClass == "BLU_G_F") then { 
				
				// FIA Camo
				
				_textureList = [ 
 
					'a3\air_f_epb\heli_light_03\data\heli_light_03_base_co.paa',
					'a3\weapons_f\ammoboxes\data\ammobox_co.paa',
					'a3\weapons_f\ammoboxes\data\ammobox_signs_ca.paa'
				 
				]; 
				
				_customFactionTexture = TRUE;

			};

		};
		
		
	// Nyx Cannon
	
		if (_type == "I_LT_01_cannon_F") then {
			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_T_F") or (_factionClass == "BLU_W_F") or (_factionClass == "IND_MDF_F") or (_factionClass == "IND_E_F") or (_factionClass == "BLU_NATO_lxWS") or (_factionClass == "BLU_CTRG_F") or (_factionClass == "BLU_ION_lxWS")) then { 
				
				// Nato Green Texture
				
				_textureList = [ 
 
					'a3\armor_f_tank\lt_01\data\lt_01_main_olive_co.paa',
					'a3\armor_f_tank\lt_01\data\lt_01_cannon_olive_co.paa',
					'a3\armor_f\data\camonet_aaf_digi_green_co.paa',
					'a3\armor_f\data\cage_olive_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
		
		
	// Nyx AA
	
		if (_type == "I_LT_01_AA_F") then {
			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_T_F") or (_factionClass == "BLU_W_F") or (_factionClass == "IND_MDF_F") or (_factionClass == "IND_E_F") or (_factionClass == "BLU_NATO_lxWS") or (_factionClass == "BLU_CTRG_F") or (_factionClass == "BLU_ION_lxWS")) then { 
				
				// Nato Green Texture
				
				_textureList = [ 
 
					'a3\armor_f_tank\lt_01\data\lt_01_main_olive_co.paa',
					'a3\armor_f_tank\lt_01\data\lt_01_at_olive_co.paa',
					'a3\armor_f\data\camonet_aaf_digi_green_co.paa',
					'a3\armor_f\data\cage_olive_co.paa'
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
	
	
	// Caesar
	
		if (_type == "C_Plane_Civil_01_racing_F") then {
				
				_textureList = [ 
 
					"#(argb,8,8,3)color(0.8,0.8,0.65,0.15)", 
					"#(argb,8,8,3)color(0.8,0.8,0.65,0.15)"  

				]; 
				
		};
	
	
	// Buzzard
	
		if ((_type == "I_Plane_Fighter_03_dynamicLoadout_F") or (_type == "I_Plane_Fighter_03_Cluster_F")) then {
				
				if (!(_factionClass == "IND_MDF_F")) then { 
				
					_textureList = [ 
	 
						"vehicleTextures\ALCA\l159_body_1_co.paa", 
						"vehicleTextures\ALCA\l159_body_2_co.paa"  

					]; 
				
				};

		};
	
	
	// Gryphon
	
		if ((_type == "I_Plane_Fighter_04_F") or (_type == "I_Plane_Fighter_04_Cluster_F")) then {

			if ((_factionClass == "IND_F") or (_factionClass == "IND_E_F")) then { 
				
				// Grey Texture
				
				_textureList = [ 
 
					'a3\air_f_jets\plane_fighter_04\data\fighter_04_fuselage_01_co.paa',
					'a3\air_f_jets\plane_fighter_04\data\fighter_04_fuselage_02_co.paa',
					'a3\air_f_jets\plane_fighter_04\data\fighter_04_misc_01_co.paa',
					'a3\air_f_jets\plane_fighter_04\data\numbers\fighter_04_number_04_ca.paa',
					'a3\air_f_jets\plane_fighter_04\data\numbers\fighter_04_number_04_ca.paa',
					'a3\air_f_jets\plane_fighter_04\data\numbers\fighter_04_number_08_ca.paa'

				]; 
				
				_customFactionTexture = TRUE;

			};

		};
	
	
	// Strider
	
		if ((_type == "I_MRAP_03_F") or (_type == "I_MRAP_03_gmg_F") or (_type == "I_MRAP_03_hmg_F")) then {
			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_T_F") or (_factionClass == "BLU_W_F")) then { 
				
				// Nato Grey Texture
				
				_textureList = [ 
 
					'\A3\soft_f_beta\mrap_03\data\mrap_03_ext_co.paa',
					'\﻿A3\data_f\vehicles\turret_co.﻿paa﻿'
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};

		
	// HEMTT
	
		if (_type == "B_Truck_01_flatbed_F") then {
			
			_factions = [
			
				"UK3CB_CW_US_B_LATE",
				"CUP_B_US_Army",
				"CUP_B_USMC",
				"rhs_faction_usarmy_d",
				"rhs_faction_usmc_d",
				"rhs_faction_socom_marsoc",
				"rhs_faction_usn",
				"TFC_A3_ARID"
			
			];
			
			if (_factionClass in _factions) then { 
				
				// Desert Texture
				
				_textureList = [ 
 
					"vehicleTextures\HEMTT\HEMTT_desert_front_basic.paa", 
					"vehicleTextures\HEMTT\HEMTT_desert_top_basic.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
		
		
	// Stryker M1126 (RHS)
	
		if ((_type == "rhsusf_stryker_m1126_m2_d") or (_type == "rhsusf_stryker_m1126_mk19_d")) then {
			
			if ((_factionClass == "rhs_faction_usarmy_d") or (_factionClass == "rhs_faction_usmc_d") or (_factionClass == "rhs_faction_socom_marsoc") or (_factionClass == "rhs_faction_usn") or (_factionClass == "TFC_A3_ARID")) then { 
				
				// Desert Texture
				
				_textureList = [ 
 
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_slat_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa",
					"rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
		
		
	// Stryker M1127 (RHS)
	
		if (_type == "rhsusf_stryker_m1127_m2_d") then {
			
			if ((_factionClass == "rhs_faction_usarmy_d") or (_factionClass == "rhs_faction_usmc_d") or (_factionClass == "rhs_faction_socom_marsoc") or (_factionClass == "rhs_faction_usn") or (_factionClass == "TFC_A3_ARID")) then { 
				
				// Desert Texture
				
				_textureList = [ 
 
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_slat_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_M1127_des_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_LRAS3_d_CO.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa",
					"rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
		
		
	// Stryker M1132 (RHS)
	
		if (_type == "rhsusf_stryker_m1132_m2_np_d") then {
			
			if ((_factionClass == "rhs_faction_usarmy_d") or (_factionClass == "rhs_faction_usmc_d") or (_factionClass == "rhs_faction_socom_marsoc") or (_factionClass == "rhs_faction_usn") or (_factionClass == "TFC_A3_ARID")) then { 
				
				// Desert Texture
				
				_textureList = [ 
 
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_slat_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1132_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa",
					"rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
		
		
	// Stryker M1134 (RHS)
	
		if (_type == "rhsusf_stryker_m1134_d") then {
			
			if ((_factionClass == "rhs_faction_usarmy_d") or (_factionClass == "rhs_faction_usmc_d") or (_factionClass == "rhs_faction_socom_marsoc") or (_factionClass == "rhs_faction_usn") or (_factionClass == "TFC_A3_ARID")) then { 
				
				// Desert Texture
				
				_textureList = [ 
 
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_slat_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1134_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1134_int_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa",
					"rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
		
		
	// Stryker M1132 (RHS)
	
		if (_type == "rhsusf_stryker_m1132_m2_d") then {
			
			if ((_factionClass == "rhs_faction_usarmy_d") or (_factionClass == "rhs_faction_usmc_d") or (_factionClass == "rhs_faction_socom_marsoc") or (_factionClass == "rhs_faction_usn") or (_factionClass == "TFC_A3_ARID")) then { 
				
				// Desert Texture
				
				_textureList = [ 
 
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_slat_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1132_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa",
					"rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa",
					"rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa",
					"rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"
				 
				]; 
				
				_customFactionTexture = TRUE;

			};
			
		};
		

	// RHS Tuccano
	
		if ((_type == "RHSGREF_A29B_HIDF")) then {

			// Grey Texture
			
			_textureList = [ 
				
				"rhsgref\addons\rhsgref_a29\tex\st_fuselage_usaf_co.paa",
				"rhsgref\addons\rhsgref_a29\tex\st_wingsandstabs_usaf_co.paa",
				"rhsgref\addons\rhsgref_a29\tex\st_everythingelse_usaf_co.paa",
				"rhsgref\addons\rhsgref_a29\tex\jst_prop_blur.paa"
				
			]; 

		};
		
		
	// RHS AN2
	
		if ((_type == "RHS_AN2")) then {
				
			if ((_factionClass == "rhsgref_faction_cdf_ground")) then {
			
				// CDF Texture
				
				_textureList = [ 
					
					'rhsgref\addons\rhsgref_air\an2\data\an2_1_co.paa',
					'rhsgref\addons\rhsgref_air\an2\data\an2_2_co.paa',
					'rhsgref\addons\rhsgref_air\an2\data\an2_wings_co.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\2_ca.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\1_ca.paa',
					'rhsafrf\addons\rhs_decals\data\labels\aviation\cdf_roundel02_ca.paa',
					'rhsafrf\addons\rhs_decals\data\labels\aviationsquadronscdf\cdf_para01_ca.paa'
					
				]; 
			
			}else{
			
				// Grey Texture
				
				_textureList = [ 
					
					"rhsgref\addons\rhsgref_air\an2\data\an2_1_co.paa",
					"rhsgref\addons\rhsgref_air\an2\data\an2_2_co.paa",
					"rhsgref\addons\rhsgref_air\an2\data\an2_wings_co.paa",
					"rhsafrf\addons\rhs_decals\data\numbers\aviacdf\7_ca.paa",
					"rhsafrf\addons\rhs_decals\data\numbers\aviacdf\5_ca.paa",
					"rhsafrf\addons\rhs_decals\data\labels\aviation\star_old_ca.paa",
					"rhsafrf\addons\rhs_decals\data\labels\aviation\star_old_ca.paa"
					
				]; 
			
			};

		};
	
	
	// Firewill F18F
	
		if ((_type == "FIR_FA18F")) then {
			
			if (_factionClass == "ADFU") then { 
			
				// RAAF Texture
				
				_textureList = [ 
				
					'flan_ea18g\skin\raaf\nose_co.paa',
					'flan_ea18g\skin\raaf\body_co.paa',
					'flan_ea18g\skin\raaf\fuse_co.paa',
					'flan_ea18g\skin\raaf\leftwing_co.paa',
					'flan_ea18g\skin\raaf\rightwing_co.paa'
					
				]; 
			
			};

		};
		
		
	// Firewill F18C
	
		if ((_type == "FIR_F18C_Blank")) then {
		
			if ((_factionClass == "TFC_A3_TEMPERATE") or (_factionClass == "TFC_A3_ARID")) then { 

				// RCAF Texture
				
				_textureList = [ 
				
					'fir_fa18\skin\rcaf\body_co.paa',
					'fir_fa18\skin\rcaf\wing_co.paa',
					'fir_fa18\skin\rcaf\buno_ca.paa'
					
				]; 
			
			};

		};
		
		
	// German Tornado
	
		if ((_type == "Tornado_AWS_GER") or (_type == "Tornado_AWS_camo_ger") or (_type == "Tornado_AWS_ecr_ger") or (_type == "Tornado_AWS_blu")) then {
		
			if (_factionClass == "gm_fc_ge") then { 

				// German Army Texture
				
				_textureList = [ 
				
					'tornado_aws\data\texture.camoger\wingbottomleft_t.paa',
					'tornado_aws\data\texture.camoger\wingbottomright_t.paa',
					'tornado_aws\data\texture.camoger\wingtopleft_t.paa',
					'tornado_aws\data\texture.camoger\wingtopright_t.paa',
					'tornado_aws\data\texture.camoger\grey_t.paa',
					'tornado_aws\data\texture.camoger\elevonleft_t.paa',
					'tornado_aws\data\texture.camoger\elevonright_t.paa',
					'tornado_aws\data\texture.camoger\fusefront_t.paa',
					'tornado_aws\data\texture.camoger\fuserear_t.paa',
					'tornado_aws\data\texture.camoger\fusetopbottom_t.paa',
					'tornado_aws\data\texture.camoger\hubtail_t.paa',
					'tornado_aws\data\texture.camoger\intake_t.paa',
					'tornado_aws\data\texture.camoger\grey_t.paa',
					'tornado_aws\data\texture.camoger\grey_t.paa',
					'tornado_aws\data\texture.camoger\grey_t.paa',
					'tornado_aws\data\texture.camoger\grey_t.paa'
					
				]; 
			
			};

		};
		
		
	// British Tornado
	
		if ((_type == "Tornado_AWS_UK_617") or (_type == "Tornado_AWS_ecr_blu") or (_type == "Tornado_AWS_camo_uk")) then {
		
			if (_factionClass == "UK3CB_BAF_Faction_Army_Woodland") then { 
				
				if ((BEW_v_mapCamo == "Woodland") or (BEW_v_mapCamo == "Tropical")) then {
				
					// British Woodland Camo Texture
					
					_textureList = [ 
					
						'tornado_aws\data\texture.camouk\wingbottomleft_t.paa',
						'tornado_aws\data\texture.camouk\wingbottomright_t.paa',
						'tornado_aws\data\texture.camouk\wingtopleft_t.paa',
						'tornado_aws\data\texture.camouk\wingtopright_t.paa',
						'tornado_aws\data\texture.camouk\grey_t.paa',
						'tornado_aws\data\texture.camouk\elevonleft_t.paa',
						'tornado_aws\data\texture.camouk\elevonright_t.paa',
						'tornado_aws\data\texture.camouk\fusefront_t.paa',
						'tornado_aws\data\texture.camouk\fuserear_t.paa',
						'tornado_aws\data\texture.camouk\fusetopbottom_t.paa',
						'tornado_aws\data\texture.camouk\hubtail_t.paa',
						'tornado_aws\data\texture.camouk\intake_t.paa',
						'tornado_aws\data\texture.camouk\grey_t.paa',
						'tornado_aws\data\texture.camouk\grey_t.paa',
						'tornado_aws\data\texture.camouk\grey_t.paa',
						'tornado_aws\data\texture.camouk\grey_t.paa'
											
					]; 
				
				}else{
				
					// British Desert Camo Texture
						
						_textureList = [ 
						
							'tornado_aws\data\texture.gb_des\wingbottomleft_t.paa',
							'tornado_aws\data\texture.gb_des\wingbottomright_t.paa',
							'tornado_aws\data\texture.gb_des\wingtopleft_t.paa',
							'tornado_aws\data\texture.gb_des\wingtopright_t.paa',
							'tornado_aws\data\texture.gb_des\weapons1_t.paa',
							'tornado_aws\data\texture.gb_des\elevonleft_t.paa',
							'tornado_aws\data\texture.gb_des\elevonright_t.paa',
							'tornado_aws\data\texture.gb_des\fusefront_t.paa',
							'tornado_aws\data\texture.gb_des\fuserear_t.paa',
							'tornado_aws\data\texture.gb_des\fusetopbottom_t.paa',
							'tornado_aws\data\texture.gb_des\hubtail_t.paa',
							'tornado_aws\data\texture.gb_des\intake_t.paa',
							'tornado_aws\data\texture.gb_des\canopy_t.paa',
							'tornado_aws\data\texture.gb_des\canopy_t.paa',
							'tornado_aws\data\texture.gb_des\grey_t.paa',
							'tornado_aws\data\texture.gb_des\grey_t.paa'
												
						]; 
				
				};
			
			};

		};
		
		
	// Typhoon
	
		if ((_type == "EAWS_EF2000_Genericblu_CAP")) then {
			
			if ((_factionClass == "BWA3_Faction_Fleck") or (_factionClass == "BWA3_Faction_Tropen")) then { 
			
				// German Texture
				
				_textureList = [ 
				
					'eaws_ef2000\data\top_ger.paa',
					'',
					'eaws_ef2000\data\su35_engine_empty_ca.paa',
					'eaws_ef2000\data\su35_engine_empty_ca.paa',
					'eaws_ef2000\data\top_ger.paa',
					'eaws_ef2000\data\top_ger.paa'
					
				]; 
			
			};

		};


	// 4WD
	
		if ((_type == "I_C_Offroad_02_unarmed_F") or (_type == "I_C_Offroad_02_LMG_F") or (_type == "I_C_Offroad_02_AT_F")) then {

			// Green Texture
			
			_textureList = [ 
				
				'a3\soft_f_exp\offroad_02\data\offroad_02_ext_olive_co.paa',
				'a3\soft_f_exp\offroad_02\data\offroad_02_ext_olive_co.paa',
				'a3\soft_f_exp\offroad_02\data\offroad_02_int_olive_co.paa',
				'a3\soft_f_exp\offroad_02\data\offroad_02_int_olive_co.paa'

			]; 

		};
	
	
	// Fuel Truck
	
		if (_type == "C_Van_01_fuel_F") then {

			// White Texture
			
			_textureList = [ 
				
				'a3\soft_f_gamma\van_01\data\van_01_ext_co.paa',
				'a3\soft_f_gamma\van_01\data\van_01_tank_co.paa'

			]; 

		};
	
	
	// Truck
	
		if (_type == "C_Van_01_transport_F") then {

			// White Texture
			
			_textureList = [ 
				
				'a3\soft_f_gamma\van_01\data\van_01_ext_co.paa',
				'a3\soft_f_gamma\van_01\data\van_01_adds_co.paa',
				'a3\soft_f_gamma\van_01\data\van_01_int_base_co.paa'

			]; 

		};
	
	
	// Jolly Green Giant 2x M60
	
		if (_type == "vn_b_air_ch34_03_01") then {

			if ((_factionClass == "VN_MACV")) then { 
			
				// Army
				
				_textureList = [ 
					
					"vn\air_f_vietnam\ch34\data\vn_air_ch34_01_01_co.paa",
					"vn\air_f_vietnam\ch34\data\vn_air_ch34_02_01_co.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					""
				]; 
			
			};

		};
	
	
	// Jolly Green Giant
	
		if (_type == "vn_b_air_ch34_01_01") then {

			if ((_factionClass == "VN_MACV")) then { 
			
				// Marines
				
				_textureList = [ 
					
					"vn\air_f_vietnam\ch34\data\vn_air_ch34_01_01_co.paa",
					"vn\air_f_vietnam\ch34\data\vn_air_ch34_02_01_co.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"vn\air_f_vietnam\ch34\decals\us\tailboom_02_ca.paa",
					"vn\air_f_vietnam\ch34\decals\m_an1\yn_sub_ca.paa",
					"vn\air_f_vietnam\ch34\decals\white\4_ca.paa",
					"vn\air_f_vietnam\ch34\decals\white\8_ca.paa",
					"vn\air_f_vietnam\ch34\decals\m_sqn\hmm_sub_ca.paa",
					"vn\air_f_vietnam\ch34\decals\sub\3_ca.paa",
					"vn\air_f_vietnam\ch34\decals\sub\6_ca.paa",
					"vn\air_f_vietnam\ch34\decals\sub\5_ca.paa",
					"a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa"

				]; 
			
			};

		};
	
	
	// AH1 CAS
	
		if (_type == "vn_b_air_ah1g_04") then {

			if ((_factionClass == "VN_MACV")) then { 
			
				// Army
				
				_textureList = [ 
					
					"vn\air_f_vietnam\ah1g\data\vn_b_air_ah1g_01_02_co.paa",
					"vn\air_f_vietnam\data\num_w\vn_digit_2_ca.paa",
					"vn\air_f_vietnam\data\num_w\vn_digit_2_ca.paa",
					"vn\air_f_vietnam\data\num_w\vn_digit_9_ca.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"vn\air_f_vietnam\ah1g\decals\vn_tailboom_02_01_ca.paa",
					"a3\data_f\clear_empty.paa"
					
				]; 
			
			};

		};
	
	
	// AH1 CAS Extra Guns
	
		if (_type == "vn_b_air_ah1g_09") then {

			if ((_factionClass == "VN_MACV")) then { 
			
				// Marines
				
				_textureList = [ 
					
					"vn\air_f_vietnam\ah1g\data\vn_b_air_ah1g_01_02_co.paa",
					"vn\air_f_vietnam\data\num_w\vn_digit_2_ca.paa",
					"vn\air_f_vietnam\data\num_w\vn_digit_2_ca.paa",
					"vn\air_f_vietnam\data\num_w\vn_digit_9_ca.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"a3\data_f\clear_empty.paa",
					"vn\air_f_vietnam\ah1g\decals\vn_tailboom_01_01_ca.paa",
					"a3\data_f\clear_empty.paa"
					
				]; 
			
			};

		};
		
		
	// Jeep Patrol 
		
		_factions = ["VN_MACV", "VN_ARVN", "fow_usa", "LIB_US_ARMY_w", "fow_usa_p", "LIB_US_RANGERS", "LIB_UK_ARMY", "LIB_UK_AB", "LIB_UK_ARMY_w", "fow_uk", "fow_aus", "LIB_RKKA", "LIB_RKKA_w"];
		
		if (_type == "vn_b_wheeled_m151_mg_03") then {

			if (_factionClass in _factions) then { 
			
				// Green 
				
				_textureList = ["vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_01_02_co.paa","vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_02_co.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa"]; 
			
			};

		};
		
		
	// Jeep Unarmed
	
		_factions = ["VN_MACV", "VN_ARVN", "fow_usa", "LIB_US_ARMY_w", "fow_usa_p", "LIB_US_RANGERS", "LIB_UK_ARMY", "LIB_UK_AB", "LIB_UK_ARMY_w", "fow_uk", "fow_aus", "LIB_RKKA", "LIB_RKKA_w"];
	
		if (_type == "vn_b_wheeled_m151_01") then {

			if (_factionClass in _factions) then { 
			
				// Green
				
				_textureList = [
				
				"vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_01_co.paa","vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_02_co.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa"
				
				]; 
			
			};
			
			if ((_factionClass == "LIB_NAC") or (_factionClass == "LIB_UK_DR")) then { 
			
				// Yellow
				
				_textureList = [
				
					'vn\wheeled_f_vietnam\m151\data\vn_c_wheeled_m151_02_co.paa',
					'vn\wheeled_f_vietnam\m151\data\vn_c_wheeled_m151_03_co.paa',								
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa'
								
				]; 
			
			};

		};
		
		
		
			
		
	// Jeep HMG
	
		_factions = ["VN_MACV", "VN_ARVN", "fow_usa", "LIB_US_ARMY_w", "fow_usa_p", "LIB_US_RANGERS", "LIB_UK_ARMY", "LIB_UK_AB", "LIB_UK_ARMY_w", "fow_uk", "fow_aus", "LIB_RKKA", "LIB_RKKA_w"];
	
		if (_type == "vn_b_wheeled_m151_mg_02") then {

			if (_factionClass in _factions) then { 
			
				// Green
				
				_textureList = ["vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_01_co.paa","vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_02_co.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa"]; 
			
			};
			
			if ((_factionClass == "LIB_NAC") or (_factionClass == "LIB_UK_DR")) then { 
			
				// Yellow
				
				_textureList = [
				
					'vn\wheeled_f_vietnam\m151\data\vn_c_wheeled_m151_02_co.paa',
					'vn\wheeled_f_vietnam\m151\data\vn_c_wheeled_m151_03_co.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa',
					'a3\data_f\clear_empty.paa'
													
				]; 
			
			};

		};
		
		
	// Jeep Armored
	
		if (_type == "vn_b_wheeled_m151_mg_04") then {

			if (_factionClass in _factions) then { 
			
				// Green
				
				_textureList = ["vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_01_co.paa","vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_02_co.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa"];
			
			};

		};
		
		
	// Jeep Covered
	
		_factions = ["VN_MACV", "VN_ARVN", "fow_usa", "LIB_US_ARMY_w", "fow_usa_p", "LIB_US_RANGERS", "LIB_UK_ARMY", "LIB_UK_AB", "LIB_UK_ARMY_w", "fow_uk", "fow_aus"];
	
		if (_type == "vn_b_wheeled_m151_02") then {

			if (_factionClass in _factions) then { 
			
				// Green
				
				_textureList = ["vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_01_co.paa","vn\wheeled_f_vietnam\m151\data\vn_wheeled_m151_02_co.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa","a3\data_f\clear_empty.paa"];
			
			};

		};
			
		
	// Phantom USAF 

		_types = [
		
			"vn_b_air_f4c_cas",
			"vn_b_air_f4c_cap",
			"vn_b_air_f4c_mr",
			"vn_b_air_f4c_at"
		
		];
		
		if (_type in _types) then {

			if ((_factionClass == "VN_MACV") or (_factionClass == "VN_ARVN")) then {
			
					_textureList = [
					
						'vn\air_f_vietnam\f4\data\vn_air_f4c_ext_01_05_co.paa',
						'vn\air_f_vietnam\f4\data\vn_air_f4c_ext_02_05_co.paa',
						'',
						'',
						'',
						'vn\air_f_vietnam\f4\decals\w\num\vn_d_w_04_ca.paa',
						'vn\air_f_vietnam\f4\decals\w\num\vn_d_w_02_ca.paa',
						'vn\air_f_vietnam\f4\decals\w\num\vn_d_w_08_ca.paa',
						'','','','','','','','','','','','','','','','','','','','','','',''
					
					];
			
			};

		};
		
		
	// Phantom USN 
		
		_types = [
		
			"vn_b_air_f4b_navy_cas",
			"vn_b_air_f4b_navy_at",
			"vn_b_air_f4b_navy_cap",
			"vn_b_air_f4b_navy_mr"
		
		];
		
		if (_type in _types) then {

			if ((_factionClass == "VN_MACV") or (_factionClass == "VN_ARVN")) then {
				
					_textureList = [
					
						'vn\air_f_vietnam\f4\data\vn_air_f4b_ext_01_02_co.paa',
						'vn\air_f_vietnam\f4\data\vn_air_f4b_ext_02_02_co.paa',
						'vn\air_f_vietnam\f4\decals\b\num\vn_d_b_02_ca.paa',
						'vn\air_f_vietnam\f4\decals\b\num\vn_d_b_01_ca.paa',
						'vn\air_f_vietnam\f4\decals\b\num\vn_d_b_05_ca.paa',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
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
						
					];
			
			};

		};
		
		
	// Phantom Germany
	
		if (_type == "dcxx_generic_f4_grey") then {

			if ((_factionClass == "gm_ge_army")) then {
				
					_textureList = [
					
						'dmo_dcx\_vn\f4\data\rf4e_ext01_n72_3748_co.paa',
						'dmo_dcx\_vn\f4\data\rf4e_ext02_n72_co.paa'

					];
			
			};

		};
		
		
	// M113
	
		if (_type == "uns_M113A1_M2") then {

			if ((_factionClass == "VN_MACV") or (_factionClass == "VN_ARVN")) then {
				
					_textureList = ["uns_m113\data\m113_tiger_co.paa","","","","","","","","","","","","","","uns_m113\data\m113_tiger_co.paa","uns_pbr\data\code\11.paa"];
			
			};

		};
		
		
	// Osprey
	
		if ((_type == "DEGA_V22_IDWS_B_NATO") or (_type == "DEGA_V22_Infantry_B_NATO") or (_type == "DEGA_V22_Vehicle_B_NATO")) then {

			_textureList = [
			
				'dega_vehicles_v22\data\mv22_01_co.paa',
				'dega_vehicles_v22\data\mv22_02_co.paa'
			
			];


		};

		
	// FA-18 Hornet A
	
		if ((_type == "FIR_F18C_MALS11") or (_type == "FIR_F18C_VMFA314")) then {

			if ((_factionClass == "US85")) then {
				
					_textureList = [
						
						'fir_fa18\skin\vmfaaw224\body_co.paa',
						'fir_fa18\skin\vmfaaw224\wing_co.paa',
						'fir_fa18\skin\vmfaaw224\buno_ca.paa',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						''
					
					];
			
			};

		};
		
		
	// FA-18 Hornet C
	
		if ((_type == "FIR_F18C_VFA15") or (_type == "FIR_F18C")) then {

			if ((_factionClass == "UK3CB_CW_US_B_LATE")) then {
				
					_textureList = [
						
						'fir_fa18\skin\vfa15\body_co.paa',
						'fir_fa18\skin\vfa15\wing_co.paa',
						'fir_fa18\skin\vfa15\buno_ca.paa',
						'',
						'',
						'',
						'',
						'',
						'',
						'',
						''
					
					];
			
			};

		};
		
	
	// Golf Cart
	
		if (_type == "rhsusf_mrzr4_d") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc") or (_factionClass == "UK3CB_BAF_Faction_Army_Woodland") or (_factionClass == "UK3CB_BAF_Faction_Army_MTP") or (_factionClass == "ADFU") or (_factionClass == "TFC_A3_TEMPERATE")) then {
				
					_textureList = [
						
						'rhsusf\addons\rhsusf_mrzr\data\blue_grn_mud_co.paa',
						'rhsusf\addons\rhsusf_mrzr\data\yel_grn_mud_co.paa',
						'rhsusf\addons\rhsusf_mrzr\data\red_grn_mud_co.paa',
						'rhsusf\addons\rhsusf_mrzr\data\grn_grn_mud_co.paa',
						'rhsusf\addons\rhsusf_mrzr\data\merged\orng_grn_mud_co.paa',
						'',
						'',
						'',
						'',
						'',
						'',
						''
					
					];
			
			};

		};
		
		
	// Harrier
	
		if (_type == "FIR_AV8B_GR9A_Blank") then {

			if ((_factionClass == "UK3CB_BAF_Faction_Army_Woodland") or (_factionClass == "UK3CB_BAF_Faction_Army_Desert") or (_factionClass == "UK3CB_BAF_Faction_Army_MTP")) then {
				
					_textureList = [
						
						'fir_av8b\skin\gr7_lucy\body_co.paa',
						'fir_av8b\skin\gr7_lucy\wing_co.paa',
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
					
					];
			
			};

		};
		
		
	// British M113
	
		if ((_type == "rhsusf_m113_usarmy_M2_90") or (_type == "rhsusf_m113_usarmy_MK19_90")) then {

			if ((_factionClass == "UK3CB_BAF_Faction_Army_Woodland") or (_factionClass == "UK3CB_BAF_Faction_Army_MTP")) then {
				
					_textureList = [
						
						'rhsusf\addons\rhsusf_m113\data_90s\m113a3_01_od_h_90s_co.paa',
						'rhsusf\addons\rhsusf_m113\data_90s\m113a3_02_od_h_90s_co.paa',
						'rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa',
						'rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa',
						'rhsusf\addons\rhsusf_m113\data_new\m23_pintle_wd_co.paa',
						''
					
					];
			
			};

		};
		
		
	// British M109
	
		if (_type == "rhsusf_m113_usarmy_M2_90") then {

			if ((_factionClass == "UK3CB_BAF_Faction_Army_Woodland") or (_factionClass == "UK3CB_BAF_Faction_Army_MTP")) then {
				
					_textureList = [
						
						'rhsusf\addons\rhsusf_m113\data_90s\m113a3_01_od_h_90s_co.paa',
						'rhsusf\addons\rhsusf_m113\data_90s\m113a3_02_od_h_90s_co.paa',
						'rhsusf\addons\rhsusf_m113\data_new\m113a3_03_wd_co.paa',
						'rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_wd_co.paa',
						'rhsusf\addons\rhsusf_m113\data_new\m23_pintle_wd_co.paa',
						''
					
					];
			
			};

		};
		
		
	// British 163
	
		if (_type == "US85_M163") then {

			if ((_factionClass == "UK3CB_BAF_Faction_Army_Woodland") or (_factionClass == "UK3CB_BAF_Faction_Army_MTP")) then {
				
					_textureList = [
						
						'csla_afmc_apc\m113\data\m163_trup_green_co.paa',
						'csla_afmc_apc\m113\data\m163_turret_green_co.paa',
						'csla_afmc_apc\m113\data\m113_turrets_green_co.paa',
						'csla_misc\signs\empty_ca.paa''csla_misc\signs\empty_ca.paa',
						'csla_misc\signs\empty_ca.paa''csla_misc\signs\empty_ca.paa',
						'csla_misc\signs\empty_ca.paa''csla_misc\signs\empty_ca.paa'
					
					];
			
			};

		};
		
		
	// 3CB Factions Jeep
			
		_types = [
		
			"UK3CB_CW_US_B_LATE_M151_Jeep_Closed",
			"UK3CB_CW_US_B_LATE_M151_Jeep_HMG",
			"UK3CB_CW_US_B_LATE_M151_Jeep_Open",
			"UK3CB_CW_US_B_LATE_M151_Jeep_TOW"
		
		];
			
		if (_type in _types) then {
			
			if ((_factionClass == "UK3CB_CW_US_B_LATE") and ((BEW_v_mapCamo == "Temperate") or (BEW_v_mapCamo == "Desert"))) then {
				
					_textureList = [
						
						'uk3cb_factions\addons\uk3cb_factions_vehicles\wheeled\uk3cb_factions_vehicles_wjeep\data\mutt_new_merdc_gd_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\wheeled\uk3cb_factions_vehicles_wjeep\data\west_01_co.paa'
				
					];
			
			};
		
		};
		
		
	// 3CB Factions M113
			
		_types = [
		
			"UK3CB_CW_US_B_LATE_M113_M2",
			"rhsusf_m113_usarmy_MK19_90"
		
		];
			
		if (_type in _types) then {
			
			if ((_factionClass == "UK3CB_CW_US_B_LATE") and ((BEW_v_mapCamo == "Temperate") or (BEW_v_mapCamo == "Desert"))) then {
				
					_textureList = [
						
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_m113\data\ada_des_m113a3_01_h_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_m113\data\ada_des_m113a3_02_h_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_m113\data\ada_m113a3_03_co.paa',
						'rhsusf\addons\rhsusf_m113\data_new\m113a3_int03_d_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_m113\data\ada_des_mk64mount_co.paa',
						''
				
					];
			
			};
		
		};
		
		
	// 3CB Factions M60
			
		_types = [
		
			"UK3CB_CW_US_B_LATE_M60a3"
		
		];
			
		if (_type in _types) then {
			
			if ((_factionClass == "UK3CB_CW_US_B_LATE") and ((BEW_v_mapCamo == "Temperate") or (BEW_v_mapCamo == "Desert"))) then {
				
					_textureList = [
						
						'uk3cb_factions\addons\uk3cb_factions_vehicles\armour\uk3cb_factions_vehicles_m60\data\m60_turret_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\armour\uk3cb_factions_vehicles_m60\data\m60_hull_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\armour\uk3cb_factions_vehicles_m60\data\m60_detail_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\armour\uk3cb_factions_vehicles_m60\data\m60_wheels_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\armour\uk3cb_factions_vehicles_m60\data\m60_transp_des_ca.paa'
				
					];
			
			};
		
		};
		
		
	// 3CB Factions LAV
			
		_types = [
		
			"UK3CB_CW_US_B_LATE_LAV25"
		
		];
			
		if (_type in _types) then {
			
			if ((_factionClass == "UK3CB_CW_US_B_LATE") and ((BEW_v_mapCamo == "Temperate") or (BEW_v_mapCamo == "Desert"))) then {
				
					_textureList = [
						
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_lav\data\lavbody_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_lav\data\lavbody2_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_lav\data\lavalfa_des_ca.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\uk3cb_factions_vehicles_common\equipment\us_des_backpacks_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\uk3cb_factions_vehicles_common\equipment\cied_dome_des_co.paa'
				
					];
			
			};
		
		};
		
		
	// 3CB Factions AAV
			
		_types = [
		
			"UK3CB_CW_US_B_LATE_AAV"
		
		];
			
		if (_type in _types) then {
			
			if ((_factionClass == "UK3CB_CW_US_B_LATE") and ((BEW_v_mapCamo == "Temperate") or (BEW_v_mapCamo == "Desert"))) then {
				
					_textureList = [
						
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_aav\data\aav_ext_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\apc\uk3cb_factions_vehicles_aav\data\aav_ext2_des_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\uk3cb_factions_vehicles_common\equipment\us_des_backpacks_co.paa'
				
					];
			
			};
		
		};
		
		
	// 3CB Factions M939
			
		_types = [
		
			"UK3CB_CW_US_B_LATE_M939_Fuel",
			"UK3CB_CW_US_B_LATE_M939_Recovery"
		
		];
			
		if (_type in _types) then {
			
			if ((_factionClass == "UK3CB_CW_US_B_LATE") and ((BEW_v_mapCamo == "Temperate") or (BEW_v_mapCamo == "Desert"))) then {
				
					_textureList = [
						
						'uk3cb_factions\addons\uk3cb_factions_vehicles\wheeled\uk3cb_factions_vehicles_m939\data\ada_des_truck5t_01_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\wheeled\uk3cb_factions_vehicles_m939\data\ada_truck5t_02_co.paa',
						'uk3cb_factions\addons\uk3cb_factions_vehicles\wheeled\uk3cb_factions_vehicles_m939\data\ada_truck5t_dash_co.paa'
				
					];
			
			};
		
		};
		
		
	// M1151
	
		if (_type == "rhsusf_m1151_usarmy_d") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc")) then {
				
					_textureList = [
						
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_ext_wd_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_tire_wd_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_int_wd_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_acc_wd_co.paa",
						"rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa",
						"rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1152m1165_wd_co.paa",
						"a3\map_vr\data\picturemap_ca.paa"
				
					];
			
			};

		};
		
		
	// M1165A1 GMG
	
		if (_type == "rhsusf_m1165a1_gmv_mk19_m240_socom_d") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc")) then {
				
					_textureList = [
						
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m1165a1_gmv_ext_wd_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_tire_wd_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_int_co.paa",
						"rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa",
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m1165a1_gmv_wd_co.paa",
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m1165a1_gmv_sag_wd_co.paa",
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa",
						"a3\map_vr\data\picturemap_ca.paa"
					
					];
			
			};

		};
		
		
	// M1165A1 Minigun
	
		if (_type == "rhsusf_m1165a1_gmv_m134d_m240_socom_d") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc")) then {
				
					_textureList = [
					
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m1165a1_gmv_ext_wd_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_tire_wd_co.paa",
						"rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_int_co.paa",
						"rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa",
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m1165a1_gmv_wd_co.paa",
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m1165a1_gmv_sag_wd_co.paa",
						"rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa",
						"a3\map_vr\data\picturemap_ca.paa"
					
					];
			
			};

		};
		
		
	// SOCOM Truck Flatbed
	
		if (_type == "rhsusf_M1084A1R_SOV_M2_D_fmtv_socom") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc")) then {
				
					_textureList = [
						
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_cab_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_chassis_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_wheel_wd_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_25trear_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_canvas1_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_bkit_co.paa",
						"rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa",
						"rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_chassis1_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_5trear_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_canvas1_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_shelter_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_hospital_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_5trearlhc_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_chassis2_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovchassis_wd_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovcab_w_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovrear_w_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovkit_wd_co.paa",
						"rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"
					
					];
			
			};

		};
		
		
	// SOCOM Truck Resupply
	
		if (_type == "rhsusf_M1078A1R_SOV_M2_D_fmtv_socom") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc")) then {
				
					_textureList = [
						
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_cab_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_chassis_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_wheel_wd_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_25trear_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_canvas1_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_bkit_co.paa",
						"rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa",
						"rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_chassis1_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_5trear_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_canvas1_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_shelter_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_hospital_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_5trearlhc_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_chassis2_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovchassis_wd_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovcab_w_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovrear_w_co.paa",
						"rhsusf\addons\rhsusf_fmtv\data\fmtv_sovkit_wd_co.paa",
						"rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"
					
					];
			
			};

		};
		
		
	// Linebacker
	
		if (_type == "RHS_M6_wd") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc")) then {
				
					_textureList = [
						
						'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\base_co.paa',
						'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\a3_co.paa',
						'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa',
						'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\base_co.paa',
						'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\base_co.paa'
					
					];
			
			};

		};
		
		
	// M117
	
		if (_type == "rhsusf_M1117_O") then {

			if ((_factionClass == "rhs_faction_usarmy_wd") or (_factionClass == "rhs_faction_usmc_wd") or (_factionClass == "rhs_faction_usmc")) then {
				
					_textureList = [
						
						'rhsusf\addons\rhsusf_m1117\data\m1117_tex1_green_co.paa',
						'rhsusf\addons\rhsusf_m1117\data\m1117_armour_green_co.paa',
						'rhsusf\addons\rhsusf_m1117\data\m1117_turret_green_co.paa',
						'rhsusf\addons\rhsusf_m1117\data\m1117_wheel_green_co.paa',
						'rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa',
						'rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_wd_co.paa'
					
					];
			
			};

		};
		
	
	// Samson
	
		if ((_type == "I_Plane_Transport_01_vehicle_F") or (_type == "I_Plane_Transport_01_infantry_F") or (_type == "O_Plane_Transport_01_infantry_F") or (_type == "O_Plane_Transport_01_vehicle_F")) then {

			
			// Nato

			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_T_F") or (_factionClass == "BLU_W_F") or (_factionClass == "BLU_A_F") or (_factionClass == "BLU_A_tna_F") or (_factionClass == "BLU_A_wdl_F") or (_factionClass == "Atlas_IND_I_F")) then {
				
					_textureList = [
						
						'a3_aegis\air_f_aegis\plane_transport_01\data\plane_transport_01_body_blue_co.paa',
						'a3_aegis\air_f_aegis\plane_transport_01\data\plane_transport_01_wings_blue_co.paa',
						'a3_aegis\air_f_aegis\plane_transport_01\data\plane_transport_01_interior_co.paa'
											
					];
			
			};
			
			
			// Russian
			
			if ((_factionClass == "OPF_R_F") or (_factionClass == "OPF_R_ard_F")) then {
				
					_textureList = [
						
						'a3_aegis\air_f_aegis\plane_transport_01\data\plane_transport_01_body_grey_co.paa',
						'a3_aegis\air_f_aegis\plane_transport_01\data\plane_transport_01_wings_grey_co.paa',
						'a3_aegis\air_f_aegis\plane_transport_01\data\plane_transport_01_interior_opfor_co.paa'
											
					];
			
			};

		};
		

	// Peregrine
	
		if ((_type == "B_Plane_Fighter_05_F") or (_type == "B_Plane_Fighter_05_Stealth_F") or (_type == "B_Plane_Fighter_05_Cluster_F")) then {
			
			
			// US
			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_T_F") or (_factionClass == "BLU_W_F")) then {
				
					_textureList = [
						
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext1_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext2_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext3_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_pylon_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext_glass_ca.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_int1_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_int2_co.paa'
					
					];
			
			};
			
			
			// UK
			
			if ((_factionClass == "BLU_A_F") or (_factionClass == "BLU_A_tna_F") or (_factionClass == "BLU_A_wdl_F")) then {
				
					_textureList = [
						
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext1_baf_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext2_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext3_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_pylon_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext_glass_ca.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_int1_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_int2_co.paa'
					
					];
			
			};
			
			
			// Israel
			
			if ((_factionClass == "Atlas_IND_I_F")) then {
				
					_textureList = [
						
						'a3_atlas\air_f_atlas\plane_fighter_05\data\plane_fighter_05_ext1_desert_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext2_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext3_co.paa',
						'a3_atlas\air_f_atlas\plane_fighter_05\data\plane_fighter_05_pylon_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_ext_glass_ca.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_int1_co.paa',
						'a3_aegis\air_f_aegis\plane_fighter_05\data\plane_fighter_05_int2_co.paa'
					
					];
			
			};

		};
		
		
	// Black Wasp
	
		if ((_type == "B_Plane_Fighter_01_F") or (_type == "B_Plane_Fighter_01_Stealth_F") or (_type == "B_Plane_Fighter_01_Cluster_F")) then {
			
			
			// US T
			
			if ((_factionClass == "BLU_F") or (_factionClass == "BLU_T_F") or (_factionClass == "BLU_W_F")) then {
				
					_textureList = [
						
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_fuselage_01_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_fuselage_02_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_glass_01_ca.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_01_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_02_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_03_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_05_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\numbers\fighter_01_01_ca.paa',
						'a3\air_f_jets\plane_fighter_01\data\numbers\fighter_01_00_ca.paa',
						'a3\air_f_jets\plane_fighter_01\data\numbers\fighter_01_01_ca.paa'
					
					];
			
			};
			
			
			// Bundeswehr
			
			if ((_factionClass == "Atlas_BLU_G_F")) then {
				
					_textureList = [
						
						'a3_atlas\air_f_atlas\plane_fighter_01\data\fighter_01_fuselage_01_co.paa',
						'a3_atlas\air_f_atlas\plane_fighter_01\data\fighter_01_fuselage_02_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_glass_01_ca.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_01_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_02_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_03_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\fighter_01_cockpit_05_co.paa',
						'a3\air_f_jets\plane_fighter_01\data\numbers\fighter_01_01_ca.paa',
						'a3\air_f_jets\plane_fighter_01\data\numbers\fighter_01_00_ca.paa',
						'a3\air_f_jets\plane_fighter_01\data\numbers\fighter_01_01_ca.paa'
					
					];
			
			};

		};
		
		
	// Kubel
	
		if (_type == "LIB_Kfz1_MG42_sernyt") then {

			if ((_factionClass == "LIB_WEHRMACHT_w")) then {
				
					_textureList = [
						
						'ww2\assets_t\vehicles\cars_t\if_kfz1\kubelwagen_main_w_co.paa',
						'ww2\assets_t\vehicles\cars_t\if_kfz1\kubelwagen_interior_sernyt_co.paa',
						'ww2\assets_t\vehicles\cars_t\if_kfz1\kubelwagen_turret.paa',
						'ww2\assets_t\weapons\machinegun_light_t\if_mg42\mg42_co.paa',
						'ww2\assets_t\weapons\machinegun_light_t\if_mg42\drum_co.paa'
					
					];
			
			};

		};
		
		
	// M3 Car
	
		if (_type == "LIB_US_Scout_M3") then {

			if ((_factionClass == "LIB_UK_ARMY") or (_factionClass == "LIB_UK_AB") or (_factionClass == "LIB_UK_DR") or (_factionClass == "fow_aus") or (_factionClass == "fow_UK")) then {
				
					_textureList = [
						
						'ww2\assets_t\vehicles\trucks_t\if_scout_m3\m3skout_korpus_co.paa',
						'ww2\assets_t\vehicles\trucks_t\if_scout_m3\m3skout_interior_co.paa',
						'ww2\assets_t\vehicles\trucks_t\if_scout_m3\browningm2_co.paa'
					
					];
			
			};

		};
		
		
	// Stuart
	
		if (_type == "LIB_M3A3_Stuart") then {

			if ((_factionClass == "LIB_NAC")) then {
				
					_textureList = [
						
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\stuartkopie_dak_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\track_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\alpha_dak_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\lod01_dak_co.paa"
					
					];
			
			};

		};
		
		
	// Stuart
	
		if (_type == "LIB_M5A1_Stuart") then {

			if ((_factionClass == "LIB_NAC")) then {
				
					_textureList = [
						
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\stuartm5a1_dak_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\stuartkopie_dak_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\turretm5_dak_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\track_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\alpha_dak_co.paa",
						"ww2\assets_t\vehicles\tanks_t\i44_m3_stuart\lod01_dak_co.paa"
					
					];
			
			};

		};
		
		
	// Panther
	
		if (_type == "LIB_PzKpfwV") then {

			if ((_factionClass == "LIB_WEHRMACHT")) then {
				
					_textureList = [
						
						'ww2\assets_t\vehicles\tanks_t\if_pzkpfwv\dsm_body_kursk_co.paa',
						'ww2\assets_t\vehicles\tanks_t\if_pzkpfwv\dsm_turret_kursk_co.paa',
						'ww2\assets_t\vehicles\tanks_t\if_pzkpfwv\tracks_co.paa'
					
					];
			
			};

		};
		
		
	// Taru
	
		if (_type == "O_Heli_Transport_04_covered_F") then {
	
			_textureList = [
				
				'a3\air_f_heli\heli_transport_04\data\heli_transport_04_base_01_black_co.paa',
				'a3\air_f_heli\heli_transport_04\data\heli_transport_04_base_02_black_co.paa',
				'a3\air_f_heli\heli_transport_04\data\heli_transport_04_pod_ext01_black_co.paa',
				'a3\air_f_heli\heli_transport_04\data\heli_transport_04_pod_ext02_black_co.paa'
			
			];

		};
		
		
	// Orca
	
		if (_type == "O_Heli_Light_02_unarmed_F") then {
	
			_textureList = [
				
				'a3\air_f\heli_light_02\data\heli_light_02_ext_co.paa'
			
			];

		};
		
		
	// Orca Armed
	
		if (_type == "O_Heli_Light_02_dynamicLoadout_F") then {
	
			_textureList = [
				
				'a3\air_f\heli_light_02\data\heli_light_02_ext_co.paa'
			
			];

		};
		
		
	// Kajman
	
		if (_type == "O_Heli_Attack_02_dynamicLoadout_F") then {
	
			_textureList = [
				
				'a3\air_f_beta\heli_attack_02\data\heli_attack_02_body1_black_co.paa',
				'a3\air_f_beta\heli_attack_02\data\heli_attack_02_body2_black_co.paa'
			
			];

		};
		
		
	// Shikra
	
		_factions = [
		
			"OPF_F",
			"OPF_T_F",
			"OPF_G_F",
			"OPF_R_F"
		
		];
	
		if ((_type == "O_Plane_Fighter_02_Stealth_F") or (_type == "O_Plane_Fighter_02_F") or (_type == "O_Plane_Fighter_02_Cluster_F")) then {
			
			if ((_factionClass in _factions)) then {
			
				_textureList = [
					
					'a3\air_f_jets\plane_fighter_02\data\fighter_02_fuselage_01_grey_co.paa',
					'a3\air_f_jets\plane_fighter_02\data\fighter_02_fuselage_02_grey_co.paa',
					'a3\air_f_jets\plane_fighter_02\data\fighter_02_fuselage_01_grey_co.paa',
					'a3\air_f_jets\plane_fighter_02\data\numbers\fighter_02_number_02_co.paa',
					'a3\air_f_jets\plane_fighter_02\data\numbers\fighter_02_number_00_co.paa',
					'a3\air_f_jets\plane_fighter_02\data\numbers\fighter_02_number_01_co.paa'
				
				];
				
			};

		};
		
		
	// Xian
		
		_factions = [
		
			"OPF_F",
			"OPF_T_F",
			"OPF_G_F",
			"OPF_R_F"
		
		];
		
		if (_type == "O_T_VTOL_02_infantry_dynamicLoadout_F") then {
			
			if ((_factionClass in _factions)) then {
			
				_textureList = [
					
					'a3\air_f_exp\vtol_02\data\vtol_02_ext01_co.paa',
					'a3\air_f_exp\vtol_02\data\vtol_02_ext02_co.paa',
					'a3\air_f_exp\vtol_02\data\vtol_02_ext03_l_co.paa',
					'a3\air_f_exp\vtol_02\data\vtol_02_ext03_r_co.paa'
				
				];
			
			};

		};
		
		
	// Gun Truck
	
		if (_type == "vn_b_wheeled_m54_mg_03") then {
			
			_textureList = [
				
				'vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_01_01_black_co.paa',
				'vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_01_02_black_co.paa',
				'vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_01_04_black_co.paa',
				'vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_mg_03_co.paa',
				'a3\data_f\clear_empty.paa',
				'a3\data_f\clear_empty.paa',
				'a3\data_f\clear_empty.paa'
			
			];

		};
		



		
	// Humvee
		
		if (_type == "rhsusf_m1045_w") then {
		
			if ((_factionClass == "TFC_A3_TEMPERATE")) then {
				
				_textureList = [
						
					'rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_g_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\m998_interior_w_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\a2_parts_g_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\wheel_wranglermt_b_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\m998_mainbody_g_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\gratting_w_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\m1043_g_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\unitdecals\101stab_502reg_2ndbn_a12_w_co.paa',
					'',
					'',
					'',
					''
				
				];

			};
		
		};
		
		
	// Humvee
		
		if (_type == "rhsusf_m1151_usarmy_wd") then {
			
			if ((_factionClass == "TFC_A3_TEMPERATE")) then {
				
				_textureList = [
					
					'rhsusf\addons\rhsusf_m11xx\data\rhssaf_m1151_ext_o_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_tire_wd_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_int_wd_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_acc_wd_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhssaf_m1152m1165_o_co.paa',
					'rhsusf\addons\rhsusf_caiman\data\m153_wd_co.paa',
					'a3\map_altis\data\picturemap_ca.paa'
				
				];

			};
		
		};
		
		
	// Humvee
		
		if (_type == "rhsusf_m1151_m2crows_usarmy_wd") then {
		
			if ((_factionClass == "TFC_A3_TEMPERATE")) then {
				
				_textureList = [
					
					'rhsusf\addons\rhsusf_m11xx\data\rhssaf_m1151_ext_o_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_tire_wd_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_int_wd_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_acc_wd_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhssaf_m1152m1165_o_co.paa',
					'rhsusf\addons\rhsusf_caiman\data\m153_wd_co.paa',
					'a3\map_altis\data\picturemap_ca.paa'
					
				];

			};
		
		};
		
		
	// Humvee

		if (_type == "rhsusf_m1151_mk19crows_usarmy_wd") then {
				
			if ((_factionClass == "TFC_A3_TEMPERATE")) then {
				
				_textureList = [
						
					'rhsusf\addons\rhsusf_m11xx\data\rhssaf_m1151_ext_o_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_tire_wd_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_int_wd_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhsusf_m1151_acc_wd_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_w_co.paa',
					'rhsusf\addons\rhsusf_hmmwv\textures\tile_exmetal_co.paa',
					'rhsusf\addons\rhsusf_m11xx\data\rhssaf_m1152m1165_o_co.paa',
					'a3\map_altis\data\picturemap_ca.paa'
				
				];

			};
		
		};
		
		
	// Bradley

		if (_type == "RHS_M2A3_wd") then {
				
			if ((_factionClass == "ADFU")) then {
				
				_textureList = [
						
					'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_base_co.paa',
					'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_a3_co.paa',
					'rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa'
				
				];

			};
		
		};
	
	
	// MIG-29

		if ((_type == "rhs_mig29s_vvs") or (_type == "rhs_mig29sm_vvs")) then {
				
			if ((_factionClass == "rhsgref_faction_cdf_ground")) then {
				
				_textureList = [
						
					'rhsgref\addons\rhsgref_vehicles_ret\data\cdf\rhs_mig29_01_cdf1_co.paa',
					'rhsgref\addons\rhsgref_vehicles_ret\data\cdf\rhs_mig29_02_cdf1_co.paa',
					'rhsgref\addons\rhsgref_vehicles_ret\data\cdf\rhs_mig29_03_cdf1_co.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\1_ca.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\8_ca.paa',
					'rhsafrf\addons\rhs_decals\data\labels\aviation\cdf_roundel02_ca.paa',
					'',
					'',
					'',
					'',
					'',
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
				
				];

			};
		
		};
		
		
	// SU-25

		if ((_type == "RHS_Su25SM_vvs") or (_type == "rhsgref_cdf_su25")) then {
				
			if ((_factionClass == "rhsgref_faction_cdf_ground")) then {
				
				_textureList = [
						
					'rhsafrf\addons\rhs_a2port_air\su25\data\su25_body1_cdf_co.paa',
					'rhsafrf\addons\rhs_a2port_air\su25\data\su25_body2_cdf_co.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\3_ca.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\9_ca.paa',
					'',
					'',
					''
				
				];

			};
		
		};
	
	
	// Albatross

		if ((_type == "rhs_l39_cdf") or (_type == "rhs_l159_CDF")) then {
				
			if ((_factionClass == "rhsgref_faction_cdf_ground")) then {
				
				_textureList = [
						
					'rhsgref\addons\rhsgref_air\l39\data\l-39_body_co.paa',
					'rhsgref\addons\rhsgref_air\l39\data\l-39_body_1_co.paa',
					'rhsafrf\addons\rhs_decals\data\labels\aviation\cdf_roundel02_ca.paa',
					'rhsafrf\addons\rhs_decals\data\labels\aviationsquadronscdf\cdf_training01_ca.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\6_ca.paa',
					'rhsafrf\addons\rhs_decals\data\numbers\aviacdf\9_ca.paa'
				
				];

			};
		
		};
	
	
	// KA 60

		if ((_type == "rhs_ka60_grey")) then {
				
			if ((_factionClass == "rhsgref_faction_cdf_ground")) then {
				
				_textureList = [
						
					'a3\air_f\heli_light_02\data\heli_light_02_ext_co.paa'
				
				];

			};
		
		};
		

	_return = [_textureList, _customFactionTexture];

	_return