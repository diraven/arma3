
if !(BEW_v_BF4Mode) exitWith {};
if !(typeOf player == "B_soldier_M_F") exitWith {};

if (isNil "BEW_v_TugsDeployed") then {BEW_v_TugsDeployed = FALSE;};	
	
	player addAction [ 
		 
		"<t color='#FFC0CB'>- Deploy T-UGS",  
		 
		{ 
		 
			[] spawn {
			
					BEW_v_TugsDeployed = TRUE;
				
					player action ["SWITCHWEAPON",player,player,-1];
						
				waitUntil {currentWeapon player == ""};

					_spawnPos = player modelToWorld [0,1,0];

					_obj = createVehicle ["OmniDirectionalAntenna_01_black_F", _spawnPos, [], 0, "CAN_COLLIDE"];
					_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
					_obj setVariable ["canRespawn", true, true];
					[_obj, "", "colorBlue", "loc_Transmitter", 1, [0.75, 0.75]] spawn BEW_FNC_movingMarker;

					_obj attachTo [player, [0,0.75,0], "pelvis"];
					
					[_obj] spawn {
					
						_obj = _this select 0;
					
						while {alive _obj} do {
							
							// Beep
							
								_obj say3D ["FD_Timer_F", 20, 1, false, 0]; 
								
							// Reveal Enemies
								
								_revealRadius = 200;								
								_nearestUnits = nearestObjects [_obj, ["man"], _revealRadius];
								_nearestUnits = _nearestUnits select {(alive _x) and(side _x == EAST)};
								
								{

									group player reveal [_x, 4];

								} forEach _nearestUnits;

								sleep 3; 
						
						};
		
					};
					
					hint "T-UGS Deployed";
					
					sleep 300;
					
					BEW_v_TugsDeployed = FALSE;
				
				waitUntil {BEW_v_TugsDeployed};
				
					deleteVehicle _obj;
				
			};
		
		} 
				 
	, [], -89.1, false, false, "", "!(BEW_v_TugsDeployed) and (typeOf player == 'B_soldier_M_F') and (player getVariable 'GadgetMenu') and (vehicle player == player)"]; 
	
	