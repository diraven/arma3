_obj = player; 
 
		_obj addAction [ 
			 
			"<t color='#FFFFFF'>Attach Flashlight To Uniform",  
			 
			{ 
				
				private [
					
					"_obj",
					"_flashlight",
					"_lightSource",
					"_playerUnit"
				
				];
			
				_obj = _this select 0;
				_playerUnit = player;
		
				if (isClass(configfile >> "CfgVehicles" >> "vn_b_item_mx991_01")) then {
				
					// Create Flashlight 
					 
					 _flashlight = "vn_b_item_mx991_01" createVehicle getPos _obj; 
					 BEW_v_Flashlight = _flashlight;
					 _flashlight allowDamage false; 
					 
					 _flashlight attachTo [_obj,[-0.03,0.2,0.22],"pelvis"]; 
					 _flashlight setVectorDirAndUp [[-0,-1,0],[0,0,1]]; 
						
				}else{
				
					_flashlight = objNull;
				
				};
				 
				 
				// Create Light Source 
				 
					_lightSource = "Reflector_Cone_01_white_F" createVehicle getPos _obj; 
					BEW_v_FlashlightLightSource = _lightSource;
					 
					_lightSource attachTo [_obj,[-0.026,0.27,0.40],"pelvis"]; 
					_lightSource setVectorDirAndUp [[-0,0,0],[0,0,1]]; 
					
					
					[_flashlight, _lightSource] spawn {
					
						_flashlight = _this select 0;
						_lightSource = _this select 1;
					
						waitUntil {sleep 1; !(vehicle player == player) or !(alive player) or (player getVariable ["AIS_unconscious", false]) or !(_lightSource in attachedObjects player)};
						
						if !(isNil "_flashlight") then {deleteVehicle _flashlight};
						deleteVehicle _lightSource;
					
					};
 
			} 
			 		 
		, [], -10, false, false, "", "
				
			(vehicle player == player) and !(count ((attachedObjects player) select {typeOf _x == 'Reflector_Cone_01_white_F'}) > 0)

		"]; 
		
		
		
		_obj addAction [ 
			 
			"<t color='#FFFFFF'>Remove Flashlight From Uniform",  
			 
			{ 
		
				if !(isNil "BEW_v_Flashlight") then {deleteVehicle BEW_v_Flashlight}; 
				deleteVehicle BEW_v_FlashlightLightSource;
 
 
			} 
			 		 
		, [], -10, false, false, "", "
				
			(vehicle player == player) and (count ((attachedObjects player) select {typeOf _x == 'Reflector_Cone_01_white_F'}) > 0)

		"]; 
			
		