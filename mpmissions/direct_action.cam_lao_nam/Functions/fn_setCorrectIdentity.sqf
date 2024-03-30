	
	_unit = param [0];
	_faction = param [1, "BLU"];
	
	
	_factionLanguage = call compile format ["
	
		_factionLanguage = %1_FactionLanguage;
		
		_factionLanguage
		
	", _faction];


	_voices = switch (_factionLanguage) do {
	
		case "ENGLISH_US" :	{[
		
						'Male01ENG',
						'Male02ENG',
						'Male03ENG',
						'Male04ENG',
						'Male05ENG',
						'Male06ENG',
						'Male07ENG',
						'Male08ENG',
						'Male09ENG',
						'Male10ENG',
						'Male11ENG',
						'Male12ENG'
					
					]};


		case "ENGLISH_BRITISH"	:	{[
					
						'Male01ENGB',
						'Male02ENGB',
						'Male03ENGB',
						'Male04ENGB',
						'Male05ENGB'
					
					]};


		case "GREEK"	:	{[
					
						'Male01GRE',
						'Male02GRE',
						'Male03GRE',
						'Male04GRE',
						'Male05GRE',
						'Male06GRE'
					
					]};


		case "PERSIAN"	:	{[
					
						'Male01PER',
						'Male02PER',
						'Male03PER'
					
					]};


		case "CHINESE"	:	{[
					
						'Male01CHI',
						'Male02CHI',
						'Male03CHI'
					
					]};


		case "FRENCH"	:	{[
					
						'Male01FRE',
						'Male02FRE',
						'Male03FRE'
					
					]};


		case "ENGLISH_FRENCH"	:	{[
					
						'Male01ENGFRE',
						'Male02ENGFRE'
					
					]};


		case "POLISH"	:	{[
					
						'Male01POL',
						'Male02POL',
						'Male03POL'
					
					]};


		case "RUSSIAN"	:	{[
					
						'Male01RUS',
						'Male02RUS',
						'Male03RUS'
					
					]};


		case "GERMAN_LIB"	:	{[
						
						'Male01Ger',
						'Male02Ger',
						'Male03Ger',
						'Male04Ger',
						'Male05Ger',
						'Male06Ger'
					
					]};


		case "CZECH_CSA38"	:	{[
					
						'Male01CZ',
						'Male02CZ',
						'Male03CZ',
						'Male04CZ',
						'Male05CZ'
					
					]};
					
					
		case "GERMAN_GM"	:	{[
					
						'gm_voice_male_deu_01',
						'gm_voice_male_deu_02',
						'gm_voice_male_deu_03',
						'gm_voice_male_deu_04',
						'gm_voice_male_deu_05',
						'gm_voice_male_deu_06',
						'gm_voice_male_deu_07',
						'gm_voice_male_deu_08',
						'gm_voice_male_deu_09'
					
					]};
					
					
		default 	{[
		
						'Male01ENG',
						'Male02ENG',
						'Male03ENG',
						'Male04ENG',
						'Male05ENG',
						'Male06ENG',
						'Male07ENG',
						'Male08ENG',
						'Male09ENG',
						'Male10ENG',
						'Male11ENG',
						'Male12ENG'
					
					]};

	};

	
	// Select Voice
	
		private _selectedVoice = _voices call BIS_FNC_SelectRandom;

	
	// Set Voice
	
		if ((_factionLanguage == "GERMAN_LIB") and !(isPlayer _unit)) then {
		
			_selectedVoice = "NoVoice";
			
		};
		
		_unit setSpeaker _selectedVoice;
