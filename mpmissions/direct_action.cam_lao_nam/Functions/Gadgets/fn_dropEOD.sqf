if !(BEW_v_BF4Mode) exitWith {};
if !(typeOf player == "B_engineer_F") exitWith {};

if (isNil "BEW_v_EodDeployed") then {BEW_v_EodDeployed = FALSE;};	
	
	player addAction [ 
		 
		"<t color='#FFC0CB'>- Deploy EOD Bot",  
		 
		{ 
		 
			[] spawn {
			
					BEW_v_EodDeployed = TRUE;
				
					player action ["SWITCHWEAPON",player,player,-1];
						
				waitUntil {currentWeapon player == ""};

					_spawnPos = player modelToWorld [0,1,0];

					_obj = createVehicle ["B_UGV_02_Demining_F", _spawnPos, [], 0, "CAN_COLLIDE"];					
					createVehicleCrew _obj;
					player connectTerminalToUAV _obj;
					
					_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
					_obj setVariable ["canRespawn", true, true];
					[_obj, "", "ColorGreen", "loc_rearm", 1, [0.75, 0.75]] spawn BEW_FNC_movingMarker;

					_obj attachTo [player, [0,0.75,0], "pelvis"];
					
					hint "EOD Bot Deployed";
										
					sleep 300;
					
					BEW_v_EodDeployed = FALSE;
				
				waitUntil {(BEW_v_EodDeployed) or !(alive player) or !(alive _obj)};
								
					player connectTerminalToUAV objNull;
					deleteVehicle _obj;
				
			};
		
		} 
				 
	, [], -89.1, false, false, "", "!(BEW_v_EodDeployed) and (typeOf player == 'B_engineer_F') and (player getVariable 'GadgetMenu') and (vehicle player == player)"]; 
	
	