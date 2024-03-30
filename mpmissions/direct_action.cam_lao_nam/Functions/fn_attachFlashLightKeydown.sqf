	// Key Down Event Handler
			
		(findDisplay 46)displayAddEventHandler["KeyDown",{ 
			
			if(_this select 1 == 49)then{ 
				
				if (alive player) then {

					if ((count ((attachedObjects player) select {typeOf _x == 'vn_b_item_mx991_01'}) < 1) or (count ((attachedObjects player) select {typeOf _x == 'Reflector_Cone_01_white_F'}) < 1)) then {
			
						
						// Create Flashlight 
						 
							BEW_v_Flashlight = "vn_b_item_mx991_01" createVehicle getPos player; 
							BEW_v_Flashlight allowDamage false; 

							BEW_v_Flashlight attachTo [player,[-0.03,0.2,0.22],"pelvis"]; 
							BEW_v_Flashlight setVectorDirAndUp [[-0,-1,0],[0,0,1]]; 
						 
						 
						// Create Light Source 
						 
							BEW_v_FlashlightLightSource = "Reflector_Cone_01_white_F" createVehicle getPos player; 

							BEW_v_FlashlightLightSource attachTo [player,[-0.026,0.27,0.40],"pelvis"]; 
							BEW_v_FlashlightLightSource setVectorDirAndUp [[-0,0,0],[0,0,1]];
						
					}else{
			
						deleteVehicle BEW_v_Flashlight; 
						deleteVehicle BEW_v_FlashlightLightSource;
						
					};

				};
			 
			} 
		 
		}];