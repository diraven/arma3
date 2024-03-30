if !(BEW_v_BF4Mode) exitWith {};
if !(typeOf player == "B_soldier_AR_F") exitWith {};

if (isNil "BEW_v_MortarDeployed") then {BEW_v_MortarDeployed = FALSE;};	
	
	player addAction [ 
		 
		"<t color='#FFC0CB'>- Deploy Mortar",  
		 
		{ 
		 
			[] spawn {
			
					BEW_v_MortarDeployed = TRUE;
				
					player action ["SWITCHWEAPON",player,player,-1];
						
				waitUntil {currentWeapon player == ""};

					_spawnPos = player modelToWorld [0,1,0];

					_obj = createVehicle ["B_Mortar_01_F", _spawnPos, [], 0, "CAN_COLLIDE"];		
					
					_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
					_obj setVariable ["canRespawn", true, true];
					[_obj, "", "ColorYellow", "b_mortar", 1, [0.75, 0.75]] spawn BEW_FNC_movingMarker;

					_obj attachTo [player, [0,0.75,0], "pelvis"];
					
					hint "Mortar Deployed";
										
					sleep 600;
					
					BEW_v_MortarDeployed = FALSE;
				
				waitUntil {(BEW_v_MortarDeployed) or !(alive player) or !(alive _obj)};
				
					deleteVehicle _obj;
				
			};
		
		} 
				 
	, [], -89.1, false, false, "", "!(BEW_v_MortarDeployed) and (typeOf player == 'B_soldier_AR_F') and (player getVariable 'GadgetMenu') and (vehicle player == player)"]; 
	
	