
if !(typeOf player == "B_medic_F") exitWith {};

if (isNil "BEW_v_MedicalSuppliesDeployed") then {BEW_v_MedicalSuppliesDeployed = FALSE;};	
	
	player addAction [ 
		 
		"<t color='#FFC0CB'>- Drop Medical Supplies",  
		 
		{ 
		 
			[] spawn {
			
					BEW_v_MedicalSuppliesDeployed = TRUE;
				
					player action ["SWITCHWEAPON",player,player,-1];
						
				waitUntil {currentWeapon player == ""};

					_spawnPos = player modelToWorld [0,1,0];

					_obj = createVehicle ["Box_B_UAV_06_medical_F", _spawnPos, [], 0, "CAN_COLLIDE"];
					_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
					_obj setVariable ["canRespawn", true, true];
					[_obj, "", "ColorRed", "loc_heal", 1, [0.75, 0.75]] spawn BEW_FNC_movingMarker;
					_obj setVariable ['BEW_v_MedicalStation', TRUE, TRUE];

					_obj attachTo [player, [0,0.75,0], "pelvis"];
					
					hint "Medical Supplies Deployed";
					
					sleep 30;
					
					BEW_v_MedicalSuppliesDeployed = FALSE;
				
				waitUntil {BEW_v_MedicalSuppliesDeployed};
				
					deleteVehicle _obj;
				
			};
		
		} 
				 
	, [], -89.1, false, false, "", "!(BEW_v_MedicalSuppliesDeployed) and (typeOf player == 'B_medic_F') and (player getVariable 'GadgetMenu') and (vehicle player == player)"]; 
	
	