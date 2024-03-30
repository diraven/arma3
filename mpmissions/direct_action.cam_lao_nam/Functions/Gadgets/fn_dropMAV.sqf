if !(BEW_v_BF4Mode) exitWith {};
if !(typeOf player == "B_soldier_M_F") exitWith {};

if (isNil "BEW_v_MavDeployed") then {BEW_v_MavDeployed = FALSE;};	
	
	player addAction [ 
		 
		"<t color='#FFC0CB'>- Deploy MAV",  
		 
		{ 
		 
			[] spawn {
			
					BEW_v_MavDeployed = TRUE;
				
					player action ["SWITCHWEAPON",player,player,-1];
						
				waitUntil {currentWeapon player == ""};

					_spawnPos = player modelToWorld [0,1,0];

					_obj = createVehicle ["B_UAV_01_F", _spawnPos, [], 0, "CAN_COLLIDE"];					
					createVehicleCrew _obj;
					player connectTerminalToUAV _obj;
					
					_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
					_obj setVariable ["canRespawn", true, true];
					[_obj, "", "ColorGreen", "loc_rearm", 1, [0.75, 0.75]] spawn BEW_FNC_movingMarker;

					_obj attachTo [player, [0,0.75,0], "pelvis"];
					
					hint "MAV Deployed";
										
					sleep 300;
					
					BEW_v_MavDeployed = FALSE;
				
				waitUntil {(BEW_v_MavDeployed) or !(alive player) or !(alive _obj)};
								
					player connectTerminalToUAV objNull;
					deleteVehicle _obj;
				
			};
		
		} 
				 
	, [], -89.1, false, false, "", "!(BEW_v_MavDeployed) and (typeOf player == 'B_soldier_M_F') and (player getVariable 'GadgetMenu') and (vehicle player == player)"]; 
	
	