

	_plyrObject = player;
	_delay = 1;

	while {alive _plyrObject} do {

		_remainingObjectives = (count BEW_v_all_MainObjectives - count BEW_v_all_completedMainObjectives);

		_dynamicText = format [
		
		"<t color='#ffff00' size='.55' shadow='2'>Mission Level <t color='#ffffff'> %1 
		| <t color='#ffff00'> Munitions <t color='#ffffff'> %2 
		| <t color='#ffff00'> Remaining Objectives <t color='#ffffff'> %3 </t>"
		
		, missionLevel, BEW_v_Munitions, _remainingObjectives];

		[_dynamicText, -1,safeZoneY + 0.008,_delay,0,0,789] spawn BIS_fnc_dynamicText;

		sleep _delay;

	};