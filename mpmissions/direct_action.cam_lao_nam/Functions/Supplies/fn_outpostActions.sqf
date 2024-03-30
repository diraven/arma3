	
	_outpostObj = _this select 0;
	
	// Outpost Activated Flag
			
		_outpostObj setVariable ["BEW_V_OutpostActivated", FALSE, TRUE];
		
		
	// Create Moving Marker
				
			[_outpostObj, "", "ColorGREEN", "mil_flag", 1, [0.25, 0.25]] spawn BEW_FNC_movingMarker;
				
			
	// Activate OutPost Actions

		[
			_outpostObj,																
			"<t color='#99ccff'>ACTIVATE OUTPOST",														
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",		
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",		
			"(isNull attachedTo _target) and !(_target inArea hqSafeZoneMarker) and (_this distance _target < 5) and (isNull (isVehicleCargo _target)) and (isNull (ropeAttachedTo _target)) and ((count (attachedObjects player select {!(typeOf _x == '#particleSource')})) < 1) and !(_target getVariable 'BEW_V_OutpostActivated')",									
			"(isNull attachedTo _target) and !(_target inArea hqSafeZoneMarker) and (_this distance _target < 5) and (isNull (isVehicleCargo _target)) and (isNull (ropeAttachedTo _target)) and ((count (attachedObjects player select {!(typeOf _x == '#particleSource')})) < 1) and !(_target getVariable 'BEW_V_OutpostActivated')",									
			{},																	
			{},																	
			{		

				_outpostObj = _this select 0;	
				_caller = _this select 1;
				_callerSide = side _caller;
				
				player playActionNow 'PutDown';
				playSound 'click';
				
				
				// Activate Outpost 
				
					[_outpostObj, getDir _outpostObj, _callerSide] remoteExec ["BEW_FNC_activateOutpost", 2];

	
				// Message
				
					_message = format ["%1 Has Activated An Outpost At %2", name _caller, mapGridPosition getPos _caller];
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
		
			_outpostObj addAction [

				"<t color='#FF0000'>OUTPOST CANNOT BE ACTIVATED IN HQ ",{

			},[],99, false, true, "", "(isNull attachedTo cursorObject) and (_target inArea hqSafeZoneMarker) and (_this distance _target < 5) and (isNull (isVehicleCargo _target)) and (isNull (ropeAttachedTo _target)) and ((count attachedObjects _this) < 1) and !(_target getVariable 'BEW_V_OutpostActivated')"];
				