	
	private ["_attachableObjects"];
	
	_vehType = _this select 0;
	
	_attachableObjects = switch (_vehType) do {
	
		case "C_Van_01_transport_F"	:	{[
		
			"B_CargoNet_01_ammo_F", 
			"Box_NATO_AmmoVeh_F", 
			"Box_IND_AmmoVeh_F",
			"Box_East_AmmoVeh_F",
			"Box_EAF_AmmoVeh_F",
			"B_Mortar_01_F", 
			"B_Quadbike_01_F", 
			"B_G_Quadbike_01_F", 			
			"B_T_Quadbike_01_F", 
			"O_Quadbike_01_F", 
			"O_T_Quadbike_01_ghex_F", 
			"O_G_Quadbike_01_F", 
			"I_Quadbike_01_F", 
			"I_G_Quadbike_01_F", 
			"I_E_Quadbike_01_F", 
			"C_Quadbike_01_F",
			"Box_NATO_Ammo_F", 
			"FlexibleTank_01_sand_F",
			"CargoNet_01_box_F",
			"C_IDAP_CargoNet_01_supplies_F"

		]};
		
		case "B_Truck_01_flatbed_F"	:	{[
		
			"RHS_M252_D",
			"B_Mortar_01_F",
			"B_CargoNet_01_ammo_F", 
			"Box_NATO_AmmoVeh_F", 
			"Box_NATO_Ammo_F", 
			"FlexibleTank_01_sand_F"

		]};
		
		case "B_T_Truck_01_flatbed_F"	:	{[
		
			"RHS_M252_D",
			"B_Mortar_01_F",
			"B_CargoNet_01_ammo_F", 
			"Box_NATO_AmmoVeh_F", 
			"Box_NATO_Ammo_F", 
			"FlexibleTank_01_sand_F"

		]};
		
		case "OPTRE_cart"	:	{[
		
			"B_CargoNet_01_ammo_F", 
			"Box_NATO_AmmoVeh_F", 
			"B_Mortar_01_F", 
			"Box_NATO_Ammo_F", 
			"FlexibleTank_01_sand_F"
			
		]};

		case "OPTRE_Pelican_unarmed"		:	{[
		
			"B_CargoNet_01_ammo_F", 
			"Box_NATO_AmmoVeh_F", 
			"OPTRE_M12_FAV", 
			"OPTRE_M12_LRV", 
			"OPTRE_M12A1_LRV", 
			"OPTRE_M12G1_LRV", 
			"OPTRE_M12R_AA", 
			"OPTRE_M813_TT", 
			"OPTRE_M914_RV"

		]};
		
		case "OPTRE_M12_FAV"		:	{[
		
			"FlexibleTank_01_sand_F", 
			"B_Mortar_01_F", 
			"Box_NATO_AmmoVeh_F", 
			"B_CargoNet_01_ammo_F"

		]};
		
		//WW2 Trucks
		
			case "LIB_US_GMC_Tent"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
			
			
			case "LIB_US_NAC_GMC_Tent"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
			
			case "LIB_US_GMC_Ammo"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
			
			case "LIB_US6_Tent_Cargo"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
			
			case "LIB_OpelBlitz_Tent_Y_Camo"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
			
			case "LIB_OpelBlitz_Tent_Y_Camo_w"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
			
			case "LIB_DAK_OpelBlitz_Tent"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
			
			case "fow_v_type97_truck_ija"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F",
				"CargoNet_01_box_F"

			]};
		
		// WW2 C47
		
			case "LIB_C47_Skytrain"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F"

			]};
			
			case "LIB_C47_RAF"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F"

			]};
			
			case "UNI_C47_CAP_Grey"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F"

			]};
			
			case "LIB_Li2"		:	{[
				
				"B_CargoNet_01_ammo_F",
				"Box_NATO_AmmoVeh_F",
				"C_IDAP_CargoNet_01_supplies_F"

			]};
		
		case "B_G_Offroad_01_F"		:	{["B_Mortar_01_F", "B_static_AT_F", "B_static_AA_F"]};
		case "B_UGV_01_F"			:	{["B_CargoNet_01_ammo_F", "Box_NATO_AmmoVeh_F", "B_Mortar_01_F", "B_static_AT_F", "B_static_AA_F"]};
		case "B_T_UGV_01_olive_F"	:	{["B_CargoNet_01_ammo_F", "Box_NATO_AmmoVeh_F", "B_Mortar_01_F", "B_static_AT_F", "B_static_AA_F"]};
		
		case "vn_b_wheeled_m54_01"		:	{[
		
			"B_CargoNet_01_ammo_F", 
			"Box_NATO_AmmoVeh_F", 
			"vn_b_army_static_mortar_m29"

		]};
		
		default {[]};
	
	};
	
	_attachableObjects