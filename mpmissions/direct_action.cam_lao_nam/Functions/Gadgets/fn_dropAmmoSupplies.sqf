
if !(typeOf player == "B_soldier_AR_F") exitWith {};

if (isNil "BEW_v_AmmoSuppliesDeployed") then {BEW_v_AmmoSuppliesDeployed = FALSE;};	
	
	player addAction [ 
		 
		"<t color='#FFC0CB'>- Drop Ammo Supplies",  
		 
		{ 
		 
			[] spawn {
			
					BEW_v_AmmoSuppliesDeployed = TRUE;
				
					player action ["SWITCHWEAPON",player,player,-1];
						
				waitUntil {currentWeapon player == ""};

					_spawnPos = player modelToWorld [0,1,0];

					_obj = createVehicle ["Box_NATO_Ammo_F", _spawnPos, [], 0, "CAN_COLLIDE"];
					clearMagazineCargoGlobal _obj;
					
					_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
					_obj setVariable ["canRespawn", true, true];
					_obj setVariable ["BEW_v_Ammobox", TRUE, TRUE];
					[_obj, "", "ColorGreen", "loc_rearm", 1, [0.75, 0.75]] spawn BEW_FNC_movingMarker;

					_obj attachTo [player, [0,0.75,0], "pelvis"];
					
					hint "Ammo Supplies Deployed";
										
					sleep 30;
					
					BEW_v_AmmoSuppliesDeployed = FALSE;
				
				waitUntil {(BEW_v_AmmoSuppliesDeployed) or !(alive player) or !(alive _obj)};
				
					deleteVehicle _obj;
				
			};
		
		} 
				 
	, [], -89.1, false, false, "", "!(BEW_v_AmmoSuppliesDeployed) and (typeOf player == 'B_soldier_AR_F') and (player getVariable 'GadgetMenu') and (vehicle player == player)"]; 
	
	