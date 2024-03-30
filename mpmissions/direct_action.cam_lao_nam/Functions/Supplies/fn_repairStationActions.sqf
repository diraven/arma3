	
	_supplyObj = _this select 0;
	
	
	// Repair Station Activated Flag
			
		_supplyObj setVariable ["BEW_V_RepairStationActivated", FALSE, TRUE];
		
		
	// Create Marker
				
		[_supplyObj, "", "ColorYellow", "loc_use", 1, [1, 1]] spawn BEW_FNC_movingMarker;
				
			
	// Activate Repair Station Actions

		[
			_supplyObj,																
			"<t color='#99ccff'>ACTIVATE REPAIR STATION",														
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",		
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",		
			"(isNull attachedTo _target) and !(_target inArea hqSafeZoneMarker) and (_this distance _target < 5) and (isNull (isVehicleCargo _target)) and (isNull (ropeAttachedTo _target)) and ((count (attachedObjects player select {!(typeOf _x == '#particleSource')})) < 1) and !(_target getVariable 'BEW_V_RepairStationActivated')",									
			"(isNull attachedTo _target) and !(_target inArea hqSafeZoneMarker) and (_this distance _target < 5) and (isNull (isVehicleCargo _target)) and (isNull (ropeAttachedTo _target)) and ((count (attachedObjects player select {!(typeOf _x == '#particleSource')})) < 1) and !(_target getVariable 'BEW_V_RepairStationActivated')",									
			{},																	
			{},																	
			{		

				_supplyObj = _this select 0;	
				_caller = _this select 1;
				
					player playActionNow 'PutDown';
					playSound 'click';

					
				// Remove Crate From Array And Delete
	
					BEW_v_supplyCrates = BEW_v_supplyCrates - [_supplyObj];
							publicVariable "BEW_v_supplyCrates";	
				
					deleteVehicle _supplyObj;
				
				
				// Activate Repair Depot 
				
					[_caller, getDir _caller - 90, side _caller] remoteExec ["BEW_FNC_activateRepairDepot", 2];
				
				
				// Message
				
					_message = format ["%1 Has Activated An Repair Station At %2", name _caller, mapGridPosition getPos _supplyObj];
					[_message] remoteExec ["systemchat", 0];
				
			},																	
			{},																	
			[],																	
			3,																
			99,																	
			false,																
			false																
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];	
		
		
		// Unable To Spawn Action
		
			_supplyObj addAction [

				"<t color='#FF0000'>REPAIR STATION CANNOT BE ACTIVATED IN HQ ",{

			},[],99, false, true, "", "(isNull attachedTo cursorObject) and (_target inArea hqSafeZoneMarker) and (_this distance _target < 5) and (isNull (isVehicleCargo _target)) and (isNull (ropeAttachedTo _target)) and ((count attachedObjects _this) < 1) and !(_target getVariable 'BEW_V_RepairStationActivated')"];
				