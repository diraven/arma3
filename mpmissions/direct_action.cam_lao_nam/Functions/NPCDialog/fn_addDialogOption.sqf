
		_unit = _this select 0;
		_title = _this select 1;
		_dialog = _this select 2;
		_codeToCall = _this select 3;
		
		
		// Create Dialog Options
		
			_actionID = _unit addAction [
			
				"<t color='#00ff00'>" + _title,
				{
				
					params ["_target", "_caller", "_actionId", "_arguments"];
					
					_unit = _target;
					_dialog = _this select 3 select 0;
					_codeToCall = _this select 3 select 1;
					
						
					// Show Dialog
						
						[_unit, _dialog, 10] call BEW_FNC_SubtitleWithDelay;
						
						
					// Call Code
					
						[_unit] call _codeToCall;
					
					
					// Remove Dialog Option
					
						_unit removeAction _actionId;
					
				},
				[_dialog, _codeToCall],
				99,
				true,
				true,
				"",
				"(alive _target) and (_target distance2D player < 5) and !(_target getVariable ['civFleeing', FALSE])", // _target, _this, _originalTarget
				50,
				false,
				"",
				""
			];
										
			_actionID
									