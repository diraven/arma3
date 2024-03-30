	
	if (is3DENPreview) exitWith {BEW_v_WelcomeScreenFinished = TRUE};
	
	private [
	
		"_message",
		"_regular",
		"_active",
		"_inactive",
		"_optional",
		"_conflict"
	
	];	
	
		// Message Setup
		
			// Regular
			
				_regular = "<t size = '1' color = '#FFFFFF'>"; 
			
			// Active
			
				_active = "<t size = '1' color = '#00FF00'>"; 
			
			// Inactive
			
				_inactive = "<t size = '1' color = '#FF0000'>"; 
							
			// Optional
			
				_optional = "<t size = '1' color = '#add8e6'>"; 			
			
			// Conflict
			
				_conflict = "<t size = '1' color = '#FFFF00'>"; 
			
			// Setup Initial Default Message
			
				_message = "";
	
	
	// Get Mod Preset Data
	
		_modPresetData = [] call BEW_FNC_modPresetData;
	
	
	{
	
		_presetName = _x select 0;
		_requiredMods = _x select 1;
		_blacklistedMods = _x select 2;
		_optionalMods	= _x select 3;
		_keyMods = _x select 4;
		
		
		// Detect Active Required Mods
		
			_activeRequiredMods = _requiredMods select {
			
				(_x select 1 in activatedAddons) or (isClass(configfile >> "CfgPatches" >> _x select 1))

			};
			
			_missingRequiredMods = _requiredMods select {
			
				!((isClass(configfile >> "CfgPatches" >> _x select 1)))
			
			};

		
		// Detect Optional Mods
		
			_activeOptionalMods = _optionalMods select {
			
				(_x select 1 in activatedAddons) or (isClass(configfile >> "CfgPatches" >> _x select 1))

			};
			

		// Detect Active Blacklisted Mods
		
			_activeBlacklistedMods = _blacklistedMods select {
			
				(_x select 1 in activatedAddons) or (isClass(configfile >> "CfgPatches" >> _x select 1))
			
			};

		
		// Detect At Least One Key Mod Active
		
			_keyModActive = count (_keyMods select {	
			
				 (_x select 1 in activatedAddons) or (isClass(configfile >> "CfgPatches" >> _x select 1)) 

			}) > 0;


		if ((_keyModActive) or (_presetName == "Vanilla")) then {
		
			// Check If All Required Mods Are Active And No Conflicts
				
			if (((isMultiplayer) and (isnil "OO_INIDBI")) or (count _missingRequiredMods > 0) or !(count _activeOptionalMods == count _optionalMods) or (count _activeBlacklistedMods > 0)) then {
							
							
					// Initial Message
				
					_message = _regular + format ["It looks like you are trying to run <t color = '#FFFF00'>%1<t color = '#FFFFFF'>, but may be missing required and/or optional mods.<br/><br/>ALWAYS unload all mods first, and import an officially supported mod preset for the optimal Direct Action experience." + "<br/><br/>", _presetName]; 
				
						
				// Required Mods
				
					{
					
						_addonName = _x select 0;
						_addon = _x select 1;
					
						if ((_addon in activatedAddons) or (isClass(configfile >> "CfgPatches" >> _addon))) then {
						
							_message = _message + _active + _addonName + " - Running" + "<br/>";
						
						}else{
							
							_message = _message + _inactive + _addonName + " - Missing" + "<br/>";
						
						};
						
					} forEach _requiredMods;
					
					
				// Optional Mods
				
					{
					
						_addonName = _x select 0;
						_addon = _x select 1;
					
						if ((_addon in activatedAddons) or (isClass(configfile >> "CfgPatches" >> _addon))) then {
						
							_message = _message + _active + _addonName + " (Optional) - Running" + "<br/>";
						
						}else{
							
							_message = _message + _optional + _addonName + " (Optional) - Missing" + "<br/>";
						
						};			
						
					} forEach _optionalMods;
					
					
				// Blacklisted Mods
				
					if (count _activeBlacklistedMods > 0) then {	
						
						{
							
							_blacklistedModName = _x select 0;
						
							_message = _message + _conflict + _blacklistedModName + " - May Cause Conflicts" + "<br/>";
					
						} forEach _activeBlacklistedMods;
						
					};
				
				_message = _message + "<br/><t size = '1' color = '#FFFFFF'>Find supported mod presets on the BillyEatWorld community Discord. More info at www.billyeatworld.com";
				

				if ((isMultiplayer) and (isnil "OO_INIDBI")) then {
				
					_message = _message + "<br/><br/><t color = '#FF0000'>INIDBI 2 Not Configured Correctly - MP Saving Is Disabled<t color = '#FFFFFF'>";
					
					_message = _message + "<br/><br/><t size = '1' color = '#FFFFFF'>To enable saving in multiplayer:<br/>";
					_message = _message + "<br/><t size = '0.8' color = '#FFFFFF'>1. Subscribe to 'INIDBI2 - Official Extension' on Steam Workshop.";
					_message = _message + "<br/><t size = '0.8' color = '#FFFFFF'>2. Copy and paste @inidbi2 mod folder to ARMA 3 root directory.";
					_message = _message + "<br/><t size = '0.8' color = '#FFFFFF'>3. On a dedi server, load inidbi2 only on the server in -servermod.";
					_message = _message + "<br/><t size = '0.8' color = '#FFFFFF'>4. On a local server, all players must be running INIDBI2.";
					_message = _message + "<br/><t size = '0.8' color = '#FFFFFF'>5. All done! Saving happens automatically in the background.";

				};				
				
			}else{
			
				_message = "";
							
			};
		
		};

	} forEach _modPresetData;


	// Warning Message

		if (!(_message == "") and ((isServer) and !(isDedicated))) then {

			[_message, "WARNING: Mod Issue(s) Detected", true] call BIS_fnc_guiMessage;	
			
		};

	
	// Welcome Message
	
		sleep 3;
			
		[] call BEW_FNC_welcomeMessage;
	
	
	
	