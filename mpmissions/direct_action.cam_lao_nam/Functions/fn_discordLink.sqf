
	_obj = _this select 0;

	[	
		_obj,																			// Object the action is attached to
		"<t color='#add8e6'>Copy BillyEatWorld.com Discord Invite Link To Clipboard",	// Title of the action
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",				// Idle icon shown on screen
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",				// Progress icon shown on screen
		"true",																			// Condition for the action to be shown
		"true",																			// Condition for the action to progress
		{},																				// Code executed when action starts
		{},																				// Code executed on every progress tick
		{		
			
			"BillyEatWorld.com Discord Link" hintC [		
		
			"Discord Link: https://discord.gg/zCCVqXUG95 - Has been copied to the clipboard."	
			
			];
			
			copyToClipboard "https://discord.gg/zCCVqXUG95";
		
		},																				// Code executed on completion
		{},																				// Code executed on interrupted
		[],																				// Arguments passed to the scripts as _this select 3
		0.5,																			// Action duration [s]
		99,																				// Priority
		false,																			// Remove on completion
		false																			// Show in unconscious state
	] remoteExec ["BIS_fnc_holdActionAdd", _obj];	