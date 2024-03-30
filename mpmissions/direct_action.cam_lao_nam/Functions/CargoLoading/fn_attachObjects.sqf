
	private [

		"_veh",
		"_attachObject",
		"_vehType",
		"_attachObjectType",
		"_attachableObjects",
		"_offsetAndVector",
		"_offset",
		"_vector"

	];

	_veh 				=	param [0];
	_attachObject		= 	param [1];
	_deleteOnVehDeath	= 	param [2, false];
	_vehType			=	typeOf _veh;
	_attachObjectType	=	typeOf _attachObject;

	_attachableObjects = [_vehType] call BEW_FNC_getAttachableObjects;

	if (_attachObjectType in _attachableObjects) then {

		_veh disableCollisionWith _attachObject;

		switch (_vehType) do {

			case "C_Van_01_transport_F"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_Quadbike_01_F"					:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "O_Quadbike_01_F"					:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "B_G_Quadbike_01_F"				:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "B_T_Quadbike_01_F"				:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "O_T_Quadbike_01_ghex_F"			:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "I_Quadbike_01_F"					:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "O_G_Quadbike_01_F"				:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "I_G_Quadbike_01_F"				:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "C_Quadbike_01_F"					:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "I_E_Quadbike_01_F"				:	{[ [0,-1.721,0.954] , [[0,1,0],[0,0,1]] ]};
					case "B_CargoNet_01_ammo_F"				:	{[ [0,-1.04,0.198] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"				:	{[ [0,-1.04,0.162] , [[0,1,0],[0,0,1]] ]};
					case "Box_IND_AmmoVeh_F"				:	{[ [0,-1.04,0.162] , [[0,1,0],[0,0,1]] ]};
					case "Box_East_AmmoVeh_F"				:	{[ [0,-1.04,0.162] , [[0,1,0],[0,0,1]] ]};
					case "Box_EAF_AmmoVeh_F"				:	{[ [0,-1.04,0.162] , [[0,1,0],[0,0,1]] ]};
					case "B_Mortar_01_F"					:	{[ [-0.013,-2.16,0.129] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_Ammo_F"					:	{[ [-0.061,-0.488,-0.375] , [[1,-0,0],[0,0,1]] ]};
					case "FlexibleTank_01_sand_F"			:	{[ [-0.022,-0.569,-0.406] , [[0,-0,-1],[1,0,0]] ]};
					case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [0,-1.04,0.198] , [[0,1,0],[0,0,1]] ]};
					case "CargoNet_01_box_F"				:	{[ [0,-1.04,0.007] , [[0,1,0],[0,0,1]] ]};

				};

			};
			
			
			case "B_Truck_01_flatbed_F"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_Mortar_01_F"	:	{[ [0.023,-1.381,-0.04] , [[0,1,0],[0,0,1]] ]};
					case "RHS_M252_D"		:	{[ [0.082,-1.79,0.381] , [[0,1,0],[0,0,1]] ]};

				};

			};


			case "B_T_Truck_01_flatbed_F"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_Mortar_01_F"	:	{[ [0.023,-1.381,-0.04] , [[0,1,0],[0,0,1]] ]};
					case "RHS_M252_D"		:	{[ [0.082,-1.79,0.381] , [[0,1,0],[0,0,1]] ]};

				};

			};
			

			case "OPTRE_cart"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_Mortar_01_F"				:	{[ [-0.008,0.391,0.11] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_Ammo_F"			:	{[ [-0.008,0.812,-0.375] , [[1,-0,0],[0,0,1]] ]};
					case "FlexibleTank_01_sand_F"	:	{[ [-0.008,0.75,-0.379] , [[0,0,-1],[-0,1,0]] ]};

				};

			};
			case "OPTRE_M12_FAV"		:	{

				_offsetAndVector = switch (_attachObjectType) do {
					case "B_CargoNet_01_ammo_F"			:	{[ [0.002,-1.952,-0.114] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"			:	{[ [0.002,-1.91,-0.149] , [[0,1,0],[0,0,1]] ]};
					case "B_Mortar_01_F"				:	{[ [-0.093,-2.193,-0.234] , [[0,1,0],[0,0,1]] ]};
					case "FlexibleTank_01_sand_F"		:	{[ [0.002,-1.91,-0.663] , [[0,-0,-1],[0,1,-0]] ]};
				};

			};

			case "OPTRE_Pelican_unarmed"		:	{

				_offsetAndVector = switch (_attachObjectType) do {
					case "OPTRE_M12_FAV"					:	{[ [-0.002,-3.896,-0.487] , [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M914_RV"					:	{[ [-0.002,-3.896,-0.487] , [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M12_LRV"					:	{[[-0.002,-3.896,-0.21] , [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M12A1_LRV"				:	{[ [-0.002,-3.896,-0.487] , [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M12G1_LRV"				:	{[ [-0.002,-3.896,-0.487] , [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M12R_AA"					:	{[ [-0.002,-3.896,-0.487] , [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M813_TT"					:	{[ [-0.002,-3.896,-0.269], [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M12_FAV_APC"			: {[ [-0.002,-3.896,-0.269], [[0,1,0],[0,0,1]] ]};
					case "OPTRE_M12_FAV_APC_MED"	: {[ [-0.002,-3.896,-0.269], [[0,1,0],[0,0,1]] ]};
					case "B_CargoNet_01_ammo_F"		:	{[ [-0,-4.599,-0.382] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"			:	{[ [-0,-4.599,-0.382] , [[0,1,0],[0,0,1]] ]};
				};

			};

			case "B_G_Offroad_01_F"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_Mortar_01_F"	:	{[ [-0.108,-2.101,0.073] , [[0,1,0],[0,0,1]] ]};
					case "B_static_AT_F"	:	{[ [-0.013,-1.477,0.299] , [[-0,-1,0],[0,0,1]] ]};
					case "B_static_AA_F"	:	{[ [-0.012,-1.451,0.294] , [[-0,-1,0],[0,0,1]] ]};

				};

			};

			case "B_UGV_01_F"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_CargoNet_01_ammo_F"	:	{[ [0.441,-0.389,0.095] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"	:	{[ [0.438,-0.365,0.099] , [[0,1,0],[0,0,1]] ]};
					case "B_Mortar_01_F"		:	{[ [0.346,-0.87,0.022] , [[0,1,0],[0,0,1]] ]};
					case "B_static_AT_F"		:	{[ [0.375,-1.606,0.326] , [[0,1,0],[0,0,1]] ]};
					case "B_static_AA_F"		:	{[ [0.375,-1.605,0.328] , [[0,1,0],[0,0,1]] ]};

				};

			};

			case "B_T_UGV_01_olive_F"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_CargoNet_01_ammo_F"	:	{[ [0.441,-0.389,0.095] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"	:	{[ [0.438,-0.365,0.099] , [[0,1,0],[0,0,1]] ]};
					case "B_Mortar_01_F"		:	{[ [0.346,-0.87,0.022] , [[0,1,0],[0,0,1]] ]};
					case "B_static_AT_F"		:	{[ [0.375,-1.606,0.326] , [[0,1,0],[0,0,1]] ]};
					case "B_static_AA_F"		:	{[ [0.375,-1.605,0.328] , [[0,1,0],[0,0,1]] ]};

				};

			};

			case "vn_b_wheeled_m54_01"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_CargoNet_01_ammo_F"			:	{[ [0.012,-1.01,0.287] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"			:	{[ [0.012,-1.01,0.275] , [[0,1,0],[0,0,1]] ]};
					case "vn_b_army_static_mortar_m29"	:	{[ [0.352,-1.173,0.116] , [[0,1,0],[0,0,1]] ]};

				};

			};
			
			// WW2 Trucks
			
				case "LIB_US_NAC_GMC_Tent"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.053,-2.761,0.002] , [[0,1,0],[0,0,1]] ]};
						

					};

				};
				
				case "LIB_US_GMC_Tent"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.053,-2.761,0.002] , [[0,1,0],[0,0,1]] ]};
						
					};

				};
				
				case "LIB_US_GMC_Tent_w"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.053,-2.761,0.002] , [[0,1,0],[0,0,1]] ]};
						
					};

				};
				
				case "LIB_US_GMC_Ammo"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.053,-2.761,0.002] , [[0,1,0],[0,0,1]] ]};
						
						
					};

				};
				
				case "LIB_US_GMC_Ammo_w"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.054,-2.761,0.125] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.053,-2.761,0.002] , [[0,1,0],[0,0,1]] ]};
						
					};

				};
				
				case "LIB_US6_Tent_Cargo"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.008,-2.585,0.916] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.008,-2.585,0.916] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.008,-2.585,0.916] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.008,-2.585,0.781] , [[0,1,0],[0,0,1]] ]};
						
					};

				};
				
				case "LIB_US6_Tent_Cargo"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.008,-2.585,0.916] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.008,-2.585,0.916] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.008,-2.585,0.916] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.008,-2.585,0.781] , [[0,1,0],[0,0,1]] ]};
						
					};

				};
				
				case "LIB_OpelBlitz_Tent_Y_Camo"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.009,-1.953,0.533] , [[0,1,0],[0,0,1]] ]};
						
					};

				};

				case "LIB_OpelBlitz_Tent_Y_Camo_w"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.009,-1.953,0.533] , [[0,1,0],[0,0,1]] ]};
						
					};

				};
				
				case "LIB_DAK_OpelBlitz_Tent"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [-0.009,-1.953,0.597] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [-0.009,-1.953,0.533] , [[0,1,0],[0,0,1]] ]};
						
					};
					
				};
				
				
				case "fow_v_type97_truck_ija"		:	{

					_offsetAndVector = switch (_attachObjectType) do {

						case "B_CargoNet_01_ammo_F"				:	{[ [0.016,-2.205,0.056] , [[0,1,0],[0,0,1]] ]};
						case "Box_NATO_AmmoVeh_F"				:	{[ [0.016,-2.205,0.056] , [[0,1,0],[0,0,1]] ]};
						case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [0.016,-2.205,0.056] , [[0,1,0],[0,0,1]] ]};
						case "CargoNet_01_box_F"				:	{[ [0.016,-2.205,-0.014] , [[0,1,0],[0,0,1]] ]};
						
					};

				};
				
				
			case "LIB_C47_RAF"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_CargoNet_01_ammo_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					
				};

			};
			
			case "LIB_Li2"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_CargoNet_01_ammo_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					
				};

			};
			
			case "LIB_C47_Skytrain"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_CargoNet_01_ammo_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					
				};

			};
			
			case "UNI_C47_CAP_Grey"		:	{

				_offsetAndVector = switch (_attachObjectType) do {

					case "B_CargoNet_01_ammo_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "Box_NATO_AmmoVeh_F"				:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					case "C_IDAP_CargoNet_01_supplies_F"	:	{[ [0.042,4.72,-0.256] , [[0,1,0],[0,0,1]] ]};
					
				};

			};
			
			
		};

		_offset = _offsetAndVector select 0;
		_vector = _offsetAndVector select 1;

		_attachObject attachTo [_veh, _offset];
		_attachObject setVectorDirAndUp _vector;

		if (_deleteOnVehDeath) then {

			[_veh, _attachObject] spawn {

				_veh = _this select 0;
				_attachObject = _this select 1;

				waitUntil {!alive _veh};

				deleteVehicle _attachObject;

			};

		};

	};
